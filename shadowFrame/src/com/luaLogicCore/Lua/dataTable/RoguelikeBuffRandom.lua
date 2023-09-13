local default = {id=0,groupId=0,num=0,buffGroupId=0,buffGroupType=0,weight=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeBuffRandom_Xls : table 
RoguelikeBuffRandom_Xls =
{
    ["1"]=setmetatable({id=1,groupId=100001,num=3,buffGroupId=1001,buffGroupType=1,weight=100},mt),
    ["2"]=setmetatable({id=2,groupId=100001,num=3,buffGroupId=1002,buffGroupType=2,weight=100},mt),
    ["3"]=setmetatable({id=3,groupId=100001,num=3,buffGroupId=1003,buffGroupType=3,weight=100},mt),
    ["4"]=setmetatable({id=4,groupId=100001,num=3,buffGroupId=1004,buffGroupType=4,weight=100},mt),
    ["5"]=setmetatable({id=5,groupId=100001,num=3,buffGroupId=1005,buffGroupType=5,weight=100},mt),
    ["6"]=setmetatable({id=6,groupId=100002,num=3,buffGroupId=1011,buffGroupType=1,weight=100},mt),
    ["7"]=setmetatable({id=7,groupId=100002,num=3,buffGroupId=1012,buffGroupType=2,weight=100},mt),
    ["8"]=setmetatable({id=8,groupId=100002,num=3,buffGroupId=1013,buffGroupType=3,weight=100},mt),
    ["9"]=setmetatable({id=9,groupId=100002,num=3,buffGroupId=1014,buffGroupType=4,weight=100},mt),
    ["10"]=setmetatable({id=10,groupId=100002,num=3,buffGroupId=1015,buffGroupType=5,weight=100},mt),
    ["11"]=setmetatable({id=11,groupId=100011,num=3,buffGroupId=2001,buffGroupType=1,weight=100},mt),
    ["12"]=setmetatable({id=12,groupId=100011,num=3,buffGroupId=2002,buffGroupType=2,weight=100},mt),
    ["13"]=setmetatable({id=13,groupId=100011,num=3,buffGroupId=2003,buffGroupType=3,weight=100},mt),
    ["14"]=setmetatable({id=14,groupId=100011,num=3,buffGroupId=2004,buffGroupType=4,weight=100},mt),
    ["15"]=setmetatable({id=15,groupId=100011,num=3,buffGroupId=2005,buffGroupType=5,weight=100},mt),
    ["16"]=setmetatable({id=16,groupId=100012,num=3,buffGroupId=2011,buffGroupType=1,weight=100},mt),
    ["17"]=setmetatable({id=17,groupId=100012,num=3,buffGroupId=2012,buffGroupType=2,weight=100},mt),
    ["18"]=setmetatable({id=18,groupId=100012,num=3,buffGroupId=2013,buffGroupType=3,weight=100},mt),
    ["19"]=setmetatable({id=19,groupId=100012,num=3,buffGroupId=2014,buffGroupType=4,weight=100},mt),
    ["20"]=setmetatable({id=20,groupId=100012,num=3,buffGroupId=2015,buffGroupType=5,weight=100},mt),
    ["21"]=setmetatable({id=21,groupId=100013,num=3,buffGroupId=2021,buffGroupType=1,weight=100},mt),
    ["22"]=setmetatable({id=22,groupId=100013,num=3,buffGroupId=2022,buffGroupType=2,weight=100},mt),
    ["23"]=setmetatable({id=23,groupId=100013,num=3,buffGroupId=2023,buffGroupType=3,weight=100},mt),
    ["24"]=setmetatable({id=24,groupId=100013,num=3,buffGroupId=2024,buffGroupType=4,weight=100},mt),
    ["25"]=setmetatable({id=25,groupId=100013,num=3,buffGroupId=2025,buffGroupType=5,weight=100},mt),
    ["26"]=setmetatable({id=26,groupId=100014,num=3,buffGroupId=2031,buffGroupType=1,weight=100},mt),
    ["27"]=setmetatable({id=27,groupId=100014,num=3,buffGroupId=2032,buffGroupType=2,weight=100},mt),
    ["28"]=setmetatable({id=28,groupId=100014,num=3,buffGroupId=2033,buffGroupType=3,weight=100},mt),
    ["29"]=setmetatable({id=29,groupId=100014,num=3,buffGroupId=2034,buffGroupType=4,weight=100},mt),
    ["30"]=setmetatable({id=30,groupId=100014,num=3,buffGroupId=2035,buffGroupType=5,weight=100},mt),
    ["31"]=setmetatable({id=31,groupId=100015,num=3,buffGroupId=2041,buffGroupType=1,weight=100},mt),
    ["32"]=setmetatable({id=32,groupId=100015,num=3,buffGroupId=2042,buffGroupType=2,weight=100},mt),
    ["33"]=setmetatable({id=33,groupId=100015,num=3,buffGroupId=2043,buffGroupType=3,weight=100},mt),
    ["34"]=setmetatable({id=34,groupId=100015,num=3,buffGroupId=2044,buffGroupType=4,weight=100},mt),
    ["35"]=setmetatable({id=35,groupId=100015,num=3,buffGroupId=2045,buffGroupType=5,weight=100},mt),
    ["36"]=setmetatable({id=36,groupId=110001,num=3,buffGroupId=1001,buffGroupType=1,weight=200},mt),
    ["37"]=setmetatable({id=37,groupId=110001,num=3,buffGroupId=1002,buffGroupType=2,weight=100},mt),
    ["38"]=setmetatable({id=38,groupId=110001,num=3,buffGroupId=1003,buffGroupType=3,weight=100},mt),
    ["39"]=setmetatable({id=39,groupId=110001,num=3,buffGroupId=1004,buffGroupType=4,weight=100},mt),
    ["40"]=setmetatable({id=40,groupId=110001,num=3,buffGroupId=1005,buffGroupType=5,weight=100},mt),
    ["41"]=setmetatable({id=41,groupId=110002,num=3,buffGroupId=1011,buffGroupType=1,weight=200},mt),
    ["42"]=setmetatable({id=42,groupId=110002,num=3,buffGroupId=1012,buffGroupType=2,weight=100},mt),
    ["43"]=setmetatable({id=43,groupId=110002,num=3,buffGroupId=1013,buffGroupType=3,weight=100},mt),
    ["44"]=setmetatable({id=44,groupId=110002,num=3,buffGroupId=1014,buffGroupType=4,weight=100},mt),
    ["45"]=setmetatable({id=45,groupId=110002,num=3,buffGroupId=1015,buffGroupType=5,weight=100},mt),
    ["46"]=setmetatable({id=46,groupId=120001,num=3,buffGroupId=1001,buffGroupType=1,weight=100},mt),
    ["47"]=setmetatable({id=47,groupId=120001,num=3,buffGroupId=1002,buffGroupType=2,weight=200},mt),
    ["48"]=setmetatable({id=48,groupId=120001,num=3,buffGroupId=1003,buffGroupType=3,weight=100},mt),
    ["49"]=setmetatable({id=49,groupId=120001,num=3,buffGroupId=1004,buffGroupType=4,weight=100},mt),
    ["50"]=setmetatable({id=50,groupId=120001,num=3,buffGroupId=1005,buffGroupType=5,weight=100},mt),
    ["51"]=setmetatable({id=51,groupId=120002,num=3,buffGroupId=1011,buffGroupType=1,weight=100},mt),
    ["52"]=setmetatable({id=52,groupId=120002,num=3,buffGroupId=1012,buffGroupType=2,weight=200},mt),
    ["53"]=setmetatable({id=53,groupId=120002,num=3,buffGroupId=1013,buffGroupType=3,weight=100},mt),
    ["54"]=setmetatable({id=54,groupId=120002,num=3,buffGroupId=1014,buffGroupType=4,weight=100},mt),
    ["55"]=setmetatable({id=55,groupId=120002,num=3,buffGroupId=1015,buffGroupType=5,weight=100},mt),
    ["56"]=setmetatable({id=56,groupId=130001,num=3,buffGroupId=1001,buffGroupType=1,weight=100},mt),
    ["57"]=setmetatable({id=57,groupId=130001,num=3,buffGroupId=1002,buffGroupType=2,weight=100},mt),
    ["58"]=setmetatable({id=58,groupId=130001,num=3,buffGroupId=1003,buffGroupType=3,weight=200},mt),
    ["59"]=setmetatable({id=59,groupId=130001,num=3,buffGroupId=1004,buffGroupType=4,weight=100},mt),
    ["60"]=setmetatable({id=60,groupId=130001,num=3,buffGroupId=1005,buffGroupType=5,weight=100},mt),
    ["61"]=setmetatable({id=61,groupId=130002,num=3,buffGroupId=1011,buffGroupType=1,weight=100},mt),
    ["62"]=setmetatable({id=62,groupId=130002,num=3,buffGroupId=1012,buffGroupType=2,weight=100},mt),
    ["63"]=setmetatable({id=63,groupId=130002,num=3,buffGroupId=1013,buffGroupType=3,weight=200},mt),
    ["64"]=setmetatable({id=64,groupId=130002,num=3,buffGroupId=1014,buffGroupType=4,weight=100},mt),
    ["65"]=setmetatable({id=65,groupId=130002,num=3,buffGroupId=1015,buffGroupType=5,weight=100},mt),
    ["66"]=setmetatable({id=66,groupId=140001,num=3,buffGroupId=1001,buffGroupType=1,weight=100},mt),
    ["67"]=setmetatable({id=67,groupId=140001,num=3,buffGroupId=1002,buffGroupType=2,weight=100},mt),
    ["68"]=setmetatable({id=68,groupId=140001,num=3,buffGroupId=1003,buffGroupType=3,weight=100},mt),
    ["69"]=setmetatable({id=69,groupId=140001,num=3,buffGroupId=1004,buffGroupType=4,weight=200},mt),
    ["70"]=setmetatable({id=70,groupId=140001,num=3,buffGroupId=1005,buffGroupType=5,weight=100},mt),
    ["71"]=setmetatable({id=71,groupId=140002,num=3,buffGroupId=1011,buffGroupType=1,weight=100},mt),
    ["72"]=setmetatable({id=72,groupId=140002,num=3,buffGroupId=1012,buffGroupType=2,weight=100},mt),
    ["73"]=setmetatable({id=73,groupId=140002,num=3,buffGroupId=1013,buffGroupType=3,weight=100},mt),
    ["74"]=setmetatable({id=74,groupId=140002,num=3,buffGroupId=1014,buffGroupType=4,weight=200},mt),
    ["75"]=setmetatable({id=75,groupId=140002,num=3,buffGroupId=1015,buffGroupType=5,weight=100},mt),
}
--生成获取数据的方法
---@return RoguelikeBuffRandom
function GetRoguelikeBuffRandomData(id)
    return RoguelikeBuffRandom_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeBuffRandom : table 
---@field id number
---@field groupId number
---@field num number
---@field buffGroupId number
---@field buffGroupType number
---@field weight number
