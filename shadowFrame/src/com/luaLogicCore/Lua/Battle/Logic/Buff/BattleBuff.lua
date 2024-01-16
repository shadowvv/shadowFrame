---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/3/18 16:18

require "Lib/class"
require "Battle/Logic/Buff/BattleBuffEffect"

---@class BattleBuff : table
---@field instId number 唯一id
---@field buffGroupId number 配置id
---@field startTime number 开始时间
---@field endTime number 结束时间
---@field stackNum number 堆叠数量
---@field lastMaxStackNum number 堆叠数量(历史最高)
---@field buffEffects BattleBuffEffect[] buff效果数组
---@field castObjId number 施法者objId
---@field castUnitId number 施法者unitId
---@field bodyPartId number 部位
---@field upPercent number[] buff效果提升
---@field generateStackInfo table msg.UnitGenerateStackInfo
BattleBuff = class(nil, 'BattleBuff');

---buff目标
BATTLE_BUFF_TARGET = {
    TARGET_HIT = 0;
    TARGET_SELF = 1;
    TARGET_SELF_TEAM = 2;
    TARGET_SELF_SUMMON = 3;
    TARGET_OPPONENT_SUMMON = 4;
    TARGET_OPPONENT = 5;
    TARGET_OPPONENT_TEAM = 6;
    TARGET_MATE = 7;
    TARGET_MATE_TEAM = 8;
    TARGET_UNIT = 9;
}

BATTLE_BUFF_CLEAN_TYPE = {
    CLEAN_TYPE_ALL_WEAPON_COST = 1;
    CLEAN_TYPE_STACK_NUM = 2;
    CLEAN_TYPE_RELOAD = 3;
}

BATTLE_BUFF_TRIGGER_TYPE = {
    BATTLE_BUFF_TRIGGER_TYPE_ALL = 1;
    BATTLE_BUFF_TRIGGER_TYPE_ON = 2;
    BATTLE_BUFF_TRIGGER_TYPE_OFF = 3;
}

BATTLE_BUFF_ATTACH_TYPE = {
    BATTLE_BUFF_ATTACH_SELF = 1;  --自身obj
    BATTLE_BUFF_ATTACH_TEAM = 2;  --阵上阵下所有obj
    BATTLE_BUFF_ATTACH_UNIT = 3;  --添加给unit
}

function BattleBuff:ctor()
    self.instId = 1;
    self.buffGroupId = 2;
    self.startTime = 3;
    self.endTime = 0;
    self.stackNum = 0;
    self.lastMaxStackNum = 0;
    self.castObjId = 0;
    self.castUnitId = 0;
    self.castSkillId = 0;
    self.generateStackInfo = nil
    self.bodyPartId = 0;
    self.upPercent = {};
    self.upPercent[0] = 0;

    self.buffEffects = {};
    self.isReset = false;
end

---触发buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _currentTime number 当前时间
---@param _extraTime number buff额外持续时间
function BattleBuff:AttachBuff(_battleObject,_currentTime,_extraTime)
    local buffGroup = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffGroup",self.buffGroupId);
    local durationTime = buffGroup.durationTime * 1000;
    if _extraTime then
        durationTime = durationTime + _extraTime * 1000;
    end
    self.startTime = _currentTime;
    self.endTime = _currentTime + durationTime;

    ---@type BattleObjCom_Buff
    local buffCom = _battleObject:GetComponent(BattleObjectComponentType.Buff);

    for i, v in pairs(self.buffEffects) do
        local buffAndActionInstance = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",v.buffInstanceId);
        if #buffAndActionInstance.param > 2 then
            v.nextTriggerTime = _currentTime + buffCom:GetBuffInstanceParam(v.buffInstanceId,2,buffAndActionInstance.param[2]) * 1000;
        end
        v:Attach(_battleObject, self);
    end

    -- buff数据统计（这个太多了，就不加事件了）
    _battleObject:GetBattleRoom().dataCollectManager:OnBuffAttach(self.castUnitId, _battleObject:GetParentUnit():GetNetId(), self.buffGroupId)
end

---触发buff
---@public
---@param _battleUnitBase BattleUnitBase 战斗物体
---@param _currentTime number 当前时间
---@param _extraTime number buff额外持续时间
function BattleBuff:AttachUnitBuff(_battleUnitBase,_currentTime,_extraTime)
    local buffGroup = _battleUnitBase:GetBattleRoom().inputDataSource:GetDict("BuffGroup",self.buffGroupId);
    local durationTime = buffGroup.durationTime * 1000;
    if _extraTime then
        durationTime = durationTime + _extraTime * 1000;
    end
    self.startTime = _currentTime;
    self.endTime = _currentTime + durationTime;

    ---@type BattleUnitCom_Buff
    local buffCom = _battleUnitBase:GetComponent(BattleUnitComponentType.Buff);
    for i, v in pairs(self.buffEffects) do
        local buffAndActionInstance = _battleUnitBase:GetBattleRoom().inputDataSource:GetDict("BuffAndActionInstance",v.buffInstanceId);
        if #buffAndActionInstance.param > 2 then
            v.nextTriggerTime = _currentTime + buffCom:GetBuffInstanceParam(v.buffInstanceId,2,buffAndActionInstance.param[2]) * 1000;
        end
        v:Attach(_battleUnitBase:GetCurrentHeroObject(), self);
    end

    -- buff数据统计（这个太多了，就不加事件了）
    _battleUnitBase:GetBattleRoom().dataCollectManager:OnBuffAttach(self.castUnitId, _battleUnitBase:GetNetId(), self.buffGroupId)
