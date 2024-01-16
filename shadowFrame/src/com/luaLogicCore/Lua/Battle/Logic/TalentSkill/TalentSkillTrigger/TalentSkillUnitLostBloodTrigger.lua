---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by guokun
--- DateTime: 2022/12/17 10:38

require "Lib/class"

---@class TalentSkillUnitLostBloodTrigger : table
TalentSkillUnitLostBloodTrigger = class(nil, 'TalentSkillUnitLostBloodTrigger');

function TalentSkillUnitLostBloodTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.lastTriggerTime = TimeUtils.battleNow(self.battleId);
    self.triggerTimes = 0
    self.currenHp = -1
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillUnitLostBloodTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)

    if _talentSkillTrigger.parm1 then
        if _talentSkillTrigger.parm1 == 0 then    -- 次数
            if self.triggerTimes > _talentSkillTrigger.parm2 then
                return 0;
            end
        else    -- 时间
            if TimeUtils.battleNow(self.battleId) - self.lastTriggerTime > _talentSkillTrigger.parm2 then
                return 0;
            end
        end
    end

    if self.currenHp < 0 then
        ---@type BattleObjCom_Property
        local propCom = _battleObject:GetComponent(BattleObjectComponentType.Property);
        local hp = propCom:GetPropertyPercentByName(BattlePropertyEnum.Hp_Cur);
        self.currenHp = hp*10000
        return 0
    end
    
    if  _talentSkillTrigger.parm3 then
        ---@type BattleObjCom_Property
        local propCom = _battleObject:GetComponent(BattleObjectComponentType.Property);
        local percent = propCom:GetPropertyPercentByName(BattlePropertyEnum.Hp_Cur);
        if percent*10000 <= self.currenHp - _talentSkillTrigger.parm3 then
            self.triggerTimes = self.triggerTimes + 1
            self.currenHp = self.currenHp - _talentSkillTrigger.parm3
            return 1;
        end
    end

    return 0;
end

---@public
function TalentSkillUnitLostBloodTrigger:Reset()

end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillUnitLostBloodTrigger:GetType()
    return 120;
end


return TalentSkillUnitLostBloodTrigger;