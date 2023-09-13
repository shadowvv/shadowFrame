local default = {id=0,period=0,openingArea=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldRegionalExtraction_Xls : table 
BattlefieldRegionalExtraction_Xls =
{
    ["1001"]=setmetatable({id=1001,period=0,openingArea={[1]=10002}},mt),
    ["1002"]=setmetatable({id=1002,period=0,openingArea={[1]=20002}},mt),
    ["1003"]=setmetatable({id=1003,period=0,openingArea={[1]=30002}},mt),
    ["1004"]=setmetatable({id=1004,period=0,openingArea={[1]=40002}},mt),
    ["1005"]=setmetatable({id=1005,period=1,openingArea={[1]=20002}},mt),
    ["1006"]=setmetatable({id=1006,period=2,openingArea={[1]=20002}},mt),
    ["1007"]=setmetatable({id=1007,period=3,openingArea={[1]=10002}},mt),
    ["1008"]=setmetatable({id=1008,period=4,openingArea={[1]=20002}},mt),
    ["1009"]=setmetatable({id=1009,period=5,openingArea={[1]=20002}},mt),
    ["1010"]=setmetatable({id=1010,period=6,openingArea={[1]=20002}},mt),
    ["1011"]=setmetatable({id=1011,period=7,openingArea={[1]=10002}},mt),
    ["1012"]=setmetatable({id=1012,period=8,openingArea={[1]=10002}},mt),
    ["1013"]=setmetatable({id=1013,period=9,openingArea={[1]=10002}},mt),
    ["1014"]=setmetatable({id=1014,period=10,openingArea={[1]=10002}},mt),
    ["1015"]=setmetatable({id=1015,period=11,openingArea={[1]=20002}},mt),
    ["1016"]=setmetatable({id=1016,period=12,openingArea={[1]=20002}},mt),
    ["1017"]=setmetatable({id=1017,period=13,openingArea={[1]=20002}},mt),
    ["1018"]=setmetatable({id=1018,period=14,openingArea={[1]=10002}},mt),
    ["1019"]=setmetatable({id=1019,period=15,openingArea={[1]=10002}},mt),
    ["1020"]=setmetatable({id=1020,period=16,openingArea={[1]=20002}},mt),
    ["1021"]=setmetatable({id=1021,period=17,openingArea={[1]=20002}},mt),
    ["1022"]=setmetatable({id=1022,period=18,openingArea={[1]=10002}},mt),
    ["1023"]=setmetatable({id=1023,period=19,openingArea={[1]=10002}},mt),
    ["1024"]=setmetatable({id=1024,period=20,openingArea={[1]=20002}},mt),
    ["1025"]=setmetatable({id=1025,period=21,openingArea={[1]=20002}},mt),
    ["1026"]=setmetatable({id=1026,period=22,openingArea={[1]=10002}},mt),
    ["1027"]=setmetatable({id=1027,period=23,openingArea={[1]=10002}},mt),
    ["1028"]=setmetatable({id=1028,period=24,openingArea={[1]=20002}},mt),
    ["1029"]=setmetatable({id=1029,period=25,openingArea={[1]=20002}},mt),
    ["1030"]=setmetatable({id=1030,period=26,openingArea={[1]=10002}},mt),
    ["1031"]=setmetatable({id=1031,period=27,openingArea={[1]=10002}},mt),
    ["1032"]=setmetatable({id=1032,period=28,openingArea={[1]=20002}},mt),
    ["1033"]=setmetatable({id=1033,period=29,openingArea={[1]=20002}},mt),
    ["1034"]=setmetatable({id=1034,period=30,openingArea={[1]=40002}},mt),
    ["1035"]=setmetatable({id=1035,period=31,openingArea={[1]=40002}},mt),
    ["1036"]=setmetatable({id=1036,period=32,openingArea={[1]=10002}},mt),
    ["1037"]=setmetatable({id=1037,period=33,openingArea={[1]=10002}},mt),
    ["1038"]=setmetatable({id=1038,period=34,openingArea={[1]=40002}},mt),
    ["1039"]=setmetatable({id=1039,period=35,openingArea={[1]=40002}},mt),
}
--生成获取数据的方法
---@return BattlefieldRegionalExtraction
function GetBattlefieldRegionalExtractionData(id)
    return BattlefieldRegionalExtraction_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldRegionalExtraction : table 
---@field id number
---@field period number
---@field openingArea table
