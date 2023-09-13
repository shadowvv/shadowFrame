local default = {elementId=0,elementName="",effectId=xlsNilTable,elementIcon="",jizouRoleBGIcon="",jizouButtonFullBgIcon="",jizouButtonFillBgIcon="",elementColor=xlsNilTable,elementColorOutline=xlsNilTable,elementDes="",elementSkillButton=0,elementButton=0,elementButtonRoleInfo=0,elementBuffIcon="",elementEneryColor=xlsNilTable,elementChangeColor="",isAttached=0,elementLotteryIcon="",elementPositionIcon="",elementLightIcon="",elementOpen=0,elementOrder=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ElementalInfo_Xls : table 
ElementalInfo_Xls =
{
    ["1"]=setmetatable({elementId=1,elementName="物理",effectId={[1]=1},elementIcon="limit_UI_icon_element_fire",jizouRoleBGIcon="",jizouButtonFullBgIcon="",jizouButtonFillBgIcon="",elementColor={[1]=255,[2]=255,[3]=255},elementColorOutline={[1]=255,[2]=255,[3]=255},elementDes="物理描述描述描述描述描述描述描述描述描述描述描述描述描述描述",elementSkillButton=239,elementButton=202,elementButtonRoleInfo=202,elementBuffIcon="icon_fire",elementEneryColor={[1]=255,[2]=255,[3]=255,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_wuli",isAttached=1,elementLotteryIcon="icon_Lottery_fire",elementPositionIcon="icon_Position_fire",elementLightIcon="light_UI_icon_element_fire_2",elementOpen=2,elementOrder=6},mt),
    ["2"]=setmetatable({elementId=2,elementName="火",effectId={[1]=2},elementIcon="limit_UI_icon_element_fire",jizouRoleBGIcon="img_battle_playerlist_fire_ring",jizouButtonFullBgIcon="img_battle_skill_a_full4",jizouButtonFillBgIcon="img_battle_skill_a_recharge_full4",elementColor={[1]=253,[2]=61,[3]=60},elementColorOutline={[1]=232,[2]=68,[3]=76},elementDes="斯露德对敌方异生体造成火元素过载时，敌方异生体将进入【灼烧】状态，持续时间10秒。\n灼烧状态下每0.5秒造成队内所有火元素斯露德总攻击力3%的伤害。灼烧状态下可持续累计灼烧印记层数，最高累计10层，每层灼烧印记会提高20%的灼烧伤害。",elementSkillButton=239,elementButton=258,elementButtonRoleInfo=202,elementBuffIcon="icon_fire",elementEneryColor={[1]=235,[2]=83,[3]=83,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_fire",isAttached=1,elementLotteryIcon="icon_Lottery_fire",elementPositionIcon="icon_Position_fire",elementLightIcon="light_UI_icon_element_fire_2",elementOpen=1,elementOrder=5},mt),
    ["3"]=setmetatable({elementId=3,elementName="雷",effectId={[1]=3},elementIcon="limit_UI_icon_element_thunder",jizouRoleBGIcon="img_battle_playerlist_electric_ring",jizouButtonFullBgIcon="img_battle_skill_a_full2",jizouButtonFillBgIcon="img_battle_skill_a_recharge_full2",elementColor={[1]=13,[2]=158,[3]=246},elementColorOutline={[1]=109,[2]=198,[3]=199},elementDes="斯露德对敌方异生体造成雷元素过载时，敌方异生体将进入【感电】状态，持续时间10秒。\n感电状态下，受到任意雷元素伤害时，都会从自身发射等量伤害的【闪电链】。闪电链最多电击4个目标，每次弹射伤害递减15%。\n",elementSkillButton=240,elementButton=260,elementButtonRoleInfo=204,elementBuffIcon="icon_thunder",elementEneryColor={[1]=101,[2]=175,[3]=246,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_lei",isAttached=1,elementLotteryIcon="icon_Lottery_thunder",elementPositionIcon="icon_Position_thunder",elementLightIcon="light_UI_icon_element_thunder_2",elementOpen=1,elementOrder=4},mt),
    ["4"]=setmetatable({elementId=4,elementName="冰",effectId={[1]=4},elementIcon="limit_UI_icon_element_ice",jizouRoleBGIcon="img_battle_playerlist_ice_ring",jizouButtonFullBgIcon="img_battle_skill_a_full1",jizouButtonFillBgIcon="img_battle_skill_a_recharge_full1",elementColor={[1]=150,[2]=198,[3]=246},elementColorOutline={[1]=100,[2]=143,[3]=202},elementDes="斯露德对敌方异生体造成冰元素过载时，敌方异生体将进入【冻结】状态，持续时间8秒。\n当敌方处于冻结状态时将无法行动或攻击。\n",elementSkillButton=241,elementButton=259,elementButtonRoleInfo=203,elementBuffIcon="icon_ice",elementEneryColor={[1]=170,[2]=214,[3]=255,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_ice",isAttached=1,elementLotteryIcon="icon_Lottery_ice",elementPositionIcon="icon_Position_ice",elementLightIcon="light_UI_icon_element_ice_2",elementOpen=1,elementOrder=3},mt),
    ["5"]=setmetatable({elementId=5,elementName="风",effectId={[1]=5},elementIcon="limit_UI_icon_element_wind",jizouRoleBGIcon="img_battle_playerlist_wind_ring",jizouButtonFullBgIcon="img_battle_skill_a_full3",jizouButtonFillBgIcon="img_battle_skill_a_recharge_full3",elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=224,[2]=200,[3]=0},elementDes="斯露德对敌方异生体造成风元素过载时，敌方异生体将进入【风缠】状态，持续时间10秒。\n进入风缠状态时，会向周围扩散，使附近的敌方也进入风缠状态。风缠状态的目标死亡时，会产生一次8.28%范围伤害（基于风元素最高攻击力的一定百分比）同时产生一个体力球为角色回复15%最大体力。\n",elementSkillButton=242,elementButton=261,elementButtonRoleInfo=205,elementBuffIcon="icon_wind",elementEneryColor={[1]=99,[2]=238,[3]=216,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_wind",isAttached=1,elementLotteryIcon="icon_Lottery_wind",elementPositionIcon="icon_Position_wind",elementLightIcon="light_UI_icon_element_wind_2",elementOpen=1,elementOrder=2},mt),
    ["6"]=setmetatable({elementId=6,elementName="符能",effectId=xlsNilTable,elementIcon="limit_UI_icon_element_yuanneng",jizouRoleBGIcon="",jizouButtonFullBgIcon="",jizouButtonFillBgIcon="",elementColor={[1]=79,[2]=238,[3]=135},elementColorOutline={[1]=109,[2]=198,[3]=199},elementDes="符能描述描述描述描述描述描述描述描述描述描述描述描述描述描述",elementSkillButton=243,elementButton=206,elementButtonRoleInfo=206,elementBuffIcon="icon_reactiontype",elementEneryColor={[1]=129,[2]=228,[3]=159,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_yuanneng",isAttached=0,elementLotteryIcon="icon_Lottery_reactiontype",elementPositionIcon="icon_Position_reactiontype",elementLightIcon="light_UI_icon_element_yuanneng_2",elementOpen=2,elementOrder=1},mt),
    ["7"]=setmetatable({elementId=7,elementName="重力",effectId=xlsNilTable,elementIcon="limit_UI_icon_element_ice",jizouRoleBGIcon="",jizouButtonFullBgIcon="",jizouButtonFillBgIcon="",elementColor={[1]=198,[2]=100,[3]=247},elementColorOutline={[1]=109,[2]=198,[3]=199},elementDes="重力描述描述描述描述描述描述描述描述描述描述描述描述描述描述",elementSkillButton=243,elementButton=206,elementButtonRoleInfo=206,elementBuffIcon="icon_reactiontype",elementEneryColor={[1]=129,[2]=228,[3]=159,[4]=140},elementChangeColor="Eff_HeroDevelopUi_qiehuan_zhongli",isAttached=1,elementLotteryIcon="icon_Lottery_reactiontype",elementPositionIcon="icon_Position_reactiontype",elementLightIcon="light_UI_icon_element_yuanneng_2",elementOpen=2,elementOrder=7},mt),
    ["99"]=setmetatable({elementId=99,elementName="任意四种元素（编队元素共鸣用）",effectId=xlsNilTable,elementIcon="limit_UI_icon_element_all"},mt),
}
--生成获取数据的方法
---@return ElementalInfo
function GetElementalInfoData(id)
    return ElementalInfo_Xls[tostring(id)]
end
--自动生成注释
---@class ElementalInfo : table 
---@field elementId number
---@field elementName string
---@field effectId table
---@field elementIcon string
---@field jizouRoleBGIcon string
---@field jizouButtonFullBgIcon string
---@field jizouButtonFillBgIcon string
---@field elementColor table
---@field elementColorOutline table
---@field elementDes string
---@field elementSkillButton number
---@field elementButton number
---@field elementButtonRoleInfo number
---@field elementBuffIcon string
---@field elementEneryColor table
---@field elementChangeColor string
---@field isAttached number
---@field elementLotteryIcon string
---@field elementPositionIcon string
---@field elementLightIcon string
---@field elementOpen number
---@field elementOrder number
