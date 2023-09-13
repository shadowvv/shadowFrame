local default = {id=0,name="",nameFull="",brief="",multipelMax=0,useItemID=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MulitDropSetting_Xls : table 
MulitDropSetting_Xls =
{
    ["1"]=setmetatable({id=1,name="正常",nameFull="正常作战",brief="[{1}]默认的体力消耗",multipelMax=1,useItemID=0},mt),
    ["2"]=setmetatable({id=2,name="高效",nameFull="高效作战",brief="额外消耗[{1}]，用以获得等同于多次作战的奖励。将额外获得{2}份奖励",multipelMax=2,useItemID=1004},mt),
    ["3"]=setmetatable({id=3,name="协助",nameFull="协助作战",brief="协助作战不消耗体力，也不获得通关奖励",multipelMax=0,useItemID=0},mt),
}
--生成获取数据的方法
---@return MulitDropSetting
function GetMulitDropSettingData(id)
    return MulitDropSetting_Xls[tostring(id)]
end
--自动生成注释
---@class MulitDropSetting : table 
---@field id number
---@field name string
---@field nameFull string
---@field brief string
---@field multipelMax number
---@field useItemID number
