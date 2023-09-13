local default = {id=0,leaderPositionName="",leaderPositionEnglish="",leaderPositionOpen=0,leaderPositionOrder=0,leaderPositionIcon="",leaderPositionText=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderPosition_Xls : table 
LeaderPosition_Xls =
{
    ["1"]=setmetatable({id=1,leaderPositionName="作战先锐",leaderPositionEnglish="Position",leaderPositionOpen=1,leaderPositionOrder=4,leaderPositionIcon="LeaderPosition_1",leaderPositionText="提供火力输出，是整个队伍伤害主要来源。"},mt),
    ["2"]=setmetatable({id=2,leaderPositionName="符能学者",leaderPositionEnglish="Position",leaderPositionOpen=1,leaderPositionOrder=2,leaderPositionIcon="LeaderPosition_2",leaderPositionText="快速积蓄，打出元素过载反应。"},mt),
    ["3"]=setmetatable({id=3,leaderPositionName="赋能专家",leaderPositionEnglish="Position",leaderPositionOpen=1,leaderPositionOrder=3,leaderPositionIcon="LeaderPosition_3",leaderPositionText="能够增强输出职业的输出能力。"},mt),
    ["4"]=setmetatable({id=4,leaderPositionName="医疗专员",leaderPositionEnglish="Position",leaderPositionOpen=1,leaderPositionOrder=1,leaderPositionIcon="LeaderPosition_4",leaderPositionText="治疗友方斯露德，缓解队伍生存压力。"},mt),
}
--生成获取数据的方法
---@return LeaderPosition
function GetLeaderPositionData(id)
    return LeaderPosition_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderPosition : table 
---@field id number
---@field leaderPositionName string
---@field leaderPositionEnglish string
---@field leaderPositionOpen number
---@field leaderPositionOrder number
---@field leaderPositionIcon string
---@field leaderPositionText string
