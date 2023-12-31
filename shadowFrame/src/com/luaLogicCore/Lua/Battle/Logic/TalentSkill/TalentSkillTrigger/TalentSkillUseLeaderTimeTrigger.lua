---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/10/31 17:29

require "Lib/class"

---@class TalentSkillUseLeaderTimeTrigger : table
TalentSkillUseLeaderTimeTrigger = class(nil, 'TalentSkillUseLeaderTimeTrigger');

function TalentSkillUseLeaderTimeTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillUseLeaderTimeTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)

    if TimeUtils.battleNow(self.battleId) - self.lastTriggerTime < _talentSkillTrigger.parm6 then
        return 0;
    end

    if _talentSkillTrigger.parm2 and _talentSkillTrigger.parm2 == 1 then
        ---@type number
        local leaderTime = _battleObject:GetParentUnit():GetActionManager().leaderUseTimes[_battleObject:GetObjectId()]
        if leaderTime == nil then
            leaderTime = 0
        end
        if _talentSkillTrigger.parm1 > leaderTime then
            return 0;
        end
    else
        if _battleObject:GetObjectId() ~= _battleObject:GetParentUnit():GetCurrentHeroObjectId() then
            return 0;
        end

        if _talentSkillTrigger.parm1 > _battleObject:GetParentUnit():GetActionManager().currentLeaderUseTime then
            return 0;
        end
    end
    return 1;
end

---@public
function TalentSkillUseLeaderTimeTrigger:Reset()

end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillUseLeaderTimeTrigger:GetType()
    return 115;
end

return TalentSkillUseLeaderTimeTrigger;