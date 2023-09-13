local default = {id=0,leaderLevel=0,buffAndActionInstanceId=0,value=0,monsterValue=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ElementValue_Xls : table 
ElementValue_Xls =
{
    ["1"]=setmetatable({id=1,leaderLevel=1,buffAndActionInstanceId=101,value=0.9,monsterValue=0.45},mt),
    ["2"]=setmetatable({id=2,leaderLevel=1,buffAndActionInstanceId=102,value=1.1,monsterValue=0.55},mt),
    ["3"]=setmetatable({id=3,leaderLevel=1,buffAndActionInstanceId=120,value=0.88,monsterValue=0.44},mt),
    ["4"]=setmetatable({id=4,leaderLevel=1,buffAndActionInstanceId=122,value=0.67,monsterValue=0.335},mt),
    ["5"]=setmetatable({id=5,leaderLevel=1,buffAndActionInstanceId=171,value=0.2,monsterValue=0.1},mt),
    ["6"]=setmetatable({id=6,leaderLevel=1,buffAndActionInstanceId=181,value=0.15,monsterValue=0.075},mt),
    ["7"]=setmetatable({id=7,leaderLevel=1,buffAndActionInstanceId=191,value=0.4,monsterValue=0.2},mt),
    ["8"]=setmetatable({id=8,leaderLevel=1,buffAndActionInstanceId=201,value=0.27,monsterValue=0.135},mt),
    ["9"]=setmetatable({id=9,leaderLevel=1,buffAndActionInstanceId=211,value=0.13,monsterValue=0.065},mt),
    ["10"]=setmetatable({id=10,leaderLevel=1,buffAndActionInstanceId=221,value=0.09,monsterValue=0.045},mt),
    ["11"]=setmetatable({id=11,leaderLevel=1,buffAndActionInstanceId=321,value=0.4,monsterValue=0.2},mt),
    ["12"]=setmetatable({id=12,leaderLevel=1,buffAndActionInstanceId=331,value=0.4,monsterValue=0.2},mt),
    ["13"]=setmetatable({id=13,leaderLevel=1,buffAndActionInstanceId=341,value=0.4,monsterValue=0.2},mt),
    ["14"]=setmetatable({id=14,leaderLevel=1,buffAndActionInstanceId=351,value=0.4,monsterValue=0.2},mt),
}
--生成获取数据的方法
---@return ElementValue
function GetElementValueData(id)
    return ElementValue_Xls[tostring(id)]
end
--自动生成注释
---@class ElementValue : table 
---@field id number
---@field leaderLevel number
---@field buffAndActionInstanceId number
---@field value number
---@field monsterValue number
