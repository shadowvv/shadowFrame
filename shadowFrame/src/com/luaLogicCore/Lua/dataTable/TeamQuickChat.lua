local default = {id=0,text=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TeamQuickChat_Xls : table 
TeamQuickChat_Xls =
{
    ["1"]=setmetatable({id=1,text="Hi~"},mt),
    ["2"]=setmetatable({id=2,text="小心！"},mt),
    ["3"]=setmetatable({id=3,text="注意回避"},mt),
    ["4"]=setmetatable({id=4,text="全力进攻！"},mt),
    ["5"]=setmetatable({id=5,text="请求回复生命"},mt),
    ["6"]=setmetatable({id=6,text="合作愉快"},mt),
}
--生成获取数据的方法
---@return TeamQuickChat
function GetTeamQuickChatData(id)
    return TeamQuickChat_Xls[tostring(id)]
end
--自动生成注释
---@class TeamQuickChat : table 
---@field id number
---@field text string
