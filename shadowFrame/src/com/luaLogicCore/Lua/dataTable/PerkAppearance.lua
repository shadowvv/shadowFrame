local default = {id=0,name="",tip="",unlock=0,material=0,consumption=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PerkAppearance_Xls : table 
PerkAppearance_Xls =
{
    ["80000001"]=setmetatable({id=80000001,name="诺姆·炙燃型",tip="item_80000001_s",unlock=7500000},mt),
    ["80000002"]=setmetatable({id=80000002,name="诺姆·鸣闪型",tip="item_80000002_s",unlock=7500001},mt),
    ["80000003"]=setmetatable({id=80000003,name="诺姆·寒霜型",tip="item_80000003_s",unlock=7500002},mt),
    ["80000004"]=setmetatable({id=80000004,name="诺姆·疾啸型",tip="item_80000004_s",unlock=7500003},mt),
    ["80000005"]=setmetatable({id=80000005,name="诺姆·干杯",tip="item_80000005_s",unlock=7500004},mt),
}
--生成获取数据的方法
---@return PerkAppearance
function GetPerkAppearanceData(id)
    return PerkAppearance_Xls[tostring(id)]
end
--自动生成注释
---@class PerkAppearance : table 
---@field id number
---@field name string
---@field tip string
---@field unlock number
---@field material number
---@field consumption number
