local default = {id=0,positionX=0,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0,cycleCount=0,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonShake_Xls : table 
CommonShake_Xls =
{
    ["1"]=setmetatable({id=1,positionX=0,positionY=25,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.08,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=10},mt),
    ["2"]=setmetatable({id=2,positionX=25,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.08,cycleCount=5,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=10},mt),
    ["3"]=setmetatable({id=3,positionX=0,positionY=0,positionZ=0,angleShakeX=20,angleShakeY=0,angleShakeZ=0,cycleTime=0.08,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=10},mt),
    ["4"]=setmetatable({id=4,positionX=0,positionY=0,positionZ=0,angleShakeX=25,angleShakeY=0,angleShakeZ=0,cycleTime=0.07,cycleCount=5,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=5},mt),
    ["5"]=setmetatable({id=5,positionX=0,positionY=0,positionZ=20,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.07,cycleCount=2,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=2},mt),
    ["6"]=setmetatable({id=6,positionX=0,positionY=0,positionZ=30,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.09,cycleCount=2,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=2},mt),
    ["7"]=setmetatable({id=7,positionX=0,positionY=0,positionZ=20,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.07,cycleCount=30,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=30},mt),
    ["8"]=setmetatable({id=8,positionX=0.002,positionY=0.003,positionZ=0.003,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.1,cycleCount=20,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=0},mt),
    ["101"]=setmetatable({id=101,positionX=8,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.2,cycleCount=2,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},mt),
    ["102"]=setmetatable({id=102,positionX=10,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.1,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},mt),
    ["103"]=setmetatable({id=103,positionX=10,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.1,cycleCount=5,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},mt),
    ["104"]=setmetatable({id=104,positionX=20,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.1,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},mt),
    ["111"]=setmetatable({id=111,positionX=20,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.1,cycleCount=4,fixShake=1,unscaleTime=0,bothDir=0,fCycleCount=4},mt),
    ["112"]=setmetatable({id=112,positionX=20,positionY=0,positionZ=0,angleShakeX=0,angleShakeY=0,angleShakeZ=0,cycleTime=0.1,cycleCount=4,fixShake=1,unscaleTime=0,bothDir=0,fCycleCount=4},mt),
}
--生成获取数据的方法
---@return CommonShake
function GetCommonShakeData(id)
    return CommonShake_Xls[tostring(id)]
end
--自动生成注释
---@class CommonShake : table 
---@field id number
---@field positionX number
---@field positionY number
---@field positionZ number
---@field angleShakeX number
---@field angleShakeY number
---@field angleShakeZ number
---@field cycleTime number
---@field cycleCount number
---@field fixShake number
---@field unscaleTime number
---@field bothDir number
---@field fCycleCount number
