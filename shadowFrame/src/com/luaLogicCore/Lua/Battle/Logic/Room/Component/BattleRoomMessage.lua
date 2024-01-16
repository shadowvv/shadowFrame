---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/1/10 18:58
--- 战斗核心消息包装

require "Lib/class"

---@class BattleRoomMessage:table 战斗核心消息包装
---@field id number 协议id
---@field uid number 发送协议玩家id
---@field message table 协议体
---@field arriveNetIoTime number 到达网络IO线程时间戳
---@field arriveLuaTime number 到达Lua线程IO时间戳
BattleRoomMessage = class(nil, 'BattleRoomMessage');

function BattleRoomMessage:ctor()
    self.id = nil;
    self.battleId = nil;
    self.uid = nil;
    self.message = nil;
    self.arriveNetIoTime = nil;
    self.arriveLuaTime = nil;
end

--- 初始化
---@public
---@param _uid number 发送协议玩家id
---@param _id number 协议id
---@param _battleId number 战斗id
---@param _message table 协议体
---@param _arriveNetIoTime number 到达网络时间
function BattleRoomMessage:Init(_uid, _id, _battleId, _message, _arriveNetIoTime)
    self.id = _id;
    self.uid = _uid;
    self.battleId = _battleId;
    self.message = _message;
    -- 到达网络IO线程时间戳
    self.arriveNetIoTime = _arriveNetIoTime;
    -- 到达Lua线程IO时间戳
    self.arriveLuaTime = TimeUtils.nowExact();
end

--- 消息playerId
---@public
---@return number 消息playerId
function BattleRoomMessage:GetUid()
    return self.uid;
end

--- 协议id
---@public
---@return number 协议id
function BattleRoomMessage:GetId()
    return self.id;
end

--- 战斗id
---@public
---@return number 战斗id
function BattleRoomMessage:GetBattleId()
    return self.battleId;
end

--- 战斗
---@public
---@return BattleRoom 战斗
function BattleRoomMessage:GetBattleRoom()
    return GetBattleRoom(self.battleId);
end

--- 消息体
---@public
---@return table 协议
function BattleRoomMessage:GetMessage()
    return self.message;
end

--- 到达网络IO线程时间戳
---@public
---@return number 时间戳
function BattleRoomMessage:GetArriveNetIoTime()
    return self.arriveNetIoTime;
end

--- 到达Lua线程IO时间戳
---@public
---@return number 时间戳
function BattleRoomMessage:GetArriveLuaTime()
    return self.arriveLuaTime;
end