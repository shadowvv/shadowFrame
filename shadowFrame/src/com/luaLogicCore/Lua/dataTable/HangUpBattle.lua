local default = {id=0,functionId=0,unlockCondition=0,maxNum=0,modelSwitch=0,jumpItemId=0,jumpItemNum=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class HangUpBattle_Xls : table 
HangUpBattle_Xls =
{
    ["1"]=setmetatable({id=1,functionId=294,unlockCondition=1,maxNum=10,modelSwitch=2},mt),
    ["2"]=setmetatable({id=2,functionId=295,unlockCondition=1,maxNum=10,modelSwitch=2},mt),
    ["3"]=setmetatable({id=3,functionId=296,unlockCondition=1,maxNum=10,modelSwitch=2},mt),
    ["4"]=setmetatable({id=4,functionId=297,unlockCondition=1,maxNum=10,modelSwitch=2},mt),
    ["5"]=setmetatable({id=5,functionId=298,unlockCondition=1,maxNum=10,modelSwitch=2},mt),
    ["6"]=setmetatable({id=6,functionId=4610,unlockCondition=1,maxNum=10,modelSwitch=2},mt),
}
--生成获取数据的方法
---@return HangUpBattle
function GetHangUpBattleData(id)
    return HangUpBattle_Xls[tostring(id)]
end
--自动生成注释
---@class HangUpBattle : table 
---@field id number
---@field functionId number
---@field unlockCondition number
---@field maxNum number
---@field modelSwitch number
---@field jumpItemId number
---@field jumpItemNum number
