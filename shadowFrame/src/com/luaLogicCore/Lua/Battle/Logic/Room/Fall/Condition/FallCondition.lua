---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/3/8 15:25

require "Lib/class"

---@class FallCondition : table
---@field id number
---@field name string
---@field oper FallConditionBase
FallCondition = class(nil, 'FallCondition');

function FallCondition:ctor(_id, _name, _oper)
    self.id = _id;
    self.name = _name;
    self.oper = _oper;
end

---@public
function FallCondition:GetId()
    return self.id
end

---@public
function FallCondition:GetName()
    return self.name
end

---@public
function FallCondition:GetOper()
    return self.oper
end

return FallCondition;