---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/12 17:35

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffComponentBase"

---@class BattleObjCom_Buff : BattleObjectComponentBase
---@field buffCom BattleBuffComponentBase buff模块
BattleObjCom_Buff = class(BattleObjectComponentBase, 'BattleObjCom_Buff');

function BattleObjCom_Buff:ctor()
    self:__ctor(BattleObjectComponentType.Buff)
    self.buffCom = BattleBuffComponentBase.New();
end

---@public
---@param _battleObject BattleObjectBase
function BattleObjCom_Buff:Init(_battleObject)
    self:__Init(_battleObject)
    self.buffCom:Init(self:GetBattleRoom());
end

---@public
---@param _talentSourceType number 被动来源
---@param _upPercent number 提升
function BattleObjCom_Buff:SetTalentSkillUpPercent(_talentSourceType,_upPercent)
    self.buffCom:SetTalentSkillUpPercent(_talentSourceType,_upPercent);
end

---@public
---@param _talentSourceType number 被动来源
---@return number 提升
function BattleObjCom_Buff:GetTalentSkillUpPercent(_talentSourceType)
    return self.buffCom:GetTalentSkillUpPercent(_talentSourceType);
end

---@public
---@param _skillId number 技能Id
---@param _skillType number 技能类型
---@param _barrageType number 弹幕类型
---@param _buffGroupId number 增加的buff
function BattleObjCom_Buff:AddBarrageBattleBuff(_skillId,_skillType,_barrageType,_buffGroupId)
    self.buffCom:AddBarrageBattleBuff(_skillId,_skillType,_barrageType,_buffGroupId);
end

---@public
---@param _skillId number 技能Id
---@param _skillType number 技能类型
---@param _barrageType number 弹幕类型
function BattleObjCom_Buff:GetBarrageBattleBuff(_skillId,_skillType,_barrageType)
    return self.buffCom:GetBarrageBattleBuff(_skillId,_skillType,_barrageType);
end

---@public
---@param _skillId number 技能Id
---@param _buffGroupId number 移除的buffId
function BattleObjCom_Buff:RemoveBarrageBattleBuff(_skillId,_buffGroupId)
    self.buffCom:RemoveBarrageBattleBuff(_skillId,_buffGroupId)
end

---@public
---@param _buffInstId number buff实例id
---@param _buffGroupId number 增加的buff
---@param _count number 次数
function BattleObjCom_Buff:AddBarrageShootCountBattleBuff(_buffInstId,_buffGroupId,_count)
    self.buffCom:AddBarrageShootCountBattleBuff(_buffInstId,_buffGroupId,_count);
end

---@public
---@param _buffInstId number buff实例id
---@param _buffGroupId number 移除的buffId
---@param _count number 次数
function BattleObjCom_Buff:RemoveBarrageShootCountBattleBuff(_buffInstId,_buffGroupId,_count)
    self.buffCom:RemoveBarrageShootCountBattleBuff(_buffInstId,_buffGroupId,_count);
end

---@public
---@param _areaId number 区域Id
---@param _buffGroupId number 增加的buff
function BattleObjCom_Buff:AddAreaBattleBuff(_areaId,_buffGroupId,_upPercent)
    self.buffCom:AddAreaBattleBuff(_areaId,_buffGroupId,_upPercent);
end

---@public
---@param _areaId number 区域Id
---@param _buffGroupId number 移除的buffId
function BattleObjCom_Buff:RemoveAreaBattleBuff(_areaId,_buffGroupId)
    self.buffCom:RemoveAreaBattleBuff(_areaId,_buffGroupId);
end

---@public
---@param _buffGroupId number 更改buff持续时间buffId
function BattleObjCom_Buff:AddBattleBuffExtraTime(_buffGroupId,_buffType,_deltaTime)
    self.buffCom:AddBattleBuffExtraTime(_buffGroupId,_buffType,_deltaTime);
end

---@public
---@param _buffGroupId number 更改buff持续时间buffId
function BattleObjCom_Buff:GetBattleBuffExtraTime(_buffGroupId,_buffType)
    return self.buffCom:GetBattleBuffExtraTime(_buffGroupId,_buffType);
end

