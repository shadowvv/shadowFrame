local default = {id=0,des=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ItemCraftRecipeType_Xls : table 
ItemCraftRecipeType_Xls =
{
    ["1"]=setmetatable({id=1,des="角色突破素材"},mt),
    ["2"]=setmetatable({id=2,des="武装突破素材"},mt),
}
--生成获取数据的方法
---@return ItemCraftRecipeType
function GetItemCraftRecipeTypeData(id)
    return ItemCraftRecipeType_Xls[tostring(id)]
end
--自动生成注释
---@class ItemCraftRecipeType : table 
---@field id number
---@field des string
