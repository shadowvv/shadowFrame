local default = {id=0,name="",icon="",interactStory=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipInteract_Xls : table 
WarshipInteract_Xls =
{
    ["1"]=setmetatable({id=1,name="普通对话1",icon="",interactStory=10001},mt),
    ["2"]=setmetatable({id=2,name="普通对话2",icon="",interactStory=10001},mt),
    ["3"]=setmetatable({id=3,name="普通对话3",icon="",interactStory=10002},mt),
    ["4"]=setmetatable({id=4,name="timeline对话",icon="",interactStory=10002},mt),
    ["5"]=setmetatable({id=5,name="timeline动画",icon="",interactStory=10002},mt),
    ["200100100"]=setmetatable({id=200100100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30001},mt),
    ["200200100"]=setmetatable({id=200200100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30002},mt),
    ["200300100"]=setmetatable({id=200300100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30003},mt),
    ["200400100"]=setmetatable({id=200400100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30004},mt),
    ["200500100"]=setmetatable({id=200500100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30005},mt),
    ["200600100"]=setmetatable({id=200600100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30006},mt),
    ["200700100"]=setmetatable({id=200700100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30007},mt),
    ["200800100"]=setmetatable({id=200800100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30008},mt),
    ["201000100"]=setmetatable({id=201000100,name="再见（结束对话）",icon="warship_xuanxiangtb2",interactStory=30010},mt),
}
--生成获取数据的方法
---@return WarshipInteract
function GetWarshipInteractData(id)
    return WarshipInteract_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipInteract : table 
---@field id number
---@field name string
---@field icon string
---@field interactStory number
