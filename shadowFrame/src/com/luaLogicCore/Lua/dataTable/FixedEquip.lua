local default = {fixedEquipId=0,equipId=0,mainAttributeId=0,changeAttributeId=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class FixedEquip_Xls : table 
FixedEquip_Xls =
{
    ["75003201"]=setmetatable({fixedEquipId=75003201,equipId=7050032,mainAttributeId=5002,changeAttributeId={[1]=5002001}},mt),
    ["75003301"]=setmetatable({fixedEquipId=75003301,equipId=7050033,mainAttributeId=500301,changeAttributeId={[1]=5002001}},mt),
    ["70003010"]=setmetatable({fixedEquipId=70003010,equipId=7000301,mainAttributeId=4001,changeAttributeId={[1]=51001}},mt),
    ["70003020"]=setmetatable({fixedEquipId=70003020,equipId=7000302,mainAttributeId=4002,changeAttributeId={[1]=51001}},mt),
    ["70003030"]=setmetatable({fixedEquipId=70003030,equipId=7000303,mainAttributeId=4003,changeAttributeId={[1]=51001}},mt),
    ["70003040"]=setmetatable({fixedEquipId=70003040,equipId=7000304,mainAttributeId=4004,changeAttributeId={[1]=51001}},mt),
    ["70003050"]=setmetatable({fixedEquipId=70003050,equipId=7000305,mainAttributeId=4005,changeAttributeId={[1]=51001}},mt),
    ["70104010"]=setmetatable({fixedEquipId=70104010,equipId=7010401,mainAttributeId=4001,changeAttributeId={[1]=51001,[2]=51002}},mt),
    ["70104020"]=setmetatable({fixedEquipId=70104020,equipId=7010402,mainAttributeId=4002,changeAttributeId={[1]=51001,[2]=51002}},mt),
    ["70104030"]=setmetatable({fixedEquipId=70104030,equipId=7010403,mainAttributeId=4003,changeAttributeId={[1]=51001,[2]=51002}},mt),
    ["70104040"]=setmetatable({fixedEquipId=70104040,equipId=7010404,mainAttributeId=4004,changeAttributeId={[1]=51001,[2]=51002}},mt),
    ["70104050"]=setmetatable({fixedEquipId=70104050,equipId=7010405,mainAttributeId=4005,changeAttributeId={[1]=51001,[2]=51002}},mt),
    ["70204010"]=setmetatable({fixedEquipId=70204010,equipId=7020401,mainAttributeId=4001,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70204020"]=setmetatable({fixedEquipId=70204020,equipId=7020402,mainAttributeId=4002,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70204030"]=setmetatable({fixedEquipId=70204030,equipId=7020403,mainAttributeId=4003,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70204040"]=setmetatable({fixedEquipId=70204040,equipId=7020404,mainAttributeId=4004,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70204050"]=setmetatable({fixedEquipId=70204050,equipId=7020405,mainAttributeId=4005,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70105010"]=setmetatable({fixedEquipId=70105010,equipId=7010501,mainAttributeId=5001,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70105020"]=setmetatable({fixedEquipId=70105020,equipId=7010502,mainAttributeId=5002,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70105030"]=setmetatable({fixedEquipId=70105030,equipId=7010503,mainAttributeId=5003,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70105040"]=setmetatable({fixedEquipId=70105040,equipId=7010504,mainAttributeId=5004,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70105050"]=setmetatable({fixedEquipId=70105050,equipId=7010505,mainAttributeId=5005,changeAttributeId={[1]=51001,[2]=51002,[3]=51003}},mt),
    ["70205010"]=setmetatable({fixedEquipId=70205010,equipId=7020501,mainAttributeId=5001,changeAttributeId={[1]=51001,[2]=51002,[3]=51003,[4]=52001}},mt),
    ["70205020"]=setmetatable({fixedEquipId=70205020,equipId=7020502,mainAttributeId=5002,changeAttributeId={[1]=51001,[2]=51002,[3]=51003,[4]=52001}},mt),
    ["70205030"]=setmetatable({fixedEquipId=70205030,equipId=7020503,mainAttributeId=5003,changeAttributeId={[1]=51001,[2]=51002,[3]=51003,[4]=52001}},mt),
    ["70205040"]=setmetatable({fixedEquipId=70205040,equipId=7020504,mainAttributeId=5004,changeAttributeId={[1]=51001,[2]=51002,[3]=51003,[4]=52001}},mt),
    ["70205050"]=setmetatable({fixedEquipId=70205050,equipId=7020505,mainAttributeId=5005,changeAttributeId={[1]=51001,[2]=51002,[3]=51003,[4]=52001}},mt),
}
--生成获取数据的方法
---@return FixedEquip
function GetFixedEquipData(id)
    return FixedEquip_Xls[tostring(id)]
end
--自动生成注释
---@class FixedEquip : table 
---@field fixedEquipId number
---@field equipId number
---@field mainAttributeId number
---@field changeAttributeId table
