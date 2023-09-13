local default = {id=0,material=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SceneMaterial_Xls : table 
SceneMaterial_Xls =
{
    ["1"]=setmetatable({id=1,material="M_Skybox_NightMare"},mt),
}
--生成获取数据的方法
---@return SceneMaterial
function GetSceneMaterialData(id)
    return SceneMaterial_Xls[tostring(id)]
end
--自动生成注释
---@class SceneMaterial : table 
---@field id number
---@field material string
