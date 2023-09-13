local default = {seriesId=0,seriesIcon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderClothingSeries_Xls : table 
LeaderClothingSeries_Xls =
{
    ["1001"]=setmetatable({seriesId=1001,seriesIcon="role_skin_icon_suit"},mt),
    ["1002"]=setmetatable({seriesId=1002,seriesIcon="role_skin_icon_suit"},mt),
    ["1003"]=setmetatable({seriesId=1003,seriesIcon="role_skin_icon_suit"},mt),
}
--生成获取数据的方法
---@return LeaderClothingSeries
function GetLeaderClothingSeriesData(id)
    return LeaderClothingSeries_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderClothingSeries : table 
---@field seriesId number
---@field seriesIcon string
