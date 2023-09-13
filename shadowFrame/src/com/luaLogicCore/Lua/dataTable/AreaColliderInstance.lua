local default = {id=0,lifeCtrlId=xlsNilTable,templateId=0,enterCondition=0,enterAction=xlsNilTable,enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0,stayAction=xlsNilTable,stayActionDelta=0,stayActionTimes=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AreaColliderInstance_Xls : table 
AreaColliderInstance_Xls =
{
    ["20000001"]=setmetatable({id=20000001,lifeCtrlId={[1]=20000001},templateId=20000001,enterCondition=3,enterAction={[1]=2000000001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20000002"]=setmetatable({id=20000002,lifeCtrlId={[1]=20000001},templateId=20000002,enterCondition=3,enterAction={[1]=2000000002},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20000003"]=setmetatable({id=20000003,lifeCtrlId={[1]=20000001},templateId=20000003,enterCondition=3,enterAction={[1]=2000000003},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20000004"]=setmetatable({id=20000004,lifeCtrlId={[1]=20000001},templateId=20000004,enterCondition=3,enterAction={[1]=2000000004},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20030130"]=setmetatable({id=20030130,lifeCtrlId={[1]=20030130},templateId=20030130,enterCondition=5,enterAction={[1]=2003013011,[2]=2003013001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=2003013012},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20030131"]=setmetatable({id=20030131,lifeCtrlId={[1]=20030131},templateId=20030131,enterCondition=4,enterAction={[1]=2003013001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2003013002},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20040120"]=setmetatable({id=20040120,lifeCtrlId={[1]=20040120},templateId=20040120},mt),
    ["20050130"]=setmetatable({id=20050130,lifeCtrlId={[1]=20050130},templateId=20050130,enterCondition=4,enterAction={[1]=2005013001,[2]=2005013003},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2005013002,[2]=2005013004},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20070130"]=setmetatable({id=20070130,lifeCtrlId={[1]=20070130},templateId=20070130,enterCondition=4,enterAction={[1]=2007013001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2007013002},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20070131"]=setmetatable({id=20070131,lifeCtrlId={[1]=20070131},templateId=20070131,enterCondition=4,enterAction={[1]=2007013003},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20090130"]=setmetatable({id=20090130,lifeCtrlId={[1]=20090130},templateId=20090130,enterCondition=4,enterAction={[1]=2009013001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2009013002},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20090131"]=setmetatable({id=20090131,lifeCtrlId={[1]=20090131},templateId=20090131,enterCondition=4,enterAction={[1]=2009013021},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2009013022},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20120130"]=setmetatable({id=20120130,lifeCtrlId={[1]=20120130},templateId=20120130},mt),
    ["20130130"]=setmetatable({id=20130130,lifeCtrlId={[1]=20130130},templateId=20130130,enterCondition=3,enterAction={[1]=2013013001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20160120"]=setmetatable({id=20160120,lifeCtrlId={[1]=20160120},templateId=20160120,enterCondition=4,enterAction={[1]=2016013001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2016013002},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20180130"]=setmetatable({id=20180130,lifeCtrlId={[1]=20180130},templateId=20180130},mt),
    ["20200130"]=setmetatable({id=20200130,lifeCtrlId={[1]=20200130},templateId=20200130,enterCondition=4,enterAction={[1]=2020013001,[2]=2020013002},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20200131"]=setmetatable({id=20200131,lifeCtrlId={[1]=20200130},templateId=20200131,enterCondition=4,enterAction={[1]=2020013001,[2]=2020013002},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20210110"]=setmetatable({id=20210110,lifeCtrlId={[1]=20210110},templateId=20210110,enterCondition=4,enterAction={[1]=2021011001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20230120"]=setmetatable({id=20230120,lifeCtrlId={[1]=20230120},templateId=20230120,enterCondition=4,enterAction={[1]=2023012001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2023012002},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20230121"]=setmetatable({id=20230121,lifeCtrlId={[1]=20230121},templateId=20230121,enterCondition=4,enterAction={[1]=2023012101},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=4,leaveAction={[1]=2023012102},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["100"]=setmetatable({id=100,lifeCtrlId={[1]=100},templateId=100,enterCondition=5,enterAction={[1]=1001},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=1002},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=5,stayAction={[1]=1011,[2]=1111},stayActionDelta=0.066,stayActionTimes=9999},mt),
    ["110"]=setmetatable({id=110,lifeCtrlId={[1]=110},templateId=110,enterCondition=5,enterAction={[1]=1101},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=1102},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=5,stayAction={[1]=1121},stayActionDelta=0.066,stayActionTimes=9999},mt),
    ["141"]=setmetatable({id=141,lifeCtrlId={[1]=141},templateId=141,enterCondition=5,enterAction={[1]=1411}},mt),
    ["151"]=setmetatable({id=151,lifeCtrlId={[1]=151},templateId=151,enterCondition=5,enterAction={[1]=1511}},mt),
    ["170"]=setmetatable({id=170,lifeCtrlId={[1]=170},templateId=170,enterCondition=5,enterAction={[1]=1701},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=1702},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=5,stayAction={[1]=1711},stayActionDelta=0.066,stayActionTimes=9999},mt),
    ["180"]=setmetatable({id=180,lifeCtrlId={[1]=180},templateId=180,enterCondition=5,enterAction={[1]=1801},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=1802},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=5,stayAction={[1]=1711,[2]=1811},stayActionDelta=0.066,stayActionTimes=9999},mt),
    ["190"]=setmetatable({id=190,lifeCtrlId={[1]=190},templateId=190},mt),
    ["210"]=setmetatable({id=210,lifeCtrlId={[1]=210},templateId=210,enterCondition=5,enterAction={[1]=2101,[2]=2103},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=2102},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=5,stayAction={[1]=2111},stayActionDelta=0.066,stayActionTimes=9999},mt),
    ["220"]=setmetatable({id=220,lifeCtrlId={[1]=220},templateId=220,enterCondition=5,enterAction={[1]=2201},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=5,leaveAction={[1]=2202}},mt),
    ["320"]=setmetatable({id=320,lifeCtrlId={[1]=320},templateId=320,enterCondition=5,enterAction={[1]=3201,[2]=3203},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0,stayAction=xlsNilTable,stayActionDelta=0.033,stayActionTimes=1},mt),
    ["330"]=setmetatable({id=330,lifeCtrlId={[1]=330},templateId=330,enterCondition=5,enterAction={[1]=3301,[2]=3303},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0,stayAction=xlsNilTable,stayActionDelta=0.033,stayActionTimes=1},mt),
    ["340"]=setmetatable({id=340,lifeCtrlId={[1]=340},templateId=340,enterCondition=5,enterAction={[1]=3401,[2]=3403},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0,stayAction=xlsNilTable,stayActionDelta=0.033,stayActionTimes=1},mt),
    ["350"]=setmetatable({id=350,lifeCtrlId={[1]=350},templateId=350,enterCondition=5,enterAction={[1]=3501,[2]=3503},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0,stayAction=xlsNilTable,stayActionDelta=0.033,stayActionTimes=1},mt),
    ["431"]=setmetatable({id=431,lifeCtrlId={[1]=431},templateId=431,enterCondition=4,enterAction={[1]=4311}},mt),
    ["432"]=setmetatable({id=432,lifeCtrlId={[1]=432},templateId=432,enterCondition=4,enterAction={[1]=4321}},mt),
    ["453"]=setmetatable({id=453,lifeCtrlId={[1]=453},templateId=453,enterCondition=4,enterAction={[1]=453},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=4,stayAction={[1]=453},stayActionDelta=0.99,stayActionTimes=5},mt),
    ["20016"]=setmetatable({id=20016,lifeCtrlId={[1]=20016},templateId=20016,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20017"]=setmetatable({id=20017,lifeCtrlId={[1]=20016},templateId=20017,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20018"]=setmetatable({id=20018,lifeCtrlId={[1]=20016},templateId=20018,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20019"]=setmetatable({id=20019,lifeCtrlId={[1]=20016},templateId=20019,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20020"]=setmetatable({id=20020,lifeCtrlId={[1]=20016},templateId=20020,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20021"]=setmetatable({id=20021,lifeCtrlId={[1]=20016},templateId=20021,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20022"]=setmetatable({id=20022,lifeCtrlId={[1]=20016},templateId=20022,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20023"]=setmetatable({id=20023,lifeCtrlId={[1]=20016},templateId=20023,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20024"]=setmetatable({id=20024,lifeCtrlId={[1]=20016},templateId=20024,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["20025"]=setmetatable({id=20025,lifeCtrlId={[1]=20016},templateId=20025,enterCondition=3,enterAction={[1]=200161,[2]=200271},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=200162,[2]=200272},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["305101"]=setmetatable({id=305101,lifeCtrlId={[1]=1},templateId=305101,enterCondition=3,enterAction={[1]=305111},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=305112},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["305102"]=setmetatable({id=305102,lifeCtrlId={[1]=1},templateId=305102,enterCondition=3,enterAction={[1]=305122},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction={[1]=305121},leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["106101"]=setmetatable({id=106101,lifeCtrlId={[1]=220},templateId=106101,enterCondition=3,enterAction=xlsNilTable,enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["308001"]=setmetatable({id=308001,lifeCtrlId={[1]=308001},templateId=106101,enterCondition=3,enterAction=xlsNilTable,enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["308002"]=setmetatable({id=308002,lifeCtrlId={[1]=308002},templateId=106101,enterCondition=3,enterAction=xlsNilTable,enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=3,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["2040231"]=setmetatable({id=2040231,lifeCtrlId={[1]=2040231},templateId=2040231,enterCondition=4,enterAction={[1]=2040231},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
    ["2020211"]=setmetatable({id=2020211,lifeCtrlId={[1]=2020211},templateId=2020211,enterCondition=4,enterAction={[1]=2020211},enterCondition2=0,enterAction2=xlsNilTable,leaveCondition=0,leaveAction=xlsNilTable,leaveCondition2=0,leaveAction2=xlsNilTable,stayCondition=0},mt),
}
--生成获取数据的方法
---@return AreaColliderInstance
function GetAreaColliderInstanceData(id)
    return AreaColliderInstance_Xls[tostring(id)]
end
--自动生成注释
---@class AreaColliderInstance : table 
---@field id number
---@field lifeCtrlId table
---@field templateId number
---@field enterCondition number
---@field enterAction table
---@field enterCondition2 number
---@field enterAction2 table
---@field leaveCondition number
---@field leaveAction table
---@field leaveCondition2 number
---@field leaveAction2 table
---@field stayCondition number
---@field stayAction table
---@field stayActionDelta number
---@field stayActionTimes number
