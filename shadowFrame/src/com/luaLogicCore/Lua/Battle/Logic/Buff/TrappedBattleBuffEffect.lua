---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/7/5 16:17

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class TrappedBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 施法者参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
TrappedBattleBuffEffect = class(BattleBuffEffect, 'TrappedBattleBuffEffect');

function TrappedBattleBuffEffect:ctor(_buffInstanceId)

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
function TrappedBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum,_isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end
    ---@type BuffGroup
    local buffGroup = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffGroup",_battleBuff.buffGroupId);
    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",self.buffInstanceId);
    ---@type BuffAndActionTemplate
    local buffTemplate = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionTemplate",buffAndActionInstance.templateId)

    _battleObject:GetParentUnit():GetActionManager():Trapped(buffGroup.specialState,buffGroup.durationTime*(1+_battleBuff.upPercent[buffTemplate.metaType]));
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
function TrappedBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum)
    local actionState = _battleObject:GetParentUnit():GetActionManager();
    if actionState:CheckInState(TrappedActionState:GetId()) then
        actionState:Exit(actionState.currentStates[TrappedActionState:GetId()]);
        actionState:Idle();
    end
end

---@public
---@return number buff类型Id
function TrappedBattleBuffEffect:GetId()
    return 36;
end

---生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function TrappedBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase,_buffInstanceId,_param)
    return _param;
end

return TrappedBattleBuffEffect;