end

---释放buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _isTimeOver boolean 是否强制移除
function BattleBuff:ReleaseBuff(_battleObject,_isTimeOver)
    for i, v in pairs(self.buffEffects) do
        if _battleObject:GetObjectId() ~= v.triggerObjectId then
            return;
        end
        v:Release(_battleObject,self,self.stackNum,_isTimeOver);
    end
end

---重置buff
---@public
---@param _battleObject BattleObjectBase 战斗物体
---@param _currentTime number 当前时间
---@param _battleBuffCastTemplate BattleBuffCastTemplate 施法者参数
---@param _extraTime number buff额外持续时间
function BattleBuff:ResetTime(_battleObject,_currentTime,_battleBuffCastTemplate,_extraTime)
    --if self.isReset then
    --    return;
    --end
    self.isReset = true;
    local buffGroup = _battleObject:GetBattleRoom().inputDataSource:GetDict("BuffGroup",self.buffGroupId);
    local durationTime = buffGroup.durationTime * 1000;
    if _extraTime then
        durationTime = durationTime + _extraTime * 1000;
    end
    self.startTime = _currentTime;
    self.endTime = _currentTime + durationTime;
    for i, v in pairs(self.buffEffects) do
        local effectCastParam = nil;
        if _battleBuffCastTemplate.castParam then
            effectCastParam = _battleBuffCastTemplate.castParam;
            if _battleBuffCastTemplate.castParam[v.buffInstanceId] then
                effectCastParam = _battleBuffCastTemplate.castParam[v.buffInstanceId];
            end
        end
        local customCastParam = nil;
        if _battleBuffCastTemplate.customParam and _battleBuffCastTemplate.customParam[v.buffInstanceId] then
            customCastParam = _battleBuffCastTemplate.customParam[v.buffInstanceId];
        end
        v:Reset(_currentTime,_battleObject,self,self.stackNum,effectCastParam,customCastParam);
    end
    self.castUnitId = _battleBuffCastTemplate.castUnitId;
    self.castObjId = _battleBuffCastTemplate.castObjId;
    self.upPercent = _battleBuffCastTemplate.upPercent;
end

---重置buff
---@public
---@param _battleUnitBase BattleUnitBase 战斗物体
---@param _currentTime number 当前时间
---@param _battleBuffCastTemplate BattleBuffCastTemplate 施法者参数
---@param _extraTime number buff额外持续时间
function BattleBuff:UnitResetTime(_battleUnitBase,_currentTime,_battleBuffCastTemplate,_extraTime)
    --if self.isReset then
    --    return;
    --end
    self.isReset = true;
    local buffGroup = _battleUnitBase:GetBattleRoom().inputDataSource:GetDict("BuffGroup",self.buffGroupId);
    local durationTime = buffGroup.durationTime * 1000;
    if _extraTime then
        durationTime = durationTime + _extraTime * 1000;
    end
    self.startTime = _currentTime;
    self.endTime = _currentTime + durationTime;
    for i, v in pairs(self.buffEffects) do
        local effectCastParam = nil;
        if _battleBuffCastTemplate.unitCastParam then
            effectCastParam = _battleBuffCastTemplate.unitCastParam;
            if _battleBuffCastTemplate.unitCastParam[v.buffInstanceId] then
                effectCastParam = _battleBuffCastTemplate.unitCastParam[v.buffInstanceId];
            end
        end
        local customCastParam = nil;
        if _battleBuffCastTemplate.unitCustomParam and _battleBuffCastTemplate.unitCustomParam[v.buffInstanceId] then
            customCastParam = _battleBuffCastTemplate.unitCustomParam[v.buffInstanceId];
        end
        v:Reset(_currentTime,_battleUnitBase:GetCurrentHeroObject(),self,self.stackNum,effectCastParam,customCastParam);
    end

    self.castUnitId = _battleBuffCastTemplate.castUnitId;
    self.castObjId = _battleBuffCastTemplate.castObjId;
    self.upPercent = _battleBuffCastTemplate.upPercent;
end

---获取当前BUFF被闪电链传导附加的伤害修正系数
---@public
function BattleBuff:GetEleBallSpreadHurtFix()
    if not self.generateStackInfo then return 0, 1 end
    if not self.generateStackInfo.eleBallSpreadHurtFix then return 0, 1 end
    return self.generateStackInfo.elementBallCount, self.generateStackInfo.eleBallSpreadHurtFix
end

return BattleBuff;