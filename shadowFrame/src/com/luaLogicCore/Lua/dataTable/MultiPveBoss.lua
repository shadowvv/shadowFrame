local default = {id=0,unlock=0,nameExplain="",recommendLevel=0,recommendPower=0,monsterShow=xlsNilTable,attribute=xlsNilTable,weapon=xlsNilTable,newLevelId=0,stageLevel=0,rewardShow=0,reward=0,rewardLimit=0,userExpReward=0,leaderExpReward=0,teamType=0,saveTeamType=0,openTime=0,insType=0,rewardType=0,loading=0,chapterEn="",name="",areaName="",weather=0,timeText="",storyShowBeforeTeam=0,storyShowAfterTeam=0,storyShowStart=0,storyShowFinishBeforeLoading=0,storyShowFinishAfterLoading=0,gradeOneCondition1=0,gradeOneParam1=0,gradeOneParam2=0,gradeTwoCondition2=0,gradeTwoParam1=0,gradeTwoParam2=0,gradeThreeCondition3=0,gradeThreeParam1=0,gradeThreeParam2=0,starReward1=0,starRewardNum1=0,starReward2=0,starRewardNum2=0,starReward3=0,starRewardNum3=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MultiPveBoss_Xls : table 
MultiPveBoss_Xls =
{
    ["4000101"]=setmetatable({id=4000101,unlock=630,nameExplain="见证者说，那是比太阳还明亮，燃烧在海市蜃楼之中的火光，它会灼伤虹膜和记忆，在生命消散的前一秒，脑海里就只剩下那道光芒的魅影——事实的真相要残酷得多，那东西异常狡猾，由斯露德领导的驱逐行动成功过几次，可我们失去的还是太多了……一个坏消息，那东西具有学习和进化的能力，单一的作战方式已经无法对它构成威胁了，我们需要更多的帮助，更多的力量。看得出来，你已经听明白我的意思了，别着急，我们离出发还有一点时间，记得把你需要的东西都带上——今天，是个钓香蕉鱼的好日子。",recommendLevel=30,recommendPower=4000101,monsterShow={[1]=1},attribute={[1]=5,[2]=3},weapon={[1]=1,[2]=4},newLevelId=4000101,stageLevel=1,rewardShow=4000101,reward=40001,rewardLimit=2,userExpReward=0,leaderExpReward=0,teamType=1,saveTeamType=1,openTime=23002,insType=200,rewardType=1,loading=60001,chapterEn="The flame never goes ou",name="虚空火光",areaName="TEO-11",weather=1,timeText="夜晚",storyShowBeforeTeam=0,storyShowAfterTeam=0,storyShowStart=0,storyShowFinishBeforeLoading=0,storyShowFinishAfterLoading=0,gradeOneCondition1=1001,gradeOneParam1=0,gradeOneParam2=0,gradeTwoCondition2=1002,gradeTwoParam1=0,gradeTwoParam2=0,gradeThreeCondition3=1003,gradeThreeParam1=0,gradeThreeParam2=0,starReward1=11,starRewardNum1=20,starReward2=11,starRewardNum2=20,starReward3=11,starRewardNum3=40},mt),
}
--生成获取数据的方法
---@return MultiPveBoss
function GetMultiPveBossData(id)
    return MultiPveBoss_Xls[tostring(id)]
end
--自动生成注释
---@class MultiPveBoss : table 
---@field id number
---@field unlock number
---@field nameExplain string
---@field recommendLevel number
---@field recommendPower number
---@field monsterShow table
---@field attribute table
---@field weapon table
---@field newLevelId number
---@field stageLevel number
---@field rewardShow number
---@field reward number
---@field rewardLimit number
---@field userExpReward number
---@field leaderExpReward number
---@field teamType number
---@field saveTeamType number
---@field openTime number
---@field insType number
---@field rewardType number
---@field loading number
---@field chapterEn string
---@field name string
---@field areaName string
---@field weather number
---@field timeText string
---@field storyShowBeforeTeam number
---@field storyShowAfterTeam number
---@field storyShowStart number
---@field storyShowFinishBeforeLoading number
---@field storyShowFinishAfterLoading number
---@field gradeOneCondition1 number
---@field gradeOneParam1 number
---@field gradeOneParam2 number
---@field gradeTwoCondition2 number
---@field gradeTwoParam1 number
---@field gradeTwoParam2 number
---@field gradeThreeCondition3 number
---@field gradeThreeParam1 number
---@field gradeThreeParam2 number
---@field starReward1 number
---@field starRewardNum1 number
---@field starReward2 number
---@field starRewardNum2 number
---@field starReward3 number
---@field starRewardNum3 number
