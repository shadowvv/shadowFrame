local default = {id=0,quality=0,equipBreak=0,equipLevel=0,levelConsumeId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EquipGrow_Xls : table 
EquipGrow_Xls =
{
    ["1"]=setmetatable({id=1,quality=5,equipBreak=0,equipLevel=1,levelConsumeId=50001},mt),
    ["2"]=setmetatable({id=2,quality=5,equipBreak=0,equipLevel=2,levelConsumeId=50002},mt),
    ["3"]=setmetatable({id=3,quality=5,equipBreak=0,equipLevel=3,levelConsumeId=50003},mt),
    ["4"]=setmetatable({id=4,quality=5,equipBreak=0,equipLevel=4,levelConsumeId=50004},mt),
    ["5"]=setmetatable({id=5,quality=5,equipBreak=1,equipLevel=5,levelConsumeId=50005},mt),
    ["6"]=setmetatable({id=6,quality=5,equipBreak=1,equipLevel=6,levelConsumeId=50006},mt),
    ["7"]=setmetatable({id=7,quality=5,equipBreak=1,equipLevel=7,levelConsumeId=50007},mt),
    ["8"]=setmetatable({id=8,quality=5,equipBreak=1,equipLevel=8,levelConsumeId=50008},mt),
    ["9"]=setmetatable({id=9,quality=5,equipBreak=1,equipLevel=9,levelConsumeId=50009},mt),
    ["10"]=setmetatable({id=10,quality=5,equipBreak=2,equipLevel=10,levelConsumeId=50010},mt),
    ["11"]=setmetatable({id=11,quality=5,equipBreak=2,equipLevel=11,levelConsumeId=50011},mt),
    ["12"]=setmetatable({id=12,quality=5,equipBreak=2,equipLevel=12,levelConsumeId=50012},mt),
    ["13"]=setmetatable({id=13,quality=5,equipBreak=2,equipLevel=13,levelConsumeId=50013},mt),
    ["14"]=setmetatable({id=14,quality=5,equipBreak=2,equipLevel=14,levelConsumeId=50014},mt),
    ["15"]=setmetatable({id=15,quality=5,equipBreak=3,equipLevel=15,levelConsumeId=50015},mt),
    ["16"]=setmetatable({id=16,quality=5,equipBreak=3,equipLevel=16,levelConsumeId=50016},mt),
    ["17"]=setmetatable({id=17,quality=5,equipBreak=3,equipLevel=17,levelConsumeId=50017},mt),
    ["18"]=setmetatable({id=18,quality=5,equipBreak=3,equipLevel=18,levelConsumeId=50018},mt),
    ["19"]=setmetatable({id=19,quality=5,equipBreak=3,equipLevel=19,levelConsumeId=50019},mt),
    ["20"]=setmetatable({id=20,quality=5,equipBreak=4,equipLevel=20,levelConsumeId=50020},mt),
    ["21"]=setmetatable({id=21,quality=5,equipBreak=4,equipLevel=21,levelConsumeId=50021},mt),
    ["22"]=setmetatable({id=22,quality=5,equipBreak=4,equipLevel=22,levelConsumeId=50022},mt),
    ["23"]=setmetatable({id=23,quality=5,equipBreak=4,equipLevel=23,levelConsumeId=50023},mt),
    ["24"]=setmetatable({id=24,quality=5,equipBreak=4,equipLevel=24,levelConsumeId=50024},mt),
    ["25"]=setmetatable({id=25,quality=5,equipBreak=5,equipLevel=25,levelConsumeId=50025},mt),
    ["26"]=setmetatable({id=26,quality=5,equipBreak=5,equipLevel=26,levelConsumeId=50026},mt),
    ["27"]=setmetatable({id=27,quality=5,equipBreak=5,equipLevel=27,levelConsumeId=50027},mt),
    ["28"]=setmetatable({id=28,quality=5,equipBreak=5,equipLevel=28,levelConsumeId=50028},mt),
    ["29"]=setmetatable({id=29,quality=5,equipBreak=5,equipLevel=29,levelConsumeId=50029},mt),
    ["30"]=setmetatable({id=30,quality=5,equipBreak=6,equipLevel=30},mt),
    ["31"]=setmetatable({id=31,quality=4,equipBreak=0,equipLevel=1,levelConsumeId=40001},mt),
    ["32"]=setmetatable({id=32,quality=4,equipBreak=0,equipLevel=2,levelConsumeId=40002},mt),
    ["33"]=setmetatable({id=33,quality=4,equipBreak=0,equipLevel=3,levelConsumeId=40003},mt),
    ["34"]=setmetatable({id=34,quality=4,equipBreak=0,equipLevel=4,levelConsumeId=40004},mt),
    ["35"]=setmetatable({id=35,quality=4,equipBreak=1,equipLevel=5,levelConsumeId=40005},mt),
    ["36"]=setmetatable({id=36,quality=4,equipBreak=1,equipLevel=6,levelConsumeId=40006},mt),
    ["37"]=setmetatable({id=37,quality=4,equipBreak=1,equipLevel=7,levelConsumeId=40007},mt),
    ["38"]=setmetatable({id=38,quality=4,equipBreak=1,equipLevel=8,levelConsumeId=40008},mt),
    ["39"]=setmetatable({id=39,quality=4,equipBreak=1,equipLevel=9,levelConsumeId=40009},mt),
    ["40"]=setmetatable({id=40,quality=4,equipBreak=2,equipLevel=10,levelConsumeId=40010},mt),
    ["41"]=setmetatable({id=41,quality=4,equipBreak=2,equipLevel=11,levelConsumeId=40011},mt),
    ["42"]=setmetatable({id=42,quality=4,equipBreak=2,equipLevel=12,levelConsumeId=40012},mt),
    ["43"]=setmetatable({id=43,quality=4,equipBreak=2,equipLevel=13,levelConsumeId=40013},mt),
    ["44"]=setmetatable({id=44,quality=4,equipBreak=2,equipLevel=14,levelConsumeId=40014},mt),
    ["45"]=setmetatable({id=45,quality=4,equipBreak=3,equipLevel=15,levelConsumeId=40015},mt),
    ["46"]=setmetatable({id=46,quality=4,equipBreak=3,equipLevel=16,levelConsumeId=40016},mt),
    ["47"]=setmetatable({id=47,quality=4,equipBreak=3,equipLevel=17,levelConsumeId=40017},mt),
    ["48"]=setmetatable({id=48,quality=4,equipBreak=3,equipLevel=18,levelConsumeId=40018},mt),
    ["49"]=setmetatable({id=49,quality=4,equipBreak=3,equipLevel=19,levelConsumeId=40019},mt),
    ["50"]=setmetatable({id=50,quality=4,equipBreak=4,equipLevel=20,levelConsumeId=40020},mt),
    ["51"]=setmetatable({id=51,quality=4,equipBreak=4,equipLevel=21,levelConsumeId=40021},mt),
    ["52"]=setmetatable({id=52,quality=4,equipBreak=4,equipLevel=22,levelConsumeId=40022},mt),
    ["53"]=setmetatable({id=53,quality=4,equipBreak=4,equipLevel=23,levelConsumeId=40023},mt),
    ["54"]=setmetatable({id=54,quality=4,equipBreak=4,equipLevel=24,levelConsumeId=40024},mt),
    ["55"]=setmetatable({id=55,quality=4,equipBreak=5,equipLevel=25},mt),
    ["56"]=setmetatable({id=56,quality=3,equipBreak=0,equipLevel=1,levelConsumeId=30001},mt),
    ["57"]=setmetatable({id=57,quality=3,equipBreak=0,equipLevel=2,levelConsumeId=30002},mt),
    ["58"]=setmetatable({id=58,quality=3,equipBreak=0,equipLevel=3,levelConsumeId=30003},mt),
    ["59"]=setmetatable({id=59,quality=3,equipBreak=0,equipLevel=4,levelConsumeId=30004},mt),
    ["60"]=setmetatable({id=60,quality=3,equipBreak=1,equipLevel=5,levelConsumeId=30005},mt),
    ["61"]=setmetatable({id=61,quality=3,equipBreak=1,equipLevel=6,levelConsumeId=30006},mt),
    ["62"]=setmetatable({id=62,quality=3,equipBreak=1,equipLevel=7,levelConsumeId=30007},mt),
    ["63"]=setmetatable({id=63,quality=3,equipBreak=1,equipLevel=8,levelConsumeId=30008},mt),
    ["64"]=setmetatable({id=64,quality=3,equipBreak=1,equipLevel=9,levelConsumeId=30009},mt),
    ["65"]=setmetatable({id=65,quality=3,equipBreak=2,equipLevel=10,levelConsumeId=30010},mt),
    ["66"]=setmetatable({id=66,quality=3,equipBreak=2,equipLevel=11,levelConsumeId=30011},mt),
    ["67"]=setmetatable({id=67,quality=3,equipBreak=2,equipLevel=12,levelConsumeId=30012},mt),
    ["68"]=setmetatable({id=68,quality=3,equipBreak=2,equipLevel=13,levelConsumeId=30013},mt),
    ["69"]=setmetatable({id=69,quality=3,equipBreak=2,equipLevel=14,levelConsumeId=30014},mt),
    ["70"]=setmetatable({id=70,quality=3,equipBreak=3,equipLevel=15,levelConsumeId=30015},mt),
    ["71"]=setmetatable({id=71,quality=3,equipBreak=3,equipLevel=16,levelConsumeId=30016},mt),
    ["72"]=setmetatable({id=72,quality=3,equipBreak=3,equipLevel=17,levelConsumeId=30017},mt),
    ["73"]=setmetatable({id=73,quality=3,equipBreak=3,equipLevel=18,levelConsumeId=30018},mt),
    ["74"]=setmetatable({id=74,quality=3,equipBreak=3,equipLevel=19,levelConsumeId=30019},mt),
    ["75"]=setmetatable({id=75,quality=3,equipBreak=4,equipLevel=20},mt),
    ["76"]=setmetatable({id=76,quality=2,equipBreak=0,equipLevel=1,levelConsumeId=20001},mt),
    ["77"]=setmetatable({id=77,quality=2,equipBreak=0,equipLevel=2,levelConsumeId=20002},mt),
    ["78"]=setmetatable({id=78,quality=2,equipBreak=0,equipLevel=3,levelConsumeId=20003},mt),
    ["79"]=setmetatable({id=79,quality=2,equipBreak=0,equipLevel=4,levelConsumeId=20004},mt),
    ["80"]=setmetatable({id=80,quality=2,equipBreak=1,equipLevel=5,levelConsumeId=20005},mt),
    ["81"]=setmetatable({id=81,quality=2,equipBreak=1,equipLevel=6,levelConsumeId=20006},mt),
    ["82"]=setmetatable({id=82,quality=2,equipBreak=1,equipLevel=7,levelConsumeId=20007},mt),
    ["83"]=setmetatable({id=83,quality=2,equipBreak=1,equipLevel=8,levelConsumeId=20008},mt),
    ["84"]=setmetatable({id=84,quality=2,equipBreak=1,equipLevel=9,levelConsumeId=20009},mt),
    ["85"]=setmetatable({id=85,quality=2,equipBreak=2,equipLevel=10,levelConsumeId=20010},mt),
    ["86"]=setmetatable({id=86,quality=2,equipBreak=2,equipLevel=11,levelConsumeId=20011},mt),
    ["87"]=setmetatable({id=87,quality=2,equipBreak=2,equipLevel=12,levelConsumeId=20012},mt),
    ["88"]=setmetatable({id=88,quality=2,equipBreak=2,equipLevel=13,levelConsumeId=20013},mt),
    ["89"]=setmetatable({id=89,quality=2,equipBreak=2,equipLevel=14,levelConsumeId=20014},mt),
    ["90"]=setmetatable({id=90,quality=2,equipBreak=3,equipLevel=15},mt),
}
--生成获取数据的方法
---@return EquipGrow
function GetEquipGrowData(id)
    return EquipGrow_Xls[tostring(id)]
end
--自动生成注释
---@class EquipGrow : table 
---@field id number
---@field quality number
---@field equipBreak number
---@field equipLevel number
---@field levelConsumeId number
