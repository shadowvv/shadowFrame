local default = {id=0,picter=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class StoryDialogBg_Xls : table 
StoryDialogBg_Xls =
{
    ["1"]=setmetatable({id=1,picter="UI_bg_black"},mt),
    ["3"]=setmetatable({id=3,picter="UI_bg_white"},mt),
    ["103"]=setmetatable({id=103,picter="UI_bg_kongzhiting"},mt),
    ["104"]=setmetatable({id=104,picter="UI_bg_yiji"},mt),
    ["105"]=setmetatable({id=105,picter="UI_bg_huiguiyuanhuan_a"},mt),
    ["106"]=setmetatable({id=106,picter="UI_bg_huiguiyuanhuan_b"},mt),
    ["107"]=setmetatable({id=107,picter="UI_bg_beiwurandeyunceng"},mt),
    ["108"]=setmetatable({id=108,picter="UI_bg_wurandeyibozange"},mt),
    ["109"]=setmetatable({id=109,picter="UI_bg_faniyashike_a"},mt),
    ["110"]=setmetatable({id=110,picter="UI_bg_faniyashike_b"},mt),
    ["111"]=setmetatable({id=111,picter="UI_bg_naina"},mt),
    ["112"]=setmetatable({id=112,picter="UI_bg_jiabanjiaoluo"},mt),
    ["113"]=setmetatable({id=113,picter="UI_bg_yishengti"},mt),
    ["114"]=setmetatable({id=114,picter="UI_bg_yishengtibaoweifaniya"},mt),
    ["115"]=setmetatable({id=115,picter="UI_bg_lianggebeiying"},mt),
    ["116"]=setmetatable({id=116,picter="UI_bg_siludezhudui"},mt),
    ["117"]=setmetatable({id=117,picter="UI_bg_wendelandehuanghun"},mt),
    ["118"]=setmetatable({id=118,picter="UI_bg_huidiaosiludezhuduihuanghun"},mt),
    ["119"]=setmetatable({id=119,picter="UI_bg_shuibahuanghun"},mt),
    ["120"]=setmetatable({id=120,picter="UI_bg_shuibaxiehong"},mt),
    ["121"]=setmetatable({id=121,picter="UI_bg_feiniaochibangxia"},mt),
    ["122"]=setmetatable({id=122,picter="UI_bg_tiankongyewanyu"},mt),
    ["123"]=setmetatable({id=123,picter="UI_bg_xueliudejiedao"},mt),
    ["124"]=setmetatable({id=124,picter="UI_bg_zhuduidezuihouyike"},mt),
    ["125"]=setmetatable({id=125,picter="UI_bg_tianyebiandehedao"},mt),
    ["126"]=setmetatable({id=126,picter="UI_bg_zhujvrendehuanghun"},mt),
    ["127"]=setmetatable({id=127,picter="UI_bg_jiabanjiaoluo"},mt),
    ["128"]=setmetatable({id=128,picter="UI_bg_weilahedaoshi"},mt),
    ["129"]=setmetatable({id=129,picter="UI_bg_zhukongshi"},mt),
    ["130"]=setmetatable({id=130,picter="UI_bg_yuannenghaitiankong"},mt),
    ["131"]=setmetatable({id=131,picter="UI_bg_nibozange"},mt),
    ["132"]=setmetatable({id=132,picter="UI_bg_daoshidaoxia"},mt),
    ["133"]=setmetatable({id=133,picter="UI_bg_yishizhihai"},mt),
    ["134"]=setmetatable({id=134,picter="UI_bg_faniyajingxing"},mt),
    ["135"]=setmetatable({id=135,picter="UI_bg_faniyayishengti"},mt),
    ["136"]=setmetatable({id=136,picter="UI_bg_xiaoduiqiju"},mt),
    ["140"]=setmetatable({id=140,picter="UI_bg_tiankong"},mt),
}
--生成获取数据的方法
---@return StoryDialogBg
function GetStoryDialogBgData(id)
    return StoryDialogBg_Xls[tostring(id)]
end
--自动生成注释
---@class StoryDialogBg : table 
---@field id number
---@field picter string
