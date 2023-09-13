local default = {id=0,groupId=0,mainLevelId=0,openTime=0,levelNameText="",levelDesText="",levelImg="",showCollectionMonster=0,levelTask1=0,levelTask2=0,levelTask3=0,useThreeStar=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoleChallengeLevel_Xls : table 
RoleChallengeLevel_Xls =
{
    ["1"]=setmetatable({id=1,groupId=1,mainLevelId=800171,openTime=23323,levelNameText="阶段一",levelDesText="凋零云母",levelImg="UI_S1E2_img_activity_6levels_pic01",showCollectionMonster=3010,levelTask1=0,levelTask2=0,levelTask3=0,useThreeStar=1},mt),
    ["2"]=setmetatable({id=2,groupId=1,mainLevelId=800172,openTime=23323,levelNameText="阶段二",levelDesText="铵格尔",levelImg="UI_S1E2_img_activity_6levels_pic02",showCollectionMonster=3051,levelTask1=0,levelTask2=0,levelTask3=0,useThreeStar=1},mt),
    ["3"]=setmetatable({id=3,groupId=1,mainLevelId=800173,openTime=23323,levelNameText="阶段三",levelDesText="滞锁极境",levelImg="UI_S1E2_img_activity_6levels_pic03",showCollectionMonster=3062,levelTask1=0,levelTask2=0,levelTask3=0,useThreeStar=1},mt),
    ["4"]=setmetatable({id=4,groupId=1,mainLevelId=800174,openTime=23323,levelNameText="阶段四",levelDesText="虎鲸",levelImg="UI_S1E2_img_activity_6levels_pic04",showCollectionMonster=3031,levelTask1=0,levelTask2=0,levelTask3=0,useThreeStar=1},mt),
}
--生成获取数据的方法
---@return RoleChallengeLevel
function GetRoleChallengeLevelData(id)
    return RoleChallengeLevel_Xls[tostring(id)]
end
--自动生成注释
---@class RoleChallengeLevel : table 
---@field id number
---@field groupId number
---@field mainLevelId number
---@field openTime number
---@field levelNameText string
---@field levelDesText string
---@field levelImg string
---@field showCollectionMonster number
---@field levelTask1 number
---@field levelTask2 number
---@field levelTask3 number
---@field useThreeStar number
