---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/5/10 16:25

require "Lib/class"

---@class TalentSkillBattleStartTimeTrigger : table
TalentSkillBattleStartTimeTrigger = class(nil, 'TalentSkillBattleStartTimeTrigger');

function TalentSkillBattleStartTimeTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillBattleStartTimeTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    local runSeconds = self.battleRoom.battleLevelManager:GetStage(BattleLevel_Define_StageEnum.RunBattle):GetRunTimeSecond();
    if runSeconds < _talentSkillTrigger.parm1 then
        return 0;
    end
    return 1;
end

---@public
function TalentSkillBattleStartTimeTrigger:Reset()

end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillBattleStartTimeTrigger:GetType()
    return 2;
end

return TalentSkillBattleStartTimeTrigger;