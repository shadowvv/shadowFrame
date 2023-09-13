local default = {entranceId=0,entranceType=0,entranceName="",entranceOpen=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PcEntrance_Xls : table 
PcEntrance_Xls =
{
    ["1"]=setmetatable({entranceId=1,entranceType=1,entranceName="安卓",entranceOpen=1},mt),
    ["2"]=setmetatable({entranceId=2,entranceType=2,entranceName="iOS",entranceOpen=1},mt),
}
--生成获取数据的方法
---@return PcEntrance
function GetPcEntranceData(id)
    return PcEntrance_Xls[tostring(id)]
end
--自动生成注释
---@class PcEntrance : table 
---@field entranceId number
---@field entranceType number
---@field entranceName string
---@field entranceOpen number
