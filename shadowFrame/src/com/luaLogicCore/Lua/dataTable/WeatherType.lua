---@class WeatherType_Xls : table 
WeatherType_Xls =
{
    ["1"]={id=1,type=1,weatherName="晴",weatherIcon="map_popup_weather",weatherEffect="晴天有火"},
    ["2"]={id=2,type=1,weatherName="雨",weatherIcon="map_popup_weather",weatherEffect="雨天有水"},
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
