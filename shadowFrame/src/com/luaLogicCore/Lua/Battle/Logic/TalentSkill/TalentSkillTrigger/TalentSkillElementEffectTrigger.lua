---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/11/1 17:02

require "Lib/class"

---@class TalentSkillElementEffectTrigger : table
TalentSkillElementEffectTrigger = class(nil, 'TalentSkillElementEffectTrigger');

function TalentSkillElementEffectTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
    self.triggerId = {};
    self.triggerNum = 0;
    self.isTrigger = 0;
    self.targetNetId = 0;
    self.targetObjectId = 0;
end

---@public
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _battleObject BattleObjectBase
---@param _targetNetId number 伤害目标netId
---@param _targetObjectId number 伤害目标objectId
---@param _elementEffectId number 元素Id
function TalentSkillElementEffectTrigger:OnElementEffect(_talentSkillTrigger,_battleObject,_targetNetId, _targetObjectId, _elementEffectId)

    if TimeUtils.battleNow(self.battleId) - self.lastTriggerTime < _talentSkillTrigger.parm6 then
        return;
    end

    if _talentSkillTrigger.parm2 and _talentSkillTrigger.parm2 ~= 0 then
        ---@type BattleUnit_Monster
        local unit = self.battleRoom.battleUnitManager:GetUnit(_targetNetId);
        if not unit then
            return;
        end

        ---@type BattleObjCom_Property
        local _propCom = unit:GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
        local _eleWeakTypeList = _propCom:GetEleWeakTypeList()
        if 0 == #_eleWeakTypeList then return end

        if _talentSkillTrigger.parm2 ~= -1 then
            local find = false;
            for _, v in pairs(_eleWeakTypeList) do
                if _talentSkillTrigger.parm2 == v then
                    find = true;
                end
            end
            if not find then
                return;
            end
        end
    end

    if _talentSkillTrigger.parm3 == 1 then
        ---@type BattleUnit_Monster
        local unit = self.battleRoom.battleUnitManager:GetUnit(_targetNetId);
        if not unit then
            return;
        end

        ---@type BattleObjCom_Property
        local _propCom = unit:GetCurrentHeroObject():GetComponent(BattleObjectComponentType.Property)
        local _eleWeakTypeList = _propCom:GetEleWeakTypeList()
        if 0 == #_eleWeakTypeList then return end

        local _targetBattleObject = unit:GetHeroObject(_targetObjectId);
        if not _targetBattleObject then
            return;
        end
        ---@type BattleObjCom_Element_V2
        local elementComp = _targetBattleObject:GetComponent(BattleObjectComponentType.Element);
        local find = false;
        for _, v in pairs(_eleWeakTypeList) do
            if elementComp.effectingElementId == v then
                find = true;
            end
        end
        if not find then
            return;
        end
    end


    self.targetNetId = _targetNetId;
    self.targetObjectId = _targetObjectId;

    local elementId = _talentSkillTrigger.parm1;
    if elementId == 0 then
        elementId = nil;
    end
    if _talentSkillTrigger.parm7 == 1 and (elementId == nil or _elementEffectId == elementId) then
        self.isTrigger = self.isTrigger + 1;
        return;
    end
    local objectNum = 0;
    if _talentSkillTrigger.parm7 == 2 then
        for i, v in pairs(_battleObject:GetParentUnit():GetAllObjectDic()) do
            objectNum = objectNum + 1;
            if elementId == nil or _elementEffectId == elementId then
                if not self.triggerId[v:GetObjectId()] then
                    self.triggerId[v:GetObjectId()] = 1;
                    self.triggerNum = self.triggerNum + 1;
                end
            end
        end
        if self.triggerNum >= objectNum then
            self.isTrigger = self.isTrigger + 1;
            return;
        end
    end
    if _talentSkillTrigger.parm7 == 3 then
        for i, v in pairs(_battleObject:GetParentUnit():GetAllObjectDic()) do
            if elementId == nil or _elementEffectId == elementId then
                self.isTrigger = self.isTrigger + 1;
                return;
            end
        end
    end
    return;
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillElementEffectTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    if self.isTrigger > 0 then
        local count = self.isTrigger;
        if self.targetNetId ~= 0 and self.targetObjectId ~= 0 then
            _talentSkill:AddTriggerObject(self.targetObjectId,count);
        end
        self:Reset();
        return count;
    end
    return 0;
end

---@public
function TalentSkillElementEffectTrigger:Reset()
    self.triggerId = {};
    self.triggerNum = 0;
    self.isTrigger = 0;
end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillElementEffectTrigger:GetType()
    return 134;
end


return TalentSkillElementEffectTrigger;