local default = {id=0,type=0,times=0,markType=0,fixedRewardID=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SignActivity_Xls : table 
SignActivity_Xls =
{
    ["1"]=setmetatable({id=1,type=1,times=1,markType=0,fixedRewardID=801001},mt),
    ["2"]=setmetatable({id=2,type=1,times=2,markType=1,fixedRewardID=801002},mt),
    ["3"]=setmetatable({id=3,type=1,times=3,markType=0,fixedRewardID=801003},mt),
    ["4"]=setmetatable({id=4,type=1,times=4,markType=0,fixedRewardID=801004},mt),
    ["5"]=setmetatable({id=5,type=1,times=5,markType=0,fixedRewardID=801005},mt),
    ["6"]=setmetatable({id=6,type=1,times=6,markType=1,fixedRewardID=801006},mt),
    ["7"]=setmetatable({id=7,type=1,times=7,markType=1,fixedRewardID=801007},mt),
}
--生成获取数据的方法
---@return SignActivity
function GetSignActivityData(id)
    return SignActivity_Xls[tostring(id)]
end
--自动生成注释
---@class SignActivity : table 
---@field id number
---@field type number
---@field times number
---@field markType number
---@field fixedRewardID number
