local default = {id=0,prefab="",triggerType=0,delayTime=0,durationTime=0,param2=0,param3=0,param4=0,param5=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class FallObjectPrefab_Xls : table 
FallObjectPrefab_Xls =
{
    ["1"]=setmetatable({id=1,prefab="Pre_eff_shanbi_zidanloop_zise",triggerType=1,delayTime=0.63,durationTime=240,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["101"]=setmetatable({id=101,prefab="EFF_jizou_power_all",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["102"]=setmetatable({id=102,prefab="EFF_jizou_power_s_all",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["201"]=setmetatable({id=201,prefab="EFF_jizou_power_fire",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["202"]=setmetatable({id=202,prefab="EFF_jizou_power_s_fire",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["301"]=setmetatable({id=301,prefab="EFF_jizou_power_lei",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["302"]=setmetatable({id=302,prefab="EFF_jizou_power_s_lei",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["401"]=setmetatable({id=401,prefab="EFF_jizou_power_ice",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["402"]=setmetatable({id=402,prefab="EFF_jizou_power_s_ice",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["501"]=setmetatable({id=501,prefab="EFF_jizou_power_wind",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["502"]=setmetatable({id=502,prefab="EFF_jizou_power_s_wind",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["601"]=setmetatable({id=601,prefab="EFF_jizou_power_yuanneng",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["602"]=setmetatable({id=602,prefab="EFF_jizou_power_s_yuanneng",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["701"]=setmetatable({id=701,prefab="EFF_jizou_power_zhongli",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["702"]=setmetatable({id=702,prefab="EFF_jizou_power_s_zhongli",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["322"]=setmetatable({id=322,prefab="EFF_jizou_power_fire",triggerType=2,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["332"]=setmetatable({id=332,prefab="EFF_jizou_power_lei",triggerType=2,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["342"]=setmetatable({id=342,prefab="EFF_jizou_power_ice",triggerType=2,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["352"]=setmetatable({id=352,prefab="EFF_jizou_power_wind",triggerType=2,delayTime=0,durationTime=120,param2=90,param3=40,param4=10,param5=0.3},mt),
    ["17001"]=setmetatable({id=17001,prefab="Pre_Eff_Ice_debris_Start",triggerType=2,delayTime=0,durationTime=15,param2=8,param3=35,param4=70,param5=5.0},mt),
    ["20000"]=setmetatable({id=20000,prefab="Pre_eff_saijibuff_ball_big_start_loop",triggerType=2,delayTime=0,durationTime=3600,param2=200,param3=45,param4=90,param5=18.0},mt),
    ["20001"]=setmetatable({id=20001,prefab="Pre_eff_saijibuff_chongci_big_start_loop",triggerType=2,delayTime=0,durationTime=3600,param2=200,param3=45,param4=90,param5=18.0},mt),
    ["20002"]=setmetatable({id=20002,prefab="Pre_eff_saijibuff_zidan_big_start_loop",triggerType=2,delayTime=0,durationTime=3600,param2=200,param3=45,param4=90,param5=18.0},mt),
    ["20003"]=setmetatable({id=20003,prefab="Pre_eff_saijibuff_heal_big_start_loop",triggerType=2,delayTime=0,durationTime=3600,param2=200,param3=45,param4=90,param5=18.0},mt),
    ["20004"]=setmetatable({id=20004,prefab="Pre_Eff_speedup_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20005"]=setmetatable({id=20005,prefab="Pre_Eff_unbeat_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20006"]=setmetatable({id=20006,prefab="Pre_Eff_unbeat_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20007"]=setmetatable({id=20007,prefab="Pre_Eff_unbeat_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20008"]=setmetatable({id=20008,prefab="Pre_Eff_speedup_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20009"]=setmetatable({id=20009,prefab="Pre_Eff_speedup_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20010"]=setmetatable({id=20010,prefab="Pre_Eff_speedup_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["20011"]=setmetatable({id=20011,prefab="Pre_Eff_unbeat_bornloop",triggerType=2,delayTime=0,durationTime=3600,param2=18,param3=50,param4=100,param5=18.0},mt),
    ["50001"]=setmetatable({id=50001,prefab="EFF_jizou_power_fire",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=45,param4=45,param5=0.3},mt),
    ["50002"]=setmetatable({id=50002,prefab="EFF_jizou_power_lei",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=45,param4=45,param5=0.3},mt),
    ["50003"]=setmetatable({id=50003,prefab="EFF_jizou_power_ice",triggerType=1,delayTime=0,durationTime=120,param2=90,param3=45,param4=45,param5=0.3},mt),
}
--生成获取数据的方法
---@return FallObjectPrefab
function GetFallObjectPrefabData(id)
    return FallObjectPrefab_Xls[tostring(id)]
end
--自动生成注释
---@class FallObjectPrefab : table 
---@field id number
---@field prefab string
---@field triggerType number
---@field delayTime number
---@field durationTime number
---@field param2 number
---@field param3 number
---@field param4 number
---@field param5 number
