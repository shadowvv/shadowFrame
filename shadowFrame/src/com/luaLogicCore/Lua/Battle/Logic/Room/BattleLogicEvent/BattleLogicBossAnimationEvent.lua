---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/6/9 17:37

require "Lib/class"
require "Battle/Logic/Room/BattleLogicEvent/BattleLogicEventV2"

---@class BattleLogicBossAnimationEvent : BattleLogicEventV2
---@field eventType number 事件类型
---@field battleId number 战斗id
---@field eventCompareParam table 事件参数
---@field eventTriggerParam table 事件透传参数
---@field netId number 事件产出单位Id
---@field objectId number 事件产出物体Id
BattleLogicBossAnimationEvent = class(BattleLogicEventV2, 'BattleLogicBossAnimationEvent');

---@param _eventType number 事件类型
---@param _battleId number 战斗id
---@param _eventCompareParam table 事件参数
---@param _eventTriggerParam table 事件透传参数
---@param _netId number 事件产出单位Id
---@param _objectId number 事件产出物体Id
function BattleLogicBossAnimationEvent:ctor(_eventType, _eventCompareParam, _eventTriggerParam, _netId, _objectId, _battleId)
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
function BattleLogicBossAnimationEvent:CheckEventTrigger(_eventCompareParam)
    return self.eventCompareParam.start == _eventCompareParam.start;
end

---事件回调，默认为空
---@public
function BattleLogicBossAnimationEvent:FireEvent()
    if self.survival == 0 then
        if self.eventCompareParam.start then
            local battleRoom = GetBattleRoom(self.battleId)
            local allPlayer = battleRoom.battleUnitManager:GetUnitListByUnitType(BattleUnitType.Player)
            for i, v in pairs(allPlayer) do
                v:GetActionManager():OnBossAnimation();
            end
        end
    end
end

---@public
---检测互斥事件
---@param _event BattleLogicEventV2 新事件
---@return boolean 是否互斥
function BattleLogicBossAnimationEvent:CheckMutexEvent(_event)
    if self.eventType ~= _event.eventType then
        return false;
    end
    return true;
end

---检测移除事件，默认事件会在trigger之后的下一帧被移除
---@public
function BattleLogicBossAnimationEvent:CheckRemoveEvent()
    self.survival = self.survival + 1;
    if not self.eventCompareParam.start then
        if self.survival > 1 then
            return true;
        end
    end
    return false;
end

---生成比较参数
---@public
function BattleLogicBossAnimationEvent:GenerateCompareParam(_param);
    ---compareParam.start 反应id
    local compareParam = {};
    local start = false;
    if _param == "false" then
        start = false;
    end
    compareParam.elementReactId = start;
    return compareParam;
end

return BattleLogicBossAnimationEvent;