local default = {landmarkId=0,unlock=0,landmarkName="",landmarkText="",landmarkIcon="",landmarkIconLock="",placeIcon="",landmarkVision="",conditionId=0,regionId=0,chapterEffect=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WorldMapLandmark_Xls : table 
WorldMapLandmark_Xls =
{
    ["1011"]=setmetatable({landmarkId=1011,unlock=0,landmarkName="温德兰德",landmarkText="维涅尔谷地中的两大聚居地之一，是本地区斯露德学校的所在地。",landmarkIcon="location_place1",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=101,regionId=1001,chapterEffect=2803},mt),
    ["1021"]=setmetatable({landmarkId=1021,unlock=0,landmarkName="波伽兰德",landmarkText="维涅尔谷地中的两大聚居地之一，位于温德兰德北部，被巨大的遗迹笼罩。",landmarkIcon="location_place2",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6101112,regionId=1011,chapterEffect=2803},mt),
    ["1031"]=setmetatable({landmarkId=1031,unlock=0,landmarkName="铵格尔会议庭遗迹",landmarkText="被收录于REVO机密遗产名录的大型浮空遗迹，出于种种考量一直未进行发掘，相关文献里记载着内部大致的状况，但随着时间推移，内部的情况也在发生着变化。",landmarkIcon="location_place3",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6102112,regionId=1021,chapterEffect=2803},mt),
    ["1041"]=setmetatable({landmarkId=1041,unlock=0,landmarkName="奥拉菲斯伯格",landmarkText="位于北部极寒山区的聚居地，位置、人口等资料一概不详。",landmarkIcon="location_place4",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6103112,regionId=1031,chapterEffect=2803},mt),
    ["1051"]=setmetatable({landmarkId=1051,unlock=0,landmarkName="奥拉菲斯伯格",landmarkText="奥拉菲斯伯格的建设无疑是一个奇迹。不要忘记，人类依旧能够创造奇迹。",landmarkIcon="location_place5",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6104112,regionId=1041,chapterEffect=2803},mt),
    ["1061"]=setmetatable({landmarkId=1061,unlock=0,landmarkName="坎拉玛",landmarkText="位于沙漠中心的聚居地，有着悠久的历史。",landmarkIcon="location_place6",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6105112,regionId=1051,chapterEffect=2803},mt),
    ["1071"]=setmetatable({landmarkId=1071,unlock=0,landmarkName="坎拉玛",landmarkText="曾经，坎拉玛的周围并非一片荒芜，一场大战改变了这一切。",landmarkIcon="location_place7",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6106110,regionId=1061,chapterEffect=2803},mt),
    ["1081"]=setmetatable({landmarkId=1081,unlock=0,landmarkName="温德兰德",landmarkText="维涅尔谷地中的两大聚居地之一，是本地区斯露德学校的所在地。",landmarkIcon="location_place8",landmarkIconLock="location_place_lock",placeIcon="UIWorldMap_sprite_didian",landmarkVision="UILevel_Sprite_qizizs",conditionId=6107111,regionId=1001,chapterEffect=2803},mt),
}
--生成获取数据的方法
---@return WorldMapLandmark
function GetWorldMapLandmarkData(id)
    return WorldMapLandmark_Xls[tostring(id)]
end
--自动生成注释
---@class WorldMapLandmark : table 
---@field landmarkId number
---@field unlock number
---@field landmarkName string
---@field landmarkText string
---@field landmarkIcon string
---@field landmarkIconLock string
---@field placeIcon string
---@field landmarkVision string
---@field conditionId number
---@field regionId number
---@field chapterEffect number
