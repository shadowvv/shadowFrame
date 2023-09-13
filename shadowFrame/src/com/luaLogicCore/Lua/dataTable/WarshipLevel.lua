local default = {id=0,exp=0,recoverLimit=0,storeLimit=0,addPower=0,addTalent=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipLevel_Xls : table 
WarshipLevel_Xls =
{
    ["1"]=setmetatable({id=1,exp=6,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["2"]=setmetatable({id=2,exp=12,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["3"]=setmetatable({id=3,exp=18,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["4"]=setmetatable({id=4,exp=24,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["5"]=setmetatable({id=5,exp=30,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["6"]=setmetatable({id=6,exp=45,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["7"]=setmetatable({id=7,exp=45,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["8"]=setmetatable({id=8,exp=60,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["9"]=setmetatable({id=9,exp=60,recoverLimit=16,storeLimit=300,addPower=0,addTalent=1},mt),
    ["10"]=setmetatable({id=10,exp=75,recoverLimit=16,storeLimit=300,addPower=0,addTalent=2},mt),
    ["11"]=setmetatable({id=11,exp=75,recoverLimit=16,storeLimit=300,addPower=0,addTalent=2},mt),
    ["12"]=setmetatable({id=12,exp=90,recoverLimit=16,storeLimit=300,addPower=0,addTalent=3},mt),
}
--生成获取数据的方法
---@return WarshipLevel
function GetWarshipLevelData(id)
    return WarshipLevel_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipLevel : table 
---@field id number
---@field exp number
---@field recoverLimit number
---@field storeLimit number
---@field addPower number
---@field addTalent number
