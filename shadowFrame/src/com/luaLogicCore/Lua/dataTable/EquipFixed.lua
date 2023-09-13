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
---@class EquipFixed_Xls : table 
EquipFixed_Xls =
{
    ["75003202"]=setmetatable({fixedEquipId=75003202,equipId=7040011,mainAttributeId=1001,changeAttributeId={[1]=2001,[2]=3001}},mt),
    ["75003203"]=setmetatable({fixedEquipId=75003203,equipId=7040012,mainAttributeId=1002,changeAttributeId={[1]=2002,[2]=3002}},mt),
    ["75003204"]=setmetatable({fixedEquipId=75003204,equipId=7040013,mainAttributeId=1003,changeAttributeId={[1]=2003,[2]=3003}},mt),
    ["75003205"]=setmetatable({fixedEquipId=75003205,equipId=7040014,mainAttributeId=1004,changeAttributeId={[1]=2004,[2]=3004}},mt),
    ["75003206"]=setmetatable({fixedEquipId=75003206,equipId=7040015,mainAttributeId=1005,changeAttributeId={[1]=2005,[2]=3005}},mt),
    ["75003201"]=setmetatable({fixedEquipId=75003201,equipId=7050032,mainAttributeId=500301,changeAttributeId={[1]=500302}},mt),
    ["75003301"]=setmetatable({fixedEquipId=75003301,equipId=7050033,mainAttributeId=500303,changeAttributeId={[1]=500304}},mt),
    ["70003010"]=setmetatable({fixedEquipId=70003010,equipId=7000301,mainAttributeId=500301,changeAttributeId={[1]=500301}},mt),
    ["70003020"]=setmetatable({fixedEquipId=70003020,equipId=7000302,mainAttributeId=500301,changeAttributeId={[1]=500301}},mt),
    ["70003030"]=setmetatable({fixedEquipId=70003030,equipId=7000303,mainAttributeId=500301,changeAttributeId={[1]=500301}},mt),
    ["70003040"]=setmetatable({fixedEquipId=70003040,equipId=7000304,mainAttributeId=500301,changeAttributeId={[1]=500301}},mt),
    ["70003050"]=setmetatable({fixedEquipId=70003050,equipId=7000305,mainAttributeId=500301,changeAttributeId={[1]=500301}},mt),
    ["70104010"]=setmetatable({fixedEquipId=70104010,equipId=7010401,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70104020"]=setmetatable({fixedEquipId=70104020,equipId=7010402,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70104030"]=setmetatable({fixedEquipId=70104030,equipId=7010403,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70104040"]=setmetatable({fixedEquipId=70104040,equipId=7010404,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70104050"]=setmetatable({fixedEquipId=70104050,equipId=7010405,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70204010"]=setmetatable({fixedEquipId=70204010,equipId=7020401,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70204020"]=setmetatable({fixedEquipId=70204020,equipId=7020402,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70204030"]=setmetatable({fixedEquipId=70204030,equipId=7020403,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70204040"]=setmetatable({fixedEquipId=70204040,equipId=7020404,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70204050"]=setmetatable({fixedEquipId=70204050,equipId=7020405,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70105010"]=setmetatable({fixedEquipId=70105010,equipId=7010501,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70105020"]=setmetatable({fixedEquipId=70105020,equipId=7010502,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70105030"]=setmetatable({fixedEquipId=70105030,equipId=7010503,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70105040"]=setmetatable({fixedEquipId=70105040,equipId=7010504,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70105050"]=setmetatable({fixedEquipId=70105050,equipId=7010505,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70205010"]=setmetatable({fixedEquipId=70205010,equipId=7020501,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70205020"]=setmetatable({fixedEquipId=70205020,equipId=7020502,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70205030"]=setmetatable({fixedEquipId=70205030,equipId=7020503,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70205040"]=setmetatable({fixedEquipId=70205040,equipId=7020504,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
    ["70205050"]=setmetatable({fixedEquipId=70205050,equipId=7020505,mainAttributeId=500301,changeAttributeId={[1]=500301,[2]=500301}},mt),
}
--生成获取数据的方法
---@return EquipFixed
function GetEquipFixedData(id)
    return EquipFixed_Xls[tostring(id)]
end
--自动生成注释
---@class EquipFixed : table 
---@field fixedEquipId number
---@field equipId number
---@field mainAttributeId number
---@field changeAttributeId table
