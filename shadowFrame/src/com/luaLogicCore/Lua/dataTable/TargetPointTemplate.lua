local default = {id=0,bgIcon="",bgIsRotation=0,mapIcon="",superiorityIcon="",middleIcon="",inferiorIcon="",residentEffect="",attackEffect="",haveDistance=0,createOnceEffect="",hidePoint=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TargetPointTemplate_Xls : table 
TargetPointTemplate_Xls =
{
    ["1"]=setmetatable({id=1,bgIcon="",bgIsRotation=0,mapIcon="battle_monstertype_icon_elite_small",superiorityIcon="battle_monstertype_icon_elite_small",middleIcon="battle_monstertype_icon_midmonster_small",inferiorIcon="battle_monstertype_icon_mob_small",residentEffect="",attackEffect="Eff_Ui_field_early",haveDistance=0},mt),
    ["2"]=setmetatable({id=2,bgIcon="",bgIsRotation=0,mapIcon="battle_monstertype_icon_elite_small",superiorityIcon="battle_monstertype_icon_elite_small",middleIcon="battle_monstertype_icon_midmonster_small",inferiorIcon="battle_monstertype_icon_mob_small",residentEffect="",attackEffect="Eff_Ui_field_early",haveDistance=0},mt),
    ["3"]=setmetatable({id=3,bgIcon="battle_monstertype_icon_mob_small",bgIsRotation=0,mapIcon="battle_monstertype_icon_boss_small",superiorityIcon="battle_monstertype_icon_boss_small",middleIcon="battle_monstertype_icon_boss_small",inferiorIcon="battle_monstertype_icon_boss_small",residentEffect="",attackEffect="",haveDistance=0,createOnceEffect="",hidePoint=1},mt),
    ["40"]=setmetatable({id=40,bgIcon="",bgIsRotation=1,mapIcon="battle_mb_icon",superiorityIcon="battle_mb_icon",middleIcon="battle_mb_icon",inferiorIcon="battle_mb_icon",residentEffect="",attackEffect="",haveDistance=0},mt),
    ["41"]=setmetatable({id=41,bgIcon="",bgIsRotation=0,mapIcon="battle_monstertype_icon_elite_small",superiorityIcon="battle_monstertype_icon_elite_small",middleIcon="battle_monstertype_icon_midmonster_small",inferiorIcon="battle_monstertype_icon_mob_small",residentEffect="",attackEffect="",haveDistance=0,createOnceEffect="",hidePoint=1},mt),
    ["99"]=setmetatable({id=99,bgIcon="",bgIsRotation=0,mapIcon="battle_hint_target_type1",superiorityIcon="battle_hint_target_type1",middleIcon="battle_hint_target_type1",inferiorIcon="battle_hint_target_type1",residentEffect="Eff_Ui_zhanchang_point",attackEffect="",haveDistance=1},mt),
    ["1000"]=setmetatable({id=1000,bgIcon="",bgIsRotation=0,mapIcon="battle_hint_target_type2",superiorityIcon="battle_hint_target_type2",middleIcon="battle_hint_target_type2",inferiorIcon="battle_hint_target_type2",residentEffect="Eff_Ui_zhanchang_point",attackEffect="",haveDistance=1},mt),
    ["1001"]=setmetatable({id=1001,bgIcon="",bgIsRotation=0,mapIcon="battle_hint_target_type2",superiorityIcon="battle_hint_target_type2",middleIcon="battle_hint_target_type2",inferiorIcon="battle_hint_target_type2",residentEffect="Eff_Ui_zhanchang_point",attackEffect="",haveDistance=1},mt),
    ["1002"]=setmetatable({id=1002,bgIcon="",bgIsRotation=0,mapIcon="battle_collect_icon_small",superiorityIcon="battle_collect_icon_small",middleIcon="battle_collect_icon_small",inferiorIcon="battle_collect_icon_small",residentEffect="",attackEffect="",haveDistance=1},mt),
    ["1003"]=setmetatable({id=1003,bgIcon="",bgIsRotation=0,mapIcon="battle_aa_icon",superiorityIcon="",middleIcon="",inferiorIcon="",residentEffect="",attackEffect="",haveDistance=1},mt),
    ["1080"]=setmetatable({id=1080,bgIcon="",bgIsRotation=0,mapIcon="battle_monstertype_icon_elite_small",superiorityIcon="battle_monstertype_icon_elite_small",middleIcon="battle_monstertype_icon_midmonster_small",inferiorIcon="battle_monstertype_icon_mob_small",residentEffect="",attackEffect="Eff_Ui_field_early",haveDistance=0},mt),
    ["2210"]=setmetatable({id=2210,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon3",superiorityIcon="battle_blood_mosicon3",middleIcon="battle_blood_mosicon3",inferiorIcon="battle_blood_mosicon3",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2220"]=setmetatable({id=2220,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon1",superiorityIcon="battle_blood_mosicon1",middleIcon="battle_blood_mosicon1",inferiorIcon="battle_blood_mosicon1",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2230"]=setmetatable({id=2230,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon4",superiorityIcon="battle_blood_mosicon4",middleIcon="battle_blood_mosicon4",inferiorIcon="battle_blood_mosicon4",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2240"]=setmetatable({id=2240,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon2",superiorityIcon="battle_blood_mosicon2",middleIcon="battle_blood_mosicon2",inferiorIcon="battle_blood_mosicon2",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2250"]=setmetatable({id=2250,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon5",superiorityIcon="battle_blood_mosicon5",middleIcon="battle_blood_mosicon5",inferiorIcon="battle_blood_mosicon5",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2310"]=setmetatable({id=2310,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon8",superiorityIcon="battle_blood_mosicon8",middleIcon="battle_blood_mosicon8",inferiorIcon="battle_blood_mosicon8",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2320"]=setmetatable({id=2320,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon6",superiorityIcon="battle_blood_mosicon6",middleIcon="battle_blood_mosicon6",inferiorIcon="battle_blood_mosicon6",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2330"]=setmetatable({id=2330,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon9",superiorityIcon="battle_blood_mosicon9",middleIcon="battle_blood_mosicon9",inferiorIcon="battle_blood_mosicon9",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2340"]=setmetatable({id=2340,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon7",superiorityIcon="battle_blood_mosicon7",middleIcon="battle_blood_mosicon7",inferiorIcon="battle_blood_mosicon7",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["2350"]=setmetatable({id=2350,bgIcon="battle_monstertype_icon_mob_big",bgIsRotation=0,mapIcon="battle_blood_mosicon10",superiorityIcon="battle_blood_mosicon10",middleIcon="battle_blood_mosicon10",inferiorIcon="battle_blood_mosicon10",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3010"]=setmetatable({id=3010,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3020"]=setmetatable({id=3020,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3030"]=setmetatable({id=3030,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3040"]=setmetatable({id=3040,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3051"]=setmetatable({id=3051,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3060"]=setmetatable({id=3060,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3061"]=setmetatable({id=3061,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3062"]=setmetatable({id=3062,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
    ["3063"]=setmetatable({id=3063,bgIcon="",bgIsRotation=0,mapIcon="battle_boss_icon",superiorityIcon="battle_boss_icon",middleIcon="battle_boss_icon",inferiorIcon="battle_boss_icon",residentEffect="",attackEffect="Eff_Ui_field_early_boss"},mt),
}
--生成获取数据的方法
---@return TargetPointTemplate
function GetTargetPointTemplateData(id)
    return TargetPointTemplate_Xls[tostring(id)]
end
--自动生成注释
---@class TargetPointTemplate : table 
---@field id number
---@field bgIcon string
---@field bgIsRotation number
---@field mapIcon string
---@field superiorityIcon string
---@field middleIcon string
---@field inferiorIcon string
---@field residentEffect string
---@field attackEffect string
---@field haveDistance number
---@field createOnceEffect string
---@field hidePoint number
