---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2023/5/24 15:26

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class ChangeSkillElementBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 施法者参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
ChangeSkillElementBattleBuffEffect = class(BattleBuffEffect, 'ChangeSkillElementBattleBuffEffect');

function ChangeSkillElementBattleBuffEffect:ctor(_buffInstanceId)

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
---@param _isUnitChangeLeader boolean 是否为玩家buff换人操作
function ChangeSkillElementBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum, _isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end

    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffAndActionTemplate = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
    local skillType = math.floor(buffAndActionTemplate.behindParam[4]);
    local elementId = math.floor(buffAndActionTemplate.behindParam[5]);

    ---@type BattleObjCom_Skill
    local skillComp = _battleObject:GetComponent(BattleObjectComponentType.Skill);
    if skillComp then
        skillComp:ChangeSkillElement(skillType,elementId);
    end
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
---@param _isTimeOver boolean 是否时间到
function ChangeSkillElementBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum, _isTimeOver)
    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffAndActionTemplate = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId);
    local skillType = math.floor(buffAndActionTemplate.behindParam[4]);
    local elementId = math.floor(buffAndActionTemplate.behindParam[5]);

    ---@type BattleObjCom_Skill
    local skillComp = _battleObject:GetComponent(BattleObjectComponentType.Skill);
    if skillComp then
        skillComp:ChangeSkillElement(skillType,nil);
    end
end

---@public
---@return number buff类型Id
function ChangeSkillElementBattleBuffEffect:GetId()
    return 67;
end

---静态方法,生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function ChangeSkillElementBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase, _buffInstanceId, _param)
    return _param;
end

return ChangeSkillElementBattleBuffEffect;