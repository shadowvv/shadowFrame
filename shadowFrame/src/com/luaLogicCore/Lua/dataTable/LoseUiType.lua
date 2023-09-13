local default = {id=0,textImg1="",textImg2=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LoseUiType_Xls : table 
LoseUiType_Xls =
{
    ["2"]=setmetatable({id=2,textImg1="battle_failed_word_qiqiushijue_fuwen",textImg2="battle_failed_word_qiqiushijue"},mt),
    ["13"]=setmetatable({id=13,textImg1="battle_failed_word_qiqiushijue_fuwen",textImg2="battle_failed_word_qiqiushijue"},mt),
    ["3"]=setmetatable({id=3,textImg1="battle_end_word_nhrj1",textImg2="battle_end_word_nhrj"},mt),
    ["93"]=setmetatable({id=93,textImg1="battle_end_word_yhar1",textImg2="battle_end_word_yhar"},mt),
    ["97"]=setmetatable({id=97,textImg1="battle_end_word_yhar1",textImg2="battle_end_word_yhar"},mt),
    ["6"]=setmetatable({id=6,textImg1="battle_end_word_hxks1",textImg2="battle_end_word_hxks"},mt),
    ["98"]=setmetatable({id=98,textImg1="battle_end_word_hxks1",textImg2="battle_end_word_hxks"},mt),
    ["99"]=setmetatable({id=99,textImg1="battle_end_word_hxks1",textImg2="battle_end_word_hxks"},mt),
}
--生成获取数据的方法
---@return LoseUiType
function GetLoseUiTypeData(id)
    return LoseUiType_Xls[tostring(id)]
end
--自动生成注释
---@class LoseUiType : table 
---@field id number
---@field textImg1 string
---@field textImg2 string
