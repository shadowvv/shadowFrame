local default = {id=0,type=0,delayTime=0,time=0,removeDelayTime=0,removeTime=0,floatKey=xlsNilTable,floatValue=xlsNilTable,colorKey=xlsNilTable,colorValue=xlsNilTable,texturePath=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SkyBoxParam_Xls : table 
SkyBoxParam_Xls =
{
    ["1"]=setmetatable({id=1,type=1,delayTime=0,time=0,removeDelayTime=0,removeTime=1,floatKey={[1]="_Exposure"},floatValue={[1]=1},colorKey={[1]="_Tint"},colorValue={[1]="3086D1"}},mt),
    ["2"]=setmetatable({id=2,type=1,delayTime=0,time=0,removeDelayTime=0,removeTime=1,floatKey={[1]="_Exposure"},floatValue={[1]=0.6},colorKey={[1]="_Tint"},colorValue={[1]="FF8133"}},mt),
    ["3"]=setmetatable({id=3,type=1,delayTime=0,time=0,removeDelayTime=0,removeTime=1,floatKey={[1]="_Exposure"},floatValue={[1]=1},colorKey={[1]="_Tint"},colorValue={[1]="80FFC3"}},mt),
}
--生成获取数据的方法
---@return SkyBoxParam
function GetSkyBoxParamData(id)
    return SkyBoxParam_Xls[tostring(id)]
end
--自动生成注释
---@class SkyBoxParam : table 
---@field id number
---@field type number
---@field delayTime number
---@field time number
---@field removeDelayTime number
---@field removeTime number
---@field floatKey table
---@field floatValue table
---@field colorKey table
---@field colorValue table
---@field texturePath string
