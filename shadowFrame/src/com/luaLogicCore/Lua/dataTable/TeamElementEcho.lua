local default = {id=0,elementType=0,num=0,name="",talentSkillId=0,skillLevel=0,priority=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TeamElementEcho_Xls : table 
TeamElementEcho_Xls =
{
    ["1"]=setmetatable({id=1,elementType=2,num=2,name="元素共感·火",talentSkillId=8000010,skillLevel=1,priority=100},mt),
    ["2"]=setmetatable({id=2,elementType=2,num=3,name="元素共感·火",talentSkillId=8000010,skillLevel=2,priority=100},mt),
    ["3"]=setmetatable({id=3,elementType=2,num=4,name="元素共感·火",talentSkillId=8000010,skillLevel=3,priority=100},mt),
    ["4"]=setmetatable({id=4,elementType=3,num=2,name="元素共感·雷",talentSkillId=8000020,skillLevel=1,priority=90},mt),
    ["5"]=setmetatable({id=5,elementType=3,num=3,name="元素共感·雷",talentSkillId=8000020,skillLevel=2,priority=90},mt),
    ["6"]=setmetatable({id=6,elementType=3,num=4,name="元素共感·雷",talentSkillId=8000020,skillLevel=3,priority=90},mt),
    ["7"]=setmetatable({id=7,elementType=4,num=2,name="元素共感·冰",talentSkillId=8000030,skillLevel=1,priority=80},mt),
    ["8"]=setmetatable({id=8,elementType=4,num=3,name="元素共感·冰",talentSkillId=8000030,skillLevel=2,priority=80},mt),
    ["9"]=setmetatable({id=9,elementType=4,num=4,name="元素共感·冰",talentSkillId=8000030,skillLevel=3,priority=80},mt),
    ["10"]=setmetatable({id=10,elementType=5,num=2,name="元素共感·风",talentSkillId=8000040,skillLevel=1,priority=70},mt),
    ["11"]=setmetatable({id=11,elementType=5,num=3,name="元素共感·风",talentSkillId=8000040,skillLevel=2,priority=70},mt),
    ["12"]=setmetatable({id=12,elementType=5,num=4,name="元素共感·风",talentSkillId=8000040,skillLevel=3,priority=70},mt),
}
--生成获取数据的方法
---@return TeamElementEcho
function GetTeamElementEchoData(id)
    return TeamElementEcho_Xls[tostring(id)]
end
--自动生成注释
---@class TeamElementEcho : table 
---@field id number
---@field elementType number
---@field num number
---@field name string
---@field talentSkillId number
---@field skillLevel number
---@field priority number
