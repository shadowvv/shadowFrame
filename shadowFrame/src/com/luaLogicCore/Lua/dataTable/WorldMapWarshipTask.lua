local default = {warshipTaskID=0,conditionId=0,warshipTaskName="",warshipTaskSketch="",warshipTaskText="",scenePicture=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WorldMapWarshipTask_Xls : table 
WorldMapWarshipTask_Xls =
{
    ["1001"]=setmetatable({warshipTaskID=1001,conditionId=101101,warshipTaskName="与法尼亚进行对话",warshipTaskSketch="任务完成后解锁主线1-2",warshipTaskText="从外观上看，它呈正圆形；俯瞰时，它是椭圆形的。它的占地面积约2万平方米，长轴长约为188米，短轴长约为156米，圆周长约527米，围墙高约57米，这座庞大的建筑可以容纳近九万的观众",scenePicture="UIWorldMap_sprite_didian"},mt),
    ["1002"]=setmetatable({warshipTaskID=1002,conditionId=101103,warshipTaskName="与法尼亚进行对话",warshipTaskSketch="任务完成后解锁主线1-4",warshipTaskText="从外观上看，它呈正圆形；俯瞰时，它是椭圆形的。它的占地面积约2万平方米，长轴长约为188米，短轴长约为156米，圆周长约527米，围墙高约58米，这座庞大的建筑可以容纳近九万的观众",scenePicture="UIWorldMap_sprite_didian"},mt),
    ["1003"]=setmetatable({warshipTaskID=1003,conditionId=101105,warshipTaskName="与法尼亚进行对话",warshipTaskSketch="任务完成后解锁主线1-6",warshipTaskText="从外观上看，它呈正圆形；俯瞰时，它是椭圆形的。它的占地面积约2万平方米，长轴长约为188米，短轴长约为156米，圆周长约527米，围墙高约59米，这座庞大的建筑可以容纳近九万的观众",scenePicture="UIWorldMap_sprite_didian"},mt),
}
--生成获取数据的方法
---@return WorldMapWarshipTask
function GetWorldMapWarshipTaskData(id)
    return WorldMapWarshipTask_Xls[tostring(id)]
end
--自动生成注释
---@class WorldMapWarshipTask : table 
---@field warshipTaskID number
---@field conditionId number
---@field warshipTaskName string
---@field warshipTaskSketch string
---@field warshipTaskText string
---@field scenePicture string
