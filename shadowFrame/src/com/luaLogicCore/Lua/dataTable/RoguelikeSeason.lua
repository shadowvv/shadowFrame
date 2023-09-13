local default = {id=0,seasonTime=0,seasonOpenImg="",seasonBg="",seasonTitle="",seasonTitleXY=xlsNilTable,seasonTitleScale=0,seasonTimeDesc="",seasonTitleColor=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeSeason_Xls : table 
RoguelikeSeason_Xls =
{
    ["1"]=setmetatable({id=1,seasonTime=110100,seasonOpenImg="img_season_season_openimg_bg",seasonBg="img_season_mainpage_bg",seasonTitle="img_season1_thematic_i18n",seasonTitleXY={[1]=250,[2]=-234,[3]=0},seasonTitleScale=1,seasonTimeDesc="<color=#AAA6A2>剧情更替时间</color>",seasonTitleColor={[1]=255,[2]=255,[3]=254}},mt),
    ["2"]=setmetatable({id=2,seasonTime=110200,seasonOpenImg="img_season_season_openimg_bg",seasonBg="img_season_mainpage_bg",seasonTitle="img_season1_thematic_i18n",seasonTitleXY={[1]=250,[2]=-234,[3]=0},seasonTitleScale=1,seasonTimeDesc="<color=#AAA6A2>剧情更替时间</color>",seasonTitleColor={[1]=255,[2]=255,[3]=254}},mt),
    ["3"]=setmetatable({id=3,seasonTime=110300,seasonOpenImg="img_season_season_openimg_bg",seasonBg="img_season_mainpage_bg",seasonTitle="img_season1_thematic_i18n",seasonTitleXY={[1]=250,[2]=-234,[3]=0},seasonTitleScale=1,seasonTimeDesc="<color=#AAA6A2>剧情更替时间</color>",seasonTitleColor={[1]=255,[2]=255,[3]=254}},mt),
}
--生成获取数据的方法
---@return RoguelikeSeason
function GetRoguelikeSeasonData(id)
    return RoguelikeSeason_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeSeason : table 
---@field id number
---@field seasonTime number
---@field seasonOpenImg string
---@field seasonBg string
---@field seasonTitle string
---@field seasonTitleXY table
---@field seasonTitleScale number
---@field seasonTimeDesc string
---@field seasonTitleColor table
