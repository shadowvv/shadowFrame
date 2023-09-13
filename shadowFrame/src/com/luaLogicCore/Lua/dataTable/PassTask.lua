local default = {id=0,group=0,name="",describ="",condition=0,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=0,passExp=0,jumpTo=0,refreshType=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PassTask_Xls : table 
PassTask_Xls =
{
    ["100001"]=setmetatable({id=100001,group=1,name="日常见闻",describ="每日签到1次",condition=2002,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=1,passExp=200,jumpTo=0,refreshType=1},mt),
    ["100002"]=setmetatable({id=100002,group=1,name="贡献兑换",describ="累计获得50000点贡献点数",condition=1501,conditionParam1=10,conditionParam2=0,conditionParam3=0,conditionNum=50000,passExp=400,jumpTo=0,refreshType=1},mt),
    ["100003"]=setmetatable({id=100003,group=1,name="灵魂震鸣",describ="累计消耗100点感知",condition=1502,conditionParam1=13,conditionParam2=0,conditionParam3=0,conditionNum=100,passExp=400,jumpTo=3108,refreshType=1},mt),
    ["100004"]=setmetatable({id=100004,group=1,name="活力充盈",describ="累计获得100点活跃点数",condition=1501,conditionParam1=16,conditionParam2=0,conditionParam3=0,conditionNum=100,passExp=500,jumpTo=202,refreshType=1},mt),
    ["100005"]=setmetatable({id=100005,group=1,name="胜利重响",describ="通关任意副本5次",condition=2405,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=5,passExp=500,jumpTo=3108,refreshType=1},mt),
    ["100006"]=setmetatable({id=100006,group=1,name="天天向上",describ="累计完成30个每日任务",condition=2502,conditionParam1=1,conditionParam2=0,conditionParam3=0,conditionNum=30,passExp=1000,jumpTo=101,refreshType=2},mt),
    ["100007"]=setmetatable({id=100007,group=1,name="周周不息",describ="累计击杀150个怪物",condition=1601,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=150,passExp=1000,jumpTo=0,refreshType=2},mt),
    ["100008"]=setmetatable({id=100008,group=1,name="极奏达人",describ="累计释放极奏100次",condition=2402,conditionParam1=0,conditionParam2=0,conditionParam3=0,conditionNum=100,passExp=1000,jumpTo=0,refreshType=2},mt),
}
--生成获取数据的方法
---@return PassTask
function GetPassTaskData(id)
    return PassTask_Xls[tostring(id)]
end
--自动生成注释
---@class PassTask : table 
---@field id number
---@field group number
---@field name string
---@field describ string
---@field condition number
---@field conditionParam1 number
---@field conditionParam2 number
---@field conditionParam3 number
---@field conditionNum number
---@field passExp number
---@field jumpTo number
---@field refreshType number
