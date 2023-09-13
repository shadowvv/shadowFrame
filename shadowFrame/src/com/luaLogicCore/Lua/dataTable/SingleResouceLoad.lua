local default = {id=0,name="",acName=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SingleResouceLoad_Xls : table 
SingleResouceLoad_Xls =
{
    ["1"]=setmetatable({id=1,name="PF_WaxitiNew_Book",acName="AC_WaxitiNew_Book"},mt),
}
--生成获取数据的方法
---@return SingleResouceLoad
function GetSingleResouceLoadData(id)
    return SingleResouceLoad_Xls[tostring(id)]
end
--自动生成注释
---@class SingleResouceLoad : table 
---@field id number
---@field name string
---@field acName string
