local default = {id=0,resPath="",loop=0,once=0,playTime=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonUIEffect_Xls : table 
CommonUIEffect_Xls =
{
    ["1"]=setmetatable({id=1,resPath="ui_chouka_gc",loop=0,once=0,playTime=1.2},mt),
    ["2"]=setmetatable({id=2,resPath="EFF_role_changePerStick",loop=0,once=0,playTime=1},mt),
    ["3"]=setmetatable({id=3,resPath="EFF_drawcards_guide",loop=1,once=0,playTime=9999},mt),
    ["4"]=setmetatable({id=4,resPath="EFF_role_level",loop=0,once=0,playTime=9999},mt),
    ["5"]=setmetatable({id=5,resPath="EFF_drawcards_lvtiao",loop=1,once=0,playTime=9999},mt),
    ["6"]=setmetatable({id=6,resPath="Eff_MainUi_jindutiao",loop=1,once=0,playTime=9999},mt),
    ["7"]=setmetatable({id=7,resPath="Eff_HeroBigListItem_Golden",loop=1,once=0,playTime=9999},mt),
    ["8"]=setmetatable({id=8,resPath="Eff_HeroBigListItem_Purple",loop=1,once=0,playTime=9999},mt),
    ["9"]=setmetatable({id=9,resPath="Eff_ShowGetltemsUi_jiguang",loop=0,once=0,playTime=5},mt),
    ["10"]=setmetatable({id=10,resPath="Eff_ShowGetltemsUi_Golden",loop=0,once=0,playTime=5},mt),
    ["11"]=setmetatable({id=11,resPath="Eff_ShowGetltemsUi_Purple",loop=0,once=0,playTime=5},mt),
    ["12"]=setmetatable({id=12,resPath="Eff_WeaponDevelopUi_duigou",loop=0,once=0,playTime=99},mt),
    ["13"]=setmetatable({id=13,resPath="Eff_WeaponDevelopUi_tanhao",loop=0,once=0,playTime=99},mt),
    ["14"]=setmetatable({id=14,resPath="Eff_HeroLevelUpUi_0",loop=0,once=0,playTime=5},mt),
    ["15"]=setmetatable({id=15,resPath="Eff_HeroLevelUpUi_1",loop=0,once=0,playTime=5},mt),
    ["16"]=setmetatable({id=16,resPath="Eff_HeroLevelUpUi_2",loop=0,once=0,playTime=5},mt),
    ["17"]=setmetatable({id=17,resPath="Eff_HeroLevelUpUi_3",loop=0,once=0,playTime=5},mt),
    ["18"]=setmetatable({id=18,resPath="Eff_HeroLevelUpUi_4",loop=0,once=0,playTime=5},mt),
    ["19"]=setmetatable({id=19,resPath="Eff_HeroLevelUpUi_5",loop=0,once=0,playTime=5},mt),
    ["20"]=setmetatable({id=20,resPath="Eff_HeroLevelUpUi_6",loop=0,once=0,playTime=5},mt),
    ["21"]=setmetatable({id=21,resPath="Eff_HeroLevelUpUi_7",loop=0,once=0,playTime=5},mt),
    ["22"]=setmetatable({id=22,resPath="Eff_HeroLevelUpUi_8",loop=0,once=0,playTime=5},mt),
    ["23"]=setmetatable({id=23,resPath="Eff_HeroLevelUpUi_9",loop=0,once=0,playTime=5},mt),
    ["24"]=setmetatable({id=24,resPath="Eff_HeroLevelUpUi_shengji",loop=0,once=0,playTime=5},mt),
    ["25"]=setmetatable({id=25,resPath="Eff_HeroDevelopUi_qiehuan_wuli",loop=0,once=1,playTime=5},mt),
    ["26"]=setmetatable({id=26,resPath="Eff_HeroDevelopUi_qiehuan_fire",loop=0,once=1,playTime=5},mt),
    ["27"]=setmetatable({id=27,resPath="Eff_HeroDevelopUi_qiehuan_lei",loop=0,once=1,playTime=5},mt),
    ["28"]=setmetatable({id=28,resPath="Eff_HeroDevelopUi_qiehuan_ice",loop=0,once=1,playTime=5},mt),
    ["29"]=setmetatable({id=29,resPath="Eff_HeroDevelopUi_qiehuan_wind",loop=0,once=1,playTime=5},mt),
    ["30"]=setmetatable({id=30,resPath="Eff_HeroDevelopUi_qiehuan_yuanneng",loop=0,once=1,playTime=5},mt),
    ["31"]=setmetatable({id=31,resPath="Eff_HeroDevelopUi_qiehuan_zhongli",loop=0,once=1,playTime=5},mt),
    ["32"]=setmetatable({id=32,resPath="Eff_UISelectFormationPanel_start",loop=1,once=0,playTime=9999},mt),
    ["33"]=setmetatable({id=33,resPath="Eff_LoginPanel_light",loop=1,once=0,playTime=9999},mt),
    ["34"]=setmetatable({id=34,resPath="Eff_LoadingPanel_light",loop=1,once=0,playTime=9999},mt),
    ["35"]=setmetatable({id=35,resPath="Eff_HeroBigListItem_Goldensmoke",loop=1,once=0,playTime=9999},mt),
    ["36"]=setmetatable({id=36,resPath="Eff_faniya_fazhen"},mt),
    ["37"]=setmetatable({id=37,resPath="Eff_UnlockPopUi_guangshu",loop=1,once=0,playTime=9999},mt),
    ["38"]=setmetatable({id=38,resPath="Eff_UnlockPopUi_light",loop=1,once=0,playTime=9999},mt),
    ["39"]=setmetatable({id=39,resPath="Eff_lvyeqihuan_White",loop=0,once=1},mt),
    ["40"]=setmetatable({id=40,resPath="Eff_lvyeqihuan_Green",loop=0,once=1},mt),
    ["41"]=setmetatable({id=41,resPath="Eff_lvyeqihuan_Blue",loop=0,once=1},mt),
    ["42"]=setmetatable({id=42,resPath="Eff_lvyeqihuan_Purple",loop=0,once=1},mt),
    ["43"]=setmetatable({id=43,resPath="Eff_lvyeqihuan_Golden",loop=0,once=1},mt),
    ["44"]=setmetatable({id=44,resPath="Eff_ShowGetltemsUi_White",loop=0,once=0,playTime=5},mt),
    ["45"]=setmetatable({id=45,resPath="Eff_ShowGetltemsUi_Green",loop=0,once=0,playTime=5},mt),
    ["46"]=setmetatable({id=46,resPath="Eff_ShowGetltemsUi_Blue",loop=0,once=0,playTime=5},mt),
    ["47"]=setmetatable({id=47,resPath="Eff_Win_light",loop=0,once=1},mt),
    ["48"]=setmetatable({id=48,resPath="Eff_Win_tiaojian"},mt),
    ["49"]=setmetatable({id=49,resPath="Eff_Win_star"},mt),
    ["50"]=setmetatable({id=50,resPath="Eff_ChangeSecretaryUi_Heart",loop=0,once=0},mt),
    ["51"]=setmetatable({id=51,resPath="Eff_ChangeSecretaryUi_Favorability",loop=0,once=0},mt),
    ["52"]=setmetatable({id=52,resPath="Eff_faniya_lock1"},mt),
    ["53"]=setmetatable({id=53,resPath="Eff_faniya_lock2"},mt),
    ["54"]=setmetatable({id=54,resPath="Eff_faniya_lock3"},mt),
    ["55"]=setmetatable({id=55,resPath="Eff_faniya_lock4"},mt),
    ["56"]=setmetatable({id=56,resPath="Eff_faniya_lock5"},mt),
    ["57"]=setmetatable({id=57,resPath="Eff_faniya_lock6"},mt),
    ["58"]=setmetatable({id=58,resPath="Eff_naina_lock1"},mt),
    ["59"]=setmetatable({id=59,resPath="Eff_naina_lock2"},mt),
    ["60"]=setmetatable({id=60,resPath="Eff_naina_lock3"},mt),
    ["61"]=setmetatable({id=61,resPath="Eff_naina_lock4"},mt),
    ["62"]=setmetatable({id=62,resPath="Eff_naina_lock5"},mt),
    ["63"]=setmetatable({id=63,resPath="Eff_naina_lock6"},mt),
    ["64"]=setmetatable({id=64,resPath="Eff_xialuo_lock1"},mt),
    ["65"]=setmetatable({id=65,resPath="Eff_xialuo_lock2"},mt),
    ["66"]=setmetatable({id=66,resPath="Eff_xialuo_lock3"},mt),
    ["67"]=setmetatable({id=67,resPath="Eff_xialuo_lock4"},mt),
    ["68"]=setmetatable({id=68,resPath="Eff_xialuo_lock5"},mt),
    ["69"]=setmetatable({id=69,resPath="Eff_xialuo_lock6"},mt),
    ["70"]=setmetatable({id=70,resPath="Eff_juesehuode_Purple_front"},mt),
    ["71"]=setmetatable({id=71,resPath="Eff_juesehuode_Purple_after"},mt),
    ["72"]=setmetatable({id=72,resPath="Eff_juesehuode_Start"},mt),
    ["73"]=setmetatable({id=73,resPath="EFF_chouka_green_dn"},mt),
    ["74"]=setmetatable({id=74,resPath="EFF_chouka_blue_dn"},mt),
    ["75"]=setmetatable({id=75,resPath="EFF_chouka_purple_dn"},mt),
    ["76"]=setmetatable({id=76,resPath="EFF_chouka_orange_dn"},mt),
    ["77"]=setmetatable({id=77,resPath="EFF_chouka_green_up"},mt),
    ["78"]=setmetatable({id=78,resPath="EFF_chouka_blue_up"},mt),
    ["79"]=setmetatable({id=79,resPath="EFF_chouka_purple_up"},mt),
    ["80"]=setmetatable({id=80,resPath="EFF_chouka_orange_up"},mt),
    ["81"]=setmetatable({id=81,resPath="EFF_chouka_green_glow"},mt),
    ["82"]=setmetatable({id=82,resPath="EFF_chouka_blue_glow"},mt),
    ["83"]=setmetatable({id=83,resPath="EFF_chouka_purple_glow"},mt),
    ["84"]=setmetatable({id=84,resPath="EFF_chouka_orange_glow"},mt),
    ["85"]=setmetatable({id=85,resPath="Eff_juesehuode_Green_front"},mt),
    ["86"]=setmetatable({id=86,resPath="Eff_juesehuode_Green_after"},mt),
    ["87"]=setmetatable({id=87,resPath="Eff_juesehuode_Blue_front"},mt),
    ["88"]=setmetatable({id=88,resPath="Eff_juesehuode_Blue_after"},mt),
    ["89"]=setmetatable({id=89,resPath="Eff_juesehuode_Golden_front"},mt),
    ["90"]=setmetatable({id=90,resPath="Eff_juesehuode_Golden_after"},mt),
    ["91"]=setmetatable({id=91,resPath="Eff_Ui_DrawCard_light"},mt),
    ["92"]=setmetatable({id=92,resPath="Eff_details_Particle"},mt),
    ["93"]=setmetatable({id=93,resPath="Eff_juxian_water_01",loop=0,once=1},mt),
    ["94"]=setmetatable({id=94,resPath="Eff_juxian_water_right",loop=0,once=1},mt),
}
--生成获取数据的方法
---@return CommonUIEffect
function GetCommonUIEffectData(id)
    return CommonUIEffect_Xls[tostring(id)]
end
--自动生成注释
---@class CommonUIEffect : table 
---@field id number
---@field resPath string
---@field loop number
---@field once number
---@field playTime number
