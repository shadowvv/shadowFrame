local default = {id=0,lvId=0,areaId=0,battleLevelSort=0,battleLevelName="",battleLevelPicture="",gamesRule="",settlementParameters=0,teamType=0,saveTeamType=0,isFirstLocked=0,leaderLock=xlsNilTable,loading=0,insType=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldRegionalLevel_Xls : table 
BattlefieldRegionalLevel_Xls =
{
    ["100001"]=setmetatable({id=100001,lvId=3050401,areaId=10001,battleLevelSort=1,battleLevelName="燎原之光",battleLevelPicture="pic1_1",gamesRule="怪物火元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70000,insType=202},mt),
    ["100002"]=setmetatable({id=100002,lvId=3050402,areaId=10001,battleLevelSort=2,battleLevelName="火鸟之羽",battleLevelPicture="pic1_2",gamesRule="怪物火元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70001,insType=202},mt),
    ["100003"]=setmetatable({id=100003,lvId=3050403,areaId=10001,battleLevelSort=3,battleLevelName="灼烧黎明",battleLevelPicture="pic1_3",gamesRule="怪物火元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70002,insType=202},mt),
    ["100004"]=setmetatable({id=100004,lvId=3050201,areaId=10002,battleLevelSort=1,battleLevelName="燎原之光",battleLevelPicture="pic1_1",gamesRule="怪物火元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70000,insType=202},mt),
    ["100005"]=setmetatable({id=100005,lvId=3050202,areaId=10002,battleLevelSort=2,battleLevelName="火鸟之羽",battleLevelPicture="pic1_2",gamesRule="怪物火元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70001,insType=202},mt),
    ["100006"]=setmetatable({id=100006,lvId=3050203,areaId=10002,battleLevelSort=3,battleLevelName="灼烧黎明",battleLevelPicture="pic1_3",gamesRule="怪物火元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70002,insType=202},mt),
    ["200001"]=setmetatable({id=200001,lvId=3050201,areaId=20001,battleLevelSort=1,battleLevelName="电花火",battleLevelPicture="pic1_4",gamesRule="怪物雷元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70003,insType=202},mt),
    ["200002"]=setmetatable({id=200002,lvId=3050202,areaId=20001,battleLevelSort=2,battleLevelName="极速闪电",battleLevelPicture="pic1_5",gamesRule="怪物雷元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70004,insType=202},mt),
    ["200003"]=setmetatable({id=200003,lvId=3050203,areaId=20001,battleLevelSort=3,battleLevelName="高频电流",battleLevelPicture="pic1_6",gamesRule="怪物雷元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70005,insType=202},mt),
    ["200004"]=setmetatable({id=200004,lvId=3050101,areaId=20002,battleLevelSort=1,battleLevelName="电花火",battleLevelPicture="pic1_4",gamesRule="怪物雷元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70003,insType=202},mt),
    ["200005"]=setmetatable({id=200005,lvId=3050102,areaId=20002,battleLevelSort=2,battleLevelName="极速闪电",battleLevelPicture="pic1_5",gamesRule="怪物雷元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70004,insType=202},mt),
    ["200006"]=setmetatable({id=200006,lvId=3050103,areaId=20002,battleLevelSort=3,battleLevelName="高频电流",battleLevelPicture="pic1_6",gamesRule="怪物雷元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70005,insType=202},mt),
    ["300001"]=setmetatable({id=300001,lvId=3050101,areaId=30001,battleLevelSort=1,battleLevelName="空灵之海",battleLevelPicture="pic1_10",gamesRule="怪物冰元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70006,insType=202},mt),
    ["300002"]=setmetatable({id=300002,lvId=3050102,areaId=10003,battleLevelSort=2,battleLevelName="奔流",battleLevelPicture="pic1_8",gamesRule="怪物冰元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70007,insType=202},mt),
    ["300003"]=setmetatable({id=300003,lvId=3050103,areaId=10003,battleLevelSort=3,battleLevelName="冰点",battleLevelPicture="pic1_9",gamesRule="怪物冰元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70008,insType=202},mt),
    ["300004"]=setmetatable({id=300004,lvId=3050301,areaId=10003,battleLevelSort=1,battleLevelName="空灵之海",battleLevelPicture="pic1_10",gamesRule="怪物冰元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70006,insType=202},mt),
    ["300005"]=setmetatable({id=300005,lvId=3050302,areaId=10003,battleLevelSort=2,battleLevelName="奔流",battleLevelPicture="pic1_8",gamesRule="怪物冰元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70007,insType=202},mt),
    ["300006"]=setmetatable({id=300006,lvId=3050303,areaId=10003,battleLevelSort=3,battleLevelName="冰点",battleLevelPicture="pic1_9",gamesRule="怪物冰元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70008,insType=202},mt),
    ["400001"]=setmetatable({id=400001,lvId=3050401,areaId=10004,battleLevelSort=1,battleLevelName="寒风凌厉",battleLevelPicture="pic1_7",gamesRule="怪物风元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70009,insType=202},mt),
    ["400002"]=setmetatable({id=400002,lvId=3050402,areaId=10004,battleLevelSort=2,battleLevelName="狂风摧折",battleLevelPicture="pic1_11",gamesRule="怪物风元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70010,insType=202},mt),
    ["400003"]=setmetatable({id=400003,lvId=3050403,areaId=10004,battleLevelSort=3,battleLevelName="天际撕裂",battleLevelPicture="pic1_12",gamesRule="怪物风元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70011,insType=202},mt),
    ["400004"]=setmetatable({id=400004,lvId=3050401,areaId=10008,battleLevelSort=1,battleLevelName="寒风凌厉",battleLevelPicture="pic1_7",gamesRule="怪物风元素伤害抗性减少25%",settlementParameters=1,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70009,insType=202},mt),
    ["400005"]=setmetatable({id=400005,lvId=3050402,areaId=10008,battleLevelSort=2,battleLevelName="狂风摧折",battleLevelPicture="pic1_11",gamesRule="怪物风元素伤害抗性减少25%",settlementParameters=2,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70010,insType=202},mt),
    ["400006"]=setmetatable({id=400006,lvId=3050403,areaId=10008,battleLevelSort=3,battleLevelName="天际撕裂",battleLevelPicture="pic1_12",gamesRule="怪物风元素伤害抗性减少25%",settlementParameters=3,teamType=1,saveTeamType=1,isFirstLocked=0,leaderLock=xlsNilTable,loading=70011,insType=202},mt),
}
--生成获取数据的方法
---@return BattlefieldRegionalLevel
function GetBattlefieldRegionalLevelData(id)
    return BattlefieldRegionalLevel_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldRegionalLevel : table 
---@field id number
---@field lvId number
---@field areaId number
---@field battleLevelSort number
---@field battleLevelName string
---@field battleLevelPicture string
---@field gamesRule string
---@field settlementParameters number
---@field teamType number
---@field saveTeamType number
---@field isFirstLocked number
---@field leaderLock table
---@field loading number
---@field insType number
