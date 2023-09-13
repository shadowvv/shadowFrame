local default = {id=0,desc="",condition1=0,param1=0,condition2=0,param2=0,effect=0,effectParam=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipDispatchSkill_Xls : table 
WarshipDispatchSkill_Xls =
{
    ["1"]=setmetatable({id=1,desc="区域奖励加成",condition1=1,param1=1,condition2=0,param2=0,effect=1,effectParam={[1]=20}},mt),
    ["2"]=setmetatable({id=2,desc="怪物时间加成",condition1=2,param1=3,condition2=0,param2=0,effect=2,effectParam={[1]=10}},mt),
    ["3"]=setmetatable({id=3,desc="区域怪物奖励加成",condition1=1,param1=3,condition2=2,param2=2,effect=2,effectParam={[1]=15}},mt),
    ["4"]=setmetatable({id=4,desc="额外获得百分比奖励",condition1=0,param1=0,condition2=0,param2=0,effect=3,effectParam={[1]=10,[2]=20}},mt),
    ["5"]=setmetatable({id=5,desc="额外获得固定数量奖励",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1020001,[2]=1,[3]=1020002,[4]=2,[5]=1020003,[6]=3,[7]=1020004,[8]=4}},mt),
    ["101"]=setmetatable({id=101,desc="完成任务时获得的贡献点数提高15%",condition1=0,param1=0,condition2=0,param2=0,effect=3,effectParam={[1]=10,[2]=15}},mt),
    ["102"]=setmetatable({id=102,desc="完成任务时获得的贡献点数提高25%",condition1=0,param1=0,condition2=0,param2=0,effect=3,effectParam={[1]=10,[2]=25}},mt),
    ["201"]=setmetatable({id=201,desc="完成任务时获得的战斗评估报告I提高5",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1020001,[2]=5}},mt),
    ["202"]=setmetatable({id=202,desc="完成任务时获得的战斗评估报告I提高10",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1020001,[2]=10}},mt),
    ["301"]=setmetatable({id=301,desc="完成任务时获得的暗色琼津提高3",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1070001,[2]=3}},mt),
    ["302"]=setmetatable({id=302,desc="完成任务时获得的斑斓琼津提高1",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1070002,[2]=1}},mt),
    ["401"]=setmetatable({id=401,desc="在沉金之地执行任务时，任务时长缩短15%",condition1=1,param1=1,condition2=0,param2=0,effect=2,effectParam={[1]=15}},mt),
    ["402"]=setmetatable({id=402,desc="在沉金之地执行任务时，任务时长缩短25%",condition1=1,param1=1,condition2=0,param2=0,effect=2,effectParam={[1]=25}},mt),
    ["403"]=setmetatable({id=403,desc="在燃能之地执行任务时，任务时长缩短15%",condition1=1,param1=2,condition2=0,param2=0,effect=2,effectParam={[1]=15}},mt),
    ["404"]=setmetatable({id=404,desc="在燃能之地执行任务时，任务时长缩短25%",condition1=1,param1=2,condition2=0,param2=0,effect=2,effectParam={[1]=25}},mt),
    ["405"]=setmetatable({id=405,desc="在灵醒之地执行任务时，任务时长缩短15%",condition1=1,param1=3,condition2=0,param2=0,effect=2,effectParam={[1]=15}},mt),
    ["406"]=setmetatable({id=406,desc="在灵醒之地执行任务时，任务时长缩短25%",condition1=1,param1=3,condition2=0,param2=0,effect=2,effectParam={[1]=25}},mt),
    ["407"]=setmetatable({id=407,desc="在所有地区执行任务时，任务时长缩短10%",condition1=0,param1=0,condition2=0,param2=0,effect=2,effectParam={[1]=10}},mt),
    ["408"]=setmetatable({id=408,desc="在所有地区执行任务时，任务时长缩短20%",condition1=0,param1=0,condition2=0,param2=0,effect=2,effectParam={[1]=20}},mt),
    ["501"]=setmetatable({id=501,desc="完成任务时获得的元素尘埃提高1",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1080021,[2]=1,[3]=1080031,[4]=1,[5]=1080041,[6]=1,[7]=1080051,[8]=1,[9]=1080061,[10]=1}},mt),
    ["502"]=setmetatable({id=502,desc="完成任务时获得的元素晶体提高1",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1080022,[2]=1,[3]=1080032,[4]=1,[5]=1080042,[6]=1,[7]=1080052,[8]=1,[9]=1080062,[10]=1}},mt),
    ["601"]=setmetatable({id=601,desc="完成任务时获得的初级突破素材提高4",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1200011,[2]=4,[3]=1200021,[4]=4,[5]=1200031,[6]=4,[7]=1200041,[8]=4,[9]=1200051,[10]=4,[11]=1200061,[12]=4,[13]=1200071,[14]=4}},mt),
    ["602"]=setmetatable({id=602,desc="完成任务时获得的中级突破素材提高1",condition1=0,param1=0,condition2=0,param2=0,effect=4,effectParam={[1]=1200012,[2]=1,[3]=1200022,[4]=1,[5]=1200032,[6]=1,[7]=1200042,[8]=1,[9]=1200052,[10]=1,[11]=1200062,[12]=1,[13]=1200072,[14]=1}},mt),
}
--生成获取数据的方法
---@return WarshipDispatchSkill
function GetWarshipDispatchSkillData(id)
    return WarshipDispatchSkill_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipDispatchSkill : table 
---@field id number
---@field desc string
---@field condition1 number
---@field param1 number
---@field condition2 number
---@field param2 number
---@field effect number
---@field effectParam table
