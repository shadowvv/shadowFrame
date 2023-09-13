local default = {id=0,type=0,weatherName="",weatherIcon="",weatherEffect="",camEffect="",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeatherType_Xls : table 
WeatherType_Xls =
{
    ["1"]=setmetatable({id=1,type=1,weatherName="晴天",weatherIcon="weather_icon_sunny",weatherEffect="",camEffect="",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Sunny"},mt),
    ["2"]=setmetatable({id=2,type=2,weatherName="阴雨",weatherIcon="weather_icon_rainy",weatherEffect="冰附着",camEffect="changjing_tongyong_xiayu",newLevelMonsterBuff={[1]="1011"},newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff={[1]="1011"},newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Rainy"},mt),
    ["3"]=setmetatable({id=3,type=1,weatherName="多云",weatherIcon="weather_icon_cloudy",weatherEffect="",camEffect="",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Cloudy"},mt),
    ["4"]=setmetatable({id=4,type=1,weatherName="浓雾",weatherIcon="weather_icon_fog",weatherEffect="",camEffect="",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Foggy"},mt),
    ["5"]=setmetatable({id=5,type=1,weatherName="降雪",weatherIcon="weather_icon_snow",weatherEffect="冰附着",camEffect="Pre_Eff_xue_loop",newLevelMonsterBuff={[1]="1011"},newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff={[1]="1011"},newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Snowy"},mt),
    ["6"]=setmetatable({id=6,type=2,weatherName="雷暴",weatherIcon="weather_icon_thunder",weatherEffect="雷附着",camEffect="",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Thunder"},mt),
    ["7"]=setmetatable({id=7,type=1,weatherName="特殊",weatherIcon="weather_icon_unknown",weatherEffect="源能附着"},mt),
    ["8"]=setmetatable({id=8,type=1,weatherName="酷热",weatherIcon="weather_icon_volcano",weatherEffect="火附着"},mt),
    ["9"]=setmetatable({id=9,type=1,weatherName="飓风",weatherIcon="weather_icon_windy",weatherEffect="风附着",camEffect="",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Windy"},mt),
    ["10"]=setmetatable({id=10,type=1,weatherName="暴风雪",weatherIcon="weather_icon_snow",weatherEffect="冰附着",camEffect="Pre_Eff_blizzard_loop",newLevelMonsterBuff=xlsNilTable,newLevelMonsterTalent=xlsNilTable,newLevelLeaderBuff=xlsNilTable,newLevelLeaderTalent=xlsNilTable,postprocess="",soundEventName="WeatherType_Blizzard"},mt),
}
--生成获取数据的方法
---@return WeatherType
function GetWeatherTypeData(id)
    return WeatherType_Xls[tostring(id)]
end
--自动生成注释
---@class WeatherType : table 
---@field id number
---@field type number
---@field weatherName string
---@field weatherIcon string
---@field weatherEffect string
---@field camEffect string
---@field newLevelMonsterBuff table
---@field newLevelMonsterTalent table
---@field newLevelLeaderBuff table
---@field newLevelLeaderTalent table
---@field postprocess string
---@field soundEventName string
