---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/1/5 16:16
--- 协议枚举

require "Battle/OutInterface/ProtoCode"
require "Battle/OutInterface/ProtoCallBackFunction"

-- 消息枚举
---@type ProtoCode[] 协议映射
PROTO_CODE_ENUM = {
    ---@type ProtoCode 协议映射
    CREATE_PLAYER_CHARACTER_2_VIE = ProtoCode.New(13000,"ROOM","msg.CreatePlayerCharacter2View");
    ---@type ProtoCode 协议映射
    BATTLE_LUA_EVENT_PUSH = ProtoCode.New(12002,"ROOM","msg.BattleLuaEvent_Push",ProtoCallBack_StartBattleLogicTick);
    ---@type ProtoCode 协议映射
    PLAYER_MOVE_INPUT = ProtoCode.New(12003,"PLAYER","msg.PlayerMoveInput",ProtoCallBack_PlayerMoveInput);
    ---@type ProtoCode 协议映射
    BATTLE_OUTPUT_DATA = ProtoCode.New(12004,"BRIDGE","msg.BattleOutputData",ProtoCallBack_ClientReceiveOutputData);
    ---@type ProtoCode 协议映射
    PLAYER_CHANGE_LEADER = ProtoCode.New(12005, "PLAYER", "msg.PlayerChangeLeader", ProtoCallBack_PlayerChangeLeader);
}

-- 消息映射
---@type ProtoCode[] 协议映射
PROTO_CODE_MAP = {};

-- 初始化消息映射
function InitProtoMap()

    for index, value in pairs(PROTO_CODE_ENUM) do
        PROTO_CODE_MAP[tostring(value:GetId())] = value;
    end

end