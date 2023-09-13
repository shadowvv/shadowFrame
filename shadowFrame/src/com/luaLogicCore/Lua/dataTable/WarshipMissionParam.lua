local default = {id=0,groupId=0,condition=0,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipMissionParam_Xls : table 
WarshipMissionParam_Xls =
{
    ["1"]=setmetatable({id=1,groupId=1001,condition=1001,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=10},mt),
    ["2"]=setmetatable({id=2,groupId=1001,condition=2601,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=1003},mt),
    ["3"]=setmetatable({id=3,groupId=1002,condition=1001,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=13},mt),
    ["4"]=setmetatable({id=4,groupId=1003,condition=1501,conditionParam1=1030011,conditionParam2=0,conditionParam3=0,conditionNum=10},mt),
    ["5"]=setmetatable({id=5,groupId=1004,condition=2602,conditionParam1=1030011,conditionParam2=0,conditionParam3=0,conditionNum=5},mt),
    ["6"]=setmetatable({id=6,groupId=1005,condition=2606,conditionParam1=1,conditionParam2=1,conditionParam3=0,conditionNum=1},mt),
    ["7"]=setmetatable({id=7,groupId=1006,condition=1501,conditionParam1=1,conditionParam2=1,conditionParam3=0,conditionNum=1},mt),
    ["8"]=setmetatable({id=8,groupId=1006,condition=2603,conditionParam1=1030012,conditionParam2=0,conditionParam3=0,conditionNum=3},mt),
    ["9"]=setmetatable({id=9,groupId=1007,condition=1501,conditionParam1=2001001,conditionParam2=1,conditionParam3=0,conditionNum=1},mt),
    ["10"]=setmetatable({id=10,groupId=1008,condition=1401,conditionParam1=101102,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["11"]=setmetatable({id=11,groupId=1009,condition=1501,conditionParam1=2002001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["12"]=setmetatable({id=12,groupId=1010,condition=1501,conditionParam1=2003001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["13"]=setmetatable({id=13,groupId=1011,condition=1001,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=10},mt),
    ["14"]=setmetatable({id=14,groupId=1005001,condition=2605,conditionParam1=2002001,conditionParam2=10003,conditionParam3=111,conditionNum=1},mt),
    ["15"]=setmetatable({id=15,groupId=1005002,condition=2605,conditionParam1=2003001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["16"]=setmetatable({id=16,groupId=1005003,condition=2605,conditionParam1=2001001,conditionParam2=0,conditionParam3=112,conditionNum=1},mt),
    ["17"]=setmetatable({id=17,groupId=1005004,condition=2605,conditionParam1=2002001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["18"]=setmetatable({id=18,groupId=1005005,condition=2605,conditionParam1=2003001,conditionParam2=0,conditionParam3=113,conditionNum=1},mt),
    ["19"]=setmetatable({id=19,groupId=1005006,condition=2605,conditionParam1=2001001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["20"]=setmetatable({id=20,groupId=1005007,condition=2605,conditionParam1=2002001,conditionParam2=0,conditionParam3=114,conditionNum=1},mt),
    ["21"]=setmetatable({id=21,groupId=1005008,condition=2605,conditionParam1=2003001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["22"]=setmetatable({id=22,groupId=1005009,condition=2605,conditionParam1=2001001,conditionParam2=0,conditionParam3=115,conditionNum=1},mt),
    ["23"]=setmetatable({id=23,groupId=1005010,condition=2605,conditionParam1=2002001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["24"]=setmetatable({id=24,groupId=110000101,condition=2605,conditionParam1=2004001,conditionParam2=10002,conditionParam3=110000101,conditionNum=1},mt),
    ["25"]=setmetatable({id=25,groupId=110010199,condition=1401,conditionParam1=1,conditionParam2=101105,conditionParam3=0,conditionNum=1},mt),
    ["26"]=setmetatable({id=26,groupId=110010101,condition=2605,conditionParam1=2001001,conditionParam2=10101,conditionParam3=110010101,conditionNum=1},mt),
    ["27"]=setmetatable({id=27,groupId=110010102,condition=2605,conditionParam1=2002001,conditionParam2=10102,conditionParam3=110010102,conditionNum=1},mt),
    ["28"]=setmetatable({id=28,groupId=110010103,condition=2605,conditionParam1=2004001,conditionParam2=10103,conditionParam3=110010103,conditionNum=1},mt),
    ["29"]=setmetatable({id=29,groupId=110020199,condition=1401,conditionParam1=1,conditionParam2=102112,conditionParam3=0,conditionNum=1},mt),
    ["30"]=setmetatable({id=30,groupId=110020101,condition=2605,conditionParam1=2001001,conditionParam2=10201,conditionParam3=110020101,conditionNum=1},mt),
    ["31"]=setmetatable({id=31,groupId=110020102,condition=2605,conditionParam1=2004001,conditionParam2=10202,conditionParam3=110020102,conditionNum=1},mt),
    ["32"]=setmetatable({id=32,groupId=110030199,condition=1401,conditionParam1=1,conditionParam2=103103,conditionParam3=0,conditionNum=1},mt),
    ["33"]=setmetatable({id=33,groupId=110030101,condition=2605,conditionParam1=2008001,conditionParam2=10301,conditionParam3=110030101,conditionNum=1},mt),
    ["34"]=setmetatable({id=34,groupId=110030102,condition=2605,conditionParam1=2006001,conditionParam2=10302,conditionParam3=110030102,conditionNum=1},mt),
    ["35"]=setmetatable({id=35,groupId=110030103,condition=2605,conditionParam1=2010001,conditionParam2=10303,conditionParam3=110030103,conditionNum=1},mt),
    ["36"]=setmetatable({id=36,groupId=110030104,condition=2605,conditionParam1=2007001,conditionParam2=10304,conditionParam3=110030104,conditionNum=1},mt),
    ["37"]=setmetatable({id=37,groupId=110030105,condition=2605,conditionParam1=2008001,conditionParam2=10305,conditionParam3=110030105,conditionNum=1},mt),
    ["38"]=setmetatable({id=38,groupId=110040199,condition=1401,conditionParam1=1,conditionParam2=104105,conditionParam3=0,conditionNum=1},mt),
    ["39"]=setmetatable({id=39,groupId=110040101,condition=2605,conditionParam1=2005001,conditionParam2=10401,conditionParam3=110040101,conditionNum=1},mt),
    ["40"]=setmetatable({id=40,groupId=110040102,condition=2605,conditionParam1=110040102,conditionParam2=10403,conditionParam3=110040102,conditionNum=1},mt),
    ["41"]=setmetatable({id=41,groupId=110040103,condition=2605,conditionParam1=110040103,conditionParam2=10404,conditionParam3=110040103,conditionNum=1},mt),
    ["42"]=setmetatable({id=42,groupId=110040104,condition=2605,conditionParam1=110040104,conditionParam2=10405,conditionParam3=110040104,conditionNum=1},mt),
    ["43"]=setmetatable({id=43,groupId=110040105,condition=2605,conditionParam1=2005001,conditionParam2=10402,conditionParam3=110040105,conditionNum=1},mt),
    ["44"]=setmetatable({id=44,groupId=110050199,condition=1401,conditionParam1=1,conditionParam2=105111,conditionParam3=0,conditionNum=1},mt),
    ["45"]=setmetatable({id=45,groupId=110050101,condition=2605,conditionParam1=2003001,conditionParam2=10501,conditionParam3=110050101,conditionNum=1},mt),
    ["46"]=setmetatable({id=46,groupId=110050102,condition=2605,conditionParam1=110050102,conditionParam2=10503,conditionParam3=110050102,conditionNum=1},mt),
    ["47"]=setmetatable({id=47,groupId=110050103,condition=2605,conditionParam1=2003001,conditionParam2=10502,conditionParam3=110050103,conditionNum=1},mt),
    ["48"]=setmetatable({id=48,groupId=210010199,condition=1401,conditionParam1=1,conditionParam2=101106,conditionParam3=0,conditionNum=1},mt),
    ["49"]=setmetatable({id=49,groupId=210010101,condition=2203,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["50"]=setmetatable({id=50,groupId=210010102,condition=1401,conditionParam1=6,conditionParam2=498102,conditionParam3=0,conditionNum=1},mt),
    ["51"]=setmetatable({id=51,groupId=210010103,condition=2605,conditionParam1=2001001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["52"]=setmetatable({id=52,groupId=210010104,condition=2605,conditionParam1=2004001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["53"]=setmetatable({id=53,groupId=210010105,condition=2605,conditionParam1=2001001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["54"]=setmetatable({id=54,groupId=210020199,condition=1401,conditionParam1=1,conditionParam2=101106,conditionParam3=0,conditionNum=1},mt),
    ["55"]=setmetatable({id=55,groupId=210020100,condition=2605,conditionParam1=2002001,conditionParam2=20201,conditionParam3=0,conditionNum=1},mt),
    ["56"]=setmetatable({id=56,groupId=210020101,condition=2605,conditionParam1=2003001,conditionParam2=20202,conditionParam3=0,conditionNum=1},mt),
    ["57"]=setmetatable({id=57,groupId=210020102,condition=1403,conditionParam1=3,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["58"]=setmetatable({id=58,groupId=210020103,condition=2605,conditionParam1=2002001,conditionParam2=20203,conditionParam3=210020103,conditionNum=1},mt),
    ["59"]=setmetatable({id=59,groupId=210020104,condition=1401,conditionParam1=6,conditionParam2=497102,conditionParam3=0,conditionNum=1},mt),
    ["60"]=setmetatable({id=60,groupId=210020105,condition=2605,conditionParam1=2002001,conditionParam2=20204,conditionParam3=210020105,conditionNum=15},mt),
    ["61"]=setmetatable({id=61,groupId=210020106,condition=1102,conditionParam1=1,conditionParam2=30,conditionParam3=0,conditionNum=1},mt),
    ["62"]=setmetatable({id=62,groupId=210020107,condition=2605,conditionParam1=2002001,conditionParam2=20205,conditionParam3=210020107,conditionNum=1},mt),
    ["63"]=setmetatable({id=63,groupId=210030199,condition=1401,conditionParam1=1,conditionParam2=101106,conditionParam3=0,conditionNum=1},mt),
    ["64"]=setmetatable({id=64,groupId=210030101,condition=2605,conditionParam1=2005001,conditionParam2=20302,conditionParam3=0,conditionNum=1},mt),
    ["65"]=setmetatable({id=65,groupId=210030102,condition=2605,conditionParam1=2008001,conditionParam2=20303,conditionParam3=0,conditionNum=1},mt),
    ["66"]=setmetatable({id=66,groupId=210030103,condition=1403,conditionParam1=3,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["67"]=setmetatable({id=67,groupId=210030104,condition=2605,conditionParam1=2008001,conditionParam2=20304,conditionParam3=0,conditionNum=1},mt),
    ["68"]=setmetatable({id=68,groupId=210030105,condition=2605,conditionParam1=2003001,conditionParam2=20305,conditionParam3=0,conditionNum=1},mt),
    ["69"]=setmetatable({id=69,groupId=210030106,condition=1102,conditionParam1=2,conditionParam2=3,conditionParam3=0,conditionNum=1},mt),
    ["70"]=setmetatable({id=70,groupId=210030107,condition=2605,conditionParam1=2003001,conditionParam2=20306,conditionParam3=0,conditionNum=1},mt),
    ["71"]=setmetatable({id=71,groupId=210030108,condition=2605,conditionParam1=2008001,conditionParam2=20307,conditionParam3=0,conditionNum=1},mt),
    ["72"]=setmetatable({id=72,groupId=210030109,condition=2605,conditionParam1=2003001,conditionParam2=20308,conditionParam3=0,conditionNum=1},mt),
    ["73"]=setmetatable({id=73,groupId=210050199,condition=1401,conditionParam1=1,conditionParam2=101106,conditionParam3=0,conditionNum=1},mt),
    ["74"]=setmetatable({id=74,groupId=210050101,condition=2605,conditionParam1=2005001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["75"]=setmetatable({id=75,groupId=210050102,condition=1403,conditionParam1=3,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["76"]=setmetatable({id=76,groupId=210050103,condition=2605,conditionParam1=2005001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["77"]=setmetatable({id=77,groupId=210050104,condition=2203,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["78"]=setmetatable({id=78,groupId=210050105,condition=1401,conditionParam1=6,conditionParam2=494102,conditionParam3=0,conditionNum=1},mt),
    ["79"]=setmetatable({id=79,groupId=210050106,condition=2605,conditionParam1=2005001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["80"]=setmetatable({id=80,groupId=210050107,condition=2605,conditionParam1=2008001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
    ["81"]=setmetatable({id=81,groupId=210050108,condition=2605,conditionParam1=2005001,conditionParam2=0,conditionParam3=0,conditionNum=1},mt),
}
--生成获取数据的方法
---@return WarshipMissionParam
function GetWarshipMissionParamData(id)
    return WarshipMissionParam_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipMissionParam : table 
---@field id number
---@field groupId number
---@field condition number
---@field conditionParam1 number
---@field conditionParam2 number
---@field conditionParam3 number
---@field conditionNum number
