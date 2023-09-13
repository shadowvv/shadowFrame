local default = {id=0,buffId=0,effectTag=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BountyMissionsBuff_Xls : table 
BountyMissionsBuff_Xls =
{
    ["1"]=setmetatable({id=1,buffId=12001,effectTag=0},mt),
    ["2"]=setmetatable({id=2,buffId=12002,effectTag=0},mt),
    ["3"]=setmetatable({id=3,buffId=12003,effectTag=0},mt),
    ["4"]=setmetatable({id=4,buffId=12004,effectTag=0},mt),
    ["5"]=setmetatable({id=5,buffId=12005,effectTag=0},mt),
    ["6"]=setmetatable({id=6,buffId=12006,effectTag=0},mt),
    ["7"]=setmetatable({id=7,buffId=12007,effectTag=0},mt),
    ["8"]=setmetatable({id=8,buffId=12008,effectTag=0},mt),
    ["9"]=setmetatable({id=9,buffId=12009,effectTag=0},mt),
    ["10"]=setmetatable({id=10,buffId=12010,effectTag=0},mt),
    ["11"]=setmetatable({id=11,buffId=12011,effectTag=0},mt),
    ["12"]=setmetatable({id=12,buffId=12012,effectTag=0},mt),
    ["13"]=setmetatable({id=13,buffId=12013,effectTag=0},mt),
    ["14"]=setmetatable({id=14,buffId=12014,effectTag=0},mt),
    ["15"]=setmetatable({id=15,buffId=12015,effectTag=0},mt),
    ["16"]=setmetatable({id=16,buffId=12016,effectTag=0},mt),
    ["17"]=setmetatable({id=17,buffId=12017,effectTag=0},mt),
    ["18"]=setmetatable({id=18,buffId=12018,effectTag=0},mt),
    ["19"]=setmetatable({id=19,buffId=12019,effectTag=0},mt),
    ["20"]=setmetatable({id=20,buffId=12020,effectTag=0},mt),
    ["21"]=setmetatable({id=21,buffId=12021,effectTag=0},mt),
    ["22"]=setmetatable({id=22,buffId=12022,effectTag=0},mt),
    ["23"]=setmetatable({id=23,buffId=12023,effectTag=0},mt),
    ["24"]=setmetatable({id=24,buffId=12024,effectTag=0},mt),
    ["25"]=setmetatable({id=25,buffId=12025,effectTag=1},mt),
    ["26"]=setmetatable({id=26,buffId=12026,effectTag=1},mt),
    ["27"]=setmetatable({id=27,buffId=12027,effectTag=1},mt),
    ["28"]=setmetatable({id=28,buffId=12028,effectTag=1},mt),
    ["29"]=setmetatable({id=29,buffId=12029,effectTag=1},mt),
    ["30"]=setmetatable({id=30,buffId=12030,effectTag=1},mt),
    ["31"]=setmetatable({id=31,buffId=12031,effectTag=1},mt),
    ["32"]=setmetatable({id=32,buffId=12032,effectTag=1},mt),
    ["33"]=setmetatable({id=33,buffId=12033,effectTag=1},mt),
    ["34"]=setmetatable({id=34,buffId=12034,effectTag=1},mt),
    ["35"]=setmetatable({id=35,buffId=12035,effectTag=1},mt),
    ["36"]=setmetatable({id=36,buffId=12036,effectTag=1},mt),
    ["37"]=setmetatable({id=37,buffId=12037,effectTag=1},mt),
    ["38"]=setmetatable({id=38,buffId=12038,effectTag=1},mt),
    ["39"]=setmetatable({id=39,buffId=12039,effectTag=1},mt),
    ["40"]=setmetatable({id=40,buffId=12040,effectTag=1},mt),
    ["41"]=setmetatable({id=41,buffId=12041,effectTag=1},mt),
    ["42"]=setmetatable({id=42,buffId=12042,effectTag=1},mt),
}
--生成获取数据的方法
---@return BountyMissionsBuff
function GetBountyMissionsBuffData(id)
    return BountyMissionsBuff_Xls[tostring(id)]
end
--自动生成注释
---@class BountyMissionsBuff : table 
---@field id number
---@field buffId number
---@field effectTag number
