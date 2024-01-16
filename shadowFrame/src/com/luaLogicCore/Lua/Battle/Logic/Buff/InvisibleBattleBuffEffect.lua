---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2023/7/25 15:20

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class InvisibleBattleBuffEffect : BattleBuffEffect
---@field buffInstanceId number 配置Id
---@field castParam table 施法者参数
---@field customParam table 自定义参数
---@field nextTriggerTime number 下次触发时间
---@field triggerCount number 触发次数
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
InvisibleBattleBuffEffect = class(BattleBuffEffect, 'InvisibleBattleBuffEffect');

function InvisibleBattleBuffEffect:ctor(_buffInstanceId)

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
function InvisibleBattleBuffEffect:Trigger(_battleObject, _battleBuff, _stackNum, _isUnitChangeLeader)
    if not _isUnitChangeLeader then
        self.triggerCount = self.triggerCount + 1;
    end
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
---@param _isTimeOver boolean 是否时间到
function InvisibleBattleBuffEffect:Release(_battleObject, _battleBuff, _stackNum, _isTimeOver)

end

---重置buff
---@public
---@param _currentTime number 当前时间
---@param _battleObject BattleObjectBase 战斗物体
---@param _battleBuff BattleBuff buff实体
---@param _stackNum number 堆叠数量
---@param _castParam number 施法者参数
---@param _customParam table 自定义参数
function InvisibleBattleBuffEffect:Reset(_currentTime, _battleObject, _battleBuff, _stackNum, _castParam, _customParam)
    self.triggerCount = 0;
    self.castParam = _castParam;
    self.customParam = _customParam;
    ---@type BuffAndActionInstance
    local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance", self.buffInstanceId);
    if #buffAndActionInstance.param > 2 then
        self.nextTriggerTime = _currentTime + buffAndActionInstance.param[2] * 1000;
    end
    self:Release(_battleObject, _battleBuff, _stackNum - 1);
end

---@public
---@return number buff类型Id
function InvisibleBattleBuffEffect:GetId()
    return 0;
end

---静态方法,生成施法者自定义参数
---@public
---@param _battleObjectBase BattleObjectBase 释放buff的单位
---@param _buffInstanceId number BuffAndActionInstance表id
---@param _param table 自定义参数
---@return table 施法者参数
function InvisibleBattleBuffEffect:GenerateCostCustomParam(_battleObjectBase, _buffInstanceId, _param)
    return _param;
end

return InvisibleBattleBuffEffect;