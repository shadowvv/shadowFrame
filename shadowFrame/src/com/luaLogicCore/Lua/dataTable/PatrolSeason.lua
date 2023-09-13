local default = {id=0,patrolSeasonTimeID=0,patrolTaskArray=xlsNilTable,patrolSeasonOrder=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PatrolSeason_Xls : table 
PatrolSeason_Xls =
{
    ["1"]=setmetatable({id=1,patrolSeasonTimeID=51001,patrolTaskArray={[1]=1,[2]=2,[3]=3},patrolSeasonOrder=2},mt),
    ["2"]=setmetatable({id=2,patrolSeasonTimeID=51002,patrolTaskArray={[1]=4,[2]=5,[3]=6},patrolSeasonOrder=3},mt),
    ["3"]=setmetatable({id=3,patrolSeasonTimeID=51003,patrolTaskArray={[1]=7,[2]=8,[3]=9},patrolSeasonOrder=4},mt),
    ["9"]=setmetatable({id=9,patrolSeasonTimeID=51099,patrolTaskArray={[1]=10,[2]=11,[3]=12},patrolSeasonOrder=1},mt),
}
--生成获取数据的方法
---@return PatrolSeason
function GetPatrolSeasonData(id)
    return PatrolSeason_Xls[tostring(id)]
end
--自动生成注释
---@class PatrolSeason : table 
---@field id number
---@field patrolSeasonTimeID number
---@field patrolTaskArray table
---@field patrolSeasonOrder number
