local default = {id=0,commonConditionid=0,rewardId=0,uiImg="",uiNameI18n="",backImg="",backOffset=xlsNilTable,backVideo=0,backVideoSmall=0,instructionI18n="",bottomI18n=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ActivityFirstCharge_Xls : table 
ActivityFirstCharge_Xls =
{
    ["130001"]=setmetatable({id=130001,commonConditionid=6461101,rewardId=804001,uiImg="UIMain_icon_main_event_small_2_gold",uiNameI18n="首充",backImg="UIActivity_img_eventframe_advertise02_i18n",backOffset={[1]=27,[2]=-5},backVideo=0,backVideoSmall=0,instructionI18n="充值任意金额获得以下道具",bottomI18n="点击空白处关闭"},mt),
}
--生成获取数据的方法
---@return ActivityFirstCharge
function GetActivityFirstChargeData(id)
    return ActivityFirstCharge_Xls[tostring(id)]
end
--自动生成注释
---@class ActivityFirstCharge : table 
---@field id number
---@field commonConditionid number
---@field rewardId number
---@field uiImg string
---@field uiNameI18n string
---@field backImg string
---@field backOffset table
---@field backVideo number
---@field backVideoSmall number
---@field instructionI18n string
---@field bottomI18n string
