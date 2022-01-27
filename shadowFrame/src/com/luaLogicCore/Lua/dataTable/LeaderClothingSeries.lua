---@class LeaderClothingSeries_Xls : table 
LeaderClothingSeries_Xls =
{
    ["1001"]={seriesId=1001,seriesIcon="role_skin_icon_suit",seriesName="电玩"},
    ["1002"]={seriesId=1002,seriesIcon="role_skin_icon_suit",seriesName="红月"},
    ["1003"]={seriesId=1003,seriesIcon="role_skin_icon_suit",seriesName="源计划"},
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
---@field seriesName string
