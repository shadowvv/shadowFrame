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
---@class StateSwitchRule_Xls : table 
StateSwitchRule_Xls =
{
    ["1"]=setmetatable({id=1,priority=1,idle=0,move=2,dodge=2,dash=0,repel=2,trapped=2,normalSkill=1,hitted=2,beatDown=2,born=2,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=1,reLoad=1,objDead=2,reloadEnd=1,activeSkill=2,jiZouSkill=2},mt),
    ["2"]=setmetatable({id=2,priority=12,idle=0,move=0,dodge=2,dash=2,repel=2,trapped=2,normalSkill=1,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=1,turn=1,reLoad=1,objDead=2,reloadEnd=1,activeSkill=2,jiZouSkill=2},mt),
    ["3"]=setmetatable({id=3,priority=2,idle=0,move=0,dodge=0,dash=2,repel=2,trapped=2,normalSkill=1,hitted=2,beatDown=2,born=2,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=0,reLoad=1,objDead=2,reloadEnd=1,activeSkill=0,jiZouSkill=0},mt),
    ["4"]=setmetatable({id=4,priority=10,idle=0,move=2,dodge=2,dash=0,repel=2,trapped=2,normalSkill=1,hitted=2,beatDown=2,born=2,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=1,reLoad=1,objDead=2,reloadEnd=1,activeSkill=2,jiZouSkill=2},mt),
    ["5"]=setmetatable({id=5,priority=15,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=2,normalSkill=2,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["6"]=setmetatable({id=6,priority=99,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,normalSkill=0,hitted=0,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
    ["7"]=setmetatable({id=7,priority=100,idle=1,move=1,dodge=1,dash=1,repel=2,trapped=2,normalSkill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=2,objDead=2,reloadEnd=2,activeSkill=2,jiZouSkill=2},mt),
    ["8"]=setmetatable({id=8,priority=100,idle=0,move=2,dodge=2,dash=2,repel=2,trapped=2,normalSkill=2,hitted=0,beatDown=2,born=2,die=2,revive=2,exile=2,changePeriod=2,changeLeader=2,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["9"]=setmetatable({id=9,priority=4,idle=0,move=2,dodge=0,dash=0,repel=2,trapped=2,normalSkill=2,hitted=2,beatDown=0,born=0,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=0,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["10"]=setmetatable({id=10,priority=5,idle=0,move=2,dodge=0,dash=0,repel=2,trapped=2,normalSkill=2,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=2,changeLeader=2,turn=1,reLoad=1,objDead=2,reloadEnd=1,activeSkill=2,jiZouSkill=2},mt),
    ["11"]=setmetatable({id=11,priority=999,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,normalSkill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=0,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
    ["12"]=setmetatable({id=12,priority=13,idle=0,move=0,dodge=0,dash=0,repel=2,trapped=2,normalSkill=2,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=1,reLoad=1,objDead=2,reloadEnd=1,activeSkill=2,jiZouSkill=2},mt),
    ["13"]=setmetatable({id=13,priority=3,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,normalSkill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=0,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
    ["14"]=setmetatable({id=14,priority=14,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=2,normalSkill=2,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["15"]=setmetatable({id=15,priority=99,idle=0,move=1,dodge=0,dash=0,repel=0,trapped=0,normalSkill=2,hitted=0,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=2,jiZouSkill=2},mt),
    ["16"]=setmetatable({id=16,priority=99,idle=1,move=1,dodge=2,dash=1,repel=2,trapped=2,normalSkill=2,hitted=2,beatDown=2,born=1,die=2,revive=1,exile=2,changePeriod=1,changeLeader=1,turn=0,reLoad=1,objDead=2,reloadEnd=1,activeSkill=2,jiZouSkill=2},mt),
    ["17"]=setmetatable({id=17,priority=99,idle=1,move=1,dodge=1,dash=1,repel=2,trapped=2,normalSkill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=1,jiZouSkill=1},mt),
    ["18"]=setmetatable({id=18,priority=99,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,normalSkill=0,hitted=0,beatDown=0,born=0,die=1,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=0,reLoad=0,objDead=0,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
    ["19"]=setmetatable({id=19,priority=99,idle=1,move=1,dodge=1,dash=1,repel=2,trapped=2,normalSkill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=2,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=1,jiZouSkill=1},mt),
    ["20"]=setmetatable({id=20,priority=100,idle=1,move=1,dodge=2,dash=0,repel=2,trapped=2,normalSkill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
    ["21"]=setmetatable({id=21,priority=100,idle=1,move=1,dodge=2,dash=0,repel=2,trapped=2,normalSkill=0,hitted=2,beatDown=2,born=0,die=2,revive=0,exile=2,changePeriod=0,changeLeader=0,turn=1,reLoad=0,objDead=2,reloadEnd=0,activeSkill=0,jiZouSkill=0},mt),
}
--生成获取数据的方法
---@return StateSwitchRule
function GetStateSwitchRuleData(id)
    return StateSwitchRule_Xls[tostring(id)]
end
--自动生成注释
---@class StateSwitchRule : table 
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
