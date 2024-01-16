---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/28 18:43

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class InvincibleBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 最终目标参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
InvincibleBattleBuffEffect = class(BattleBuffEffect, 'InvincibleBattleBuffEffect');

function InvincibleBattleBuffEffect:ctor(_buffInstanceId)

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
function InvincibleBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum,_isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
function InvincibleBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum)

end

---@public
---@return number buff类型Id
function InvincibleBattleBuffEffect:GetId()
    return 1;
end

---生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function InvincibleBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase,_buffInstanceId,_param)
    return _param;
end

return InvincibleBattleBuffEffect;