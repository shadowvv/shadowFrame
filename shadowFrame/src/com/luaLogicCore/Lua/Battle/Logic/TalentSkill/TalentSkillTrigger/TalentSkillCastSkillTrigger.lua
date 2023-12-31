---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/6/11 15:37

require "Lib/class"

---@class TalentSkillCastSkillTrigger : table
TalentSkillCastSkillTrigger = class(nil, 'TalentSkillCastSkillTrigger');

function TalentSkillCastSkillTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
    self.hitCount = 0;

end

---@public
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _skillId number 技能id
function TalentSkillCastSkillTrigger:OnCastSkill(_talentSkillTrigger, _skillId)
    if TimeUtils.battleNow(self.battleId) - self.lastTriggerTime < _talentSkillTrigger.parm6 then
        return;
    end

    if _talentSkillTrigger.parm1 ~= 0 then
        ---@type Skill
        local skillConfig = self.battleRoom.inputDataSource:GetDict("Skill",_skillId)
        if skillConfig.skillType ~= _talentSkillTrigger.parm1 then
            return;
        end
    end

    self.hitCount = self.hitCount + 1;
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillCastSkillTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    if _talentSkillTrigger.parm2 > self.hitCount then
        return 0;
    end
    local count = math.floor(self.hitCount / _talentSkillTrigger.parm2);
    self:Reset();
    return count;
end

---@public
function TalentSkillCastSkillTrigger:Reset()
    self.hitCount = 0;
end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillCastSkillTrigger:GetType()
    return 109;
end

return TalentSkillCastSkillTrigger;