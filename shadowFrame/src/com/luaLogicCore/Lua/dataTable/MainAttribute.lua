local default = {mainAttributeId=0,attributeType=xlsNilTable,attributeWeight=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MainAttribute_Xls : table 
MainAttribute_Xls =
{
    ["2001"]=setmetatable({mainAttributeId=2001,attributeType={[1]=2001},attributeWeight={[1]=1000}},mt),
    ["2002"]=setmetatable({mainAttributeId=2002,attributeType={[1]=2002},attributeWeight={[1]=1000}},mt),
    ["2003"]=setmetatable({mainAttributeId=2003,attributeType={[1]=2003},attributeWeight={[1]=1000}},mt),
    ["2004"]=setmetatable({mainAttributeId=2004,attributeType={[1]=2002,[2]=2005},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["2005"]=setmetatable({mainAttributeId=2005,attributeType={[1]=2003,[2]=2006},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["3001"]=setmetatable({mainAttributeId=3001,attributeType={[1]=3001},attributeWeight={[1]=1000}},mt),
    ["3002"]=setmetatable({mainAttributeId=3002,attributeType={[1]=3002},attributeWeight={[1]=1000}},mt),
    ["3003"]=setmetatable({mainAttributeId=3003,attributeType={[1]=3003},attributeWeight={[1]=1000}},mt),
    ["3004"]=setmetatable({mainAttributeId=3004,attributeType={[1]=3002,[2]=3005},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["3005"]=setmetatable({mainAttributeId=3005,attributeType={[1]=3003,[2]=3006},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["4001"]=setmetatable({mainAttributeId=4001,attributeType={[1]=4001},attributeWeight={[1]=1000}},mt),
    ["4002"]=setmetatable({mainAttributeId=4002,attributeType={[1]=4002},attributeWeight={[1]=1000}},mt),
    ["4003"]=setmetatable({mainAttributeId=4003,attributeType={[1]=4003},attributeWeight={[1]=1000}},mt),
    ["4004"]=setmetatable({mainAttributeId=4004,attributeType={[1]=4002,[2]=4005},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["4005"]=setmetatable({mainAttributeId=4005,attributeType={[1]=4003,[2]=4006},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["5001"]=setmetatable({mainAttributeId=5001,attributeType={[1]=5001},attributeWeight={[1]=1000}},mt),
    ["5002"]=setmetatable({mainAttributeId=5002,attributeType={[1]=5002},attributeWeight={[1]=1000}},mt),
    ["5003"]=setmetatable({mainAttributeId=5003,attributeType={[1]=5003},attributeWeight={[1]=1000}},mt),
    ["5004"]=setmetatable({mainAttributeId=5004,attributeType={[1]=5002,[2]=5005},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["5005"]=setmetatable({mainAttributeId=5005,attributeType={[1]=5003,[2]=5006},attributeWeight={[1]=1000,[2]=1000}},mt),
    ["500301"]=setmetatable({mainAttributeId=500301,attributeType={[1]=5004},attributeWeight={[1]=1000}},mt),
}
--生成获取数据的方法
---@return MainAttribute
function GetMainAttributeData(id)
    return MainAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class MainAttribute : table 
---@field mainAttributeId number
---@field attributeType table
---@field attributeWeight table
