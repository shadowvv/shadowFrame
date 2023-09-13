local default = {id=0,waveOrder=0,waveCoefficient=0,waveFraction=0,hpexpect=0,monsterFraction=0,monsterScore=0,lifeCoefficient=0,lifeScore=0,timeCoefficient=0,timeScore=0,expectedTotal=0,upperLimit=0,totalScore=0,remarks=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldSettlement_Xls : table 
BattlefieldSettlement_Xls =
{
    ["1"]=setmetatable({id=1,waveOrder=0,waveCoefficient=0,waveFraction=0,hpexpect=100000,monsterFraction=1,monsterScore=999999999,lifeCoefficient=500,lifeScore=25000,timeCoefficient=50,timeScore=25000,expectedTotal=100000,upperLimit=100000,totalScore=100000,remarks="第一空域"},mt),
    ["2"]=setmetatable({id=2,waveOrder=0,waveCoefficient=0,waveFraction=0,hpexpect=100000,monsterFraction=1,monsterScore=999999999,lifeCoefficient=1000,lifeScore=50000,timeCoefficient=100,timeScore=50000,expectedTotal=200000,upperLimit=200000,totalScore=300000,remarks="第二空域"},mt),
    ["3"]=setmetatable({id=3,waveOrder=10,waveCoefficient=20000,waveFraction=999999999,hpexpect=100000,monsterFraction=1,monsterScore=999999999,lifeCoefficient=2000,lifeScore=100000,timeCoefficient=0,timeScore=0,expectedTotal=700000,upperLimit=0,totalScore=1000000,remarks="第三空域"},mt),
}
--生成获取数据的方法
---@return BattlefieldSettlement
function GetBattlefieldSettlementData(id)
    return BattlefieldSettlement_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldSettlement : table 
---@field id number
---@field waveOrder number
---@field waveCoefficient number
---@field waveFraction number
---@field hpexpect number
---@field monsterFraction number
---@field monsterScore number
---@field lifeCoefficient number
---@field lifeScore number
---@field timeCoefficient number
---@field timeScore number
---@field expectedTotal number
---@field upperLimit number
---@field totalScore number
---@field remarks string
