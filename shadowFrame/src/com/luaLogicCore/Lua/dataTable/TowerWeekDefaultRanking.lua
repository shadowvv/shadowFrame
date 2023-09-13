local default = {id="",type=0,rankingBeginTime=0,rankingEndTime=0,rankingPercentageStart=0,rankingPercentageEnd=0,level=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TowerWeekDefaultRanking_Xls : table 
TowerWeekDefaultRanking_Xls =
{
    ["1"]=setmetatable({id="1",type=1,rankingBeginTime=1,rankingEndTime=1200,rankingPercentageStart=0,rankingPercentageEnd=0,level=4},mt),
    ["2"]=setmetatable({id="2",type=1,rankingBeginTime=1201,rankingEndTime=1440,rankingPercentageStart=0,rankingPercentageEnd=0,level=3},mt),
    ["3"]=setmetatable({id="3",type=1,rankingBeginTime=1401,rankingEndTime=1700,rankingPercentageStart=0,rankingPercentageEnd=0,level=2},mt),
    ["4"]=setmetatable({id="4",type=1,rankingBeginTime=1701,rankingEndTime=3700,rankingPercentageStart=0,rankingPercentageEnd=0,level=1},mt),
    ["5"]=setmetatable({id="5",type=2,rankingBeginTime=0,rankingEndTime=0,rankingPercentageStart=0,rankingPercentageEnd=30,level=3},mt),
    ["6"]=setmetatable({id="6",type=2,rankingBeginTime=0,rankingEndTime=0,rankingPercentageStart=31,rankingPercentageEnd=60,level=2},mt),
    ["7"]=setmetatable({id="7",type=2,rankingBeginTime=0,rankingEndTime=0,rankingPercentageStart=61,rankingPercentageEnd=100,level=1},mt),
}
--生成获取数据的方法
---@return TowerWeekDefaultRanking
function GetTowerWeekDefaultRankingData(id)
    return TowerWeekDefaultRanking_Xls[tostring(id)]
end
--自动生成注释
---@class TowerWeekDefaultRanking : table 
---@field id string
---@field type number
---@field rankingBeginTime number
---@field rankingEndTime number
---@field rankingPercentageStart number
---@field rankingPercentageEnd number
---@field level number
