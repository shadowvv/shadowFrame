local default = {id=0,describe="",subId=0,reward=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipStory_Xls : table 
WarshipStory_Xls =
{
    ["1"]=setmetatable({id=1,describe="描述",subId=1},mt),
    ["2"]=setmetatable({id=2,describe="描述",subId=4},mt),
    ["3"]=setmetatable({id=3,describe="描述",subId=1},mt),
    ["4"]=setmetatable({id=4,describe="描述",subId=4},mt),
    ["5"]=setmetatable({id=5,describe="描述",subId=1},mt),
    ["6"]=setmetatable({id=6,describe="描述",subId=4},mt),
    ["10001"]=setmetatable({id=10001,describe="",subId=1000100},mt),
    ["10002"]=setmetatable({id=10002,describe="",subId=1000200},mt),
    ["10101"]=setmetatable({id=10101,describe="",subId=1010100},mt),
    ["10102"]=setmetatable({id=10102,describe="",subId=1010200},mt),
    ["10103"]=setmetatable({id=10103,describe="",subId=1010300},mt),
    ["10201"]=setmetatable({id=10201,describe="",subId=1020100},mt),
    ["10202"]=setmetatable({id=10202,describe="",subId=1020200},mt),
    ["10301"]=setmetatable({id=10301,describe="",subId=1030100},mt),
    ["10302"]=setmetatable({id=10302,describe="",subId=1030200},mt),
    ["10303"]=setmetatable({id=10303,describe="",subId=1030300},mt),
    ["10304"]=setmetatable({id=10304,describe="",subId=1030400},mt),
    ["10305"]=setmetatable({id=10305,describe="",subId=1030500},mt),
    ["10401"]=setmetatable({id=10401,describe="",subId=1040100},mt),
    ["10402"]=setmetatable({id=10402,describe="",subId=1040200},mt),
    ["10403"]=setmetatable({id=10403,describe="",subId=1040300},mt),
    ["10404"]=setmetatable({id=10404,describe="",subId=1040400},mt),
    ["10405"]=setmetatable({id=10405,describe="",subId=1040500},mt),
    ["10501"]=setmetatable({id=10501,describe="",subId=1050100},mt),
    ["10502"]=setmetatable({id=10502,describe="",subId=1050200},mt),
    ["10503"]=setmetatable({id=10503,describe="",subId=1050300},mt),
    ["20101"]=setmetatable({id=20101,describe="",subId=2010100},mt),
    ["20102"]=setmetatable({id=20102,describe="",subId=2010200},mt),
    ["20103"]=setmetatable({id=20103,describe="",subId=2010300},mt),
    ["20104"]=setmetatable({id=20104,describe="",subId=2010400},mt),
    ["20201"]=setmetatable({id=20201,describe="",subId=2020100},mt),
    ["20202"]=setmetatable({id=20202,describe="",subId=2020200},mt),
    ["20203"]=setmetatable({id=20203,describe="",subId=2020300},mt),
    ["20204"]=setmetatable({id=20204,describe="",subId=2020400},mt),
    ["20205"]=setmetatable({id=20205,describe="",subId=2020500},mt),
    ["20301"]=setmetatable({id=20301,describe="",subId=2030100},mt),
    ["20302"]=setmetatable({id=20302,describe="",subId=2030200},mt),
    ["20303"]=setmetatable({id=20303,describe="",subId=2030300},mt),
    ["20304"]=setmetatable({id=20304,describe="",subId=2030400},mt),
    ["20305"]=setmetatable({id=20305,describe="",subId=2030500},mt),
    ["20306"]=setmetatable({id=20306,describe="",subId=2030600},mt),
    ["20307"]=setmetatable({id=20307,describe="",subId=2030700},mt),
    ["20308"]=setmetatable({id=20308,describe="",subId=2030800},mt),
    ["20501"]=setmetatable({id=20501,describe="",subId=2050100},mt),
    ["20502"]=setmetatable({id=20502,describe="",subId=2050200},mt),
    ["20503"]=setmetatable({id=20503,describe="",subId=2050300},mt),
    ["20504"]=setmetatable({id=20504,describe="",subId=2050400},mt),
    ["20505"]=setmetatable({id=20505,describe="",subId=2050500},mt),
    ["20506"]=setmetatable({id=20506,describe="",subId=2050600},mt),
    ["30001"]=setmetatable({id=30001,describe="",subId=3000100},mt),
    ["30002"]=setmetatable({id=30002,describe="",subId=3000200},mt),
    ["30003"]=setmetatable({id=30003,describe="",subId=3000300},mt),
    ["30004"]=setmetatable({id=30004,describe="",subId=3000400},mt),
    ["30005"]=setmetatable({id=30005,describe="",subId=3000500},mt),
    ["30006"]=setmetatable({id=30006,describe="",subId=3000600},mt),
    ["30007"]=setmetatable({id=30007,describe="",subId=3000700},mt),
    ["30008"]=setmetatable({id=30008,describe="",subId=3000800},mt),
    ["30010"]=setmetatable({id=30010,describe="",subId=3001000},mt),
    ["40001"]=setmetatable({id=40001,describe="",subId=4000100},mt),
    ["40002"]=setmetatable({id=40002,describe="",subId=4000200},mt),
    ["40003"]=setmetatable({id=40003,describe="",subId=4000300},mt),
    ["40004"]=setmetatable({id=40004,describe="",subId=4000400},mt),
    ["40005"]=setmetatable({id=40005,describe="",subId=4000500},mt),
    ["40006"]=setmetatable({id=40006,describe="",subId=4000600},mt),
    ["40007"]=setmetatable({id=40007,describe="",subId=4000700},mt),
    ["40008"]=setmetatable({id=40008,describe="",subId=4000800},mt),
    ["40009"]=setmetatable({id=40009,describe="",subId=4000900},mt),
    ["40010"]=setmetatable({id=40010,describe="",subId=4001000},mt),
    ["40011"]=setmetatable({id=40011,describe="",subId=4001100},mt),
    ["40012"]=setmetatable({id=40012,describe="",subId=4001200},mt),
    ["40013"]=setmetatable({id=40013,describe="",subId=4001300},mt),
    ["40014"]=setmetatable({id=40014,describe="",subId=4001400},mt),
    ["40015"]=setmetatable({id=40015,describe="",subId=4001500},mt),
    ["40016"]=setmetatable({id=40016,describe="",subId=4001600},mt),
    ["40017"]=setmetatable({id=40017,describe="",subId=4001700},mt),
    ["40018"]=setmetatable({id=40018,describe="",subId=4001800},mt),
    ["40019"]=setmetatable({id=40019,describe="",subId=4001900},mt),
    ["40020"]=setmetatable({id=40020,describe="",subId=4002000},mt),
    ["40021"]=setmetatable({id=40021,describe="",subId=4002100},mt),
    ["40023"]=setmetatable({id=40023,describe="",subId=4002300},mt),
    ["40024"]=setmetatable({id=40024,describe="",subId=4002400},mt),
    ["40025"]=setmetatable({id=40025,describe="",subId=4002500},mt),
    ["40026"]=setmetatable({id=40026,describe="",subId=4002600},mt),
    ["40029"]=setmetatable({id=40029,describe="",subId=4002900},mt),
    ["41001"]=setmetatable({id=41001,describe="",subId=4100100},mt),
    ["41002"]=setmetatable({id=41002,describe="",subId=4100200},mt),
    ["41003"]=setmetatable({id=41003,describe="",subId=4100300},mt),
    ["41004"]=setmetatable({id=41004,describe="",subId=4100400},mt),
    ["41005"]=setmetatable({id=41005,describe="",subId=4100500},mt),
    ["41006"]=setmetatable({id=41006,describe="",subId=4100600},mt),
    ["41007"]=setmetatable({id=41007,describe="",subId=4100700},mt),
    ["41008"]=setmetatable({id=41008,describe="",subId=4100800},mt),
    ["41009"]=setmetatable({id=41009,describe="",subId=4100900},mt),
    ["41010"]=setmetatable({id=41010,describe="",subId=4101000},mt),
    ["41011"]=setmetatable({id=41011,describe="",subId=4101100},mt),
}
--生成获取数据的方法
---@return WarshipStory
function GetWarshipStoryData(id)
    return WarshipStory_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipStory : table 
---@field id number
---@field describe string
---@field subId number
---@field reward number
