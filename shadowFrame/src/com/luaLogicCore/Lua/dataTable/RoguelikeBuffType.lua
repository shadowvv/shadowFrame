local default = {id=0,name="",nameEn="",condition=0,choosable=0,icon="",iconSelected="",iconGrey="",iconWhite="",effect1=xlsNilTable,effect1AddType=xlsNilTable,effect1IsActive=0,effect2=0,num1=0,skill1=xlsNilTable,num2=xlsNilTable,skill2=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeBuffType_Xls : table 
RoguelikeBuffType_Xls =
{
    ["1"]=setmetatable({id=1,name="霹雳",nameEn="THUNDER",condition=601,choosable=1,icon="icon_season_thunder",iconSelected="icon_season_thunder_on",iconGrey="icon_season_thunder_grey",iconWhite="icon_season_thunder_white",effect1={[1]=2030000},effect1AddType={[1]=2},effect1IsActive=0,effect2=11,num1=3,skill1={[1]=1490},num2={[1]=6,[2]=9,[3]=12},skill2={[1]=1491,[2]=1492,[3]=1493}},mt),
    ["2"]=setmetatable({id=2,name="爆燃",nameEn="FIRE",condition=601,choosable=1,icon="icon_season_fire",iconSelected="icon_season_fire_on",iconGrey="icon_season_fire_grey",iconWhite="icon_season_fire_white",effect1={[1]=2020000},effect1AddType={[1]=2},effect1IsActive=0,effect2=21,num1=3,skill1={[1]=2490},num2={[1]=6,[2]=9,[3]=12},skill2={[1]=2491,[2]=2492,[3]=2493}},mt),
    ["3"]=setmetatable({id=3,name="极寒",nameEn="ICE",condition=601,choosable=1,icon="icon_season_ice",iconSelected="icon_season_ice_on",iconGrey="icon_season_ice_grey",iconWhite="icon_season_ice_white",effect1={[1]=2040000},effect1AddType={[1]=2},effect1IsActive=0,effect2=31,num1=3,skill1={[1]=3490},num2={[1]=6,[2]=9,[3]=12},skill2={[1]=3491,[2]=3492,[3]=3493}},mt),
    ["4"]=setmetatable({id=4,name="狂舞",nameEn="WIND",condition=601,choosable=1,icon="icon_season_langman",iconSelected="icon_season_langman_on",iconGrey="icon_season_langman_grey",iconWhite="icon_season_langman_white",effect1={[1]=2050000},effect1AddType={[1]=2},effect1IsActive=0,effect2=41,num1=3,skill1={[1]=4490},num2={[1]=6,[2]=9,[3]=12},skill2={[1]=4491,[2]=4492,[3]=4493}},mt),
    ["5"]=setmetatable({id=5,name="全能",nameEn="NORMAL",condition=601,choosable=0,icon="icon_season_thunder3",iconSelected="icon_season_thunder_on3",iconGrey="icon_season_thunder3_grey",iconWhite="icon_season_thunder3_white",effect1={[1]=8000040},effect1AddType={[1]=0},effect1IsActive=0,effect2=51,num1=3,skill1={[1]=5490},num2={[1]=6,[2]=9,[3]=12},skill2={[1]=5491,[2]=5492,[3]=5493}},mt),
}
--生成获取数据的方法
---@return RoguelikeBuffType
function GetRoguelikeBuffTypeData(id)
    return RoguelikeBuffType_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeBuffType : table 
---@field id number
---@field name string
---@field nameEn string
---@field condition number
---@field choosable number
---@field icon string
---@field iconSelected string
---@field iconGrey string
---@field iconWhite string
---@field effect1 table
---@field effect1AddType table
---@field effect1IsActive number
---@field effect2 number
---@field num1 number
---@field skill1 table
---@field num2 table
---@field skill2 table
