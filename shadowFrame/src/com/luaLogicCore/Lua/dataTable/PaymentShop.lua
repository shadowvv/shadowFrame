local default = {id=0,weight=0,shopName="",shopEnName="",shopIcon="",shopId=0,shopWeight=0,shopType=0,shopBg="",shopOpen=0,classifyName="",classifyEnName="",classifyOpen=0,classifyTimeStart="",classifyTimeEnd="",classifyTop=0,iosDefaultValue=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PaymentShop_Xls : table 
PaymentShop_Xls =
{
    ["100"]=setmetatable({id=100,weight=10,shopName="充值",shopEnName="Charge",shopIcon="ico_store_05",shopId=10,shopWeight=10,shopType=1,shopBg="",shopOpen=0,classifyName="",classifyEnName="",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3602},mt),
    ["110"]=setmetatable({id=110,weight=10,shopName="月卡",shopEnName="WeeklyCard",shopIcon="ico_store_03",shopId=11,shopWeight=20,shopType=5,shopBg="bg_store_yuekadi",shopOpen=0,classifyName="",classifyEnName="",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["120"]=setmetatable({id=120,weight=30,shopName="补给",shopEnName="GiftBag",shopIcon="ico_store_04",shopId=12,shopWeight=40,shopType=7,shopBg="",shopOpen=0,classifyName="补给",classifyEnName="GiftBag",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["121"]=setmetatable({id=121,weight=20,shopName="补给",shopEnName="GiftBag",shopIcon="ico_store_04",shopId=12,shopWeight=40,shopType=6,shopBg="",shopOpen=0,classifyName="战装",classifyEnName="Skin",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3603},mt),
    ["122"]=setmetatable({id=122,weight=19,shopName="补给",shopEnName="GiftBag",shopIcon="ico_store_04",shopId=12,shopWeight=40,shopType=7,shopBg="",shopOpen=0,classifyName="期间限定",classifyEnName="Period limited",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3601},mt),
    ["123"]=setmetatable({id=123,weight=21,shopName="补给",shopEnName="GiftBag",shopIcon="ico_store_04",shopId=12,shopWeight=40,shopType=0,shopBg="",shopOpen=0,classifyName="战装补给",classifyEnName="SkinGift",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3601},mt),
    ["140"]=setmetatable({id=140,weight=10,shopName="特别",shopEnName="Special",shopIcon="ico_store_02",shopId=14,shopWeight=30,shopType=4,shopBg="",shopOpen=0,classifyName="",classifyEnName="",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["130"]=setmetatable({id=130,weight=10,shopName="推荐",shopEnName="Recommend",shopIcon="ico_store_01",shopId=13,shopWeight=70,shopType=3,shopBg="PayShop_Skin_Weibo_bg",shopOpen=0,classifyName="纯白夜曲",classifyEnName="RecommendI",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["131"]=setmetatable({id=131,weight=20,shopName="推荐",shopEnName="Recommend",shopIcon="ico_store_01",shopId=13,shopWeight=70,shopType=3,shopBg="PayShop_GongMing_bg",shopOpen=0,classifyName="共鸣特别支援",classifyEnName="RecommendII",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["132"]=setmetatable({id=132,weight=10,shopName="推荐",shopEnName="Recommend",shopIcon="ico_store_01",shopId=13,shopWeight=70,shopType=3,shopBg="PayShop_Gift1_bg",shopOpen=0,classifyName="金色特惠",classifyEnName="RecommendⅢ",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3601},mt),
    ["150"]=setmetatable({id=150,weight=10,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="瓦希缇的祝福",classifyEnName="LimitI",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["151"]=setmetatable({id=151,weight=20,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="空的祝福",classifyEnName="LimitII",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["152"]=setmetatable({id=152,weight=30,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="白的祝福",classifyEnName="LimitIII",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["153"]=setmetatable({id=153,weight=40,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="格薇德林的祝福",classifyEnName="LimitIV",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["154"]=setmetatable({id=154,weight=50,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="归陌的祝福",classifyEnName="LimitV",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["155"]=setmetatable({id=155,weight=60,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="椿的祝福",classifyEnName="LimitVI",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
    ["156"]=setmetatable({id=156,weight=70,shopName="限时",shopEnName="Limit",shopIcon="ico_store_06",shopId=15,shopWeight=60,shopType=8,shopBg="bg_store_pushgiftdi",shopOpen=0,classifyName="格薇德林的祝福",classifyEnName="LimitIV",classifyOpen=101,classifyTimeStart="",classifyTimeEnd="",classifyTop=3600},mt),
}
--生成获取数据的方法
---@return PaymentShop
function GetPaymentShopData(id)
    return PaymentShop_Xls[tostring(id)]
end
--自动生成注释
---@class PaymentShop : table 
---@field id number
---@field weight number
---@field shopName string
---@field shopEnName string
---@field shopIcon string
---@field shopId number
---@field shopWeight number
---@field shopType number
---@field shopBg string
---@field shopOpen number
---@field classifyName string
---@field classifyEnName string
---@field classifyOpen number
---@field classifyTimeStart string
---@field classifyTimeEnd string
---@field classifyTop number
---@field iosDefaultValue number
