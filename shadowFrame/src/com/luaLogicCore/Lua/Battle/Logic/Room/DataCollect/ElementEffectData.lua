---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2023/5/25 15:09
--- 元素反应数据

---@class ElementEffectData : table
---@field ownerUid number 数据归属玩家id
---@field elementId number 元素id
---@field sourceDictId number 攻击者dictId
---@field sourceUnitType number 攻击者类型
---@field targetDictId number 目标dictId
---@field targetUnitType number 目标类型
ElementEffectData = class(nil, "ElementEffectData")

function ElementEffectData:ctor(_ownerUid, _elementId, _sourceDictId, _sourceUnitType, _targetDictId, _targetUnitType)
    self.ownerUid = _ownerUid
    self.elementId = _elementId
    self.sourceDictId = _sourceDictId
    self.sourceUnitType = _sourceUnitType
    self.targetDictId = _targetDictId
    self.targetUnitType = _targetUnitType
end