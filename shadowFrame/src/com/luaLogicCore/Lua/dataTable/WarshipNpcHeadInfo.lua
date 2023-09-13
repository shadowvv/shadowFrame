local default = {id=0,groupid=0,interval=0,showDistance=0,icon="",iconPriority=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipNpcHeadInfo_Xls : table 
WarshipNpcHeadInfo_Xls =
{
    ["1"]=setmetatable({id=1,groupid=1,interval=10,showDistance=11},mt),
    ["2"]=setmetatable({id=2,groupid=2,interval=5,showDistance=13},mt),
    ["3"]=setmetatable({id=3,groupid=3,interval=10,showDistance=11},mt),
    ["4"]=setmetatable({id=4,groupid=10,interval=20,showDistance=20,icon="warship_zhuizong",iconPriority=1},mt),
    ["5"]=setmetatable({id=5,groupid=10,interval=20,showDistance=20,icon="warship_zhixianrw",iconPriority=2},mt),
    ["6"]=setmetatable({id=6,groupid=10,interval=20,showDistance=20,icon="warship_zhixianrw",iconPriority=4},mt),
    ["7"]=setmetatable({id=7,groupid=10,interval=20,showDistance=20,icon="warship_zhixianrw",iconPriority=3},mt),
}
--生成获取数据的方法
---@return WarshipNpcHeadInfo
function GetWarshipNpcHeadInfoData(id)
    return WarshipNpcHeadInfo_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipNpcHeadInfo : table 
---@field id number
---@field groupid number
---@field interval number
---@field showDistance number
---@field icon string
---@field iconPriority number
