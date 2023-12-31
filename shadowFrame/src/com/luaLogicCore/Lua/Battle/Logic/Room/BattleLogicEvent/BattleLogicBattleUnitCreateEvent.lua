---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/6/9 17:37

require "Lib/class"
require "Battle/Logic/Room/BattleLogicEvent/BattleLogicEventV2"

---@class BattleLogicBattleUnitCreateEvent : BattleLogicEventV2
---@field eventType number 事件类型
---@field battleId number 战斗id
---@field eventCompareParam table 事件参数
---@field eventTriggerParam table 事件透传参数
---@field netId number 事件产出单位Id
---@field objectId number 事件产出物体Id
BattleLogicBattleUnitCreateEvent = class(BattleLogicEventV2, 'BattleLogicBattleUnitCreateEvent');

---@param _eventType number 事件类型
---@param _battleId number 战斗id
---@param _eventCompareParam table 事件参数
---@param _eventTriggerParam table 事件透传参数
---@param _netId number 事件产出单位Id
---@param _objectId number 事件产出物体Id
function BattleLogicBattleUnitCreateEvent:ctor(_eventType, _eventCompareParam, _eventTriggerParam, _netId, _objectId, _battleId)
    self.battleId = _battleId
    self.eventType = _eventType;
    self.eventCompareParam = _eventCompareParam;
    self.eventTriggerParam = _eventTriggerParam;
    self.netId = _netId;
    self.objectId = _objectId;
    self.survival = 0;
end

---检测事件触发，默认没有比较参数
---@public
---@param _eventCompareParam table 比较参数
function BattleLogicBattleUnitCreateEvent:CheckEventTrigger(_eventCompareParam)
    return true;
end

---事件回调，默认为空
---@public
function BattleLogicBattleUnitCreateEvent:FireEvent()
    if self.survival == 0 then
        local _netId = self.netId
        local battleRoom = GetBattleRoom(self.battleId)
        for _, v in pairs(battleRoom.levelTriggerManager:GetAllTrigger()) do
            v:OnBattleUnitCreate(_netId)
        end
        local _allUnit = battleRoom.battleUnitManager:GetAllUnitList()
        ---@type BattleUnitCom_Behav
        local _behavCom
        for _, _unit in pairs(_allUnit) do
            _behavCom = _unit:GetComponent(BattleUnitComponentType.Behav)
            if _behavCom then
                _behavCom:OnUnitCreateEvent(_netId)
            end
        end
    end
end

---@public
---检测互斥事件
---@param _event BattleLogicEventV2 新事件
---@return boolean 是否互斥
function BattleLogicBattleUnitCreateEvent:CheckMutexEvent(_event)
    return false;
end

---检测移除事件，默认事件会在trigger之后的下一帧被移除
---@public
function BattleLogicBattleUnitCreateEvent:CheckRemoveEvent()
    self.survival = self.survival + 1;
    if self.survival > 1 then
        return true;
    end
    return false;
end

---生成比较参数
---@public
function BattleLogicBattleUnitCreateEvent:GenerateCompareParam(_param);
    local compareParam = {};
    return compareParam;
end

return BattleLogicBattleUnitCreateEvent;