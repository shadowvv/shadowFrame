local default = {id=0,time=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SwearCardTimeConfig_Xls : table 
SwearCardTimeConfig_Xls =
{
    ["1"]=setmetatable({id=1,time=0},mt),
    ["2"]=setmetatable({id=2,time=7.95},mt),
    ["3"]=setmetatable({id=3,time=23.5},mt),
    ["4"]=setmetatable({id=4,time=36.084},mt),
    ["5"]=setmetatable({id=5,time=51.167},mt),
    ["6"]=setmetatable({id=6,time=68},mt),
    ["7"]=setmetatable({id=7,time=80},mt),
    ["8"]=setmetatable({id=8,time=93.034},mt),
    ["9"]=setmetatable({id=9,time=108.034},mt),
}
--生成获取数据的方法
---@return SwearCardTimeConfig
function GetSwearCardTimeConfigData(id)
    return SwearCardTimeConfig_Xls[tostring(id)]
end
--自动生成注释
---@class SwearCardTimeConfig : table 
---@field id number
---@field time number
