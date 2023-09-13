local default = {id=0,endTime=0,speed=0,acceleratedSpeed=0,acceleratedTime=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RepelShoot_Xls : table 
RepelShoot_Xls =
{
    ["1"]=setmetatable({id=1,endTime=1,speed=10,acceleratedSpeed=10,acceleratedTime=0.5},mt),
    ["2"]=setmetatable({id=2,endTime=1,speed=10,acceleratedSpeed=10,acceleratedTime=0.5},mt),
    ["3"]=setmetatable({id=3,endTime=1,speed=10,acceleratedSpeed=10,acceleratedTime=0.5},mt),
}
--生成获取数据的方法
---@return RepelShoot
function GetRepelShootData(id)
    return RepelShoot_Xls[tostring(id)]
end
--自动生成注释
---@class RepelShoot : table 
---@field id number
---@field endTime number
---@field speed number
---@field acceleratedSpeed number
---@field acceleratedTime number
