local default = {id=0,type="",value1=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LevelConstant_Xls : table 
LevelConstant_Xls =
{
    ["1"]=setmetatable({id=1,type="levelInitTimeout",value1=1},mt),
    ["2"]=setmetatable({id=2,type="loadingTimeout",value1=45},mt),
    ["3"]=setmetatable({id=3,type="preBattlePlotTimeout",value1=600},mt),
    ["4"]=setmetatable({id=4,type="battleStartTimeout",value1=300},mt),
    ["5"]=setmetatable({id=5,type="inBattleTimeout",value1=1800},mt),
    ["6"]=setmetatable({id=6,type="preSummaryPlotTimeout",value1=600},mt),
    ["7"]=setmetatable({id=7,type="SummaryTimeout",value1=300},mt),
    ["8"]=setmetatable({id=8,type="postSummaryPlotTimeout",value1=600},mt),
    ["9"]=setmetatable({id=9,type="vidTutorialLock",value1=1500},mt),
    ["10"]=setmetatable({id=10,type="picTutorialLock",value1=1500},mt),
}
--生成获取数据的方法
---@return LevelConstant
function GetLevelConstantData(id)
    return LevelConstant_Xls[tostring(id)]
end
--自动生成注释
---@class LevelConstant : table 
---@field id number
---@field type string
---@field value1 number
