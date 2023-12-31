---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/2/9 15:06
--- 战斗房间事件

require "Battle/Logic/Room/BattleRoomEvent/BattleRoomEventCallBackFunction"
require "Battle/Logic/Room/BattleRoomEvent/BattleRoomEvent"

-- 战斗事件枚举
---@class BattleRoomEvent:table 战斗事件映射
BATTLE_EVENT_ENUM = {
    ---@type BattleRoomEvent
    BATTLE_EVENT_START = BattleRoomEvent.New(1, BattleRoomEventCallBack_BattleStart);
    ---@type BattleRoomEvent
    PLAYER_DISCONNECT = BattleRoomEvent.New(2, BattleRoomEventCallBack_PlayerDisconnect);
    ---@type BattleRoomEvent
    PLAYER_RECONNECT = BattleRoomEvent.New(3, BattleRoomEventCallBack_PlayerReconnect);
    ---@type BattleRoomEvent
    PLAYER_LEAVE = BattleRoomEvent.New(4, BattleRoomEventCallBack_PlayerLeave);
    ---@type BattleRoomEvent
    PLAYER_ENTER = BattleRoomEvent.New(5, BattleRoomEventCallBack_PlayerEnter);
    ---@type BattleRoomEvent
    PLAYER_CHANGE_NET_STATE_NORMAL = BattleRoomEvent.New(6, BattleRoomEventCallBack_PlayerChangeNetStateNormal);
    ---@type BattleRoomEvent
    PLAYER_CHANGE_NET_STATE_ABNORMAL = BattleRoomEvent.New(7, BattleRoomEventCallBack_PlayerChangeNetStateAbnormal);
}

-- 战斗事件映射
---@type BattleEvent[] 战斗事件映射
BATTLE_EVENT_MAP = {};

-- 初始化战斗事件映射
for _, value in pairs(BATTLE_EVENT_ENUM) do
    BATTLE_EVENT_MAP[tostring(value:GetId())] = value;
end