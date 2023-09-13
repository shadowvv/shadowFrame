local default = {id=0,type=0,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=0,reloadEnd=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class StateModeSwitchRule_Xls : table 
StateModeSwitchRule_Xls =
{
    ["711"]=setmetatable({id=711,type=1,idle=1,move=1,dodge=1,dash=1,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=1,reLoad=0,objDead=0,reloadEnd=0},mt),
    ["712"]=setmetatable({id=712,type=2,idle=1,move=1,dodge=1,dash=1,repel=2,trapped=2,skill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=2,objDead=2,reloadEnd=2},mt),
    ["721"]=setmetatable({id=721,type=1,idle=1,move=1,dodge=2,dash=2,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=1,reLoad=1,objDead=0,reloadEnd=1},mt),
    ["722"]=setmetatable({id=722,type=2,idle=1,move=1,dodge=2,dash=2,repel=2,trapped=2,skill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=1,objDead=2,reloadEnd=1},mt),
    ["731"]=setmetatable({id=731,type=1,idle=1,move=1,dodge=2,dash=2,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=1,reLoad=1,objDead=0,reloadEnd=1},mt),
    ["732"]=setmetatable({id=732,type=2,idle=1,move=1,dodge=2,dash=2,repel=2,trapped=2,skill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=1,objDead=2,reloadEnd=1},mt),
}
--生成获取数据的方法
---@return StateModeSwitchRule
function GetStateModeSwitchRuleData(id)
    return StateModeSwitchRule_Xls[tostring(id)]
end
--自动生成注释
---@class StateModeSwitchRule : table 
---@field id number
---@field type number
---@field idle number
---@field move number
---@field dodge number
---@field dash number
---@field repel number
---@field trapped number
---@field skill number
---@field hitted number
---@field beatDown number
---@field born number
---@field die number
---@field revive number
---@field exile number
---@field changePeriod number
---@field changeLeader number
---@field turn number
---@field reLoad number
---@field objDead number
---@field reloadEnd number
