---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/8/24 11:40

require "Lib/class"

---@class TalentSkillLoseHPTrigger : table
TalentSkillLoseHPTrigger = class(nil, 'TalentSkillLoseHPTrigger');

function TalentSkillLoseHPTrigger:ctor(_battleId)
    ---@type number
    self.battleId = _battleId
    self.battleRoom = GetBattleRoom(self.battleId)
    self.damage = 0;
end

---@public
---击中目标回调
---@param _talentSkillTrigger SkillTrigger
---@param _sourceNetId number 伤害目标netId
---@param _sourceObjectId number 伤害目标objectId
---@param _targetType number 伤害目标类型
---@param _damageSourceId number 伤害类型Id
---@param _damageSourceType number 伤害来源类型
---@param _damage number 造成伤`
---@param _damageType number 伤害类型
---@param _isCritical boolean 是否暴击
---@param _targetDead boolean 目标是否死亡
---@param _hurtDisReduceEnum number 伤害距离衰减类型，对应 HurtDisReduceEnum 定义的值
---@param _isWeakness boolean 是否为弱点攻击
---@param _curAttachEleId number 击中时目标元素
function TalentSkillLoseHPTrigger:OnBeHit(_talentSkillTrigger, _sourceNetId, _sourceObjectId, _targetType, _damageSourceId, _damageSourceType, _damage, _damageType, _isCritical, _targetDead,_hurtDisReduceEnum,_isWeakness,_curAttachEleId)
    self.damage = self.damage + _damage;
end

---@public
---@param _battleObject BattleObjectBase 触发单位
---@param _talentSkillTrigger SkillTrigger 被动技能配置
---@param _talentSkill BattlePlayerTalentSkill 被动技能
function TalentSkillLoseHPTrigger:Check(_battleObject, _talentSkillTrigger,_talentSkill)
    ---@type BattleObjCom_Property
    local propCom = _battleObject:GetComponent(BattleObjectComponentType.Property);
    local percent = self.damage/propCom:GetPropertyByName(BattlePropertyEnum.Hp_Max);
    if percent*100 >= _talentSkillTrigger.parm1 then
        local count = math.floor(percent*100/_talentSkillTrigger.parm1);
        self:Reset();
        return count;
    end
    return 0;
end

---@public
function TalentSkillLoseHPTrigger:Reset()
    self.damage = 0;
end

---被动技能触发类型
---@return number 被动技能触发类型
function TalentSkillLoseHPTrigger:GetType()
    return 123;
end

return TalentSkillHpMaxTrigger;