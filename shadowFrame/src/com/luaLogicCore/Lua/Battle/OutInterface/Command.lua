---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by wth.
--- DateTime: 2021/12/4 12:05
--- 消息接收器

require "Battle/OutInterface/ProtoCodeEnum"

COMMAND = {};

--外部调用收到msg bytes（客户端用）
---@param id number 协议id
---@param bytes table 协议二进制数据
function COMMAND.ReceiveMsgBytes(id, bytes)
    local proto = PROTO_CODE_MAP[tostring(id)];
    if proto == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "COMMAND", "ReceiveMsgBytes", "id", id, "not define !!!")
        end
        return
    end

    -- 心跳消息
    if id == PROTO_CODE_ENUM.BATTLE_HEART_BEAT_S2C:GetId() then
        return
        -- 登录消息
    elseif id == PROTO_CODE_ENUM.BATTLE_LOGIN:GetId() then
        if CheckLogLevel(LogLevel.log) then
            LogTools.LogByLevel(LogLevel.log, "COMMAND", "ReceiveMsgBytes", "id", id, proto:GetName())
        end
        local tab = assert(pb.decode(proto:GetName(), bytes))
        SetClientPlayerId(tab.uid)
        return
        -- 战斗结束消息
    --elseif id == PROTO_CODE_ENUM.BATTLE_OVER_PUSH:GetId() then
    --    --目前本地逻辑核不处理此消息,通知表现层
    --    CS_SendCommandToClient(id, bytes)
    --    return
    elseif id == PROTO_CODE_ENUM.CLIENT_TIME_SYNC:GetId() then
        TimeUtils.Handle_CLIENT_TIME_SYNC(id, bytes, proto)
        return
    end

    -- 房间初始消息
    if proto:GetType() == PROTO_MESSAGE_TYPE.InitRoom then
        if CheckLogLevel(LogLevel.log) then
            LogTools.LogByLevel(LogLevel.log, "COMMAND", "ReceiveMsgBytes", "initRoomMsg", proto:GetName())
        end
        local tab = assert(pb.decode(proto:GetName(), bytes))
        if CheckLogLevel(LogLevel.log) then
            LogTools.LogByLevel(LogLevel.log, proto:GetName(), require "protobuf.serpent".block(tab))
        end
        -- 创建战斗核心
        CreateFightCore(tab.battleEnterInfo.battleId)
        -- 初始战斗核心数据
        InitBattleData(CLIENT_FIGHT_CORE, tab.battleEnterInfo)
        return
    end

    -- 后续消息必须建立在房间创建好的基础上！！！
    if CLIENT_FIGHT_CORE == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "Command", "ReceiveMsgBytes", "id", id, "proto", proto:GetName(), "fightCoreLua init !!!")
        end
        return
    end
    if CLIENT_FIGHT_CORE.battleRoom == nil or not CLIENT_FIGHT_CORE.battleRoom:IsInit() then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "Command", "ReceiveMsgBytes", "id", id, "proto", proto:GetName(), "BattleRoom not init !!!")
        end
        return
    end

    local tab = assert(pb.decode(proto:GetName(), bytes));
    if tab == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "Command", "ReceiveMsgBytes", "id", id, "proto", proto:GetName(), "tab decode nil !!!")
        end
        return
    end
    CLIENT_FIGHT_CORE:ReceiveMsg(CLIENT_PLAYER_ID, id, tab, TimeUtils.battleNow(CLIENT_FIGHT_CORE.battleRoom.battleId))
end

--外部调用收到msg table(服务器用)
---@param fightCoreLua FightCoreLua 战斗
---@param uid number 发送协议的玩家id，如果是战斗房间消息该值为nil
---@param id number 协议id
---@param table table 协议
---@param arriveNetIoTime number 到达网络时间戳
function COMMAND.ReceiveMsgTable(fightCoreLua, uid, id, table, arriveNetIoTime)
    if fightCoreLua == nil then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "Command", "ReceiveMsgBytes", "id", id, "fightCoreLua nil !!!")
        end
        return
    end
    -- 后续消息必须建立在房间创建好的基础上！！！
    local battleRoom = fightCoreLua.battleRoom
    if battleRoom == nil or not battleRoom:IsInit() then
        if CheckLogLevel(LogLevel.logErr) then
            LogTools.LogByLevel(LogLevel.logErr, "Command", "ReceiveMsgBytes", "id", id, "BattleRoom not init !!!")
        end
        return
    end

    fightCoreLua:ReceiveMsg(uid, id, table, arriveNetIoTime)
