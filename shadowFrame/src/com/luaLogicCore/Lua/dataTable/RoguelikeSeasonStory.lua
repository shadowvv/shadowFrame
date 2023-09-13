local default = {id=0,time=0,storySeasonId=0,storyCondition=0,storyTitle="",storyDesc="",storyTips=0,storyShowId=0,storyReward=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeSeasonStory_Xls : table 
RoguelikeSeasonStory_Xls =
{
    ["101"]=setmetatable({id=101,time=110101,storySeasonId=1,storyCondition=0,storyTitle="异梦显现",storyDesc="当梦与真实的联系被揭开，我们可触及到的，是真相，亦或是深渊……",storyTips=0,storyShowId=4011010,storyReward=15300001},mt),
    ["102"]=setmetatable({id=102,time=110102,storySeasonId=1,storyCondition=0,storyTitle="不安渐生",storyDesc="麦当然和韦伯入梦后，驻守在外泡芙和安迪感受到了不安的气息……",storyTips=1,storyShowId=4011040,storyReward=15300002},mt),
    ["103"]=setmetatable({id=103,time=110103,storySeasonId=1,storyCondition=501,storyTitle="所谓符灵",storyDesc="符灵的研发对于阐释工坊来说是很大进步，虽然……现在大家也只把符灵当做智能家居就是了……",storyTips=1,storyShowId=4011050,storyReward=15300003},mt),
    ["104"]=setmetatable({id=104,time=110104,storySeasonId=1,storyCondition=801,storyTitle="审判真理",storyDesc="即便同为曙光的战士，也会各自怀有着不同的理念……",storyTips=1,storyShowId=101050,storyReward=15300004},mt),
    ["105"]=setmetatable({id=105,time=110105,storySeasonId=1,storyCondition=1001,storyTitle="真实之碎片",storyDesc="碎片与异象，还有那曾经消失不见的人。我们所见到的东西背后，究竟还隐藏着怎样的秘密。",storyTips=1,storyShowId=101050,storyReward=15300005},mt),
    ["201"]=setmetatable({id=201,time=110201,storySeasonId=2,storyCondition=0,storyTitle="剧情一",storyDesc="剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧",storyTips=0,storyShowId=101050,storyReward=15300001},mt),
    ["202"]=setmetatable({id=202,time=110202,storySeasonId=2,storyCondition=0,storyTitle="剧情二",storyDesc="剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述",storyTips=1,storyShowId=101050,storyReward=15300001},mt),
    ["203"]=setmetatable({id=203,time=110203,storySeasonId=2,storyCondition=0,storyTitle="剧情三",storyDesc="剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述",storyTips=1,storyShowId=101050,storyReward=15300001},mt),
    ["301"]=setmetatable({id=301,time=110301,storySeasonId=3,storyCondition=0,storyTitle="剧情一",storyDesc="剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧",storyTips=0,storyShowId=101050,storyReward=15300001},mt),
    ["302"]=setmetatable({id=302,time=110302,storySeasonId=3,storyCondition=0,storyTitle="剧情二",storyDesc="剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述",storyTips=1,storyShowId=101050,storyReward=15300001},mt),
    ["303"]=setmetatable({id=303,time=110303,storySeasonId=3,storyCondition=0,storyTitle="剧情三",storyDesc="剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述剧情描述",storyTips=1,storyShowId=101050,storyReward=15300001},mt),
}
--生成获取数据的方法
---@return RoguelikeSeasonStory
function GetRoguelikeSeasonStoryData(id)
    return RoguelikeSeasonStory_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeSeasonStory : table 
---@field id number
---@field time number
---@field storySeasonId number
---@field storyCondition number
---@field storyTitle string
---@field storyDesc string
---@field storyTips number
---@field storyShowId number
---@field storyReward number
