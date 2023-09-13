local default = {id=0,type=0,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=0,reLoad=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PlayerModeSwitchRule_Xls : table 
PlayerModeSwitchRule_Xls =
{
    ["10001"]=setmetatable({id=10001,type=1,idle=1,move=1,dodge=1,dash=1,repel=1,trapped=1,skill=1,hitted=1,beatDown=1,born=1,die=1,revive=1,exile=1,changePeriod=1,changeLeader=1,turn=1,reLoad=0},mt),
    ["10002"]=setmetatable({id=10002,type=2,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=0,reLoad=0},mt),
    ["1"]=setmetatable({id=1,type=1,idle=1,move=1,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=1,reLoad=0},mt),
    ["2"]=setmetatable({id=2,type=2,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=1,skill=0,hitted=0,beatDown=0,born=1,die=1,revive=1,exile=1,changePeriod=1,changeLeader=1,turn=0,reLoad=1},mt),
    ["301"]=setmetatable({id=301,type=2,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=1,die=1,revive=1,exile=1,changePeriod=1,changeLeader=0,turn=0,reLoad=0},mt),
    ["1101"]=setmetatable({id=1101,type=1,idle=1,move=1,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=1,reLoad=0},mt),
    ["1102"]=setmetatable({id=1102,type=2,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=1,skill=0,hitted=0,beatDown=0,born=1,die=1,revive=1,exile=1,changePeriod=1,changeLeader=1,turn=0,reLoad=0},mt),
    ["1601"]=setmetatable({id=1601,type=1,idle=1,move=1,dodge=0,dash=0,repel=0,trapped=0,skill=0,hitted=0,beatDown=0,born=0,die=0,revive=0,exile=0,changePeriod=0,changeLeader=0,turn=1,reLoad=0},mt),
    ["1602"]=setmetatable({id=1602,type=2,idle=0,move=0,dodge=0,dash=0,repel=0,trapped=1,skill=0,hitted=0,beatDown=0,born=1,die=1,revive=1,exile=1,changePeriod=1,changeLeader=1,turn=0,reLoad=0},mt),
}
--生成获取数据的方法
---@return PlayerModeSwitchRule
function GetPlayerModeSwitchRuleData(id)
    return PlayerModeSwitchRule_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerModeSwitchRule : table 
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