end

--向客户端显示发送消息 客户端逻辑核心调用
---@param id number 协议id
---@param protoName string 协议名
---@param tab table 协议
function COMMAND.SendCommandToClientView(id, protoName, tab)
    ----LogTools.LogByLevel(LogLevel.log, "COMMAND.SendCommandToClientView", "id", id, "protoName", protoName, "dump(tab)", dumpTableEx(tab))

    local bytes = assert(pb.encode(protoName, tab));
    CS_SendCommandToClient(id, bytes)
end

--向服务器逻辑核发送消息 客户端逻辑核心调用
---@param id number 协议id
---@param protoName string 协议名
---@param tab table 协议
function COMMAND.SendCommandToServerLogic(id, protoName, tab)
    ----LogTools.LogByLevel(LogLevel.log, "COMMAND.SendCommandToServerLogic", "id", id, "protoName", protoName, "dump(tab)", dumpTableEx(tab))
    local bytes = assert(pb.encode(protoName, tab));
    CS_SendCommandToServer(id, bytes)
end

--向客户端发送消息 服务器端逻辑核心调用
---@param uid number 发送协议的玩家id
---@param id number 协议id
---@param table table 协议
function COMMAND.SendCommandThroughServerToClient(uid, id, table)
    if IsServer() then
        SERVER_LIB.battle:invokeSendMessageByLua(uid, id, table);
    else
        -- 客户端调用
        COMMAND.SendCommandToSelf(id, table)
    end
end

--向客户端广播消息 服务器端逻辑核心调用
---@param battleId number 广播的战斗id
---@param id number 协议id
---@param table table 协议
---@param includeServer boolean 是否广播给服务器逻辑核
function COMMAND.BroadcastCommandToClientTable(battleId, id, table, includeServer)
    ----LogTools.LogByLevel(LogLevel.log, "BroadcastCommandToClientTable", "id", id, "table", dumpTableEx(table))

    ---@type boolean
    local _includeServer = false
    if includeServer then
        _includeServer = includeServer
    end

    if IsServer() then
        -- 服务端调用服务端库发送
        SERVER_LIB.battle:invokeBroadcastMessageByLua(battleId, id, table, _includeServer);
    else
        -- 客户端调用
        COMMAND.SendCommandToSelf(id, table)
    end
end

-- 给自己发消息
---@param id number 协议id
---@param tab table
function COMMAND.SendCommandToSelf(id, tab)
    --LogTools.LogByLevel(LogLevel.log, "SendCommandToSelf", "id", id, "table", dumpTableEx(tab))

    local proto = PROTO_CODE_MAP[tostring(id)];
    if proto ~= nil then
        if tab ~= nil then
            CLIENT_FIGHT_CORE:ReceiveMsg(CLIENT_PLAYER_ID, id, tab, TimeUtils.battleNow(CLIENT_FIGHT_CORE.battleRoom.battleId))
        end
    end
end

--- 获取房间消息队列长度
---@param _fightCoreLua FightCoreLua
---@return number 消息队列长度
function COMMAND.GetRoomMessageSize(_fightCoreLua)
    return _fightCoreLua.battleRoom.inputDataSource:GetRoomMessageSize()
end

--- 获取房间消息队列长度
---@param _uid number 玩家id
---@param _fightCoreLua FightCoreLua 战斗核心
---@return number 消息队列长度
function COMMAND.GetPlayerMessageSize(_uid, _fightCoreLua)
    return _fightCoreLua.battleRoom.inputDataSource:GetPlayerMessageSize(_uid)
end