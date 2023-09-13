local default = {id=0,buffId=xlsNilTable,weather="",effect="",period=0,buffTab=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldWeather_Xls : table 
BattlefieldWeather_Xls =
{
    ["1001"]=setmetatable({id=1001,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=0,buffTab="weather_icon_fog"},mt),
    ["1002"]=setmetatable({id=1002,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=1,buffTab="weather_icon_fog"},mt),
    ["1003"]=setmetatable({id=1003,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=2,buffTab="weather_icon_fog"},mt),
    ["1004"]=setmetatable({id=1004,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=3,buffTab="weather_icon_fog"},mt),
    ["1005"]=setmetatable({id=1005,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=4,buffTab="weather_icon_fog"},mt),
    ["1006"]=setmetatable({id=1006,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=5,buffTab="weather_icon_fog"},mt),
    ["1007"]=setmetatable({id=1007,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=6,buffTab="weather_icon_fog"},mt),
    ["1008"]=setmetatable({id=1008,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=7,buffTab="weather_icon_fog"},mt),
    ["1009"]=setmetatable({id=1009,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=8,buffTab="weather_icon_fog"},mt),
    ["1010"]=setmetatable({id=1010,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=9,buffTab="weather_icon_fog"},mt),
    ["1011"]=setmetatable({id=1011,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=10,buffTab="weather_icon_fog"},mt),
    ["1012"]=setmetatable({id=1012,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=11,buffTab="weather_icon_fog"},mt),
    ["1013"]=setmetatable({id=1013,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=12,buffTab="weather_icon_fog"},mt),
    ["1014"]=setmetatable({id=1014,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=13,buffTab="weather_icon_fog"},mt),
    ["1015"]=setmetatable({id=1015,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=14,buffTab="weather_icon_fog"},mt),
    ["1016"]=setmetatable({id=1016,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=15,buffTab="weather_icon_fog"},mt),
    ["1017"]=setmetatable({id=1017,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=16,buffTab="weather_icon_fog"},mt),
    ["1018"]=setmetatable({id=1018,buffId={[1]=10520},weather="顺流风势",effect="我方斯露德普通攻击伤害增幅40%",period=17,buffTab="weather_icon_fog"},mt),
    ["1019"]=setmetatable({id=1019,buffId={[1]=412},weather="灼热高温",effect="我方斯露德普通灼烧伤害的触发频率提升100%",period=18,buffTab="weather_icon_volcano"},mt),
    ["1020"]=setmetatable({id=1020,buffId={[1]=412},weather="灼热高温",effect="我方斯露德普通灼烧伤害的触发频率提升100%",period=19,buffTab="weather_icon_volcano"},mt),
    ["1021"]=setmetatable({id=1021,buffId={[1]=412},weather="灼热高温",effect="我方斯露德普通灼烧伤害的触发频率提升100%",period=20,buffTab="weather_icon_volcano"},mt),
    ["1022"]=setmetatable({id=1022,buffId={[1]=412},weather="灼热高温",effect="我方斯露德普通灼烧伤害的触发频率提升100%",period=21,buffTab="weather_icon_volcano"},mt),
    ["1023"]=setmetatable({id=1023,buffId={[1]=412},weather="灼热高温",effect="我方斯露德普通灼烧伤害的触发频率提升100%",period=22,buffTab="weather_icon_volcano"},mt),
    ["1024"]=setmetatable({id=1024,buffId={[1]=412},weather="灼热高温",effect="我方斯露德普通灼烧伤害的触发频率提升100%",period=23,buffTab="weather_icon_volcano"},mt),
    ["1025"]=setmetatable({id=1025,buffId={[1]=10530},weather="雷鸣天威",effect="满生命时极奏伤害提升30%",period=24,buffTab="weather_icon_thunder"},mt),
    ["1026"]=setmetatable({id=1026,buffId={[1]=10530},weather="雷鸣天威",effect="满生命时极奏伤害提升30%",period=25,buffTab="weather_icon_thunder"},mt),
    ["1027"]=setmetatable({id=1027,buffId={[1]=10530},weather="雷鸣天威",effect="满生命时极奏伤害提升30%",period=26,buffTab="weather_icon_thunder"},mt),
    ["1028"]=setmetatable({id=1028,buffId={[1]=10530},weather="雷鸣天威",effect="满生命时极奏伤害提升30%",period=27,buffTab="weather_icon_thunder"},mt),
    ["1029"]=setmetatable({id=1029,buffId={[1]=10530},weather="雷鸣天威",effect="满生命时极奏伤害提升30%",period=28,buffTab="weather_icon_thunder"},mt),
    ["1030"]=setmetatable({id=1030,buffId={[1]=10530},weather="雷鸣天威",effect="满生命时极奏伤害提升30%",period=29,buffTab="weather_icon_thunder"},mt),
    ["1031"]=setmetatable({id=1031,buffId={[1]=10540},weather="暖阳拂身",effect="每秒恢复20体力",period=30,buffTab="weather_icon_sunny"},mt),
    ["1032"]=setmetatable({id=1032,buffId={[1]=10540},weather="暖阳拂身",effect="每秒恢复20体力",period=31,buffTab="weather_icon_sunny"},mt),
    ["1033"]=setmetatable({id=1033,buffId={[1]=10540},weather="暖阳拂身",effect="每秒恢复20体力",period=32,buffTab="weather_icon_sunny"},mt),
    ["1034"]=setmetatable({id=1034,buffId={[1]=10540},weather="暖阳拂身",effect="每秒恢复20体力",period=33,buffTab="weather_icon_sunny"},mt),
    ["1035"]=setmetatable({id=1035,buffId={[1]=10540},weather="暖阳拂身",effect="每秒恢复20体力",period=34,buffTab="weather_icon_sunny"},mt),
    ["1036"]=setmetatable({id=1036,buffId={[1]=10540},weather="暖阳拂身",effect="每秒恢复20体力",period=35,buffTab="weather_icon_sunny"},mt),
}
--生成获取数据的方法
---@return BattlefieldWeather
function GetBattlefieldWeatherData(id)
    return BattlefieldWeather_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldWeather : table 
---@field id number
---@field buffId table
---@field weather string
---@field effect string
---@field period number
---@field buffTab string
