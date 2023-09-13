local default = {id=0,camPrefabPath="",isActiveCam=0,camScale=0,slowDelayTime=0,slowTimeSpeed=0,performTotalTime=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MonsterPerform_Xls : table 
MonsterPerform_Xls =
{
    ["101"]=setmetatable({id=101,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=1.6,slowDelayTime=0,slowTimeSpeed=0.06,performTotalTime=4},mt),
    ["102"]=setmetatable({id=102,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=2.3,slowDelayTime=0,slowTimeSpeed=0.06,performTotalTime=4},mt),
    ["112"]=setmetatable({id=112,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=2.3,slowDelayTime=0,slowTimeSpeed=0.3,performTotalTime=4},mt),
    ["103"]=setmetatable({id=103,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=3,slowDelayTime=0,slowTimeSpeed=0.06,performTotalTime=4},mt),
    ["104"]=setmetatable({id=104,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=4,slowDelayTime=0,slowTimeSpeed=0.3,performTotalTime=4},mt),
    ["114"]=setmetatable({id=114,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=4,slowDelayTime=0,slowTimeSpeed=0.08,performTotalTime=4},mt),
    ["105"]=setmetatable({id=105,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=5,slowDelayTime=0,slowTimeSpeed=0.3,performTotalTime=4.5},mt),
    ["106"]=setmetatable({id=106,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=6,slowDelayTime=0,slowTimeSpeed=0.3,performTotalTime=5},mt),
    ["107"]=setmetatable({id=107,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=7,slowDelayTime=2,slowTimeSpeed=0.3,performTotalTime=5},mt),
    ["108"]=setmetatable({id=108,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=8,slowDelayTime=2,slowTimeSpeed=0.3,performTotalTime=5},mt),
    ["109"]=setmetatable({id=109,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=9,slowDelayTime=2,slowTimeSpeed=0.3,performTotalTime=5},mt),
    ["3040"]=setmetatable({id=3040,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=30,slowDelayTime=2,slowTimeSpeed=0.3,performTotalTime=7},mt),
    ["3041"]=setmetatable({id=3041,camPrefabPath="CM_ClearShot1",isActiveCam=1,camScale=15,slowDelayTime=2,slowTimeSpeed=0.3,performTotalTime=7},mt),
}
--生成获取数据的方法
---@return MonsterPerform
function GetMonsterPerformData(id)
    return MonsterPerform_Xls[tostring(id)]
end
--自动生成注释
---@class MonsterPerform : table 
---@field id number
---@field camPrefabPath string
---@field isActiveCam number
---@field camScale number
---@field slowDelayTime number
---@field slowTimeSpeed number
---@field performTotalTime number
