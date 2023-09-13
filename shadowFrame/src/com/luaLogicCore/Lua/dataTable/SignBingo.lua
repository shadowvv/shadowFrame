local default = {id=0,num=0,award=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SignBingo_Xls : table 
SignBingo_Xls =
{
    ["1"]=setmetatable({id=1,num=8,award=802000},mt),
    ["2"]=setmetatable({id=2,num=16,award=802001},mt),
    ["3"]=setmetatable({id=3,num=24,award=802002},mt),
    ["4"]=setmetatable({id=4,num=32,award=802003},mt),
    ["5"]=setmetatable({id=5,num=40,award=802004},mt),
    ["6"]=setmetatable({id=6,num=48,award=802005},mt),
    ["7"]=setmetatable({id=7,num=56,award=802006},mt),
}
--生成获取数据的方法
---@return SignBingo
function GetSignBingoData(id)
    return SignBingo_Xls[tostring(id)]
end
--自动生成注释
---@class SignBingo : table 
---@field id number
---@field num number
---@field award number
