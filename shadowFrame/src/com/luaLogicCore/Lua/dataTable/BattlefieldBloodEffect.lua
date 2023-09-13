local default = {id=0,lvId=xlsNilTable,segment=0,xFigure=0,yFigure=0,hope=0,hpCoefficient=0,minInfluence=0,maxInfluence=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldBloodEffect_Xls : table 
BattlefieldBloodEffect_Xls =
{
    ["1001"]=setmetatable({id=1001,lvId={[1]=1},segment=1001,xFigure=1000,yFigure=1.0,hope=15000,hpCoefficient=1.0,minInfluence=1.0,maxInfluence=1.2},mt),
    ["1002"]=setmetatable({id=1002,lvId={[1]=1},segment=1002,xFigure=1200,yFigure=1.0,hope=25000,hpCoefficient=1.2,minInfluence=1.2,maxInfluence=1.4},mt),
    ["1003"]=setmetatable({id=1003,lvId={[1]=1},segment=1003,xFigure=1600,yFigure=1.0,hope=45000,hpCoefficient=1.6,minInfluence=1.6,maxInfluence=2.0},mt),
    ["1004"]=setmetatable({id=1004,lvId={[1]=1},segment=1004,xFigure=2000,yFigure=1.0,hope=65000,hpCoefficient=2.0,minInfluence=2.0,maxInfluence=2.4},mt),
    ["1005"]=setmetatable({id=1005,lvId={[1]=1},segment=1005,xFigure=2400,yFigure=1.0,hope=85000,hpCoefficient=2.4,minInfluence=2.4,maxInfluence=4.0},mt),
    ["1006"]=setmetatable({id=1006,lvId={[1]=2},segment=1001,xFigure=1000,yFigure=1.0,hope=15000,hpCoefficient=1.1,minInfluence=1.0,maxInfluence=1.2},mt),
    ["1007"]=setmetatable({id=1007,lvId={[1]=2},segment=1002,xFigure=1200,yFigure=1.0,hope=25000,hpCoefficient=1.2,minInfluence=1.0,maxInfluence=1.5},mt),
    ["1008"]=setmetatable({id=1008,lvId={[1]=2},segment=1003,xFigure=1400,yFigure=1.0,hope=45000,hpCoefficient=1.3,minInfluence=1.0,maxInfluence=1.7},mt),
    ["1009"]=setmetatable({id=1009,lvId={[1]=2},segment=1004,xFigure=1600,yFigure=1.0,hope=65000,hpCoefficient=1.5,minInfluence=1.0,maxInfluence=2.0},mt),
    ["1010"]=setmetatable({id=1010,lvId={[1]=2},segment=1005,xFigure=2000,yFigure=1.0,hope=85000,hpCoefficient=1.8,minInfluence=1.0,maxInfluence=3.0},mt),
    ["1011"]=setmetatable({id=1011,lvId={[1]=2},segment=1006,xFigure=2000,yFigure=1.0,hope=85000,hpCoefficient=2.0,minInfluence=1.0,maxInfluence=3.0},mt),
    ["1012"]=setmetatable({id=1012,lvId={[1]=2},segment=1007,xFigure=2000,yFigure=1.0,hope=85000,hpCoefficient=2.0,minInfluence=1.0,maxInfluence=3.0},mt),
}
--生成获取数据的方法
---@return BattlefieldBloodEffect
function GetBattlefieldBloodEffectData(id)
    return BattlefieldBloodEffect_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldBloodEffect : table 
---@field id number
---@field lvId table
---@field segment number
---@field xFigure number
---@field yFigure number
---@field hope number
---@field hpCoefficient number
---@field minInfluence number
---@field maxInfluence number
