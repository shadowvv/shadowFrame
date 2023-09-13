local default = {id=0,repeatable=0,name="",nameEn="",icon="",desc="",handbookDesc="",story=0,collectionReward=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeLevelEvent_Xls : table 
RoguelikeLevelEvent_Xls =
{
    ["21001"]=setmetatable({id=21001,repeatable=1,name="神官",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001001,collectionReward=15400001},mt),
    ["21002"]=setmetatable({id=21002,repeatable=1,name="山洞",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001002,collectionReward=15400001},mt),
    ["21003"]=setmetatable({id=21003,repeatable=1,name="转化器",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001003,collectionReward=15400001},mt),
    ["21004"]=setmetatable({id=21004,repeatable=1,name="金色神像",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001004,collectionReward=15400001},mt),
    ["21005"]=setmetatable({id=21005,repeatable=1,name="图书馆",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001005,collectionReward=15400001},mt),
    ["21006"]=setmetatable({id=21006,repeatable=1,name="小女孩",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001006,collectionReward=15400001},mt),
    ["21007"]=setmetatable({id=21007,repeatable=1,name="华丽的箱子",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001007,collectionReward=15400001},mt),
    ["21008"]=setmetatable({id=21008,repeatable=1,name="老婆婆",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001008,collectionReward=15400001},mt),
    ["21009"]=setmetatable({id=21009,repeatable=1,name="许愿池",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001009,collectionReward=15400001},mt),
    ["21010"]=setmetatable({id=21010,repeatable=1,name="可疑的人",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001010,collectionReward=15400001},mt),
    ["21011"]=setmetatable({id=21011,repeatable=0,name="两个坩埚",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001011,collectionReward=15400001},mt),
    ["21012"]=setmetatable({id=21012,repeatable=0,name="神秘走廊",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001012,collectionReward=15400001},mt),
    ["21013"]=setmetatable({id=21013,repeatable=0,name="地宫遗迹",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001013,collectionReward=15400001},mt),
    ["21014"]=setmetatable({id=21014,repeatable=0,name="白之雾",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001014,collectionReward=15400001},mt),
    ["21015"]=setmetatable({id=21015,repeatable=0,name="黑之雾",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001015,collectionReward=15400001},mt),
    ["21016"]=setmetatable({id=21016,repeatable=0,name="灼热之光",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001016,collectionReward=15400001},mt),
    ["21017"]=setmetatable({id=21017,repeatable=0,name="祭坛",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001017,collectionReward=15400001},mt),
    ["21018"]=setmetatable({id=21018,repeatable=1,name="发愁的村长",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001018,collectionReward=15400001},mt),
    ["21019"]=setmetatable({id=21019,repeatable=1,name="强盗",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001019,collectionReward=15400001},mt),
    ["21020"]=setmetatable({id=21020,repeatable=0,name="勇士图腾",nameEn="EVENT",icon="img_seasonlevel_point_02",desc="前方似乎有什么东西在，但是没有感受到威胁。",handbookDesc="前方似乎有什么东西在，但是没有感受到威胁。",story=5001020,collectionReward=15400001},mt),
    ["21090"]=setmetatable({id=21090,repeatable=1,name="战士的休息",nameEn="EVENT",icon="img_seasonlevel_point_01",desc="前方区域没有任何其他反应，是作为休息区的不二选择。",handbookDesc="事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述事件图鉴描述",story=5001021,collectionReward=15400001},mt),
}
--生成获取数据的方法
---@return RoguelikeLevelEvent
function GetRoguelikeLevelEventData(id)
    return RoguelikeLevelEvent_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeLevelEvent : table 
---@field id number
---@field repeatable number
---@field name string
---@field nameEn string
---@field icon string
---@field desc string
---@field handbookDesc string
---@field story number
---@field collectionReward number
