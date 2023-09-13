local default = {dropSetId=0,dropGroupId=xlsNilTable,weight=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class DropSet_Xls : table 
DropSet_Xls =
{
    ["10"]=setmetatable({dropSetId=10,dropGroupId={[1]=100,[2]=200},weight={[1]=3000,[2]=1000}},mt),
    ["20"]=setmetatable({dropSetId=20,dropGroupId={[1]=200},weight={[1]=1000}},mt),
    ["2005"]=setmetatable({dropSetId=2005,dropGroupId={[1]=1401,[2]=1508,[3]=1509},weight={[1]=85,[2]=510,[3]=9405}},mt),
    ["4001"]=setmetatable({dropSetId=4001,dropGroupId={[1]=1501,[2]=1502,[3]=1503},weight={[1]=85,[2]=1330,[3]=8585}},mt),
    ["4002"]=setmetatable({dropSetId=4002,dropGroupId={[1]=1521,[2]=1522,[3]=1523},weight={[1]=85,[2]=1330,[3]=8585}},mt),
    ["4003"]=setmetatable({dropSetId=4003,dropGroupId={[1]=1524,[2]=1525,[3]=1526},weight={[1]=100,[2]=1330,[3]=8570}},mt),
    ["4004"]=setmetatable({dropSetId=4004,dropGroupId={[1]=1527,[2]=1528,[3]=1529},weight={[1]=85,[2]=1330,[3]=8585}},mt),
    ["4005"]=setmetatable({dropSetId=4005,dropGroupId={[1]=1530,[2]=1531,[3]=1532},weight={[1]=100,[2]=1330,[3]=8570}},mt),
    ["4006"]=setmetatable({dropSetId=4006,dropGroupId={[1]=1533,[2]=1534,[3]=1535},weight={[1]=85,[2]=1330,[3]=8585}},mt),
    ["4007"]=setmetatable({dropSetId=4007,dropGroupId={[1]=1536,[2]=1537,[3]=1538},weight={[1]=100,[2]=1330,[3]=8570}},mt),
    ["4008"]=setmetatable({dropSetId=4008,dropGroupId={[1]=1539,[2]=1540,[3]=1541},weight={[1]=85,[2]=1330,[3]=8585}},mt),
    ["4009"]=setmetatable({dropSetId=4009,dropGroupId={[1]=1542,[2]=1543,[3]=1544},weight={[1]=85,[2]=1330,[3]=8585}},mt),
    ["4010"]=setmetatable({dropSetId=4010,dropGroupId={[1]=1545,[2]=1546,[3]=1547},weight={[1]=100,[2]=1330,[3]=8570}},mt),
    ["9001"]=setmetatable({dropSetId=9001,dropGroupId={[1]=9003,[2]=9004,[3]=9005},weight={[1]=834,[2]=166,[3]=0}},mt),
    ["9002"]=setmetatable({dropSetId=9002,dropGroupId={[1]=9003,[2]=9004,[3]=9005},weight={[1]=800,[2]=200,[3]=0}},mt),
    ["9003"]=setmetatable({dropSetId=9003,dropGroupId={[1]=9003,[2]=9004,[3]=9005},weight={[1]=768,[2]=232,[3]=0}},mt),
    ["9004"]=setmetatable({dropSetId=9004,dropGroupId={[1]=9003,[2]=9004,[3]=9005},weight={[1]=706,[2]=266,[3]=28}},mt),
    ["9005"]=setmetatable({dropSetId=9005,dropGroupId={[1]=9003,[2]=9004,[3]=9005},weight={[1]=644,[2]=300,[3]=56}},mt),
    ["9006"]=setmetatable({dropSetId=9006,dropGroupId={[1]=9003,[2]=9004,[3]=9005},weight={[1]=557,[2]=332,[3]=111}},mt),
}
--生成获取数据的方法
---@return DropSet
function GetDropSetData(id)
    return DropSet_Xls[tostring(id)]
end
--自动生成注释
---@class DropSet : table 
---@field dropSetId number
---@field dropGroupId table
---@field weight table
