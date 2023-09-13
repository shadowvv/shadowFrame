local default = {id=0,priority=0,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,normalSkill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=0,reloadEnd=0,activeSkill=0,jiZouSkill=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MinStateSwitchRule_Xls : table 
MinStateSwitchRule_Xls =
{
    ["3"]=setmetatable({id=3,priority=2,idle=0,move=2,dodge=2,dash=2,repel=2,trapped=2,normalSkill=1,hitted=2,beatDown=2,born=2,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=0,reLoad=1,objDead=2,reloadEnd=1,activeSkill=0,jiZouSkill=0},mt),
    ["8"]=setmetatable({id=8,priority=100,idle=0,move=2,dodge=2,dash=2,repel=2,trapped=2,normalSkill=2,hitted=0,beatDown=2,born=2,die=2,revive=2,exile=2,changePeriod=2,changeLeader=2,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["9"]=setmetatable({id=9,priority=990,idle=0,move=2,dodge=0,dash=0,repel=2,trapped=2,normalSkill=2,hitted=2,beatDown=0,born=0,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["201"]=setmetatable({id=201,priority=100,idle=0,move=1,dodge=1,dash=1,repel=0,trapped=2,normalSkill=0,hitted=0,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=1,jiZouSkill=0},mt),
    ["301"]=setmetatable({id=301,priority=100,idle=0,move=1,dodge=2,dash=0,repel=0,trapped=2,normalSkill=0,hitted=0,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
    ["2501"]=setmetatable({id=2501,priority=101,idle=0,move=1,dodge=2,dash=0,repel=0,trapped=2,normalSkill=0,hitted=0,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
}
--生成获取数据的方法
---@return MinStateSwitchRule
function GetMinStateSwitchRuleData(id)
    return MinStateSwitchRule_Xls[tostring(id)]
end
--自动生成注释
---@class MinStateSwitchRule : table 
---@field id number
---@field priority number
---@field idle number
---@field move number
---@field dodge number
---@field dash number
---@field repel number
---@field trapped number
---@field normalSkill number
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
---@field activeSkill number
---@field jiZouSkill number
