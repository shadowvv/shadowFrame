local default = {id=0,prefabType=0,screenMaxNum=0,openAnimName="",stayTime=0,closeAnimName="",startPos=xlsNilTable,moveUpTime=0,pushCD=0,icon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SystemNoticeStyle_Xls : table 
SystemNoticeStyle_Xls =
{
    ["1"]=setmetatable({id=1,prefabType=1,screenMaxNum=3,openAnimName="FlyText_show",stayTime=1.6,closeAnimName="FlyText_hid",startPos={[1]=0,[2]=318},moveUpTime=0.15,pushCD=0.3},mt),
    ["2"]=setmetatable({id=2,prefabType=2,screenMaxNum=1,openAnimName="RightTips_show",stayTime=2,closeAnimName="RightTips_hid",startPos={[1]=-256.55,[2]=-176.69},moveUpTime=0,pushCD=3,icon="public_tips_remind_mark"},mt),
    ["3"]=setmetatable({id=3,prefabType=2,screenMaxNum=4,openAnimName="RightTips_show",stayTime=2,closeAnimName="RightTips_hid",startPos={[1]=-256.55,[2]=-176.69},moveUpTime=0.15,pushCD=0,icon="public_tips_remind_sign"},mt),
}
--生成获取数据的方法
---@return SystemNoticeStyle
function GetSystemNoticeStyleData(id)
    return SystemNoticeStyle_Xls[tostring(id)]
end
--自动生成注释
---@class SystemNoticeStyle : table 
---@field id number
---@field prefabType number
---@field screenMaxNum number
---@field openAnimName string
---@field stayTime number
---@field closeAnimName string
---@field startPos table
---@field moveUpTime number
---@field pushCD number
---@field icon string
