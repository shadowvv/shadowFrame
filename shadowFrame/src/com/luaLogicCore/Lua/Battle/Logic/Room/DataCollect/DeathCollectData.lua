---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/7/9 15:09
--- 死亡数据

---@class DeathCollectData : table
---@field ownerUid number 数据归属玩家id
---@field deadNetId number 死者netId
---@field deadDictId number 死者dictId
---@field deadUnitType number 死者类型
---@field killerDictId number 击杀者dictId
---@field killerUnitType number 击杀者类型
DeathCollectData = class(nil, "DeathCollectData")

function DeathCollectData:ctor(_ownerUid, _deadNetId, _deadDictId, _deadUnitType, _killerDictId, _killerUnitType)
    self.ownerUid = _ownerUid
    self.deadNetId = _deadNetId
    self.deadDictId = _deadDictId
    self.deadUnitType = _deadUnitType
    self.killerDictId = _killerDictId
    self.killerUnitType = _killerUnitType
end