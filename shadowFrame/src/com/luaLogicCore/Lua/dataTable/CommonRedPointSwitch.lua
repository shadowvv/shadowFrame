local default = {id=0,isOpen=0,state=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonRedPointSwitch_Xls : table 
CommonRedPointSwitch_Xls =
{
    ["1"]=setmetatable({id=1,isOpen=1,state=1},mt),
    ["2"]=setmetatable({id=2,isOpen=1,state=1},mt),
    ["3"]=setmetatable({id=3,isOpen=1,state=1},mt),
    ["4"]=setmetatable({id=4,isOpen=1,state=1},mt),
    ["5"]=setmetatable({id=5,isOpen=1,state=1},mt),
    ["6"]=setmetatable({id=6,isOpen=1,state=1},mt),
    ["7"]=setmetatable({id=7,isOpen=1,state=1},mt),
    ["8"]=setmetatable({id=8,isOpen=1,state=1},mt),
    ["9"]=setmetatable({id=9,isOpen=1,state=1},mt),
    ["10"]=setmetatable({id=10,isOpen=1,state=1},mt),
    ["11"]=setmetatable({id=11,isOpen=1,state=1},mt),
    ["12"]=setmetatable({id=12,isOpen=1,state=0},mt),
    ["13"]=setmetatable({id=13,isOpen=1,state=1},mt),
    ["14"]=setmetatable({id=14,isOpen=1,state=1},mt),
}
--生成获取数据的方法
---@return CommonRedPointSwitch
function GetCommonRedPointSwitchData(id)
    return CommonRedPointSwitch_Xls[tostring(id)]
end
--自动生成注释
---@class CommonRedPointSwitch : table 
---@field id number
---@field isOpen number
---@field state number
