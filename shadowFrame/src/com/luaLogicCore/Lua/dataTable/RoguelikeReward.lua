local default = {id=0,type=0,level=xlsNilTable,buffType=0,num=0,reward=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeReward_Xls : table 
RoguelikeReward_Xls =
{
    ["1"]=setmetatable({id=1,type=1,level={[1]=1,[2]=20},buffType=0,num=100,reward=15100001},mt),
    ["2"]=setmetatable({id=2,type=1,level={[1]=1,[2]=20},buffType=0,num=200,reward=15100002},mt),
    ["3"]=setmetatable({id=3,type=1,level={[1]=1,[2]=20},buffType=0,num=300,reward=15100003},mt),
    ["4"]=setmetatable({id=4,type=1,level={[1]=1,[2]=20},buffType=0,num=400,reward=15100004},mt),
    ["5"]=setmetatable({id=5,type=1,level={[1]=1,[2]=20},buffType=0,num=500,reward=15100005},mt),
    ["6"]=setmetatable({id=6,type=1,level={[1]=1,[2]=20},buffType=0,num=600,reward=15100006},mt),
    ["7"]=setmetatable({id=7,type=1,level={[1]=1,[2]=20},buffType=0,num=700,reward=15100007},mt),
    ["8"]=setmetatable({id=8,type=1,level={[1]=1,[2]=20},buffType=0,num=800,reward=15100008},mt),
    ["9"]=setmetatable({id=9,type=1,level={[1]=1,[2]=20},buffType=0,num=900,reward=15100009},mt),
    ["10"]=setmetatable({id=10,type=1,level={[1]=1,[2]=20},buffType=0,num=1000,reward=15100010},mt),
    ["11"]=setmetatable({id=11,type=1,level={[1]=21,[2]=40},buffType=0,num=120,reward=15100011},mt),
    ["12"]=setmetatable({id=12,type=1,level={[1]=21,[2]=40},buffType=0,num=240,reward=15100012},mt),
    ["13"]=setmetatable({id=13,type=1,level={[1]=21,[2]=40},buffType=0,num=360,reward=15100013},mt),
    ["14"]=setmetatable({id=14,type=1,level={[1]=21,[2]=40},buffType=0,num=480,reward=15100014},mt),
    ["15"]=setmetatable({id=15,type=1,level={[1]=21,[2]=40},buffType=0,num=600,reward=15100015},mt),
    ["16"]=setmetatable({id=16,type=1,level={[1]=21,[2]=40},buffType=0,num=720,reward=15100016},mt),
    ["17"]=setmetatable({id=17,type=1,level={[1]=21,[2]=40},buffType=0,num=840,reward=15100017},mt),
    ["18"]=setmetatable({id=18,type=1,level={[1]=21,[2]=40},buffType=0,num=960,reward=15100018},mt),
    ["19"]=setmetatable({id=19,type=1,level={[1]=21,[2]=40},buffType=0,num=1080,reward=15100019},mt),
    ["20"]=setmetatable({id=20,type=1,level={[1]=21,[2]=40},buffType=0,num=1200,reward=15100020},mt),
    ["21"]=setmetatable({id=21,type=1,level={[1]=41,[2]=50},buffType=0,num=140,reward=15100021},mt),
    ["22"]=setmetatable({id=22,type=1,level={[1]=41,[2]=50},buffType=0,num=280,reward=15100022},mt),
    ["23"]=setmetatable({id=23,type=1,level={[1]=41,[2]=50},buffType=0,num=420,reward=15100023},mt),
    ["24"]=setmetatable({id=24,type=1,level={[1]=41,[2]=50},buffType=0,num=560,reward=15100024},mt),
    ["25"]=setmetatable({id=25,type=1,level={[1]=41,[2]=50},buffType=0,num=700,reward=15100025},mt),
    ["26"]=setmetatable({id=26,type=1,level={[1]=41,[2]=50},buffType=0,num=840,reward=15100026},mt),
    ["27"]=setmetatable({id=27,type=1,level={[1]=41,[2]=50},buffType=0,num=980,reward=15100027},mt),
    ["28"]=setmetatable({id=28,type=1,level={[1]=41,[2]=50},buffType=0,num=1120,reward=15100028},mt),
    ["29"]=setmetatable({id=29,type=1,level={[1]=41,[2]=50},buffType=0,num=1260,reward=15100029},mt),
    ["30"]=setmetatable({id=30,type=1,level={[1]=41,[2]=50},buffType=0,num=1400,reward=15100030},mt),
    ["31"]=setmetatable({id=31,type=1,level={[1]=51,[2]=60},buffType=0,num=160,reward=15100031},mt),
    ["32"]=setmetatable({id=32,type=1,level={[1]=51,[2]=60},buffType=0,num=320,reward=15100032},mt),
    ["33"]=setmetatable({id=33,type=1,level={[1]=51,[2]=60},buffType=0,num=480,reward=15100033},mt),
    ["34"]=setmetatable({id=34,type=1,level={[1]=51,[2]=60},buffType=0,num=640,reward=15100034},mt),
    ["35"]=setmetatable({id=35,type=1,level={[1]=51,[2]=60},buffType=0,num=800,reward=15100035},mt),
    ["36"]=setmetatable({id=36,type=1,level={[1]=51,[2]=60},buffType=0,num=960,reward=15100036},mt),
    ["37"]=setmetatable({id=37,type=1,level={[1]=51,[2]=60},buffType=0,num=1120,reward=15100037},mt),
    ["38"]=setmetatable({id=38,type=1,level={[1]=51,[2]=60},buffType=0,num=1280,reward=15100038},mt),
    ["39"]=setmetatable({id=39,type=1,level={[1]=51,[2]=60},buffType=0,num=1440,reward=15100039},mt),
    ["40"]=setmetatable({id=40,type=1,level={[1]=51,[2]=60},buffType=0,num=1600,reward=15100040},mt),
    ["41"]=setmetatable({id=41,type=1,level={[1]=61,[2]=70},buffType=0,num=180,reward=15100041},mt),
    ["42"]=setmetatable({id=42,type=1,level={[1]=61,[2]=70},buffType=0,num=360,reward=15100042},mt),
    ["43"]=setmetatable({id=43,type=1,level={[1]=61,[2]=70},buffType=0,num=540,reward=15100043},mt),
    ["44"]=setmetatable({id=44,type=1,level={[1]=61,[2]=70},buffType=0,num=720,reward=15100044},mt),
    ["45"]=setmetatable({id=45,type=1,level={[1]=61,[2]=70},buffType=0,num=900,reward=15100045},mt),
    ["46"]=setmetatable({id=46,type=1,level={[1]=61,[2]=70},buffType=0,num=1080,reward=15100046},mt),
    ["47"]=setmetatable({id=47,type=1,level={[1]=61,[2]=70},buffType=0,num=1260,reward=15100047},mt),
    ["48"]=setmetatable({id=48,type=1,level={[1]=61,[2]=70},buffType=0,num=1440,reward=15100048},mt),
    ["49"]=setmetatable({id=49,type=1,level={[1]=61,[2]=70},buffType=0,num=1620,reward=15100049},mt),
    ["50"]=setmetatable({id=50,type=1,level={[1]=61,[2]=70},buffType=0,num=1800,reward=15100050},mt),
    ["51"]=setmetatable({id=51,type=1,level={[1]=71,[2]=100},buffType=0,num=200,reward=15100051},mt),
    ["52"]=setmetatable({id=52,type=1,level={[1]=71,[2]=100},buffType=0,num=400,reward=15100052},mt),
    ["53"]=setmetatable({id=53,type=1,level={[1]=71,[2]=100},buffType=0,num=600,reward=15100053},mt),
    ["54"]=setmetatable({id=54,type=1,level={[1]=71,[2]=100},buffType=0,num=800,reward=15100054},mt),
    ["55"]=setmetatable({id=55,type=1,level={[1]=71,[2]=100},buffType=0,num=1000,reward=15100055},mt),
    ["56"]=setmetatable({id=56,type=1,level={[1]=71,[2]=100},buffType=0,num=1200,reward=15100056},mt),
    ["57"]=setmetatable({id=57,type=1,level={[1]=71,[2]=100},buffType=0,num=1400,reward=15100057},mt),
    ["58"]=setmetatable({id=58,type=1,level={[1]=71,[2]=100},buffType=0,num=1600,reward=15100058},mt),
    ["59"]=setmetatable({id=59,type=1,level={[1]=71,[2]=100},buffType=0,num=1800,reward=15100059},mt),
    ["60"]=setmetatable({id=60,type=1,level={[1]=71,[2]=100},buffType=0,num=2000,reward=15100060},mt),
    ["61"]=setmetatable({id=61,type=2,level=xlsNilTable,buffType=1,num=4,reward=15200001},mt),
    ["62"]=setmetatable({id=62,type=2,level=xlsNilTable,buffType=1,num=8,reward=15200002},mt),
    ["63"]=setmetatable({id=63,type=2,level=xlsNilTable,buffType=1,num=12,reward=15200003},mt),
    ["64"]=setmetatable({id=64,type=2,level=xlsNilTable,buffType=1,num=16,reward=15200004},mt),
    ["65"]=setmetatable({id=65,type=2,level=xlsNilTable,buffType=1,num=20,reward=15200005},mt),
    ["66"]=setmetatable({id=66,type=2,level=xlsNilTable,buffType=2,num=4,reward=15200001},mt),
    ["67"]=setmetatable({id=67,type=2,level=xlsNilTable,buffType=2,num=8,reward=15200002},mt),
    ["68"]=setmetatable({id=68,type=2,level=xlsNilTable,buffType=2,num=12,reward=15200003},mt),
    ["69"]=setmetatable({id=69,type=2,level=xlsNilTable,buffType=2,num=16,reward=15200004},mt),
    ["70"]=setmetatable({id=70,type=2,level=xlsNilTable,buffType=2,num=20,reward=15200005},mt),
    ["71"]=setmetatable({id=71,type=2,level=xlsNilTable,buffType=3,num=4,reward=15200001},mt),
    ["72"]=setmetatable({id=72,type=2,level=xlsNilTable,buffType=3,num=8,reward=15200002},mt),
    ["73"]=setmetatable({id=73,type=2,level=xlsNilTable,buffType=3,num=12,reward=15200003},mt),
    ["74"]=setmetatable({id=74,type=2,level=xlsNilTable,buffType=3,num=16,reward=15200004},mt),
    ["75"]=setmetatable({id=75,type=2,level=xlsNilTable,buffType=3,num=20,reward=15200005},mt),
    ["76"]=setmetatable({id=76,type=2,level=xlsNilTable,buffType=4,num=4,reward=15200001},mt),
    ["77"]=setmetatable({id=77,type=2,level=xlsNilTable,buffType=4,num=8,reward=15200002},mt),
    ["78"]=setmetatable({id=78,type=2,level=xlsNilTable,buffType=4,num=12,reward=15200003},mt),
    ["79"]=setmetatable({id=79,type=2,level=xlsNilTable,buffType=4,num=16,reward=15200004},mt),
    ["80"]=setmetatable({id=80,type=2,level=xlsNilTable,buffType=4,num=20,reward=15200005},mt),
    ["81"]=setmetatable({id=81,type=2,level=xlsNilTable,buffType=5,num=4,reward=15200001},mt),
    ["82"]=setmetatable({id=82,type=2,level=xlsNilTable,buffType=5,num=8,reward=15200002},mt),
    ["83"]=setmetatable({id=83,type=2,level=xlsNilTable,buffType=5,num=12,reward=15200003},mt),
    ["84"]=setmetatable({id=84,type=2,level=xlsNilTable,buffType=5,num=16,reward=15200004},mt),
    ["85"]=setmetatable({id=85,type=2,level=xlsNilTable,buffType=5,num=20,reward=15200005},mt),
}
--生成获取数据的方法
---@return RoguelikeReward
function GetRoguelikeRewardData(id)
    return RoguelikeReward_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeReward : table 
---@field id number
---@field type number
---@field level table
---@field buffType number
---@field num number
---@field reward number