---@public
---@param _buffGroupId number 更改buff持续时间buffId
function BattleObjCom_Buff:AddBattleUpPercent(_buffGroupId,_buffType,_buffTemplateId,_upPercent)
    self.buffCom:AddBattleUpPercent(self:GetObject(),_buffGroupId,_buffType,_buffTemplateId,_upPercent);
end

---@private
---@param _buffGroupId number buffId
---@param _buffType number buff类型
function BattleObjCom_Buff:ReTriggerBuff(_buffGroupId,_buffType)
    self.buffCom:ReTriggerBuff(self:GetObject(),_buffGroupId,_buffType);
end

---@public
---@param _buffGroupId number 更改buff持续时间buffId
function BattleObjCom_Buff:GetBattleUpPercent(_buffGroupId,_buffType,_buffTemplateId)
    return self.buffCom:GetBattleUpPercent(_buffGroupId,_buffType,_buffTemplateId);
end

---@public
---@param _buffTemplateId number
---@param _index number
---@param _param number
function BattleObjCom_Buff:ChangeBuffTempParam(_buffTemplateId,_index,_param)
    self.buffCom:ChangeBuffTempParam(_buffTemplateId,_index,_param);
end

---@public
---@param _buffTemplateId number
---@param _index number
---@param _param number
function BattleObjCom_Buff:GetBuffTempParam(_buffTemplateId,_index,_param)
    return self.buffCom:GetBuffTempParam(_buffTemplateId,_index,_param);
end

---@public
---@param _buffInstanceId number
---@param _index number
---@param _param number
function BattleObjCom_Buff:ChangeBuffInstanceParam(_buffInstanceId,_index,_param)
    self.buffCom:ChangeBuffInstanceParam(_buffInstanceId,_index,_param);
end

---@public
---@param _buffInstanceId number
---@param _index number
---@param _param number
function BattleObjCom_Buff:GetBuffInstanceParam(_buffInstanceId,_index,_param)
    return self.buffCom:GetBuffInstanceParam(_buffInstanceId,_index,_param);
end

---@public
---@param _buffGroupId number
---@param _param number
function BattleObjCom_Buff:ChangeBuffStackNum(_buffGroupId,_param)
    self.buffCom:ChangeBuffStackNum(_buffGroupId,_param);
end

---@public
---@param _buffGroupId number
---@param _param number
function BattleObjCom_Buff:GetBuffStackNum(_buffGroupId,_param)
    return self.buffCom:GetBuffStackNum(_buffGroupId,_param);
end


function BattleObjCom_Buff:TestBuff(_buffId)
    if not self.buffCom:CheckBuffExist(_buffId) then
        self.buffCom:AddBattleBuffById(self:GetObject(),_buffId, nil, nil);
    end
end

---@public
---buff存在
---@param _buffId number buffId
---@param _stackNum number buff层数
---@param _buffType number buff类型
function BattleObjCom_Buff:CheckBuffExist(_buffId,_stackNum,_buffType)
    return self.buffCom:CheckBuffExist(_buffId,_stackNum,_buffType);
end

---@public 获得buff
---@param _buffId number buffId
---@return BattleBuff
function BattleObjCom_Buff:GetBattleBuff(_buffId)
    return self.buffCom:GetBattleBuff(_buffId);
end

---@public
function BattleObjCom_Buff:__OnUpdate(_deltaTime,_buffGroupIdId)
    self.buffCom:__OnUpdate(self:GetObject(),_deltaTime,_buffGroupIdId);
end

---@public
---改变当前buff持续时间
---@param _buffGroupId number buffId
---@param _buffType number buff类型
---@param _changeTime number 改变的时间
---@param _triggerInstIds number[]
function BattleObjCom_Buff:ChangeBuffCurrentTime(_buffGroupId,_buffType,_changeTime,_triggerInstIds)
    return self.buffCom:ChangeBuffCurrentTime(self:GetObject(),_buffGroupId,_buffType,_changeTime,_triggerInstIds);
end

---@public
---获得上阵添加buff列表
function BattleObjCom_Buff:GetBuffChangeLeader()
    return self.buffCom:GetBuffChangeLeader()
end

---@public
---清空上阵添加buff列表
function BattleObjCom_Buff:ClearBuffChangeLeader()
    self.buffCom:ClearBuffChangeLeader()
