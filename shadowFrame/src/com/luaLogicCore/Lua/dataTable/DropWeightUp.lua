local default = {dropWeightUpID=0,triggerTime=0,triggerRate=0,targetDropSetID=0,targetDropGroupID=0,rateUP=0,rateMax=0,targetDropGroupAim=0,aimCountSync=0,aimCount=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class DropWeightUp_Xls : table 
DropWeightUp_Xls =
{
    ["10000"]=setmetatable({dropWeightUpID=10000,triggerTime=72,triggerRate=1,targetDropSetID=1000,targetDropGroupID=1504,rateUP=1130,rateMax=10000,targetDropGroupAim=1604,aimCountSync=1,aimCount=2},mt),
    ["10001"]=setmetatable({dropWeightUpID=10001,triggerTime=9,triggerRate=1,targetDropSetID=1000,targetDropGroupID=1505,rateUP=5100,rateMax=10000,targetDropGroupAim=1606,aimCountSync=2,aimCount=2},mt),
    ["2005"]=setmetatable({dropWeightUpID=2005,triggerTime=72,triggerRate=1,targetDropSetID=2005,targetDropGroupID=1401,rateUP=1130,rateMax=10000},mt),
    ["2006"]=setmetatable({dropWeightUpID=2006,triggerTime=9,triggerRate=1,targetDropSetID=2005,targetDropGroupID=1508,rateUP=5100,rateMax=10000},mt),
    ["30000"]=setmetatable({dropWeightUpID=30000,triggerTime=72,triggerRate=1,targetDropSetID=3000,targetDropGroupID=1507,rateUP=1130,rateMax=10000},mt),
    ["30001"]=setmetatable({dropWeightUpID=30001,triggerTime=9,triggerRate=1,targetDropSetID=3000,targetDropGroupID=1508,rateUP=5100,rateMax=10000},mt),
    ["40010"]=setmetatable({dropWeightUpID=40010,triggerTime=72,triggerRate=1,targetDropSetID=4001,targetDropGroupID=1501,rateUP=1130,rateMax=10000},mt),
    ["40011"]=setmetatable({dropWeightUpID=40011,triggerTime=9,triggerRate=1,targetDropSetID=4001,targetDropGroupID=1502,rateUP=5100,rateMax=10000},mt),
    ["30060"]=setmetatable({dropWeightUpID=30060,triggerTime=72,triggerRate=1,targetDropSetID=3006,targetDropGroupID=1510,rateUP=1130,rateMax=10000,targetDropGroupAim=1610,aimCountSync=3,aimCount=2},mt),
    ["30061"]=setmetatable({dropWeightUpID=30061,triggerTime=9,triggerRate=1,targetDropSetID=3006,targetDropGroupID=1511,rateUP=5100,rateMax=10000,targetDropGroupAim=1612,aimCountSync=4,aimCount=2},mt),
    ["10020"]=setmetatable({dropWeightUpID=10020,triggerTime=72,triggerRate=1,targetDropSetID=1002,targetDropGroupID=1513,rateUP=1130,rateMax=10000,targetDropGroupAim=1614,aimCountSync=5,aimCount=2},mt),
    ["10021"]=setmetatable({dropWeightUpID=10021,triggerTime=9,triggerRate=1,targetDropSetID=1002,targetDropGroupID=1514,rateUP=5100,rateMax=10000,targetDropGroupAim=1616,aimCountSync=6,aimCount=2},mt),
    ["10030"]=setmetatable({dropWeightUpID=10030,triggerTime=72,triggerRate=1,targetDropSetID=1003,targetDropGroupID=1516,rateUP=1130,rateMax=10000,targetDropGroupAim=1620,aimCountSync=5,aimCount=2},mt),
    ["10031"]=setmetatable({dropWeightUpID=10031,triggerTime=9,triggerRate=1,targetDropSetID=1003,targetDropGroupID=1517,rateUP=5100,rateMax=10000,targetDropGroupAim=1622,aimCountSync=6,aimCount=2},mt),
    ["40020"]=setmetatable({dropWeightUpID=40020,triggerTime=72,triggerRate=1,targetDropSetID=4002,targetDropGroupID=1521,rateUP=1130,rateMax=10000,targetDropGroupAim=1631,aimCountSync=7,aimCount=2},mt),
    ["40021"]=setmetatable({dropWeightUpID=40021,triggerTime=9,triggerRate=1,targetDropSetID=4002,targetDropGroupID=1522,rateUP=5100,rateMax=10000,targetDropGroupAim=1633,aimCountSync=8,aimCount=2},mt),
    ["40030"]=setmetatable({dropWeightUpID=40030,triggerTime=50,triggerRate=1,targetDropSetID=4003,targetDropGroupID=1524,rateUP=10000,rateMax=10000},mt),
    ["40031"]=setmetatable({dropWeightUpID=40031,triggerTime=9,triggerRate=1,targetDropSetID=4003,targetDropGroupID=1525,rateUP=5100,rateMax=10000},mt),
    ["40040"]=setmetatable({dropWeightUpID=40040,triggerTime=72,triggerRate=1,targetDropSetID=4004,targetDropGroupID=1527,rateUP=1130,rateMax=10000,targetDropGroupAim=1643,aimCountSync=11,aimCount=2},mt),
    ["40041"]=setmetatable({dropWeightUpID=40041,triggerTime=9,triggerRate=1,targetDropSetID=4004,targetDropGroupID=1528,rateUP=5100,rateMax=10000,targetDropGroupAim=1645,aimCountSync=12,aimCount=2},mt),
    ["40050"]=setmetatable({dropWeightUpID=40050,triggerTime=50,triggerRate=1,targetDropSetID=4005,targetDropGroupID=1530,rateUP=10000,rateMax=10000},mt),
    ["40051"]=setmetatable({dropWeightUpID=40051,triggerTime=9,triggerRate=1,targetDropSetID=4005,targetDropGroupID=1531,rateUP=5100,rateMax=10000},mt),
    ["40060"]=setmetatable({dropWeightUpID=40060,triggerTime=72,triggerRate=1,targetDropSetID=4006,targetDropGroupID=1533,rateUP=1130,rateMax=10000,targetDropGroupAim=1655,aimCountSync=15,aimCount=2},mt),
    ["40061"]=setmetatable({dropWeightUpID=40061,triggerTime=9,triggerRate=1,targetDropSetID=4006,targetDropGroupID=1534,rateUP=5100,rateMax=10000,targetDropGroupAim=1657,aimCountSync=16,aimCount=2},mt),
    ["40070"]=setmetatable({dropWeightUpID=40070,triggerTime=50,triggerRate=1,targetDropSetID=4007,targetDropGroupID=1536,rateUP=10000,rateMax=10000},mt),
    ["40071"]=setmetatable({dropWeightUpID=40071,triggerTime=9,triggerRate=1,targetDropSetID=4007,targetDropGroupID=1537,rateUP=5100,rateMax=10000},mt),
    ["40080"]=setmetatable({dropWeightUpID=40080,triggerTime=72,triggerRate=1,targetDropSetID=4008,targetDropGroupID=1539,rateUP=1130,rateMax=10000},mt),
    ["40081"]=setmetatable({dropWeightUpID=40081,triggerTime=9,triggerRate=1,targetDropSetID=4008,targetDropGroupID=1540,rateUP=5100,rateMax=10000},mt),
    ["40090"]=setmetatable({dropWeightUpID=40090,triggerTime=72,triggerRate=1,targetDropSetID=4009,targetDropGroupID=1542,rateUP=1130,rateMax=10000,targetDropGroupAim=1673,aimCountSync=11,aimCount=2},mt),
    ["40091"]=setmetatable({dropWeightUpID=40091,triggerTime=9,triggerRate=1,targetDropSetID=4009,targetDropGroupID=1543,rateUP=5100,rateMax=10000,targetDropGroupAim=1675,aimCountSync=12,aimCount=2},mt),
    ["40100"]=setmetatable({dropWeightUpID=40100,triggerTime=50,triggerRate=1,targetDropSetID=4010,targetDropGroupID=1545,rateUP=10000,rateMax=10000},mt),
    ["40101"]=setmetatable({dropWeightUpID=40101,triggerTime=9,triggerRate=1,targetDropSetID=4010,targetDropGroupID=1546,rateUP=5100,rateMax=10000},mt),
}
--生成获取数据的方法
---@return DropWeightUp
function GetDropWeightUpData(id)
    return DropWeightUp_Xls[tostring(id)]
end
--自动生成注释
---@class DropWeightUp : table 
---@field dropWeightUpID number
---@field triggerTime number
---@field triggerRate number
---@field targetDropSetID number
---@field targetDropGroupID number
---@field rateUP number
---@field rateMax number
---@field targetDropGroupAim number
---@field aimCountSync number
---@field aimCount number
