local default = {id=0,isOpen=0,themeName="",themeNameEn="",themeLocationName="",themeDesc="",themeCondition=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeTheme_Xls : table 
RoguelikeTheme_Xls =
{
    ["1"]=setmetatable({id=1,isOpen=1,themeName="雷霆之域",themeNameEn="THUNDER",themeLocationName="螺旋港",themeDesc="终年不会结冰的不冻港，也是REVO向外交往的重要交通港之一。因为巨大倒置海螺型的主建筑而得名，不过其能够保持平衡的原因到现在也不得而知。",themeCondition=601},mt),
    ["2"]=setmetatable({id=2,isOpen=1,themeName="阴燃之域",themeNameEn="FIRE",themeLocationName="卡尔特拉火山",themeDesc="沙漠边缘的一座活火山，由于火山活动频繁，附近区域鲜有人烟。但相对的，火山附近的土地十分肥沃且温泉众多，如果能够大力开发的话，也一定能够成为一个小有名气的地方吧？",themeCondition=601},mt),
    ["3"]=setmetatable({id=3,isOpen=1,themeName="永冻之域",themeNameEn="ICE",themeLocationName="特罗姆斯雪原",themeDesc="背靠山脉，大陆西北方的最深腹地。静谧之地，远离人口众多的平原地区与交界地区。这里的人们拥有独特的作物培育技巧，所以在这种常年低温的地区也能够保证人们的粮食供给。",themeCondition=601},mt),
    ["4"]=setmetatable({id=4,isOpen=1,themeName="龙卷之域",themeNameEn="WIND",themeLocationName="双峰地区",themeDesc="两座高耸的山峰将大陆南北分隔，狭小的山谷之间，由于两面被遮挡，形成了一些繁华的城市。作为贯穿南北的交通要道，这里的人们从来不为物资短缺而担心。不过也因此，可能会出现一些其他的问题吧？",themeCondition=601},mt),
    ["5"]=setmetatable({id=5,isOpen=0,themeName="龙卷之域",themeNameEn="WIND",themeLocationName="双峰地区",themeDesc="主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述主题描述",themeCondition=655},mt),
}
--生成获取数据的方法
---@return RoguelikeTheme
function GetRoguelikeThemeData(id)
    return RoguelikeTheme_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeTheme : table 
---@field id number
---@field isOpen number
---@field themeName string
---@field themeNameEn string
---@field themeLocationName string
---@field themeDesc string
---@field themeCondition number
