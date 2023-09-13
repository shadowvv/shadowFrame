local default = {id=0,type=0,resPath="",name="",scale=0,position=xlsNilTable,battleSkillIcon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattleButton_Xls : table 
BattleButton_Xls =
{
    ["10000001"]=setmetatable({id=10000001,type=6,resPath="UIBattleFunctionType1",name="Function1",scale=0.6,position={[1]=260,[2]=20},battleSkillIcon="hero_skill_faniya_icon1"},mt),
    ["10000002"]=setmetatable({id=10000002,type=7,resPath="UIBattleFunctionType2",name="Function2",scale=1,position={[1]=80,[2]=-140},battleSkillIcon="battle_btn_searchenemy"},mt),
    ["10000003"]=setmetatable({id=10000003,type=8,resPath="UIBattleFunctionType3",name="Function",scale=1,position={[1]=0,[2]=234},battleSkillIcon="battle_btn_tips"},mt),
    ["10000004"]=setmetatable({id=10000004,type=9,resPath="UIBattleSkillButtonType6",name="Point6",scale=1,position={[1]=-680,[2]=243},battleSkillIcon="battle_btn_reload"},mt),
    ["10000007"]=setmetatable({id=10000007,type=10,resPath="UIBattleSkillButtonType7",name="Function7",scale=1.2,position={[1]=260,[2]=20},battleSkillIcon="icon_battle_corebuff_s_temp"},mt),
    ["90010011"]=setmetatable({id=90010011,type=5,resPath="UIBattleSkillButtonType5",name="Point5",scale=1,position={[1]=-205,[2]=565},battleSkillIcon="battle_btn_aim"},mt),
    ["20010011"]=setmetatable({id=20010011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20010021"]=setmetatable({id=20010021,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_faniya_icon1"},mt),
    ["20010012"]=setmetatable({id=20010012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_faniya_icon2"},mt),
    ["20010013"]=setmetatable({id=20010013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_faniya_icon3"},mt),
    ["20010014"]=setmetatable({id=20010014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20020011"]=setmetatable({id=20020011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_naina_icon1"},mt),
    ["20020012"]=setmetatable({id=20020012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_naina_icon2"},mt),
    ["20020013"]=setmetatable({id=20020013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_naina_icon3"},mt),
    ["20020014"]=setmetatable({id=20020014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20030011"]=setmetatable({id=20030011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_xialuo_icon1"},mt),
    ["20030012"]=setmetatable({id=20030012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_xialuo_icon2"},mt),
    ["20030013"]=setmetatable({id=20030013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_xialuo_icon3"},mt),
    ["20030014"]=setmetatable({id=20030014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20040011"]=setmetatable({id=20040011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_weila_icon4"},mt),
    ["20040012"]=setmetatable({id=20040012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_weila_icon5"},mt),
    ["20040013"]=setmetatable({id=20040013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_weila_icon6"},mt),
    ["20040014"]=setmetatable({id=20040014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20050011"]=setmetatable({id=20050011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_naina_icon1"},mt),
    ["20050012"]=setmetatable({id=20050012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_waxiti_icon2"},mt),
    ["20050013"]=setmetatable({id=20050013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_waxiti_icon3"},mt),
    ["20050014"]=setmetatable({id=20050014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20060011"]=setmetatable({id=20060011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20060012"]=setmetatable({id=20060012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_nakayi_icon2"},mt),
    ["20060013"]=setmetatable({id=20060013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_nakayi_icon3"},mt),
    ["20060014"]=setmetatable({id=20060014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20070011"]=setmetatable({id=20070011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_naina_icon1"},mt),
    ["20070012"]=setmetatable({id=20070012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_kong_icon2"},mt),
    ["20070013"]=setmetatable({id=20070013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_kong_icon3"},mt),
    ["20070014"]=setmetatable({id=20070014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20080011"]=setmetatable({id=20080011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_weila_icon4"},mt),
    ["20080012"]=setmetatable({id=20080012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_yela_icon2"},mt),
    ["20080013"]=setmetatable({id=20080013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_yela_icon3"},mt),
    ["20080014"]=setmetatable({id=20080014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20090011"]=setmetatable({id=20090011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_weila_icon4"},mt),
    ["20090012"]=setmetatable({id=20090012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_baiicon2"},mt),
    ["20090022"]=setmetatable({id=20090022,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_baiicon3"},mt),
    ["20090013"]=setmetatable({id=20090013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_baiicon4"},mt),
    ["20090014"]=setmetatable({id=20090014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20100011"]=setmetatable({id=20100011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_xialuo_icon1"},mt),
    ["20100012"]=setmetatable({id=20100012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_alaixiya_icon2"},mt),
    ["20100013"]=setmetatable({id=20100013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_alaixiya_icon3"},mt),
    ["20100014"]=setmetatable({id=20100014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20110011"]=setmetatable({id=20110011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_xialuo_icon1"},mt),
    ["20110021"]=setmetatable({id=20110021,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_geweidelin_icon2"},mt),
    ["20110012"]=setmetatable({id=20110012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_geweidelin_icon3"},mt),
    ["20110013"]=setmetatable({id=20110013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_geweidelin_icon4"},mt),
    ["20110014"]=setmetatable({id=20110014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20120011"]=setmetatable({id=20120011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20120012"]=setmetatable({id=20120012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_taweier_icon2"},mt),
    ["20120013"]=setmetatable({id=20120013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_taweier_icon3"},mt),
    ["20120014"]=setmetatable({id=20120014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20130011"]=setmetatable({id=20130011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_naina_icon1"},mt),
    ["20130012"]=setmetatable({id=20130012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_leiicon2"},mt),
    ["20130013"]=setmetatable({id=20130013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_leiicon3"},mt),
    ["20130014"]=setmetatable({id=20130014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20140011"]=setmetatable({id=20140011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_xialuo_icon1"},mt),
    ["20140021"]=setmetatable({id=20140021,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_guimoicon2"},mt),
    ["20140012"]=setmetatable({id=20140012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_guimoicon3"},mt),
    ["20140013"]=setmetatable({id=20140013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_guimoicon4"},mt),
    ["20140023"]=setmetatable({id=20140023,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_guimoicon5"},mt),
    ["20140014"]=setmetatable({id=20140014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20150011"]=setmetatable({id=20150011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20150012"]=setmetatable({id=20150012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_heerweiicon2"},mt),
    ["20150013"]=setmetatable({id=20150013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_heerweiicon3"},mt),
    ["20150014"]=setmetatable({id=20150014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20160011"]=setmetatable({id=20160011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_naina_icon1"},mt),
    ["20160021"]=setmetatable({id=20160021,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_chunicon2"},mt),
    ["20160012"]=setmetatable({id=20160012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_chunicon3"},mt),
    ["20160013"]=setmetatable({id=20160013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_chunicon4"},mt),
    ["20160014"]=setmetatable({id=20160014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20180011"]=setmetatable({id=20180011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20180012"]=setmetatable({id=20180012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_paofuicon2"},mt),
    ["20180013"]=setmetatable({id=20180013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_paofuicon3"},mt),
    ["20180014"]=setmetatable({id=20180014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20230011"]=setmetatable({id=20230011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20230012"]=setmetatable({id=20230012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_maidangranicon2"},mt),
    ["20230013"]=setmetatable({id=20230013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_maidangranicon3"},mt),
    ["20230014"]=setmetatable({id=20230014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
    ["20300011"]=setmetatable({id=20300011,type=1,resPath="UIBattleSkillButtonType1",name="Point1",scale=1,position={[1]=-430,[2]=400},battleSkillIcon="hero_skill_taweier_icon1"},mt),
    ["20300012"]=setmetatable({id=20300012,type=2,resPath="UIBattleSkillButtonType2",name="Point2",scale=1.2,position={[1]=-135,[2]=380},battleSkillIcon="hero_skill_maidangranicon2"},mt),
    ["20300013"]=setmetatable({id=20300013,type=3,resPath="UIBattleSkillButtonType3",name="Point3",scale=1,position={[1]=-600,[2]=105},battleSkillIcon="hero_skill_maidangranicon3"},mt),
    ["20300014"]=setmetatable({id=20300014,type=4,resPath="UIBattleSkillButtonType4",name="Point4",scale=1.2,position={[1]=-400,[2]=105},battleSkillIcon="hero_skill_shanbi_icon1"},mt),
}
--生成获取数据的方法
---@return BattleButton
function GetBattleButtonData(id)
    return BattleButton_Xls[tostring(id)]
end
--自动生成注释
---@class BattleButton : table 
---@field id number
---@field type number
---@field resPath string
---@field name string
---@field scale number
---@field position table
---@field battleSkillIcon string