end

---@public
---是否能进入上阵添加buff列表
---@param _buffId number buffId
function BattleObjCom_Buff:HasBuffChangeLeader(_buffId)
    return self.buffCom:HasBuffChangeLeader(_buffId)
end

---@public
---进入上阵添加buff列表
---@param _buffId number buffId
function BattleObjCom_Buff:AddBuffChangeLeader(_battleCastBuffTemplate)
    self.buffCom:AddBuffChangeLeader(_battleCastBuffTemplate)
end

---@public
---移除上阵添加buff列表
---@param _buffId number buffId
function BattleObjCom_Buff:RemoveBuffChangeLeader(_buffId)
    self.buffCom:RemoveBuffChangeLeader(_buffId)
end

---@param _battleBuff BattleBuff
---@param _now number
function BattleObjCom_Buff:__TriggerBuff(_battleBuff, _now)
    return self.buffCom:__TriggerBuff(self:GetObject(), _battleBuff, _now)
end

---战斗单位死亡
function BattleObjCom_Buff:OnObjectDead()
    self.buffCom:OnObjectDead(self:GetObject());
end

---战斗单位下阵
function BattleObjCom_Buff:OnObjectStandBy(_oldObjectId,_newObjectId)
    self.buffCom:OnObjectStandBy(self:GetObject(),_oldObjectId,_newObjectId);
end

---战斗单位消耗武器能量
---@param _objectId number 战斗物体Id
---@param _cost number 消耗
function BattleObjCom_Buff:OnUnitWeaponEnergyCost(_objectId,_cost)
    self.buffCom:OnUnitWeaponEnergyCost(self:GetObject(),_cost)
end

---添加buff
---@public
---@param _buffId number 战斗buffId
---@param _castSkillId number 添加buff技能Id
---@param _customParam table 自定义参数
---@param _upPercent table 提高
function BattleObjCom_Buff:AddBattleBuffById(_buffId,_castSkillId,_customParam,_upPercent)
    self.buffCom:AddBattleBuffById(self:GetObject(),_buffId,_castSkillId,_customParam,_upPercent,1);
end

---添加buff
---@public
---@param _battleBuffCastTemplate BattleBuffCastTemplate 战斗buff
function BattleObjCom_Buff:AddBattleBuff(_battleBuffCastTemplate)
    self.buffCom:AddBattleBuff(self:GetObject(),_battleBuffCastTemplate);
end

---@type function 移除buff 层数
---@param _buffId number buffId
---@param _stackNum number buff实例id
function BattleObjCom_Buff:RemoveBuffStackNum(_buffId,_stackNum)
    self.buffCom:RemoveBuffStackNum(self:GetObject(),_buffId,_stackNum);
end

---@type function 移除buff 层数
---@param _battleBuff BattleBuff buff
function BattleObjCom_Buff:PushBuffUpdate(_battleBuff)
    self.buffCom:PushBuffUpdate(self:GetObject(),_battleBuff);
end

---@type function 通过实例id移除buff
---@param _isTimeOver boolean 是否时间到移除
---@param ... number buff实例id
function BattleObjCom_Buff:RemoveBuffByInstId(_isTimeOver,...)
    self.buffCom:RemoveBuffByInstId(self:GetObject(),_isTimeOver,...);
end

---@type function 通过buffGroup id移除buff
---@param _buffGroupId number buffGroupId
function BattleObjCom_Buff:RemoveBuffByGroupId(_buffGroupId)
    self.buffCom:RemoveBuffByGroupId(self:GetObject(),_buffGroupId);
end

---是否无敌
---@public
---@return boolean 是否无敌
function BattleObjCom_Buff:IsInvincible()
    return self.buffCom:IsInvincible();
end

---是否无敌
---@public
---@return boolean 是否无敌
function BattleObjCom_Buff:IsInvincibleTriggerEvent()
    return self.buffCom:IsInvincibleTriggerEvent();
end

---是否元素无敌
---@public
---@return boolean 是否无敌
---@return number[] 免疫伤害类型 （0是全部免疫）
function BattleObjCom_Buff:IsElementInvincible()
    return self.buffCom:IsElementInvincible();
