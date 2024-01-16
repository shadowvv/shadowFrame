---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/7/5 16:41

require "Lib/class"
require "Battle/Logic/TalentSkill/TalentSkillResult/TalentSkillResultBase"

---@class TalentSkillUpPercentBuffResult : TalentSkillResultBase
TalentSkillUpPercentBuffResult = class(TalentSkillResultBase, 'TalentSkillUpPercentBuffResult');

function TalentSkillUpPercentBuffResult:ctor(_battleId)
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.trigger = false;
end

---触发被动技能
---@public
---@param _battleObjectBase BattleObjectBase
---@param _count number
---@param _talentSkillConfig TalentSkill
---@param _skillResult SkillResult
---@param _talentSkill BattlePlayerTalentSkill 被动技能
---@param _isReTrigger boolean 重新触发
function TalentSkillUpPercentBuffResult:Trigger(_battleObjectBase,_count,_talentSkillConfig,_skillResult,_talentSkill,_isReTrigger)

    local buffId = _skillResult.parm1;
    local upPercent = _skillResult.parm2/10000;
    local buffType = _skillResult.parm3;
    local buffTemplateId = _skillResult.parm4;

    ---@type BattleObjCom_Buff
    local _buffCom = _battleObjectBase:GetComponent(BattleObjectComponentType.Buff)
    if _buffCom then
        self.trigger = true;
        _buffCom:AddBattleUpPercent(buffId,buffType,buffTemplateId,upPercent*_count);
        _talentSkill:AddTriggeredObject(_battleObjectBase:GetObjectId(),_count);
    end

end

---释放被动技能
---@public
---@param _skillResult SkillResult
---@param _targetObjectId number 伤害目标objectId
---@param _count number 触发次数
---@param _talentSkill BattlePlayerTalentSkill
function TalentSkillUpPercentBuffResult:Release(_skillResult, _targetObjectId,_count,_talentSkill)
    if not self.trigger then
        return;
    end
    ---@type BattleObjectBase
    local targetObject = self.battleRoom.battleObjectManager:GetObject(_targetObjectId);
    if targetObject then
        local buffId = _skillResult.parm1;
        local upPercent = _skillResult.parm2/10000;
        local buffType = _skillResult.parm3;
        local buffTemplateId = _skillResult.parm4;

        ---@type BattleObjCom_Buff
        local _buffCom = targetObject:GetComponent(BattleObjectComponentType.Buff)
        if _buffCom then
            self.trigger = false;
            _buffCom:AddBattleUpPercent(buffId,buffType,buffTemplateId,-1*upPercent*_count);
        end
    end
end


---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillUpPercentBuffResult:GetType()
    return 14;
end

return TalentSkillUpPercentBuffResult;