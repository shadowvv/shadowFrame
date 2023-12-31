---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/5/10 16:59

require "Lib/class"

---@class TalentSkillAddBuffTrigger : table
TalentSkillAddBuffTrigger = class(nil, 'TalentSkillAddBuffTrigger');

function TalentSkillAddBuffTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
    self.battleRoom = GetBattleRoom(self.battleId)
    self.isTrigger = false;
    self.count = 0;

    self.targetNetId = 0;
    self.targetObjectId = 0;
end

---@public
---击中目标回调
---@param _talentSkillTrigger SkillTrigger
---@param _battleObject BattleObjectBase
function TalentSkillAddBuffTrigger:OnAddBuffToOther(_talentSkillTrigger,_battleObject,_buffId,_targetNetId,_targetObjectId)

    if TimeUtils.battleNow(self.battleId) - self.lastTriggerTime < _talentSkillTrigger.parm6 then
        return;
    end

    if _talentSkillTrigger.parm2 and _talentSkillTrigger.parm2 ~= 0 and _talentSkillTrigger.parm2 ~= _buffId then
        return;
    end

    if _talentSkillTrigger.parm3 and _talentSkillTrigger.parm3 ~= 0 then
        local targetUnit = self.battleRoom.battleUnitManager:GetUnit(_targetNetId);
        if targetUnit then
            ---@type BattleObjectBase
            local targetObject = self.battleRoom.battleObjectManager:GetObject(_targetObjectId);
            if targetObject then
                ---@type BattleObjCom_Buff
                local buffComp = targetObject:GetComponent(BattleObjectComponentType.Buff);
                if buffComp then
                    local battleBuff = buffComp:GetBattleBuff(_talentSkillTrigger.parm2);
                    if not battleBuff or battleBuff.stackNum ~= _talentSkillTrigger.parm3 then
                        return;
                    end
                else
                    return;
                end
            else
                return;
            end
        else
            return;
        end
    end

    if _talentSkillTrigger.parm1 == 1 and _battleObject:GetObjectId() == _targetObjectId then
        self.isTrigger = true;
        self.count = self.count + 1;
    end
    if _talentSkillTrigger.parm1 == 2 and _battleObject:GetParentUnit():GetNetId() ~= _targetNetId then
        self.isTrigger = true;
        self.count = self.count + 1;
    end
    if _talentSkillTrigger.parm1 == 3 and _battleObject:GetParentUnit():GetNetId() == _targetNetId then
        self.isTrigger = true;
        self.count = self.count + 1;
    end
    if _talentSkillTrigger.parm1 == 4 and _battleObject:GetParentUnit():GetNetId() == _targetNetId and _battleObject:GetObjectId() ~= _targetObjectId then
        self.isTrigger = true;
        self.count = self.count + 1;
    end

    self.targetNetId = _targetNetId;
    self.targetObjectId = _targetObjectId;
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillAddBuffTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    if self.isTrigger then
        local temp = self.count;
        if self.targetNetId ~= 0 and self.targetObjectId ~= 0 then
            _talentSkill:AddTriggerObject(self.targetObjectId,temp);
        end
        self:Reset();
        return temp;
    end
    return 0;
end

---@public
function TalentSkillAddBuffTrigger:Reset()
    self.isTrigger = false;
    self.count = 0;
end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillAddBuffTrigger:GetType()
    return 135;
end

return TalentSkillAddBuffTrigger;