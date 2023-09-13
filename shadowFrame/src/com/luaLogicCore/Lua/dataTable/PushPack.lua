local default = {id=0,paymentShopId=0,pushConditionTime=0,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=0,pushCheckParame="",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=0,countdownColor="",bgImg="",bgXY=xlsNilTable,version=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PushPack_Xls : table 
PushPack_Xls =
{
    ["1"]=setmetatable({id=1,paymentShopId=150,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="102112",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#69DAAE",bgImg="img_pushgift_advertise01"},mt),
    ["2"]=setmetatable({id=2,paymentShopId=151,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="103112",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#69B9DA",bgImg="img_pushgift_advertise02"},mt),
    ["3"]=setmetatable({id=3,paymentShopId=152,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="104112",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#D36C7F",bgImg="img_pushgift_advertise03"},mt),
    ["4"]=setmetatable({id=4,paymentShopId=153,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="105112",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#F1D8B0",bgImg="img_pushgift_advertise04"},mt),
    ["5"]=setmetatable({id=5,paymentShopId=154,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="106110",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#EE5557",bgImg="img_pushgift_advertise05"},mt),
    ["6"]=setmetatable({id=6,paymentShopId=155,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="107110",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#00F1FB",bgImg="img_pushgift_advertise06"},mt),
    ["7"]=setmetatable({id=7,paymentShopId=156,pushConditionTime=12,pushTimeParame1="",pushTimeParame2="",pushConditionCheck=5,pushCheckParame="108110",pushConditionPlayer=xlsNilTable,firstPushLimitParame=xlsNilTable,secondPushLimitParame=xlsNilTable,countdown=172800,countdownColor="#F1D8B0",bgImg="img_pushgift_advertise04"},mt),
}
--生成获取数据的方法
---@return PushPack
function GetPushPackData(id)
    return PushPack_Xls[tostring(id)]
end
--自动生成注释
---@class PushPack : table 
---@field id number
---@field paymentShopId number
---@field pushConditionTime number
---@field pushTimeParame1 string
---@field pushTimeParame2 string
---@field pushConditionCheck number
---@field pushCheckParame string
---@field pushConditionPlayer table
---@field firstPushLimitParame table
---@field secondPushLimitParame table
---@field countdown number
---@field countdownColor string
---@field bgImg string
---@field bgXY table
---@field version number
