---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2023/2/10 16:31

require "Lib/class"

---@class TalentSkillReloadEndTrigger : table
TalentSkillReloadEndTrigger = class(nil, 'TalentSkillReloadEndTrigger');

function TalentSkillReloadEndTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillReloadEndTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)

    if TimeUtils.battleNow(self.battleId) - self.lastTriggerTime < _talentSkillTrigger.parm6 then
        return 0;
    end

    if self.battleRoom.battleLogicEventService:CheckReloadEndEvent(_battleObject:GetParentUnit():GetNetId(), _battleObject:GetObjectId(),false) then
        return 1;
    end
    return 0;
end

---@public
function TalentSkillReloadEndTrigger:Reset()

end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillReloadEndTrigger:GetType()
    return 121;
end

return TalentSkillReloadEndTrigger;