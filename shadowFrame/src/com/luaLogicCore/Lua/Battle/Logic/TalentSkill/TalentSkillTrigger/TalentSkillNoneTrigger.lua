---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/5/10 16:23

require "Lib/class"

---@class TalentSkillNoneTrigger : table
TalentSkillNoneTrigger = class(nil, 'TalentSkillNoneTrigger');

function TalentSkillNoneTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillNoneTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    return 1;
end

---@public
function TalentSkillNoneTrigger:Reset()

end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillNoneTrigger:GetType()
    return 1;
end

return TalentSkillNoneTrigger;