local default = {id=0,playerName="",model=0,cameraHeight=0,cameraZoom=0,gravity=0,cameraInteractHeight=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipPlayer_Xls : table 
WarshipPlayer_Xls =
{
    ["1"]=setmetatable({id=1,playerName="导师",model=80000002,cameraHeight=1.6,cameraZoom=85,gravity=-20,cameraInteractHeight=1.2},mt),
    ["2"]=setmetatable({id=2,playerName="导师",model=80000001,cameraHeight=1.6,cameraZoom=85,gravity=-20,cameraInteractHeight=1.2},mt),
}
--生成获取数据的方法
---@return WarshipPlayer
function GetWarshipPlayerData(id)
    return WarshipPlayer_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipPlayer : table 
---@field id number
---@field playerName string
---@field model number
---@field cameraHeight number
---@field cameraZoom number
---@field gravity number
---@field cameraInteractHeight number
