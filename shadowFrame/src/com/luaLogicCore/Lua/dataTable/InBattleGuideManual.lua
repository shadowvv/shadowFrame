local default = {id=0,manualType=0,videoRes=0,imgRes=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class InBattleGuideManual_Xls : table 
InBattleGuideManual_Xls =
{
    ["1"]=setmetatable({id=1,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["2"]=setmetatable({id=2,manualType=1,videoRes=101,imgRes=""},mt),
    ["3"]=setmetatable({id=3,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["4"]=setmetatable({id=4,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["5"]=setmetatable({id=5,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["6"]=setmetatable({id=6,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["100"]=setmetatable({id=100,manualType=0,videoRes=0,imgRes=""},mt),
    ["101"]=setmetatable({id=101,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["102"]=setmetatable({id=102,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["103"]=setmetatable({id=103,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_btn_cam_ctrl"},mt),
    ["1031"]=setmetatable({id=1031,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_btn_cam_ctrl"},mt),
    ["104"]=setmetatable({id=104,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["105"]=setmetatable({id=105,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_hold_aim"},mt),
    ["106"]=setmetatable({id=106,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Phased"},mt),
    ["107"]=setmetatable({id=107,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_reload_mech"},mt),
    ["108"]=setmetatable({id=108,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_hold_aim"},mt),
    ["109"]=setmetatable({id=109,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["110"]=setmetatable({id=110,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_elementattach_thunder"},mt),
    ["111"]=setmetatable({id=111,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_elementattach_fire"},mt),
    ["112"]=setmetatable({id=112,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_elementattach_wind"},mt),
    ["113"]=setmetatable({id=113,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Reaction_icethunder"},mt),
    ["114"]=setmetatable({id=114,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Reaction_icefire"},mt),
    ["115"]=setmetatable({id=115,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Reaction_icewind"},mt),
    ["116"]=setmetatable({id=116,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Reaction_windthunder"},mt),
    ["117"]=setmetatable({id=117,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Reaction_windfire"},mt),
    ["118"]=setmetatable({id=118,manualType=0},mt),
    ["119"]=setmetatable({id=119,manualType=0},mt),
    ["120"]=setmetatable({id=120,manualType=0},mt),
    ["121"]=setmetatable({id=121,manualType=0},mt),
    ["122"]=setmetatable({id=122,manualType=0},mt),
    ["123"]=setmetatable({id=123,manualType=0},mt),
    ["124"]=setmetatable({id=124,manualType=0},mt),
    ["125"]=setmetatable({id=125,manualType=0},mt),
    ["126"]=setmetatable({id=126,manualType=0},mt),
    ["127"]=setmetatable({id=127,manualType=0},mt),
    ["128"]=setmetatable({id=128,manualType=0},mt),
    ["200"]=setmetatable({id=200,manualType=0,videoRes=0,imgRes=""},mt),
    ["201"]=setmetatable({id=201,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["202"]=setmetatable({id=202,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["203"]=setmetatable({id=203,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_special_faniya"},mt),
    ["204"]=setmetatable({id=204,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Energy"},mt),
    ["205"]=setmetatable({id=205,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_empty_magzine_temp"},mt),
    ["206"]=setmetatable({id=206,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_distance"},mt),
    ["207"]=setmetatable({id=207,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_naina_atk"},mt),
    ["208"]=setmetatable({id=208,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_activeskill_naina"},mt),
    ["209"]=setmetatable({id=209,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_special_naina"},mt),
    ["210"]=setmetatable({id=210,manualType=1,videoRes=101,imgRes=""},mt),
    ["211"]=setmetatable({id=211,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_reaction"},mt),
    ["212"]=setmetatable({id=212,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_Reaction_firethunder"},mt),
    ["213"]=setmetatable({id=213,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_elemental_enemies"},mt),
    ["214"]=setmetatable({id=214,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_elemental_resistance"},mt),
    ["215"]=setmetatable({id=215,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["216"]=setmetatable({id=216,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["217"]=setmetatable({id=217,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["218"]=setmetatable({id=218,manualType=0,videoRes=0,imgRes="battle_guide_storyboard_tmp_res"},mt),
    ["219"]=setmetatable({id=219,manualType=0},mt),
    ["220"]=setmetatable({id=220,manualType=0},mt),
    ["221"]=setmetatable({id=221,manualType=0},mt),
    ["222"]=setmetatable({id=222,manualType=0},mt),
    ["223"]=setmetatable({id=223,manualType=0},mt),
    ["224"]=setmetatable({id=224,manualType=0},mt),
    ["225"]=setmetatable({id=225,manualType=0},mt),
    ["226"]=setmetatable({id=226,manualType=0},mt),
    ["227"]=setmetatable({id=227,manualType=0},mt),
    ["228"]=setmetatable({id=228,manualType=0},mt),
    ["229"]=setmetatable({id=229,manualType=0},mt),
    ["230"]=setmetatable({id=230,manualType=0},mt),
    ["231"]=setmetatable({id=231,manualType=0},mt),
    ["232"]=setmetatable({id=232,manualType=0},mt),
    ["233"]=setmetatable({id=233,manualType=0},mt),
    ["234"]=setmetatable({id=234,manualType=0},mt),
}
--生成获取数据的方法
---@return InBattleGuideManual
function GetInBattleGuideManualData(id)
    return InBattleGuideManual_Xls[tostring(id)]
end
--自动生成注释
---@class InBattleGuideManual : table 
---@field id number
---@field manualType number
---@field videoRes number
---@field imgRes string
