---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/8/24 11:41

require "Lib/class"

---@class TalentSkillOnBuffTrigger : table
TalentSkillOnBuffTrigger = class(nil, 'TalentSkillOnBuffTrigger');

function TalentSkillOnBuffTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)

end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillOnBuffTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    local findBuff = false;
    ---@type BattleUnitCom_Buff
    local unitBuffCom = _battleObject:GetParentUnit():GetComponent(BattleUnitComponentType.Buff);
    if unitBuffCom and unitBuffCom:CheckBuffExist(_talentSkillTrigger.parm1,_talentSkillTrigger.parm2,_talentSkillTrigger.parm4) then
        findBuff = true;
    end
    ---@type BattleObjCom_Buff
    local buffCom = _battleObject:GetComponent(BattleObjectComponentType.Buff);
    if buffCom and buffCom:CheckBuffExist(_talentSkillTrigger.parm1,_talentSkillTrigger.parm2,_talentSkillTrigger.parm4) then
        findBuff = true;
    end
    if findBuff then
        if _talentSkillTrigger.parm3 == 1 then
            return 0;
        else
            return 1;
        end
    else
        if _talentSkillTrigger.parm3 == 1 then
            return 1;
        else
            return 0;
        end
    end
    return 0;
end

---@public
function TalentSkillOnBuffTrigger:Reset()

end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillOnBuffTrigger:GetType()
    return 112;
end

return TalentSkillOnBuffTrigger;