local default = {id=0,openType=0,openParamFloat=0,closeType=0,closeParamFloat=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AreaColliderLifeCtrl_Xls : table 
AreaColliderLifeCtrl_Xls =
{
    ["1"]=setmetatable({id=1,openType=1,openParamFloat=0.0,closeType=2},mt),
    ["2"]=setmetatable({id=2,openType=3,openParamFloat=5.0,closeType=4,closeParamFloat=5.0},mt),
    ["20000001"]=setmetatable({id=20000001,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=3.0},mt),
    ["20030130"]=setmetatable({id=20030130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=15.0},mt),
    ["20030131"]=setmetatable({id=20030131,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=4.0},mt),
    ["20040120"]=setmetatable({id=20040120,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=6.0},mt),
    ["20050130"]=setmetatable({id=20050130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=16.0},mt),
    ["20070130"]=setmetatable({id=20070130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=12.0},mt),
    ["20070131"]=setmetatable({id=20070131,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=1.0},mt),
    ["20090130"]=setmetatable({id=20090130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=10.0},mt),
    ["20090131"]=setmetatable({id=20090131,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=10.0},mt),
    ["20120130"]=setmetatable({id=20120130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=5.0},mt),
    ["20130130"]=setmetatable({id=20130130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=0.5},mt),
    ["20160120"]=setmetatable({id=20160120,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=12.0},mt),
    ["20180130"]=setmetatable({id=20180130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=3.5},mt),
    ["20200130"]=setmetatable({id=20200130,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=4.0},mt),
    ["20210110"]=setmetatable({id=20210110,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=1.0},mt),
    ["20230120"]=setmetatable({id=20230120,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=4.0},mt),
    ["20230121"]=setmetatable({id=20230121,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=4.0},mt),
    ["100"]=setmetatable({id=100,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=2.0},mt),
    ["110"]=setmetatable({id=110,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=2.0},mt),
    ["141"]=setmetatable({id=141,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=3.0},mt),
    ["151"]=setmetatable({id=151,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=3.0},mt),
    ["170"]=setmetatable({id=170,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=10.0},mt),
    ["180"]=setmetatable({id=180,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=10.0},mt),
    ["190"]=setmetatable({id=190,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=2.2},mt),
    ["210"]=setmetatable({id=210,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=2.0},mt),
    ["220"]=setmetatable({id=220,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=4.0},mt),
    ["106101"]=setmetatable({id=106101,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=5.0},mt),
    ["308001"]=setmetatable({id=308001,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=14.0},mt),
    ["308002"]=setmetatable({id=308002,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=3.5},mt),
    ["320"]=setmetatable({id=320,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=8.0},mt),
    ["330"]=setmetatable({id=330,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=8.0},mt),
    ["340"]=setmetatable({id=340,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=8.0},mt),
    ["350"]=setmetatable({id=350,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=8.0},mt),
    ["431"]=setmetatable({id=431,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=2.0},mt),
    ["432"]=setmetatable({id=432,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=2.0},mt),
    ["453"]=setmetatable({id=453,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=5.5},mt),
    ["2040231"]=setmetatable({id=2040231,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=1.0},mt),
    ["2020211"]=setmetatable({id=2020211,openType=1,openParamFloat=0.0,closeType=4,closeParamFloat=1.0},mt),
    ["20016"]=setmetatable({id=20016,openType=1,openParamFloat=0.0,closeType=6,closeParamFloat=0.0},mt),
}
--生成获取数据的方法
---@return AreaColliderLifeCtrl
function GetAreaColliderLifeCtrlData(id)
    return AreaColliderLifeCtrl_Xls[tostring(id)]
end
--自动生成注释
---@class AreaColliderLifeCtrl : table 
---@field id number
---@field openType number
---@field openParamFloat number
---@field closeType number
---@field closeParamFloat number
