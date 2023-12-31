---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2022/1/12 11:57
--- Id生成器

---@class IdCreator : table Id生成器
---@field netId number 战斗单位id
---@field objId number 战斗物体id
---@field actId number 战斗通用显示（UI/表演/剧情） id
---@field buffInstId number 战斗buffId
---@field lightningBallId number 闪电球id（电磁反应）
IdCreator = class(nil, 'IdCreator');

function IdCreator:ctor(_battleId)
    self.battleId = _battleId
    self.netId = 1;
    self.objId = 1;
    self.actId = 1;
    self.buffInstId = 1;
    self.lightningBallId = 1;
    self.moveFrameId = 1;
    -- 自定义关卡单位id（10000起步）
    self.customLevelUnitId = 10000;
    self.skillInstId = 1;
    self.fallObjId = 1;
end

--- 获得netId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseNetId()
    local netId = self.netId;
    self.netId = self.netId + 1;
    return netId;
end

--- 获得objectId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseObjId()
    local objId = self.objId;
    self.objId = self.objId + 1;
    return objId;
end

--- 获得actId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseActId()
    local actId = self.actId;
    self.actId = self.actId + 1;
    return actId;
end

--- 获得buffInstId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseBuffInstId()
    local buffInstId = self.buffInstId;
    self.buffInstId = self.buffInstId + 1;
    return buffInstId;
end

--- 获得lightningBallId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseLightningBallId()
    local lightningBallId = self.lightningBallId;
    self.lightningBallId = self.lightningBallId + 1;
    return lightningBallId;
end

--- 获得moveFrameId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseMoveFrameId()
    local moveFrameId = self.moveFrameId;
    self.moveFrameId = self.moveFrameId + 1;
    return moveFrameId;
end

--- 获得关卡单位id然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseCustomLevelUnitId()
    local customLevelUnitId = self.customLevelUnitId;
    self.customLevelUnitId = self.customLevelUnitId + 1;
    return customLevelUnitId;
end

--- 获得skillId然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseSkillInstId()
    local skillInstId = self.skillInstId;
    self.skillInstId = self.skillInstId + 1;
    return skillInstId;
end

--- 获得掉落物ID然后自增
---@public
---@return number 获得Id然后自增
function IdCreator:GetAndIncreaseFallObjId()
    local _fallObjId = self.fallObjId;
    self.fallObjId = self.fallObjId + 1;
    return _fallObjId;
end