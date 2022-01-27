---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2021/12/17 17:11
--- 战斗房间状态管理器

require "Lib/class"
require "Battle/Logic/Room/BattleRoomStatus/BattleRoomCreateStatus"
require "Battle/Logic/Room/BattleRoomStatus/BattleRoomInitializedStatus"
require "Battle/Logic/Room/BattleRoomStatus/BattleRoomReadyStatus"
require "Battle/Logic/Room/BattleRoomStatus/BattleRoomRunStatus"
require "Battle/Logic/Room/BattleRoomStatus/BattleRoomSettleStatus"
require "Battle/Logic/Room/BattleRoomStatus/BattleRoomOverStatus"

---@class BattleRoomStatusManager : table 战斗房间状态管理器
---@field currentStatus BattleRoomStatus 当前房间状态
BattleRoomStatusManager = class(nil,'BattleRoomStatusManager');

function BattleRoomStatusManager:ctor()
    ---@type BattleRoomCreateStatus 房间创建状态
    BATTLE_ROOM_CREATE_STATUS = BattleRoomCreateStatus:New();
    ---@type BattleRoomInitializedStatus 房间初始化完成状态
    BATTLE_ROOM_INITIALIZED_STATUS = BattleRoomInitializedStatus:New();
    ---@type BattleRoomReadyStatus 房间准备好状态
    BATTLE_ROOM_READY_STATUS = BattleRoomReadyStatus:New();
    ---@type BattleRoomRunStatus 房间运行状态
    BATTLE_ROOM_RUN_STATUS = BattleRoomRunStatus:New();
    ---@type BattleRoomSettleStatus 房间结算状态
    BATTLE_ROOM_SETTLE_STATUS = BattleRoomSettleStatus:New();
    ---@type BattleRoomOverStatus 房间结束状态
    BATTLE_ROOM_OVER_STATUS = BattleRoomOverStatus:New();

    self.currentStatus = nil;
end

-- 进入状态
---@public
---@param _roomStatus BattleRoomStatus 房间状态
function BattleRoomStatusManager:Enter(_roomStatus)
    self.currentStatus = _roomStatus;
end

-- 更新
---@public
---@param _dt number 更新时间
---@param _frameId number 帧号
function BattleRoomStatusManager:Run(_dt,_frameId)
    self.currentStatus:Run(_dt,_frameId);
end

-- 玩家掉线
---@public
---@param _playerId number 玩家Id
function BattleRoomStatusManager:OnPlayerDisconnect(_playerId)
    self.currentStatus:OnPlayerDisconnect(_playerId);
end

-- 玩家重连
---@public
---@param _playerId number 玩家Id
function BattleRoomStatusManager:OnPlayerReconnect(_playerId)
    self.currentStatus:OnPlayerReconnect(_playerId);
end

-- 玩家离开房间
---@public
---@param _playerId number 玩家Id
function BattleRoomStatusManager:OnPlayerLeave(_playerId)
    self.currentStatus:OnPlayerLeave(_playerId);
end

-- 玩家进入战斗房间
---@public
---@param _playerId number 玩家Id
function BattleRoomStatusManager:OnPlayerEnter(_playerId)
    self.currentStatus:OnPlayerEnter(_playerId);
end

return BattleRoomStatusManager;