local default = {id=0,levelId=0,battleTypeDis="",battleTypeId=0,levelLocation="",limitedTime=0,userExpReward=0,levelName="",loading=0,battleTimeLimit=0,conditionId=0,recommendLevel=0,recommendPower=0,teamType=0,saveTeamType=0,insType=0,indexDes="",levelDes="",powerCost=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LimitedTimeLevel_Xls : table 
LimitedTimeLevel_Xls =
{
    ["70001"]=setmetatable({id=70001,levelId=1000101,battleTypeDis="击破战",battleTypeId=1,levelLocation="UIWorldMap_Sprite_location_story4",limitedTime=43200,userExpReward=15,levelName="剿灭作战1",loading=1,battleTimeLimit=300,conditionId=6101101,recommendLevel=0,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="Q1-1",levelDes="现在，是揭示真相的时间了。真正的守护者不容一丝的污蔑与质疑。",powerCost=0},mt),
    ["70002"]=setmetatable({id=70002,levelId=1000102,battleTypeDis="击破战",battleTypeId=1,levelLocation="UIWorldMap_Sprite_location_story4",limitedTime=43200,userExpReward=15,levelName="剿灭作战2",loading=1,battleTimeLimit=300,conditionId=6101101,recommendLevel=0,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="Q1-2",levelDes="现在，是揭示真相的时间了。真正的守护者不容一丝的污蔑与质疑。",powerCost=0},mt),
    ["70003"]=setmetatable({id=70003,levelId=1000103,battleTypeDis="击破战",battleTypeId=1,levelLocation="UIWorldMap_Sprite_location_story4",limitedTime=43200,userExpReward=15,levelName="剿灭作战3",loading=1,battleTimeLimit=300,conditionId=6101101,recommendLevel=0,recommendPower=0,teamType=2,saveTeamType=1,insType=101,indexDes="Q1-3",levelDes="现在，是揭示真相的时间了。真正的守护者不容一丝的污蔑与质疑。",powerCost=0},mt),
}
--生成获取数据的方法
---@return LimitedTimeLevel
function GetLimitedTimeLevelData(id)
    return LimitedTimeLevel_Xls[tostring(id)]
end
--自动生成注释
---@class LimitedTimeLevel : table 
---@field id number
---@field levelId number
---@field battleTypeDis string
---@field battleTypeId number
---@field levelLocation string
---@field limitedTime number
---@field userExpReward number
---@field levelName string
---@field loading number
---@field battleTimeLimit number
---@field conditionId number
---@field recommendLevel number
---@field recommendPower number
---@field teamType number
---@field saveTeamType number
---@field insType number
---@field indexDes string
---@field levelDes string
---@field powerCost number
