local default = {id=0,moveSensitivity=xlsNilTable,cameraSensitivity=xlsNilTable,camAccVmin=0,camAccVmax=0,camAcceleration=0,camAccelerationK=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class GlobalBattleParameter_Xls : table 
GlobalBattleParameter_Xls =
{
    ["1"]=setmetatable({id=1,moveSensitivity={[1]=0.6,[2]=0.6},cameraSensitivity={[1]=2.7,[2]=1.8},camAccVmin=50,camAccVmax=500,camAcceleration=1.3,camAccelerationK=350},mt),
    ["2"]=setmetatable({id=2,moveSensitivity={[1]=0.6,[2]=0.6},cameraSensitivity={[1]=1.8,[2]=1.8}},mt),
    ["3"]=setmetatable({id=3,moveSensitivity={[1]=0.3,[2]=0.3},cameraSensitivity={[1]=1.0,[2]=1.0},camAccVmin=50,camAccVmax=500,camAcceleration=1.3,camAccelerationK=350},mt),
}
--生成获取数据的方法
---@return GlobalBattleParameter
function GetGlobalBattleParameterData(id)
    return GlobalBattleParameter_Xls[tostring(id)]
end
--自动生成注释
---@class GlobalBattleParameter : table 
---@field id number
---@field moveSensitivity table
---@field cameraSensitivity table
---@field camAccVmin number
---@field camAccVmax number
---@field camAcceleration number
---@field camAccelerationK number
