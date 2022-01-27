---@class WorldMapRegion_Xls : table 
WorldMapRegion_Xls =
{
    ["1001"]={regionId=1001,unlock=1},
    ["1011"]={regionId=1011,unlock=0},
    ["1021"]={regionId=1021,unlock=0},
    ["1031"]={regionId=1031,unlock=0},
}
--生成获取数据的方法
---@return WorldMapRegion
function GetWorldMapRegionData(id)
    return WorldMapRegion_Xls[tostring(id)]
end
--自动生成注释
---@class WorldMapRegion : table 
---@field regionId number
---@field unlock number
