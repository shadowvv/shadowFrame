local default = {regionId=0,unlock=0,regionName="",regionLock="",conditionId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WorldMapRegion_Xls : table 
WorldMapRegion_Xls =
{
    ["1001"]=setmetatable({regionId=1001,unlock=1,regionName="维涅尔谷地",regionLock="UIWorldmapUIMasknew_1"},mt),
    ["1011"]=setmetatable({regionId=1011,unlock=0,regionName="波伽兰德",regionLock="UIWorldmapUIMasknew_2",conditionId=6101112},mt),
    ["1021"]=setmetatable({regionId=1021,unlock=0,regionName="诺斯海姆地区",regionLock="UIWorldmapUIMasknew_3",conditionId=6102112},mt),
    ["1031"]=setmetatable({regionId=1031,unlock=0,regionName="诺斯海姆地区",regionLock="UIWorldmapUIMasknew_4",conditionId=6103112},mt),
    ["1041"]=setmetatable({regionId=1041,unlock=0,regionName="奥菲利亚湖区",regionLock="UIWorldmapUIMasknew_5",conditionId=6104112},mt),
    ["1051"]=setmetatable({regionId=1051,unlock=0,regionName="坎拉玛",regionLock="UIWorldmapUIMasknew_6",conditionId=6105112},mt),
    ["1061"]=setmetatable({regionId=1061,unlock=0,regionName="坎拉玛",regionLock="UIWorldmapUIMasknew_7",conditionId=6106110},mt),
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
---@field regionName string
---@field regionLock string
---@field conditionId number
