local default = {id=0,excelName="",fieldName=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class NetErrorParam_Xls : table 
NetErrorParam_Xls =
{
    ["1"]=setmetatable({id=1,excelName="MainLevel",fieldName="name"},mt),
    ["2"]=setmetatable({id=2,excelName="MainLevel",fieldName="indexDes"},mt),
}
--生成获取数据的方法
---@return NetErrorParam
function GetNetErrorParamData(id)
    return NetErrorParam_Xls[tostring(id)]
end
--自动生成注释
---@class NetErrorParam : table 
---@field id number
---@field excelName string
---@field fieldName string
