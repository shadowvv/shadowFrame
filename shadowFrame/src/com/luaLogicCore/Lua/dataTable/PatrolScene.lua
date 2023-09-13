local default = {id=0,sceneName="",patrolSceneName="",patrolRes="",role1point=xlsNilTable,role2point=xlsNilTable,role3point=xlsNilTable,role4point=xlsNilTable,loadingTypeID=0,patrolSpeed=0,patrolSpeed2x=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PatrolScene_Xls : table 
PatrolScene_Xls =
{
    ["1"]=setmetatable({id=1,sceneName="温德兰德脉流区域",patrolSceneName="Scenes_WundeRend",patrolRes="PatrolPath",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000001,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["2"]=setmetatable({id=2,sceneName="测试",patrolSceneName="Scenes_Bojialande_vestige",patrolRes="Patrol_Bojialande_vestige",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000002,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["3"]=setmetatable({id=3,sceneName="测试",patrolSceneName="Scenes_Bojialande_vestige_Rema_01",patrolRes="Patrol_Bojialande_vestige_Rema_01",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000003,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["4"]=setmetatable({id=4,sceneName="测试",patrolSceneName="Scenes_SnowMountain",patrolRes="Patrol_SnowMountain",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000004,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["5"]=setmetatable({id=5,sceneName="测试",patrolSceneName="Scenes_SnowMountain",patrolRes="Patrol_SnowMountain_02",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000005,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["6"]=setmetatable({id=6,sceneName="温德兰德脉流区域",patrolSceneName="Scenes_WundeRend_Daybad",patrolRes="Patrol_WundeRend_Daybad",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000006,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["7"]=setmetatable({id=7,sceneName="温德兰德脉流区域",patrolSceneName="Scenes_WundeRend_duskbad",patrolRes="Patrol_WundeRend_duskbad",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000007,patrolSpeed=40,patrolSpeed2x=60},mt),
    ["8"]=setmetatable({id=8,sceneName="温德兰德脉流区域",patrolSceneName="Scenes_WundeRend_Rainbad",patrolRes="Patrol_WundeRend_Rainbad",role1point={[1]=1,[2]=0,[3]=-1.5},role2point={[1]=-2,[2]=0.5,[3]=0.5},role3point={[1]=4,[2]=1,[3]=0},role4point={[1]=0,[2]=-1,[3]=3},loadingTypeID=1000008,patrolSpeed=40,patrolSpeed2x=60},mt),
}
--生成获取数据的方法
---@return PatrolScene
function GetPatrolSceneData(id)
    return PatrolScene_Xls[tostring(id)]
end
--自动生成注释
---@class PatrolScene : table 
---@field id number
---@field sceneName string
---@field patrolSceneName string
---@field patrolRes string
---@field role1point table
---@field role2point table
---@field role3point table
---@field role4point table
---@field loadingTypeID number
---@field patrolSpeed number
---@field patrolSpeed2x number
