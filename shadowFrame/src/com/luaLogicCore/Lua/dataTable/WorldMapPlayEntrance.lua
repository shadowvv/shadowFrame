local default = {id=0,playName="",playIcon="",playCondition=0,uiJumpId=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WorldMapPlayEntrance_Xls : table 
WorldMapPlayEntrance_Xls =
{
    ["1001"]=setmetatable({id=1001,playName="交界虚空",playIcon="UIWorldMap_Sprite_tower",playCondition=350,uiJumpId="3113"},mt),
}
--生成获取数据的方法
---@return WorldMapPlayEntrance
function GetWorldMapPlayEntranceData(id)
    return WorldMapPlayEntrance_Xls[tostring(id)]
end
--自动生成注释
---@class WorldMapPlayEntrance : table 
---@field id number
---@field playName string
---@field playIcon string
---@field playCondition number
---@field uiJumpId string
