---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/6/9 17:37

require "Lib/class"
require "Battle/Logic/Room/BattleLogicEvent/BattleLogicEventV2"

---@class BattleLogicHealBuffEvent : BattleLogicEventV2
---@field eventType number 事件类型
---@field battleId number 战斗id
---@field eventCompareParam table 事件参数
---@field eventTriggerParam table 事件透传参数
---@field netId number 事件产出单位Id
---@field objectId number 事件产出物体Id
BattleLogicHealBuffEvent = class(BattleLogicEventV2, 'BattleLogicHealBuffEvent');

---@param _eventType number 事件类型
---@param _eventCompareParam table 事件参数
---@param _eventTriggerParam table 事件透传参数
---@param _netId number 事件产出单位Id
---@param _objectId number 事件产出物体Id
function BattleLogicHealBuffEvent:ctor(_eventType, _eventCompareParam, _eventTriggerParam, _netId, _objectId, _battleId)
    self.battleId = _battleId;
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
function BattleLogicHealBuffEvent:CheckEventTrigger(_eventCompareParam)
    return true;
end

---事件回调，默认为空
---@public
function BattleLogicHealBuffEvent:FireEvent()
    if self.survival == 0 then
        local battleRoom = GetBattleRoom(self.battleId)
        ---@type BattleUnitBase
        local _unit = battleRoom.battleUnitManager:GetUnit(self.netId);
        if _unit then
            ---@type BattleObjectBase
            local _object = _unit:GetHeroObject(self.objectId);
            if _object then
                ---@type BattleObjCom_Skill
                local skillComp = _object:GetComponent(BattleObjectComponentType.Skill)
                if skillComp then
                    skillComp:OnBeHealed(self.eventTriggerParam.sourceNetId,self.eventTriggerParam.sourceObjectId,self.netId,self.eventTriggerParam.castSkillId);
                end
            end
        end

        ---@type BattleUnitBase
        local _sourceUnit = battleRoom.battleUnitManager:GetUnit(self.eventTriggerParam.sourceNetId);
        if _sourceUnit then
            ---@type BattleObjectBase
            local _sourceObject = _sourceUnit:GetHeroObject(self.eventTriggerParam.sourceObjectId);
            if _sourceObject then
                ---@type BattleObjCom_Skill
                local skillComp = _sourceObject:GetComponent(BattleObjectComponentType.Skill)
                if skillComp then
                    skillComp:OnHealSomeone(self.netId,self.objectId,self.eventTriggerParam.sourceObjectId,self.eventTriggerParam.castSkillId);
                end
            end
        end
    end
end

---@public 检测互斥事件
---@param _event BattleLogicEventV2 新事件
---@return boolean 是否互斥
function BattleLogicHealBuffEvent:CheckMutexEvent(_event)
    return false;
end

---检测移除事件，默认事件会在trigger之后的下一帧被移除
---@public
function BattleLogicHealBuffEvent:CheckRemoveEvent()
    self.survival = self.survival + 1;
    if self.survival > 1 then
        return true;
    end
    return false;
end

return BattleLogicHealBuffEvent;