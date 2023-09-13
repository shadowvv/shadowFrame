local default = {id=0,levelConditionId=0,pram="",weight=0,des=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LoseTips_Xls : table 
LoseTips_Xls =
{
    ["1"]=setmetatable({id=1,levelConditionId=2,pram="",weight=25,des="当异生体聚集时，是施展具现技能的绝佳时机。"},mt),
    ["2"]=setmetatable({id=2,levelConditionId=2,pram="",weight=25,des="大部分异生体的攻击，只要灵活移动、闪躲、快速突进就能轻松躲开。"},mt),
    ["3"]=setmetatable({id=3,levelConditionId=2,pram="",weight=25,des="战场上的预警信号必须时刻留意，它预示着异生体即将发起高威胁攻击。"},mt),
    ["4"]=setmetatable({id=4,levelConditionId=2,pram="",weight=25,des="熟练的掌握元素积蓄，将是获得胜利的关键。"},mt),
    ["5"]=setmetatable({id=5,levelConditionId=13,pram="",weight=100,des="大部分异生体的攻击，只要灵活移动、闪躲、快速突进就能轻松躲开。"},mt),
    ["6"]=setmetatable({id=6,levelConditionId=3,pram="",weight=100,des="未能在有限的时间内取得战斗胜利。请慎重安排时间，再接再厉。"},mt),
    ["7"]=setmetatable({id=7,levelConditionId=93,pram="",weight=100,des="异生体蚕食天空，防守失败。请务必消灭更多异生体，守护我们的天空。"},mt),
    ["8"]=setmetatable({id=8,levelConditionId=97,pram="",weight=100,des="异生体蚕食天空，防守失败。请务必消灭更多异生体，守护我们的天空。"},mt),
    ["9"]=setmetatable({id=9,levelConditionId=6,pram="",weight=100,des="守护失利，导致守护对象被击溃。请务必更加谨慎，完成守护任务。"},mt),
    ["10"]=setmetatable({id=10,levelConditionId=98,pram="",weight=100,des="守护失利，导致守护对象被击溃。请务必更加谨慎，完成守护任务。"},mt),
    ["11"]=setmetatable({id=11,levelConditionId=99,pram="",weight=100,des="守护失利，导致守护对象被击溃。请务必更加谨慎，完成守护任务。"},mt),
}
--生成获取数据的方法
---@return LoseTips
function GetLoseTipsData(id)
    return LoseTips_Xls[tostring(id)]
end
--自动生成注释
---@class LoseTips : table 
---@field id number
---@field levelConditionId number
---@field pram string
---@field weight number
---@field des string
