local default = {id=0,min=0,max=0,rewardId2Fix=0,season=0,guildWar=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class GuildWarReward_Xls : table 
GuildWarReward_Xls =
{
    ["110001"]=setmetatable({id=110001,min=1,max=1,rewardId2Fix=1200001,season=1,guildWar=100701},mt),
    ["110002"]=setmetatable({id=110002,min=2,max=2,rewardId2Fix=1200002,season=1,guildWar=100701},mt),
    ["110003"]=setmetatable({id=110003,min=3,max=3,rewardId2Fix=1200003,season=1,guildWar=100701},mt),
    ["110004"]=setmetatable({id=110004,min=4,max=50,rewardId2Fix=1200004,season=1,guildWar=100701},mt),
    ["110005"]=setmetatable({id=110005,min=51,max=200,rewardId2Fix=1200005,season=1,guildWar=100701},mt),
    ["110006"]=setmetatable({id=110006,min=201,max=500,rewardId2Fix=1200006,season=1,guildWar=100701},mt),
    ["110007"]=setmetatable({id=110007,min=501,max=-1,rewardId2Fix=1200007,season=1,guildWar=100701},mt),
    ["120001"]=setmetatable({id=120001,min=1,max=1,rewardId2Fix=1200001,season=1,guildWar=100702},mt),
    ["120002"]=setmetatable({id=120002,min=2,max=2,rewardId2Fix=1200002,season=1,guildWar=100702},mt),
    ["120003"]=setmetatable({id=120003,min=3,max=3,rewardId2Fix=1200003,season=1,guildWar=100702},mt),
    ["120004"]=setmetatable({id=120004,min=4,max=50,rewardId2Fix=1200004,season=1,guildWar=100702},mt),
    ["120005"]=setmetatable({id=120005,min=51,max=200,rewardId2Fix=1200005,season=1,guildWar=100702},mt),
    ["120006"]=setmetatable({id=120006,min=201,max=500,rewardId2Fix=1200006,season=1,guildWar=100702},mt),
    ["120007"]=setmetatable({id=120007,min=501,max=-1,rewardId2Fix=1200007,season=1,guildWar=100702},mt),
    ["130001"]=setmetatable({id=130001,min=1,max=1,rewardId2Fix=1200001,season=1,guildWar=100703},mt),
    ["130002"]=setmetatable({id=130002,min=2,max=2,rewardId2Fix=1200002,season=1,guildWar=100703},mt),
    ["130003"]=setmetatable({id=130003,min=3,max=3,rewardId2Fix=1200003,season=1,guildWar=100703},mt),
    ["130004"]=setmetatable({id=130004,min=4,max=50,rewardId2Fix=1200004,season=1,guildWar=100703},mt),
    ["130005"]=setmetatable({id=130005,min=51,max=200,rewardId2Fix=1200005,season=1,guildWar=100703},mt),
    ["130006"]=setmetatable({id=130006,min=201,max=500,rewardId2Fix=1200006,season=1,guildWar=100703},mt),
    ["130007"]=setmetatable({id=130007,min=501,max=-1,rewardId2Fix=1200007,season=1,guildWar=100703},mt),
    ["210001"]=setmetatable({id=210001,min=1,max=1,rewardId2Fix=1200001,season=1,guildWar=100801},mt),
    ["210002"]=setmetatable({id=210002,min=2,max=2,rewardId2Fix=1200002,season=1,guildWar=100801},mt),
    ["210003"]=setmetatable({id=210003,min=3,max=3,rewardId2Fix=1200003,season=1,guildWar=100801},mt),
    ["210004"]=setmetatable({id=210004,min=4,max=50,rewardId2Fix=1200004,season=1,guildWar=100801},mt),
    ["210005"]=setmetatable({id=210005,min=51,max=200,rewardId2Fix=1200005,season=1,guildWar=100801},mt),
    ["210006"]=setmetatable({id=210006,min=201,max=500,rewardId2Fix=1200006,season=1,guildWar=100801},mt),
    ["210007"]=setmetatable({id=210007,min=501,max=-1,rewardId2Fix=1200007,season=1,guildWar=100801},mt),
    ["220001"]=setmetatable({id=220001,min=1,max=1,rewardId2Fix=1200001,season=1,guildWar=100802},mt),
    ["220002"]=setmetatable({id=220002,min=2,max=2,rewardId2Fix=1200002,season=1,guildWar=100802},mt),
    ["220003"]=setmetatable({id=220003,min=3,max=3,rewardId2Fix=1200003,season=1,guildWar=100802},mt),
    ["220004"]=setmetatable({id=220004,min=4,max=50,rewardId2Fix=1200004,season=1,guildWar=100802},mt),
    ["220005"]=setmetatable({id=220005,min=51,max=200,rewardId2Fix=1200005,season=1,guildWar=100802},mt),
    ["220006"]=setmetatable({id=220006,min=201,max=500,rewardId2Fix=1200006,season=1,guildWar=100802},mt),
    ["220007"]=setmetatable({id=220007,min=501,max=-1,rewardId2Fix=1200007,season=1,guildWar=100802},mt),
    ["230001"]=setmetatable({id=230001,min=1,max=1,rewardId2Fix=1200001,season=1,guildWar=100803},mt),
    ["230002"]=setmetatable({id=230002,min=2,max=2,rewardId2Fix=1200002,season=1,guildWar=100803},mt),
    ["230003"]=setmetatable({id=230003,min=3,max=3,rewardId2Fix=1200003,season=1,guildWar=100803},mt),
    ["230004"]=setmetatable({id=230004,min=4,max=50,rewardId2Fix=1200004,season=1,guildWar=100803},mt),
    ["230005"]=setmetatable({id=230005,min=51,max=200,rewardId2Fix=1200005,season=1,guildWar=100803},mt),
    ["230006"]=setmetatable({id=230006,min=201,max=500,rewardId2Fix=1200006,season=1,guildWar=100803},mt),
    ["230007"]=setmetatable({id=230007,min=501,max=-1,rewardId2Fix=1200007,season=1,guildWar=100803},mt),
}
--生成获取数据的方法
---@return GuildWarReward
function GetGuildWarRewardData(id)
    return GuildWarReward_Xls[tostring(id)]
end
--自动生成注释
---@class GuildWarReward : table 
---@field id number
---@field min number
---@field max number
---@field rewardId2Fix number
---@field season number
---@field guildWar number
