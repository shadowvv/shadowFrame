local default = {id=0,lv=0,levelConsumeId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderLv_Xls : table 
LeaderLv_Xls =
{
    ["1"]=setmetatable({id=1,lv=1,levelConsumeId=200101100},mt),
    ["2"]=setmetatable({id=2,lv=2,levelConsumeId=200101101},mt),
    ["3"]=setmetatable({id=3,lv=3,levelConsumeId=200101102},mt),
    ["4"]=setmetatable({id=4,lv=4,levelConsumeId=200101103},mt),
    ["5"]=setmetatable({id=5,lv=5,levelConsumeId=200101104},mt),
    ["6"]=setmetatable({id=6,lv=6,levelConsumeId=200101105},mt),
    ["7"]=setmetatable({id=7,lv=7,levelConsumeId=200101106},mt),
    ["8"]=setmetatable({id=8,lv=8,levelConsumeId=200101107},mt),
    ["9"]=setmetatable({id=9,lv=9,levelConsumeId=200101108},mt),
    ["10"]=setmetatable({id=10,lv=10,levelConsumeId=200101109},mt),
    ["11"]=setmetatable({id=11,lv=11,levelConsumeId=200101110},mt),
    ["12"]=setmetatable({id=12,lv=12,levelConsumeId=200101111},mt),
    ["13"]=setmetatable({id=13,lv=13,levelConsumeId=200101112},mt),
    ["14"]=setmetatable({id=14,lv=14,levelConsumeId=200101113},mt),
    ["15"]=setmetatable({id=15,lv=15,levelConsumeId=200101114},mt),
    ["16"]=setmetatable({id=16,lv=16,levelConsumeId=200101115},mt),
    ["17"]=setmetatable({id=17,lv=17,levelConsumeId=200101116},mt),
    ["18"]=setmetatable({id=18,lv=18,levelConsumeId=200101117},mt),
    ["19"]=setmetatable({id=19,lv=19,levelConsumeId=200101118},mt),
    ["20"]=setmetatable({id=20,lv=20,levelConsumeId=200101119},mt),
    ["21"]=setmetatable({id=21,lv=21,levelConsumeId=200101120},mt),
    ["22"]=setmetatable({id=22,lv=22,levelConsumeId=200101121},mt),
    ["23"]=setmetatable({id=23,lv=23,levelConsumeId=200101122},mt),
    ["24"]=setmetatable({id=24,lv=24,levelConsumeId=200101123},mt),
    ["25"]=setmetatable({id=25,lv=25,levelConsumeId=200101124},mt),
    ["26"]=setmetatable({id=26,lv=26,levelConsumeId=200101125},mt),
    ["27"]=setmetatable({id=27,lv=27,levelConsumeId=200101126},mt),
    ["28"]=setmetatable({id=28,lv=28,levelConsumeId=200101127},mt),
    ["29"]=setmetatable({id=29,lv=29,levelConsumeId=200101128},mt),
    ["30"]=setmetatable({id=30,lv=30,levelConsumeId=200101129},mt),
    ["31"]=setmetatable({id=31,lv=31,levelConsumeId=200101130},mt),
    ["32"]=setmetatable({id=32,lv=32,levelConsumeId=200101131},mt),
    ["33"]=setmetatable({id=33,lv=33,levelConsumeId=200101132},mt),
    ["34"]=setmetatable({id=34,lv=34,levelConsumeId=200101133},mt),
    ["35"]=setmetatable({id=35,lv=35,levelConsumeId=200101134},mt),
    ["36"]=setmetatable({id=36,lv=36,levelConsumeId=200101135},mt),
    ["37"]=setmetatable({id=37,lv=37,levelConsumeId=200101136},mt),
    ["38"]=setmetatable({id=38,lv=38,levelConsumeId=200101137},mt),
    ["39"]=setmetatable({id=39,lv=39,levelConsumeId=200101138},mt),
    ["40"]=setmetatable({id=40,lv=40,levelConsumeId=200101139},mt),
    ["41"]=setmetatable({id=41,lv=41,levelConsumeId=200101140},mt),
    ["42"]=setmetatable({id=42,lv=42,levelConsumeId=200101141},mt),
    ["43"]=setmetatable({id=43,lv=43,levelConsumeId=200101142},mt),
    ["44"]=setmetatable({id=44,lv=44,levelConsumeId=200101143},mt),
    ["45"]=setmetatable({id=45,lv=45,levelConsumeId=200101144},mt),
    ["46"]=setmetatable({id=46,lv=46,levelConsumeId=200101145},mt),
    ["47"]=setmetatable({id=47,lv=47,levelConsumeId=200101146},mt),
    ["48"]=setmetatable({id=48,lv=48,levelConsumeId=200101147},mt),
    ["49"]=setmetatable({id=49,lv=49,levelConsumeId=200101148},mt),
    ["50"]=setmetatable({id=50,lv=50,levelConsumeId=200101149},mt),
    ["51"]=setmetatable({id=51,lv=51,levelConsumeId=200101150},mt),
    ["52"]=setmetatable({id=52,lv=52,levelConsumeId=200101151},mt),
    ["53"]=setmetatable({id=53,lv=53,levelConsumeId=200101152},mt),
    ["54"]=setmetatable({id=54,lv=54,levelConsumeId=200101153},mt),
    ["55"]=setmetatable({id=55,lv=55,levelConsumeId=200101154},mt),
    ["56"]=setmetatable({id=56,lv=56,levelConsumeId=200101155},mt),
    ["57"]=setmetatable({id=57,lv=57,levelConsumeId=200101156},mt),
    ["58"]=setmetatable({id=58,lv=58,levelConsumeId=200101157},mt),
    ["59"]=setmetatable({id=59,lv=59,levelConsumeId=200101158},mt),
    ["60"]=setmetatable({id=60,lv=60,levelConsumeId=200101159},mt),
    ["61"]=setmetatable({id=61,lv=61,levelConsumeId=200101160},mt),
    ["62"]=setmetatable({id=62,lv=62,levelConsumeId=200101161},mt),
    ["63"]=setmetatable({id=63,lv=63,levelConsumeId=200101162},mt),
    ["64"]=setmetatable({id=64,lv=64,levelConsumeId=200101163},mt),
    ["65"]=setmetatable({id=65,lv=65,levelConsumeId=200101164},mt),
    ["66"]=setmetatable({id=66,lv=66,levelConsumeId=200101165},mt),
    ["67"]=setmetatable({id=67,lv=67,levelConsumeId=200101166},mt),
    ["68"]=setmetatable({id=68,lv=68,levelConsumeId=200101167},mt),
    ["69"]=setmetatable({id=69,lv=69,levelConsumeId=200101168},mt),
    ["70"]=setmetatable({id=70,lv=70,levelConsumeId=200101169},mt),
    ["71"]=setmetatable({id=71,lv=71,levelConsumeId=200101170},mt),
    ["72"]=setmetatable({id=72,lv=72,levelConsumeId=200101171},mt),
    ["73"]=setmetatable({id=73,lv=73,levelConsumeId=200101172},mt),
    ["74"]=setmetatable({id=74,lv=74,levelConsumeId=200101173},mt),
    ["75"]=setmetatable({id=75,lv=75,levelConsumeId=200101174},mt),
    ["76"]=setmetatable({id=76,lv=76,levelConsumeId=200101175},mt),
    ["77"]=setmetatable({id=77,lv=77,levelConsumeId=200101176},mt),
    ["78"]=setmetatable({id=78,lv=78,levelConsumeId=200101177},mt),
    ["79"]=setmetatable({id=79,lv=79,levelConsumeId=200101178},mt),
    ["80"]=setmetatable({id=80,lv=80},mt),
}
--生成获取数据的方法
---@return LeaderLv
function GetLeaderLvData(id)
    return LeaderLv_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderLv : table 
---@field id number
---@field lv number
---@field levelConsumeId number
