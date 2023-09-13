local default = {id="",confirmType=0,titleText="",contentText="",aBtnText="",bBtnText="",textAnchor=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SystemSigleConfirm_Xls : table 
SystemSigleConfirm_Xls =
{
    ["1"]=setmetatable({id="1",confirmType=1,titleText="意识碎片产出说明",contentText="◆每次角色共鸣会为该计数器增加1次计数，当计数累计至5时，将额外赠送导师当期共鸣中UP的5星斯露德意识碎片*1，并清空计数器重新累计\n\n◆当期共鸣的计数器与其他共鸣不互通，且不会继承进度至下期同类型的共鸣中，导师可以在共鸣界面通过计数器查看意识碎片奖励进度\n\n◆若导师已获得当期共鸣中UP的5星斯露德，则可以在共鸣界面查看该斯露德距离下一位阶的晋升进度",aBtnText="确定"},mt),
}
--生成获取数据的方法
---@return SystemSigleConfirm
function GetSystemSigleConfirmData(id)
    return SystemSigleConfirm_Xls[tostring(id)]
end
--自动生成注释
---@class SystemSigleConfirm : table 
---@field id string
---@field confirmType number
---@field titleText string
---@field contentText string
---@field aBtnText string
---@field bBtnText string
---@field textAnchor number
