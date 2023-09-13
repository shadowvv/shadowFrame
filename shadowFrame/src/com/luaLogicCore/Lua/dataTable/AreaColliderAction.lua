local default = {id=0,type=0,param=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AreaColliderAction_Xls : table 
AreaColliderAction_Xls =
{
    ["2000000001"]=setmetatable({id=2000000001,type=1,param="199988"},mt),
    ["2000000002"]=setmetatable({id=2000000002,type=1,param="199987"},mt),
    ["2000000003"]=setmetatable({id=2000000003,type=1,param="199986"},mt),
    ["2000000004"]=setmetatable({id=2000000004,type=1,param="199985"},mt),
    ["2003013011"]=setmetatable({id=2003013011,type=1,param="200301301"},mt),
    ["2003013012"]=setmetatable({id=2003013012,type=2,param="200301301"},mt),
    ["2003013001"]=setmetatable({id=2003013001,type=1,param="200301300"},mt),
    ["2003013002"]=setmetatable({id=2003013002,type=2,param="200301300"},mt),
    ["2005013001"]=setmetatable({id=2005013001,type=1,param="200501300"},mt),
    ["2005013002"]=setmetatable({id=2005013002,type=2,param="200501300"},mt),
    ["2005013003"]=setmetatable({id=2005013003,type=1,param="200501201"},mt),
    ["2005013004"]=setmetatable({id=2005013004,type=2,param="200501201"},mt),
    ["2007013001"]=setmetatable({id=2007013001,type=1,param="200701300"},mt),
    ["2007013002"]=setmetatable({id=2007013002,type=2,param="200701300"},mt),
    ["2007013003"]=setmetatable({id=2007013003,type=1,param="200701301"},mt),
    ["2007013004"]=setmetatable({id=2007013004,type=2,param="200701301"},mt),
    ["2012013001"]=setmetatable({id=2012013001,type=1,param="201201300"},mt),
    ["2009013001"]=setmetatable({id=2009013001,type=1,param="200901300"},mt),
    ["2009013002"]=setmetatable({id=2009013002,type=2,param="200901300"},mt),
    ["2009013021"]=setmetatable({id=2009013021,type=1,param="200901302"},mt),
    ["2009013022"]=setmetatable({id=2009013022,type=2,param="200901302"},mt),
    ["2012013002"]=setmetatable({id=2012013002,type=2,param="201201300"},mt),
    ["2012013003"]=setmetatable({id=2012013003,type=1,param="201201301"},mt),
    ["2012013004"]=setmetatable({id=2012013004,type=2,param="201201301"},mt),
    ["2013013001"]=setmetatable({id=2013013001,type=1,param="201301300"},mt),
    ["2016013001"]=setmetatable({id=2016013001,type=1,param="201601201"},mt),
    ["2016013002"]=setmetatable({id=2016013002,type=2,param="201601201"},mt),
    ["2020013001"]=setmetatable({id=2020013001,type=1,param="202000001"},mt),
    ["2020013002"]=setmetatable({id=2020013002,type=1,param="202000002"},mt),
    ["2021011001"]=setmetatable({id=2021011001,type=1,param="202101103"},mt),
    ["2023012001"]=setmetatable({id=2023012001,type=1,param="202301202"},mt),
    ["2023012002"]=setmetatable({id=2023012002,type=2,param="202301202"},mt),
    ["2023012101"]=setmetatable({id=2023012101,type=1,param="202301203"},mt),
    ["2023012102"]=setmetatable({id=2023012102,type=2,param="202301203"},mt),
    ["1001"]=setmetatable({id=1001,type=1,param="101"},mt),
    ["1002"]=setmetatable({id=1002,type=2,param="101"},mt),
    ["1101"]=setmetatable({id=1101,type=1,param="102"},mt),
    ["1102"]=setmetatable({id=1102,type=2,param="102"},mt),
    ["1011"]=setmetatable({id=1011,type=1,param="103"},mt),
    ["1012"]=setmetatable({id=1012,type=2,param="103"},mt),
    ["1111"]=setmetatable({id=1111,type=1,param="104"},mt),
    ["1112"]=setmetatable({id=1112,type=2,param="104"},mt),
    ["1121"]=setmetatable({id=1121,type=1,param="105"},mt),
    ["1122"]=setmetatable({id=1122,type=2,param="105"},mt),
    ["1411"]=setmetatable({id=1411,type=1,param="140"},mt),
    ["1511"]=setmetatable({id=1511,type=1,param="150"},mt),
    ["1701"]=setmetatable({id=1701,type=1,param="181"},mt),
    ["1711"]=setmetatable({id=1711,type=1,param="106"},mt),
    ["1702"]=setmetatable({id=1702,type=2,param="181"},mt),
    ["1712"]=setmetatable({id=1712,type=2,param="106"},mt),
    ["1801"]=setmetatable({id=1801,type=1,param="171"},mt),
    ["1802"]=setmetatable({id=1802,type=2,param="171"},mt),
    ["1811"]=setmetatable({id=1811,type=1,param="107"},mt),
    ["1812"]=setmetatable({id=1812,type=2,param="107"},mt),
    ["1901"]=setmetatable({id=1901,type=1,param="191"},mt),
    ["1902"]=setmetatable({id=1902,type=2,param="191"},mt),
    ["2101"]=setmetatable({id=2101,type=1,param="211"},mt),
    ["2102"]=setmetatable({id=2102,type=2,param="211"},mt),
    ["2103"]=setmetatable({id=2103,type=1,param="107"},mt),
    ["2104"]=setmetatable({id=2104,type=2,param="107"},mt),
    ["2111"]=setmetatable({id=2111,type=1,param="127"},mt),
    ["2112"]=setmetatable({id=2112,type=2,param="127"},mt),
    ["2201"]=setmetatable({id=2201,type=1,param="221"},mt),
    ["2202"]=setmetatable({id=2202,type=2,param="221"},mt),
    ["3201"]=setmetatable({id=3201,type=1,param="322"},mt),
    ["3301"]=setmetatable({id=3301,type=1,param="332"},mt),
    ["3401"]=setmetatable({id=3401,type=1,param="342"},mt),
    ["3501"]=setmetatable({id=3501,type=1,param="352"},mt),
    ["3202"]=setmetatable({id=3202,type=2,param="322"},mt),
    ["3302"]=setmetatable({id=3302,type=2,param="332"},mt),
    ["3402"]=setmetatable({id=3402,type=2,param="342"},mt),
    ["3502"]=setmetatable({id=3502,type=2,param="352"},mt),
    ["3203"]=setmetatable({id=3203,type=1,param="321"},mt),
    ["3303"]=setmetatable({id=3303,type=1,param="331"},mt),
    ["3403"]=setmetatable({id=3403,type=1,param="341"},mt),
    ["3503"]=setmetatable({id=3503,type=1,param="351"},mt),
    ["4311"]=setmetatable({id=4311,type=1,param="438"},mt),
    ["4321"]=setmetatable({id=4321,type=1,param="434"},mt),
    ["453"]=setmetatable({id=453,type=1,param="454"},mt),
    ["305111"]=setmetatable({id=305111,type=1,param="10071"},mt),
    ["305112"]=setmetatable({id=305112,type=2,param="10071"},mt),
    ["305121"]=setmetatable({id=305121,type=1,param="10079"},mt),
    ["305122"]=setmetatable({id=305122,type=2,param="10079"},mt),
    ["2040231"]=setmetatable({id=2040231,type=1,param="2040232"},mt),
    ["2020211"]=setmetatable({id=2020211,type=1,param="2020212"},mt),
    ["200161"]=setmetatable({id=200161,type=1,param="20015"},mt),
    ["200162"]=setmetatable({id=200162,type=2,param="20015"},mt),
    ["200271"]=setmetatable({id=200271,type=1,param="20027"},mt),
    ["200272"]=setmetatable({id=200272,type=2,param="20027"},mt),
}
--生成获取数据的方法
---@return AreaColliderAction
function GetAreaColliderActionData(id)
    return AreaColliderAction_Xls[tostring(id)]
end
--自动生成注释
---@class AreaColliderAction : table 
---@field id number
---@field type number
---@field param string
