local default = {id=0,player1=xlsNilTable,player2=xlsNilTable,player3=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PlayerSwitchRule_Xls : table 
PlayerSwitchRule_Xls =
{
    ["1"]=setmetatable({id=1,player1={[1]=1,[2]=2},player2={[1]=0},player3={[1]=0}},mt),
}
--生成获取数据的方法
---@return PlayerSwitchRule
function GetPlayerSwitchRuleData(id)
    return PlayerSwitchRule_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerSwitchRule : table 
---@field id number
---@field player1 table
---@field player2 table
---@field player3 table
