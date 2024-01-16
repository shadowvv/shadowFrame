---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/3/9 10:46

require "Lib/class"

---@class FallObjectUnit : table
---@field fallUnitId number 掉落物唯一id
---@field fallObjectId number 掉落物id
---@field parentUnit BattleUnitBase 父单位
---@field disappearTime number 消失时间点
---@field attackerNetId number 攻击者netId
---@field attackerObjId number 攻击者objectId
---@field position Vector3
---@field rotation Quaternion
FallObjectUnit = class(nil, 'FallObjectUnit');

function FallObjectUnit:ctor(_fallUnitId, _fallObjectId, _parentUnit, _disappearTime, _attackerNetId, _attackerObjId, _position, _rotation)
    self.fallUnitId = _fallUnitId
    self.fallObjectId = _fallObjectId
    self.parentUnit = _parentUnit
    self.disappearTime = _disappearTime
    self.attackerNetId = _attackerNetId
    self.attackerObjId = _attackerObjId
    self.position = _position
    self.rotation = _rotation
end

return FallObjectUnit;