end

---是否霸体
---@public
---@return boolean 是否霸体
function BattleObjCom_Buff:IsEndure()
    return self.buffCom:IsEndure();
end

---是否全是弱点
---@public
---@return number 弱点id
function BattleObjCom_Buff:IsAllWeak()
    return self.buffCom:IsAllWeak();
end

---是否所有攻击全为弱点
---@public
---@return number 弱点id
function BattleObjCom_Buff:IsAllAttackHitWeak()
    return self.buffCom:IsAllAttackHitWeak();
end

---改变技能额外伤害
---@public
---@param _skillId number 技能Id
---@param _targetObject BattleObjectBase 目标
---@return number 伤害
function BattleObjCom_Buff:CorrectExtraDamage(_skillId,_targetObject)
    return self.buffCom:CorrectExtraDamage(self:GetObject(),_skillId,_targetObject)
end

---改变受到技能伤害
---@public
---@param _skillId number 技能Id
---@return number 改变百分比
function BattleObjCom_Buff:CorrectBeDamage(_skillId)
    return self.buffCom:CorrectBeDamage(_skillId);
end

---改变对目标技能伤害
---@public
---@param _targetBattleObject BattleObjectBase 目标
---@param _skillId number 技能Id
---@return number 改变百分比
function BattleObjCom_Buff:CorrectTargetDamage(_targetBattleObject,_skillId)
    return self.buffCom:CorrectTargetDamage(_targetBattleObject,_skillId);
end

---改变受到元素伤害
---@public
---@param _elementId number 元素反应Id
---@return number 改变百分比
function BattleObjCom_Buff:CorrectElementBeDamage(_elementId)
    return self.buffCom:CorrectElementBeDamage(_elementId);
end

---改变对目标元素伤害
---@public
---@param _targetBattleObject BattleObjectBase 目标
---@param _elementId number 元素反应Id
---@return number 改变百分比
function BattleObjCom_Buff:CorrectTargetElementDamage(_targetBattleObject,_elementId)
    return self.buffCom:CorrectTargetElementDamage(_targetBattleObject,_elementId);
end

---改变受到元素伤害
---@public
---@param _elementId number 元素反应Id
---@return number 改变百分比
function BattleObjCom_Buff:CorrectElementBeDamage(_elementId)
    return self.buffCom:CorrectElementBeDamage(_elementId);
end

---改变对目标元素伤害
---@public
---@param _targetBattleObject BattleObjectBase 目标
---@param _elementId number 元素反应Id
---@return number 改变百分比
function BattleObjCom_Buff:CorrectTargetElementDamage(_targetBattleObject,_elementId)
    return self.buffCom:CorrectTargetElementDamage(_targetBattleObject,_elementId);
end

---特殊buff才能造成伤害
---@public
---@return number[] buffId
function BattleObjCom_Buff:SpecialBuffDoDamageIds()
    return self.buffCom:SpecialBuffDoDamageIds();
end

---服务器逻辑核生成用于发送给前端逻辑核的全量信息
---@public
function BattleObjCom_Buff:GetCreateSyncMessage_S2C()
    return self.buffCom:GetCreateSyncMessage_S2C();
end

---前端逻辑核用服务器发来的全量信息刷新自身数据
---@public
function BattleObjCom_Buff:OnReceiveCreateSyncMessage_S2C(_message)
    self.buffCom:OnReceiveCreateSyncMessage_S2C(_message);
end

---前端逻辑核生成用于发送给表现的层全量信息
---@public
function BattleObjCom_Buff:GetCreateSyncMessage_L2V(_message)
    return _message.objectBuffs;
end

function BattleObjCom_Buff:OnPlayerGm(_command, _params)
    if _command == "ADDBUFF" then --添加BUFF
        self:AddBattleBuffById(tonumber(_params[1]))
    elseif _command == "REMOVEBUFF" then --移除BUFF
        self:RemoveBuffByGroupId(tonumber(_params[1]))
    elseif _command == "CLEARALLBUFF" then --清空全部BUFF
        local _time = TimeUtils.battleNow(self:GetBattleId())
        for _, v in pairs(self.buffList) do
            v.endTime = _time
        end
    end
end

return BattleObjCom_Buff;