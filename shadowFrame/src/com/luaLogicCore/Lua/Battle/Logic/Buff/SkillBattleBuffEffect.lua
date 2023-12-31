---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/28 22:32

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class SkillBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 最终目标参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
SkillBattleBuffEffect = class(BattleBuffEffect, 'SkillBattleBuffEffect');

function SkillBattleBuffEffect:ctor(_buffInstanceId)

    self.buffInstanceId = _buffInstanceId;
    self.castParam = nil;
    self.customParam = nil;
    self.nextTriggerTime = 0;
    self.triggerCount = 0;

end

---触发buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
---@param _isUnitChangeLeader boolean 是否为玩家buff换人操作
function SkillBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum,_isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end

    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffAndActionTemplate = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
    local skillType = buffAndActionTemplate.behindParamint[4];
    local targetSkill = buffAndActionTemplate.behindParamint[5];
    local levelFromSkillType = buffAndActionTemplate.behindParamint[6];

    ---@type BattleObjCom_Skill
    local skillComp = _battleObject:GetComponent(BattleObjectComponentType.Skill);
    if skillComp then
        local level = skillComp:GetOriginalSkillLevelByType(levelFromSkillType);
        skillComp:SetSkillChange(skillType,targetSkill,level,false);
    end
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
function SkillBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum)
    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffAndActionTemplate = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
    local skillType = buffAndActionTemplate.behindParamint[4];

    ---@type BattleObjCom_Skill
    local skillComp = _battleObject:GetComponent(BattleObjectComponentType.Skill);
    if skillComp then
        local currentSkill = skillComp:GetFinalBuffSkill(skillType,0);
        if currentSkill == buffAndActionTemplate.behindParamint[5] then
            skillComp:SetSkillChange(skillType,nil,0,false);
        end
        if _battleObject:GetParentUnit():GetCurrentHeroObjectId() == _battleObject:GetObjectId() and currentSkill == buffAndActionTemplate.behindParamint[5] then
            _battleObject:GetParentUnit():GetActionManager():ExitSkill(true,false,buffAndActionTemplate.behindParamint[5]);
        end
    end
end

---@public
---@return number buff类型Id
function SkillBattleBuffEffect:GetId()
    return 3;
end

---生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function SkillBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase,_buffInstanceId,_param)
    return _param;
end

return SkillBattleBuffEffect;