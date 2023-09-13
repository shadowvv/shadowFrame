local default = {id=0,belongLevelRange=0,levelGroup=xlsNilTable,bossMoudel=0,skyBox=0,skyBoxSource="",scenesPrefab="",scenesEffect="",effectPosition=xlsNilTable,effectRotation=xlsNilTable,effectScale=0,bossUnitPrefab="",transparency=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class AbyssFrontBossGroup_Xls : table 
AbyssFrontBossGroup_Xls =
{
    ["1"]=setmetatable({id=1,belongLevelRange=101,levelGroup={[1]=10001,[2]=10002,[3]=10003},bossMoudel=3010,skyBox=1,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_Mantuoluo_Target",transparency=245},mt),
    ["2"]=setmetatable({id=2,belongLevelRange=101,levelGroup={[1]=10004,[2]=10005,[3]=10006},bossMoudel=3031,skyBox=2,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_HujingNew_Target",transparency=245},mt),
    ["3"]=setmetatable({id=3,belongLevelRange=101,levelGroup={[1]=10007,[2]=10008,[3]=10009},bossMoudel=3051,skyBox=3,skyBoxSource="T_BigBattle_Blue_Sky",scenesPrefab="PF_BigBattle_BlueSky",scenesEffect="Pre_Eff_sceneUI_big_liefeng",effectPosition={[1]=-33,[2]=78.1,[3]=158.2},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Boss_Angeer_Target",transparency=245},mt),
    ["4"]=setmetatable({id=4,belongLevelRange=101,levelGroup={[1]=10010,[2]=10011,[3]=10012},bossMoudel=3062,skyBox=4,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_Shitoujing_Target",transparency=245},mt),
    ["5"]=setmetatable({id=5,belongLevelRange=101,levelGroup={[1]=10013,[2]=10014,[3]=10015},bossMoudel=3070,skyBox=5,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Boss_SIkong_Target",transparency=245},mt),
    ["6"]=setmetatable({id=6,belongLevelRange=201,levelGroup={[1]=20001,[2]=20002,[3]=20003,[4]=20004},bossMoudel=3010,skyBox=1,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_Mantuoluo_Target",transparency=245},mt),
    ["7"]=setmetatable({id=7,belongLevelRange=201,levelGroup={[1]=20005,[2]=20006,[3]=20007,[4]=20008},bossMoudel=3031,skyBox=2,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_HujingNew_Target",transparency=245},mt),
    ["8"]=setmetatable({id=8,belongLevelRange=201,levelGroup={[1]=20009,[2]=20010,[3]=20011,[4]=20012},bossMoudel=3051,skyBox=3,skyBoxSource="T_BigBattle_Blue_Sky",scenesPrefab="PF_BigBattle_BlueSky",scenesEffect="Pre_Eff_sceneUI_big_liefeng",effectPosition={[1]=-33,[2]=78.1,[3]=158.2},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Boss_Angeer_Target",transparency=245},mt),
    ["9"]=setmetatable({id=9,belongLevelRange=201,levelGroup={[1]=20013,[2]=20014,[3]=20015,[4]=20016},bossMoudel=3062,skyBox=4,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_Shitoujing_Target",transparency=245},mt),
    ["10"]=setmetatable({id=10,belongLevelRange=201,levelGroup={[1]=20017,[2]=20018,[3]=20019,[4]=20020},bossMoudel=3070,skyBox=5,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Boss_SIkong_Target",transparency=245},mt),
    ["11"]=setmetatable({id=11,belongLevelRange=301,levelGroup={[1]=30001,[2]=30002,[3]=30003,[4]=30004,[5]=30005},bossMoudel=3010,skyBox=1,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_Mantuoluo_Target",transparency=245},mt),
    ["12"]=setmetatable({id=12,belongLevelRange=301,levelGroup={[1]=30006,[2]=30007,[3]=30008,[4]=30009,[5]=30010},bossMoudel=3031,skyBox=2,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_HujingNew_Target",transparency=245},mt),
    ["13"]=setmetatable({id=13,belongLevelRange=301,levelGroup={[1]=30011,[2]=30012,[3]=30013,[4]=30014,[5]=30015},bossMoudel=3051,skyBox=3,skyBoxSource="T_BigBattle_Blue_Sky",scenesPrefab="PF_BigBattle_BlueSky",scenesEffect="Pre_Eff_sceneUI_big_liefeng",effectPosition={[1]=-33,[2]=78.1,[3]=158.2},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Boss_Angeer_Target",transparency=245},mt),
    ["14"]=setmetatable({id=14,belongLevelRange=301,levelGroup={[1]=30016,[2]=30017,[3]=30018,[4]=30019,[5]=30020},bossMoudel=3062,skyBox=4,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Elite_Shitoujing_Target",transparency=245},mt),
    ["15"]=setmetatable({id=15,belongLevelRange=301,levelGroup={[1]=30021,[2]=30022,[3]=30023,[4]=30024,[5]=30025},bossMoudel=3070,skyBox=5,skyBoxSource="T_BigBattle_Night_Sky",scenesPrefab="PF_BigBattle_NightSky",scenesEffect="",effectPosition={[1]=-7.9,[2]=26.4,[3]=65.1},effectRotation={[1]=0,[2]=0,[3]=0},effectScale=1,bossUnitPrefab="PF_Monster_Boss_SIkong_Target",transparency=245},mt),
}
--生成获取数据的方法
---@return AbyssFrontBossGroup
function GetAbyssFrontBossGroupData(id)
    return AbyssFrontBossGroup_Xls[tostring(id)]
end
--自动生成注释
---@class AbyssFrontBossGroup : table 
---@field id number
---@field belongLevelRange number
---@field levelGroup table
---@field bossMoudel number
---@field skyBox number
---@field skyBoxSource string
---@field scenesPrefab string
---@field scenesEffect string
---@field effectPosition table
---@field effectRotation table
---@field effectScale number
---@field bossUnitPrefab string
---@field transparency number
