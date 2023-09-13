local default = {id=0,typeId1=xlsNilTable,num1=0,typeId2=xlsNilTable,num2=0,typeId3=xlsNilTable,num3=0,typeId4=xlsNilTable,num4=0,typeId5=xlsNilTable,num5=0,typeId6=xlsNilTable,num6=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LevelMonsterLimit_Xls : table 
LevelMonsterLimit_Xls =
{
    ["1"]=setmetatable({id=1,typeId1={[1]=1,[2]=2,[3]=3},num1=2,typeId2={[1]=4,[2]=5,[3]=6},num2=1,typeId3={[1]=7,[2]=8},num3=1},mt),
    ["2"]=setmetatable({id=2,typeId1={[1]=4,[2]=5,[3]=6,[4]=7,[5]=8,[6]=15,[7]=16,[8]=17,[9]=18},num1=2},mt),
    ["3"]=setmetatable({id=3,typeId1={[1]=4,[2]=5,[3]=6,[4]=7,[5]=8,[6]=15,[7]=16,[8]=17,[9]=18},num1=3},mt),
    ["4"]=setmetatable({id=4,typeId1={[1]=4,[2]=5,[3]=6,[4]=7,[5]=8,[6]=15,[7]=16,[8]=17,[9]=18},num1=1},mt),
}
--生成获取数据的方法
---@return LevelMonsterLimit
function GetLevelMonsterLimitData(id)
    return LevelMonsterLimit_Xls[tostring(id)]
end
--自动生成注释
---@class LevelMonsterLimit : table 
---@field id number
---@field typeId1 table
---@field num1 number
---@field typeId2 table
---@field num2 number
---@field typeId3 table
---@field num3 number
---@field typeId4 table
---@field num4 number
---@field typeId5 table
---@field num5 number
---@field typeId6 table
---@field num6 number
