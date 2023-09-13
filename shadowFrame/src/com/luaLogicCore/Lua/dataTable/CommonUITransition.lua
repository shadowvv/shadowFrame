local default = {id=0,name="",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonUITransition_Xls : table 
CommonUITransition_Xls =
{
    ["1"]=setmetatable({id=1,name="UIMainViewCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="UI_MainCity_New"},mt),
    ["2"]=setmetatable({id=2,name="MainViewChangeLeaderCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_MainCity_New",triggerName="",openID=100},mt),
    ["3"]=setmetatable({id=3,name="TaskMainUICtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="",triggerName="",openID=120},mt),
    ["4"]=setmetatable({id=4,name="TaskMainUICtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="",triggerName="",openID=120},mt),
    ["5"]=setmetatable({id=5,name="",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=290},mt),
    ["6"]=setmetatable({id=6,name="UIWarehouseCtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="",triggerName="",openID=130},mt),
    ["7"]=setmetatable({id=7,name="UIMailCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=140},mt),
    ["8"]=setmetatable({id=8,name="UINoticeCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=160},mt),
    ["9"]=setmetatable({id=9,name="ShopUiCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="UI_Shop",triggerName="",openID=180},mt),
    ["10"]=setmetatable({id=10,name="SettingCtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="",triggerName="",openID=170},mt),
    ["11"]=setmetatable({id=11,name="UISwearCardCtrlNew",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="UI_Card",triggerName="",openID=190},mt),
    ["12"]=setmetatable({id=12,name="HeroListUiCtrl",type=1,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="",triggerName="",openID=200},mt),
    ["13"]=setmetatable({id=13,name="HeroDevelopUi",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="UI_ThrudInfo",triggerName="",openID=200},mt),
    ["14"]=setmetatable({id=14,name="HeroArchivesCtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose="",sceneName="",triggerName="",openID=230},mt),
    ["15"]=setmetatable({id=15,name="HeroClothingCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_ThrudInfo",triggerName="",openID=240},mt),
    ["16"]=setmetatable({id=16,name="WeaponUiCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_ThrudInfo",triggerName="",openID=202},mt),
    ["17"]=setmetatable({id=17,name="WeaponLevelUiCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_ThrudInfo",triggerName="",openID=202},mt),
    ["18"]=setmetatable({id=18,name="WeaponArchivesUiCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=230},mt),
    ["19"]=setmetatable({id=19,name="WeaponClothingUiCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_ThrudInfo",triggerName="",openID=240},mt),
    ["20"]=setmetatable({id=20,name="",type=1,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=270},mt),
    ["21"]=setmetatable({id=21,name="UISelectFormationCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=270},mt),
    ["22"]=setmetatable({id=22,name="UISelectFormationLeaderCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=270},mt),
    ["23"]=setmetatable({id=23,name="",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose=""},mt),
    ["24"]=setmetatable({id=24,name="",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose=""},mt),
    ["25"]=setmetatable({id=25,name="",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose=""},mt),
    ["26"]=setmetatable({id=26,name="PlayerInfoUiCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="UI_PlayerInfo",triggerName="",openID=110},mt),
    ["27"]=setmetatable({id=27,name="UIChatCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=150},mt),
    ["28"]=setmetatable({id=28,name="EquipUiCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=203},mt),
    ["29"]=setmetatable({id=29,name="EquipDevelopUiCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="",triggerName="",openID=203},mt),
    ["30"]=setmetatable({id=30,name="HandBookUiCtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=2,videoNameClose=""},mt),
    ["31"]=setmetatable({id=31,name="BigMapMainCtrl",type=0,uiEffectOpen=3,videoNameOpen="Bigmap_cloud_loop",uiEffectClose=2,videoNameClose="",sceneName="worldmap_work",triggerName="",openID=250},mt),
    ["32"]=setmetatable({id=32,name="BigMapLevelInfoCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=251},mt),
    ["33"]=setmetatable({id=33,name="",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose=""},mt),
    ["34"]=setmetatable({id=34,name="",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose=""},mt),
    ["35"]=setmetatable({id=35,name="",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=0,videoNameClose=""},mt),
    ["36"]=setmetatable({id=36,name="HandBookMonsterUiCtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_Book"},mt),
    ["37"]=setmetatable({id=37,name="",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=0,videoNameClose=""},mt),
    ["38"]=setmetatable({id=38,name="HandBookWeaponUiCtrl",type=0,uiEffectOpen=2,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="UI_Book"},mt),
    ["39"]=setmetatable({id=39,name="ShopClothInfoUiCtrl",type=0,uiEffectOpen=1,videoNameOpen="",uiEffectClose=1,videoNameClose="",sceneName="UI_ThrudInfo",triggerName="",openID=180},mt),
    ["40"]=setmetatable({id=40,name="UIAchievementModuleCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=111},mt),
    ["41"]=setmetatable({id=41,name="UIAchievementDetailCtrl",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=0,videoNameClose="",sceneName="",triggerName="",openID=111},mt),
    ["42"]=setmetatable({id=42,name="UIBattleConclusionCtrl_Single",type=0,uiEffectOpen=0,videoNameOpen="",uiEffectClose=1,videoNameClose=""},mt),
}
--生成获取数据的方法
---@return CommonUITransition
function GetCommonUITransitionData(id)
    return CommonUITransition_Xls[tostring(id)]
end
--自动生成注释
---@class CommonUITransition : table 
---@field id number
---@field name string
---@field type number
---@field uiEffectOpen number
---@field videoNameOpen string
---@field uiEffectClose number
---@field videoNameClose string
---@field sceneName string
---@field triggerName string
---@field openID number
