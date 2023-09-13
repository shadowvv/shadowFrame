local default = {id=0,pageButtonName="",pageTypeId=0,openFuctionId=0,openCondition=0,openTime=0,bgImg="",buttonImg="",canvasSize=0,introduce="",coinImg=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class StoryPageConfig_Xls : table 
StoryPageConfig_Xls =
{
    ["1"]=setmetatable({id=1,pageButtonName="故事",pageTypeId=1,openFuctionId=0,openCondition=0,openTime=23201,bgImg="activitynormal202301_levelbg2",buttonImg="btn_eventsys_levels_nmbase_i18n",canvasSize=0,introduce="",coinImg="item_eventsys_levels_resources_i18n"},mt),
    ["2"]=setmetatable({id=2,pageButtonName="资源",pageTypeId=2,openFuctionId=4610,openCondition=0,openTime=23201,bgImg="activitynormal202301_levelbg2",buttonImg="btn_eventsys_levels_resbase_i18n",canvasSize=0,introduce="",coinImg="item_eventsys_levels_resources_i18n"},mt),
    ["21"]=setmetatable({id=21,pageButtonName="故事",pageTypeId=1,openFuctionId=0,openCondition=0,openTime=23320,bgImg="UI_S1E2_Story_Bg",buttonImg="btn_eventsys_levels_nmbase_i18n",canvasSize=0,introduce="",coinImg="item_eventsys_levels_resources_s1e2_i18n"},mt),
    ["22"]=setmetatable({id=22,pageButtonName="资源",pageTypeId=2,openFuctionId=4610,openCondition=0,openTime=23320,bgImg="UI_S1E2_Story_Bg",buttonImg="btn_eventsys_levels_resbase_i18n",canvasSize=0,introduce="",coinImg="item_eventsys_levels_resources_s1e2_i18n"},mt),
}
--生成获取数据的方法
---@return StoryPageConfig
function GetStoryPageConfigData(id)
    return StoryPageConfig_Xls[tostring(id)]
end
--自动生成注释
---@class StoryPageConfig : table 
---@field id number
---@field pageButtonName string
---@field pageTypeId number
---@field openFuctionId number
---@field openCondition number
---@field openTime number
---@field bgImg string
---@field buttonImg string
---@field canvasSize number
---@field introduce string
---@field coinImg string
