local default = {id=0,elementType=0,role2=0,role3=0,role4=0,role5=0,role6=0,role7=0,fallObjectRole1=0,fallObjectRole2=0,fallObjectRole3=0,fallObjectRole4=0,fallObjectRole5=0,fallObjectRole6=0,fallObjectRole7=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ElementCorrect_Xls : table 
ElementCorrect_Xls =
{
    ["1"]=setmetatable({id=1,elementType=1,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=1.0,fallObjectRole3=1.0,fallObjectRole4=1.0,fallObjectRole5=1.0,fallObjectRole6=1.0,fallObjectRole7=1.0},mt),
    ["2"]=setmetatable({id=2,elementType=2,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=5.0,fallObjectRole3=1.0,fallObjectRole4=1.0,fallObjectRole5=1.0,fallObjectRole6=1.0,fallObjectRole7=1.0},mt),
    ["3"]=setmetatable({id=3,elementType=3,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=1.0,fallObjectRole3=5.0,fallObjectRole4=1.0,fallObjectRole5=1.0,fallObjectRole6=1.0,fallObjectRole7=1.0},mt),
    ["4"]=setmetatable({id=4,elementType=4,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=1.0,fallObjectRole3=1.0,fallObjectRole4=5.0,fallObjectRole5=1.0,fallObjectRole6=1.0,fallObjectRole7=1.0},mt),
    ["5"]=setmetatable({id=5,elementType=5,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=1.0,fallObjectRole3=1.0,fallObjectRole4=1.0,fallObjectRole5=5.0,fallObjectRole6=1.0,fallObjectRole7=1.0},mt),
    ["6"]=setmetatable({id=6,elementType=6,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=1.0,fallObjectRole3=1.0,fallObjectRole4=1.0,fallObjectRole5=1.0,fallObjectRole6=5.0,fallObjectRole7=1.0},mt),
    ["7"]=setmetatable({id=7,elementType=7,role2=1.0,role3=1.0,role4=1.0,role5=1.0,role6=1.0,role7=1.0,fallObjectRole1=1.0,fallObjectRole2=1.0,fallObjectRole3=1.0,fallObjectRole4=1.0,fallObjectRole5=1.0,fallObjectRole6=1.0,fallObjectRole7=5.0},mt),
}
--生成获取数据的方法
---@return ElementCorrect
function GetElementCorrectData(id)
    return ElementCorrect_Xls[tostring(id)]
end
--自动生成注释
---@class ElementCorrect : table 
---@field id number
---@field elementType number
---@field role2 number
---@field role3 number
---@field role4 number
---@field role5 number
---@field role6 number
---@field role7 number
---@field fallObjectRole1 number
---@field fallObjectRole2 number
---@field fallObjectRole3 number
---@field fallObjectRole4 number
---@field fallObjectRole5 number
---@field fallObjectRole6 number
---@field fallObjectRole7 number
