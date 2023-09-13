local default = {id=0,groupId=0,optionType=0,optionParam=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeLevelEventOptionEffect_Xls : table 
RoguelikeLevelEventOptionEffect_Xls =
{
    ["1"]=setmetatable({id=1,groupId=210010101,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["2"]=setmetatable({id=2,groupId=210010101,optionType=6,optionParam={[1]=1,[2]=50}},mt),
    ["3"]=setmetatable({id=3,groupId=210010102,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["4"]=setmetatable({id=4,groupId=210010102,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["5"]=setmetatable({id=5,groupId=210020101,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["6"]=setmetatable({id=6,groupId=210020102,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["7"]=setmetatable({id=7,groupId=210020102,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["8"]=setmetatable({id=8,groupId=210030101,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["9"]=setmetatable({id=9,groupId=210030101,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["10"]=setmetatable({id=10,groupId=210030102,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["11"]=setmetatable({id=11,groupId=210030102,optionType=3,optionParam={[1]=1,[2]=100012}},mt),
    ["12"]=setmetatable({id=12,groupId=210040101,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["13"]=setmetatable({id=13,groupId=210040102,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["14"]=setmetatable({id=14,groupId=210040102,optionType=4,optionParam={[1]=1,[2]=27,[3]=200}},mt),
    ["15"]=setmetatable({id=15,groupId=210050101,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["16"]=setmetatable({id=16,groupId=210050102,optionType=6,optionParam={[1]=1,[2]=30}},mt),
    ["17"]=setmetatable({id=17,groupId=210060101,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["18"]=setmetatable({id=18,groupId=210060102,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["19"]=setmetatable({id=19,groupId=210070101,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["20"]=setmetatable({id=20,groupId=210070201,optionType=7,optionParam={[1]=9001}},mt),
    ["21"]=setmetatable({id=21,groupId=210070202,optionType=6,optionParam={[1]=2,[2]=20}},mt),
    ["22"]=setmetatable({id=22,groupId=210080101,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["23"]=setmetatable({id=23,groupId=210080101,optionType=3,optionParam={[1]=1,[2]=100012}},mt),
    ["24"]=setmetatable({id=24,groupId=210080102,optionType=5,optionParam={[1]=0,[2]=0,[3]=2}},mt),
    ["25"]=setmetatable({id=25,groupId=210080102,optionType=3,optionParam={[1]=2,[2]=100012}},mt),
    ["26"]=setmetatable({id=26,groupId=210090101,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["27"]=setmetatable({id=27,groupId=210090101,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["28"]=setmetatable({id=28,groupId=210090102,optionType=4,optionParam={[1]=2,[2]=27,[3]=200}},mt),
    ["29"]=setmetatable({id=29,groupId=210090102,optionType=3,optionParam={[1]=1,[2]=100015}},mt),
    ["30"]=setmetatable({id=30,groupId=210100101,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["31"]=setmetatable({id=31,groupId=210100103,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["32"]=setmetatable({id=32,groupId=210100104,optionType=4,optionParam={[1]=1,[2]=27,[3]=150}},mt),
    ["33"]=setmetatable({id=33,groupId=210100106,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["34"]=setmetatable({id=34,groupId=210100106,optionType=3,optionParam={[1]=1,[2]=100013}},mt),
    ["35"]=setmetatable({id=35,groupId=210100107,optionType=3,optionParam={[1]=1,[2]=100014}},mt),
    ["36"]=setmetatable({id=36,groupId=210110101,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["37"]=setmetatable({id=37,groupId=210110102,optionType=6,optionParam={[1]=2,[2]=20}},mt),
    ["38"]=setmetatable({id=38,groupId=210110104,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["39"]=setmetatable({id=39,groupId=210110105,optionType=6,optionParam={[1]=2,[2]=20}},mt),
    ["40"]=setmetatable({id=40,groupId=210110106,optionType=3,optionParam={[1]=1,[2]=100014}},mt),
    ["41"]=setmetatable({id=41,groupId=210110107,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["42"]=setmetatable({id=42,groupId=210110109,optionType=6,optionParam={[1]=2,[2]=20}},mt),
    ["43"]=setmetatable({id=43,groupId=210110110,optionType=6,optionParam={[1]=2,[2]=40}},mt),
    ["44"]=setmetatable({id=44,groupId=210110111,optionType=3,optionParam={[1]=1,[2]=100015}},mt),
    ["45"]=setmetatable({id=45,groupId=210120101,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["46"]=setmetatable({id=46,groupId=210120104,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["47"]=setmetatable({id=47,groupId=210120105,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["48"]=setmetatable({id=48,groupId=210120107,optionType=4,optionParam={[1]=1,[2]=27,[3]=200}},mt),
    ["49"]=setmetatable({id=49,groupId=210120108,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["50"]=setmetatable({id=50,groupId=210120110,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["51"]=setmetatable({id=51,groupId=210120111,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["52"]=setmetatable({id=52,groupId=210120112,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["53"]=setmetatable({id=53,groupId=210130101,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["54"]=setmetatable({id=54,groupId=210130104,optionType=4,optionParam={[1]=1,[2]=27,[3]=100}},mt),
    ["55"]=setmetatable({id=55,groupId=210130105,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["56"]=setmetatable({id=56,groupId=210130106,optionType=6,optionParam={[1]=2,[2]=30}},mt),
    ["57"]=setmetatable({id=57,groupId=210130107,optionType=4,optionParam={[1]=1,[2]=27,[3]=200}},mt),
    ["58"]=setmetatable({id=58,groupId=210130108,optionType=3,optionParam={[1]=1,[2]=100011}},mt),
    ["59"]=setmetatable({id=59,groupId=210130110,optionType=3,optionParam={[1]=1,[2]=100012}},mt),
    ["60"]=setmetatable({id=60,groupId=210130111,optionType=6,optionParam={[1]=2,[2]=30}},mt),
    ["61"]=setmetatable({id=61,groupId=210130113,optionType=6,optionParam={[1]=1,[2]=50}},mt),
    ["62"]=setmetatable({id=62,groupId=210130114,optionType=3,optionParam={[1]=1,[2]=100015}},mt),
    ["63"]=setmetatable({id=63,groupId=210130116,optionType=6,optionParam={[1]=1,[2]=100}},mt),
    ["64"]=setmetatable({id=64,groupId=210130117,optionType=3,optionParam={[1]=1,[2]=100012}},mt),
    ["65"]=setmetatable({id=65,groupId=210130118,optionType=6,optionParam={[1]=2,[2]=20}},mt),
    ["66"]=setmetatable({id=66,groupId=210140101,optionType=6,optionParam={[1]=1,[2]=100}},mt),
    ["67"]=setmetatable({id=67,groupId=210140102,optionType=4,optionParam={[1]=1,[2]=27,[3]=300}},mt),
    ["68"]=setmetatable({id=68,groupId=210140103,optionType=3,optionParam={[1]=1,[2]=100013}},mt),
    ["69"]=setmetatable({id=69,groupId=210150102,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["70"]=setmetatable({id=70,groupId=210150104,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["71"]=setmetatable({id=71,groupId=210150105,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["72"]=setmetatable({id=72,groupId=210150106,optionType=6,optionParam={[1]=2,[2]=30}},mt),
    ["73"]=setmetatable({id=73,groupId=210160101,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["74"]=setmetatable({id=74,groupId=210160101,optionType=3,optionParam={[1]=1,[2]=100014}},mt),
    ["75"]=setmetatable({id=75,groupId=210160102,optionType=6,optionParam={[1]=2,[2]=30}},mt),
    ["76"]=setmetatable({id=76,groupId=210160102,optionType=3,optionParam={[1]=1,[2]=100015}},mt),
    ["77"]=setmetatable({id=77,groupId=210160103,optionType=4,optionParam={[1]=2,[2]=27,[3]=50}},mt),
    ["78"]=setmetatable({id=78,groupId=210170101,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["79"]=setmetatable({id=79,groupId=210170101,optionType=3,optionParam={[1]=1,[2]=100012}},mt),
    ["80"]=setmetatable({id=80,groupId=210170102,optionType=5,optionParam={[1]=0,[2]=0,[3]=1}},mt),
    ["81"]=setmetatable({id=81,groupId=210170102,optionType=4,optionParam={[1]=1,[2]=27,[3]=200}},mt),
    ["82"]=setmetatable({id=82,groupId=210170103,optionType=4,optionParam={[1]=1,[2]=27,[3]=50}},mt),
    ["83"]=setmetatable({id=83,groupId=210180101,optionType=7,optionParam={[1]=9002}},mt),
    ["84"]=setmetatable({id=84,groupId=210180102,optionType=7,optionParam={[1]=9003}},mt),
    ["85"]=setmetatable({id=85,groupId=210190101,optionType=7,optionParam={[1]=9002}},mt),
    ["86"]=setmetatable({id=86,groupId=210190102,optionType=4,optionParam={[1]=2,[2]=27,[3]=100}},mt),
    ["87"]=setmetatable({id=87,groupId=210200101,optionType=6,optionParam={[1]=2,[2]=10}},mt),
    ["88"]=setmetatable({id=88,groupId=210200101,optionType=7,optionParam={[1]=9002}},mt),
    ["89"]=setmetatable({id=89,groupId=210200102,optionType=6,optionParam={[1]=2,[2]=20}},mt),
    ["90"]=setmetatable({id=90,groupId=210200102,optionType=7,optionParam={[1]=9003}},mt),
    ["100"]=setmetatable({id=100,groupId=210210101,optionType=4,optionParam={[1]=2,[2]=27,[3]=150}},mt),
    ["101"]=setmetatable({id=101,groupId=210210101,optionType=3,optionParam={[1]=1,[2]=100014}},mt),
    ["102"]=setmetatable({id=102,groupId=210210102,optionType=4,optionParam={[1]=2,[2]=27,[3]=250}},mt),
    ["103"]=setmetatable({id=103,groupId=210210102,optionType=3,optionParam={[1]=1,[2]=100015}},mt),
    ["104"]=setmetatable({id=104,groupId=210210104,optionType=6,optionParam={[1]=1,[2]=50}},mt),
    ["105"]=setmetatable({id=105,groupId=210210105,optionType=8,optionParam={[1]=1,[2]=50}},mt),
}
--生成获取数据的方法
---@return RoguelikeLevelEventOptionEffect
function GetRoguelikeLevelEventOptionEffectData(id)
    return RoguelikeLevelEventOptionEffect_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeLevelEventOptionEffect : table 
---@field id number
---@field groupId number
---@field optionType number
---@field optionParam table
