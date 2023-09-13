local default = {dropBottomId=0,happenNum=0,type=0,targetDropId=0,min=0,max=0,targetIssueDropId=0,isused=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class DropBottom_Xls : table 
DropBottom_Xls =
{
    ["1"]=setmetatable({dropBottomId=1,happenNum=-1,type=1,targetDropId=2000,min=10,max=10,targetIssueDropId=2000,isused=1},mt),
    ["2"]=setmetatable({dropBottomId=2,happenNum=-1,type=2,targetDropId=200,min=2,max=2,targetIssueDropId=200,isused=1},mt),
    ["3"]=setmetatable({dropBottomId=3,happenNum=-1,type=3,targetDropId=20,min=2,max=2,targetIssueDropId=20,isused=1},mt),
    ["100003"]=setmetatable({dropBottomId=100003,happenNum=1,type=2,targetDropId=131,min=1,max=1,targetIssueDropId=131,isused=1},mt),
    ["100004"]=setmetatable({dropBottomId=100004,happenNum=1,type=2,targetDropId=132,min=11,max=21,targetIssueDropId=132,isused=1},mt),
}
--生成获取数据的方法
---@return DropBottom
function GetDropBottomData(id)
    return DropBottom_Xls[tostring(id)]
end
--自动生成注释
---@class DropBottom : table 
---@field dropBottomId number
---@field happenNum number
---@field type number
---@field targetDropId number
---@field min number
---@field max number
---@field targetIssueDropId number
---@field isused number
