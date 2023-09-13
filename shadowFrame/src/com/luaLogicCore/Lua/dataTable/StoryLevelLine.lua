local default = {id=0,startPoint=0,endPoint=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class StoryLevelLine_Xls : table 
StoryLevelLine_Xls =
{
    ["1"]=setmetatable({id=1,startPoint=1101,endPoint=1102},mt),
    ["2"]=setmetatable({id=2,startPoint=1102,endPoint=1103},mt),
    ["3"]=setmetatable({id=3,startPoint=1103,endPoint=1104},mt),
    ["4"]=setmetatable({id=4,startPoint=1104,endPoint=1105},mt),
    ["5"]=setmetatable({id=5,startPoint=1105,endPoint=1106},mt),
    ["6"]=setmetatable({id=6,startPoint=1106,endPoint=1107},mt),
    ["7"]=setmetatable({id=7,startPoint=1107,endPoint=1108},mt),
    ["8"]=setmetatable({id=8,startPoint=1108,endPoint=1109},mt),
    ["9"]=setmetatable({id=9,startPoint=1109,endPoint=1110},mt),
    ["10"]=setmetatable({id=10,startPoint=1110,endPoint=1111},mt),
    ["11"]=setmetatable({id=11,startPoint=1111,endPoint=1112},mt),
    ["12"]=setmetatable({id=12,startPoint=1112,endPoint=1113},mt),
    ["13"]=setmetatable({id=13,startPoint=1113,endPoint=1114},mt),
    ["14"]=setmetatable({id=14,startPoint=1114,endPoint=1115},mt),
    ["15"]=setmetatable({id=15,startPoint=1115,endPoint=1116},mt),
    ["16"]=setmetatable({id=16,startPoint=1116,endPoint=1117},mt),
    ["17"]=setmetatable({id=17,startPoint=1200,endPoint=1201},mt),
    ["18"]=setmetatable({id=18,startPoint=1201,endPoint=1202},mt),
    ["19"]=setmetatable({id=19,startPoint=2201,endPoint=2202},mt),
    ["20"]=setmetatable({id=20,startPoint=2202,endPoint=2203},mt),
    ["21"]=setmetatable({id=21,startPoint=2203,endPoint=2204},mt),
    ["22"]=setmetatable({id=22,startPoint=2204,endPoint=2205},mt),
    ["23"]=setmetatable({id=23,startPoint=2205,endPoint=2206},mt),
    ["24"]=setmetatable({id=24,startPoint=2206,endPoint=2207},mt),
    ["25"]=setmetatable({id=25,startPoint=2207,endPoint=2208},mt),
    ["26"]=setmetatable({id=26,startPoint=2208,endPoint=2209},mt),
    ["27"]=setmetatable({id=27,startPoint=2209,endPoint=2210},mt),
    ["28"]=setmetatable({id=28,startPoint=2210,endPoint=2211},mt),
    ["29"]=setmetatable({id=29,startPoint=2211,endPoint=2212},mt),
    ["30"]=setmetatable({id=30,startPoint=2212,endPoint=2213},mt),
    ["31"]=setmetatable({id=31,startPoint=2213,endPoint=2214},mt),
    ["32"]=setmetatable({id=32,startPoint=2214,endPoint=2215},mt),
    ["33"]=setmetatable({id=33,startPoint=2215,endPoint=2216},mt),
    ["34"]=setmetatable({id=34,startPoint=2221,endPoint=2222},mt),
    ["35"]=setmetatable({id=35,startPoint=2222,endPoint=2223},mt),
}
--生成获取数据的方法
---@return StoryLevelLine
function GetStoryLevelLineData(id)
    return StoryLevelLine_Xls[tostring(id)]
end
--自动生成注释
---@class StoryLevelLine : table 
---@field id number
---@field startPoint number
---@field endPoint number
