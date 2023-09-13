local default = {id=0,originalTimelineId=0,clothingId=0,alternateTimelineId=0,comment=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TimelineAlternate_Xls : table 
TimelineAlternate_Xls =
{
    ["1"]=setmetatable({id=1,originalTimelineId=1021,clothingId=4021102,alternateTimelineId=1121,comment="韦伯白礼服胜利"},mt),
    ["2"]=setmetatable({id=2,originalTimelineId=100021,clothingId=4021102,alternateTimelineId=1000211,comment="韦伯白礼服极奏"},mt),
    ["3"]=setmetatable({id=3,originalTimelineId=1021,clothingId=4021103,alternateTimelineId=1221,comment="韦伯黑礼服胜利"},mt),
    ["4"]=setmetatable({id=4,originalTimelineId=100021,clothingId=4021103,alternateTimelineId=1000212,comment="韦伯黑礼服极奏"},mt),
    ["5"]=setmetatable({id=5,originalTimelineId=1023,clothingId=4023102,alternateTimelineId=1123,comment="麦当然骑士胜利"},mt),
    ["6"]=setmetatable({id=6,originalTimelineId=100023,clothingId=4023102,alternateTimelineId=1000231,comment="麦当然骑士极奏"},mt),
    ["7"]=setmetatable({id=7,originalTimelineId=1001,clothingId=4001102,alternateTimelineId=1101,comment="法尼娅胜利"},mt),
    ["8"]=setmetatable({id=8,originalTimelineId=100001,clothingId=4001102,alternateTimelineId=1000011,comment="法尼娅极奏"},mt),
}
--生成获取数据的方法
---@return TimelineAlternate
function GetTimelineAlternateData(id)
    return TimelineAlternate_Xls[tostring(id)]
end
--自动生成注释
---@class TimelineAlternate : table 
---@field id number
---@field originalTimelineId number
---@field clothingId number
---@field alternateTimelineId number
---@field comment string
