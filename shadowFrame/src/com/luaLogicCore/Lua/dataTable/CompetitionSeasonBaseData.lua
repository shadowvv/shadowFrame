local default = {id=0,openFunction=0,name="",nameEn="",openTime="",duration=0,costItemsId=0,costItemNum=0,costId=0,costNum=0,needExp=0,level=0,title="",activityTime="",perkBuff=xlsNilTable,pandect="",coordinate=xlsNilTable,backGround="",basicsIcon="",seniorIcon="",seniorWord="",seniorWord2="",seniorTipsIcon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CompetitionSeasonBaseData_Xls : table 
CompetitionSeasonBaseData_Xls =
{
    ["1"]=setmetatable({id=1,openFunction=0,name="异梦",nameEn="strange dream",openTime="2020-5-13 04:00:00",duration=12,costItemsId=12,costItemNum=3280,costId=11,costNum=100,needExp=1000,level=50,title="第1航迹",activityTime="1月16日16:00-2月25日04:00",perkBuff={[1]=0},pandect="img_season1_1",coordinate={[1]=193,[2]=78},backGround="img_season1_mainkv",basicsIcon="icon_season_basics",seniorIcon="icon_season_senior",seniorWord="进阶版解锁",seniorWord2="购买进阶版后，可解锁以上主要奖励。\n并且在<color=#E84E43>赛季等级20级</color>时即可合成当期赛季SP斯露德。",seniorTipsIcon="icon_season_senior"},mt),
    ["2"]=setmetatable({id=2,openFunction=0,name="野火燎原",nameEn="Wildfire",openTime="2020-8-13 04:00:00",duration=12,costItemsId=12,costItemNum=3280,costId=11,costNum=100,needExp=1000,level=50,title="第2航迹",activityTime="1月16日16:00-2月25日04:00",perkBuff={[1]=0},pandect="img_season1_1",coordinate={[1]=193,[2]=78},backGround="img_season1_mainkv",basicsIcon="icon_season_basics",seniorIcon="icon_season_senior",seniorWord="进阶版解锁",seniorWord2="购买进阶版后，可解锁以上主要奖励。\n并且在<color=#E84E43>赛季等级20级</color>时即可合成当期赛季SP斯露德。",seniorTipsIcon="icon_season_senior"},mt),
    ["3"]=setmetatable({id=3,openFunction=0,name="风卷残云",nameEn="Dancing Clouds",openTime="2020-9-13 04:00:00",duration=12,costItemsId=12,costItemNum=3280,costId=11,costNum=100,needExp=1000,level=50,title="第3航迹",activityTime="1月16日16:00-2月25日04:00",perkBuff={[1]=0},pandect="img_season1_1",coordinate={[1]=193,[2]=78},backGround="img_season1_mainkv",basicsIcon="icon_season_basics",seniorIcon="icon_season_senior",seniorWord="进阶版解锁",seniorWord2="购买进阶版后，可解锁以上主要奖励。\n并且在<color=#E84E43>赛季等级20级</color>时即可合成当期赛季SP斯露德。",seniorTipsIcon="icon_season_senior"},mt),
}
--生成获取数据的方法
---@return CompetitionSeasonBaseData
function GetCompetitionSeasonBaseDataData(id)
    return CompetitionSeasonBaseData_Xls[tostring(id)]
end
--自动生成注释
---@class CompetitionSeasonBaseData : table 
---@field id number
---@field openFunction number
---@field name string
---@field nameEn string
---@field openTime string
---@field duration number
---@field costItemsId number
---@field costItemNum number
---@field costId number
---@field costNum number
---@field needExp number
---@field level number
---@field title string
---@field activityTime string
---@field perkBuff table
---@field pandect string
---@field coordinate table
---@field backGround string
---@field basicsIcon string
---@field seniorIcon string
---@field seniorWord string
---@field seniorWord2 string
---@field seniorTipsIcon string
