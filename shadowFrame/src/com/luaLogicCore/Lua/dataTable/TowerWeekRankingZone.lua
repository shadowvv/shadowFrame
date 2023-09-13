local default = {id="",type=0,belongRank=0,rankingStart=0,rankingEnd=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TowerWeekRankingZone_Xls : table 
TowerWeekRankingZone_Xls =
{
    ["1"]=setmetatable({id="1",type=1,belongRank=1,rankingStart=65,rankingEnd=80},mt),
    ["2"]=setmetatable({id="2",type=2,belongRank=1,rankingStart=1,rankingEnd=64},mt),
    ["3"]=setmetatable({id="3",type=3,belongRank=2,rankingStart=37,rankingEnd=40},mt),
    ["4"]=setmetatable({id="4",type=1,belongRank=2,rankingStart=25,rankingEnd=36},mt),
    ["5"]=setmetatable({id="5",type=2,belongRank=2,rankingStart=1,rankingEnd=24},mt),
    ["6"]=setmetatable({id="6",type=3,belongRank=3,rankingStart=29,rankingEnd=40},mt),
    ["7"]=setmetatable({id="7",type=1,belongRank=3,rankingStart=17,rankingEnd=28},mt),
    ["8"]=setmetatable({id="8",type=2,belongRank=3,rankingStart=1,rankingEnd=16},mt),
    ["9"]=setmetatable({id="9",type=3,belongRank=4,rankingStart=15,rankingEnd=20},mt),
    ["10"]=setmetatable({id="10",type=1,belongRank=4,rankingStart=5,rankingEnd=14},mt),
    ["11"]=setmetatable({id="11",type=2,belongRank=4,rankingStart=1,rankingEnd=4},mt),
    ["12"]=setmetatable({id="12",type=3,belongRank=5,rankingStart=6,rankingEnd=10},mt),
    ["13"]=setmetatable({id="13",type=1,belongRank=5,rankingStart=2,rankingEnd=5},mt),
    ["14"]=setmetatable({id="14",type=2,belongRank=5,rankingStart=1,rankingEnd=1},mt),
    ["15"]=setmetatable({id="15",type=3,belongRank=6,rankingStart=6,rankingEnd=10},mt),
    ["16"]=setmetatable({id="16",type=1,belongRank=6,rankingStart=1,rankingEnd=5},mt),
    ["17"]=setmetatable({id="17",type=4,belongRank=0,rankingStart=1,rankingEnd=100},mt),
}
--生成获取数据的方法
---@return TowerWeekRankingZone
function GetTowerWeekRankingZoneData(id)
    return TowerWeekRankingZone_Xls[tostring(id)]
end
--自动生成注释
---@class TowerWeekRankingZone : table 
---@field id string
---@field type number
---@field belongRank number
---@field rankingStart number
---@field rankingEnd number
