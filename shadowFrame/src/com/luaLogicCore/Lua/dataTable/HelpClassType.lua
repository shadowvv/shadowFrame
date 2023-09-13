local default = {id=0,functionId=0,title=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class HelpClassType_Xls : table 
HelpClassType_Xls =
{
    ["1"]=setmetatable({id=1,functionId=0,title="基础"},mt),
    ["2"]=setmetatable({id=2,functionId=0,title="玩法"},mt),
    ["3"]=setmetatable({id=3,functionId=0,title="养成"},mt),
    ["4"]=setmetatable({id=4,functionId=0,title="战舰"},mt),
    ["5"]=setmetatable({id=5,functionId=0,title="元素"},mt),
    ["6"]=setmetatable({id=6,functionId=0,title="战斗"},mt),
    ["7"]=setmetatable({id=7,functionId=0,title="斯露德"},mt),
    ["8"]=setmetatable({id=8,functionId=0,title="间奏"},mt),
}
--生成获取数据的方法
---@return HelpClassType
function GetHelpClassTypeData(id)
    return HelpClassType_Xls[tostring(id)]
end
--自动生成注释
---@class HelpClassType : table 
---@field id number
---@field functionId number
---@field title string
