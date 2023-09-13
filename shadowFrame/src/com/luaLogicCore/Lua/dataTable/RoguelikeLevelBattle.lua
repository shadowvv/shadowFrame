local default = {id=0,levelId=0,levelBuffRandom=0,name="",nameEn="",icon="",desc="",loading=0,teamType=0,insType=0,monster=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeLevelBattle_Xls : table 
RoguelikeLevelBattle_Xls =
{
    ["1101"]=setmetatable({id=1101,levelId=4050001,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1102"]=setmetatable({id=1102,levelId=4050002,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1103"]=setmetatable({id=1103,levelId=4050003,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1104"]=setmetatable({id=1104,levelId=4050004,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1201"]=setmetatable({id=1201,levelId=4050005,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1202"]=setmetatable({id=1202,levelId=4050006,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1203"]=setmetatable({id=1203,levelId=4050007,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1204"]=setmetatable({id=1204,levelId=4050008,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1205"]=setmetatable({id=1205,levelId=4050021,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1206"]=setmetatable({id=1206,levelId=4050022,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1207"]=setmetatable({id=1207,levelId=4050023,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1301"]=setmetatable({id=1301,levelId=4050009,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1302"]=setmetatable({id=1302,levelId=4050010,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1303"]=setmetatable({id=1303,levelId=4050011,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1304"]=setmetatable({id=1304,levelId=4050012,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1401"]=setmetatable({id=1401,levelId=4050013,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90102,teamType=1,insType=203},mt),
    ["1402"]=setmetatable({id=1402,levelId=4050014,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90102,teamType=1,insType=203},mt),
    ["1501"]=setmetatable({id=1501,levelId=4050015,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1502"]=setmetatable({id=1502,levelId=4050016,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1503"]=setmetatable({id=1503,levelId=4050017,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1504"]=setmetatable({id=1504,levelId=4050018,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["1601"]=setmetatable({id=1601,levelId=4050020,levelBuffRandom=100001,name="强敌来袭",nameEn="Warning",icon="img_seasonlevel_point_03",desc="前方出现高能源个体，可以预见这是一场十分危险的战斗，不过敌人并非不可战胜，请拼尽全力开拓道路吧。",loading=90103,teamType=1,insType=203},mt),
    ["2101"]=setmetatable({id=2101,levelId=4050101,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2102"]=setmetatable({id=2102,levelId=4050102,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2103"]=setmetatable({id=2103,levelId=4050103,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2104"]=setmetatable({id=2104,levelId=4050104,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2201"]=setmetatable({id=2201,levelId=4050105,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2202"]=setmetatable({id=2202,levelId=4050106,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2203"]=setmetatable({id=2203,levelId=4050107,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2204"]=setmetatable({id=2204,levelId=4050108,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2205"]=setmetatable({id=2205,levelId=4050121,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2206"]=setmetatable({id=2206,levelId=4050122,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2207"]=setmetatable({id=2207,levelId=4050123,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2301"]=setmetatable({id=2301,levelId=4050109,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2302"]=setmetatable({id=2302,levelId=4050110,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2303"]=setmetatable({id=2303,levelId=4050111,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2304"]=setmetatable({id=2304,levelId=4050112,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2401"]=setmetatable({id=2401,levelId=4050113,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90202,teamType=1,insType=203},mt),
    ["2402"]=setmetatable({id=2402,levelId=4050114,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90202,teamType=1,insType=203},mt),
    ["2501"]=setmetatable({id=2501,levelId=4050115,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2502"]=setmetatable({id=2502,levelId=4050116,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2503"]=setmetatable({id=2503,levelId=4050117,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2504"]=setmetatable({id=2504,levelId=4050118,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90201,teamType=1,insType=203},mt),
    ["2601"]=setmetatable({id=2601,levelId=4050120,levelBuffRandom=100001,name="强敌来袭",nameEn="Warning",icon="img_seasonlevel_point_03",desc="前方出现高能源个体，可以预见这是一场十分危险的战斗，不过敌人并非不可战胜，请拼尽全力开拓道路吧。",loading=90203,teamType=1,insType=203},mt),
    ["3101"]=setmetatable({id=3101,levelId=4050201,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3102"]=setmetatable({id=3102,levelId=4050202,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3103"]=setmetatable({id=3103,levelId=4050203,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3104"]=setmetatable({id=3104,levelId=4050204,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3201"]=setmetatable({id=3201,levelId=4050205,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3202"]=setmetatable({id=3202,levelId=4050206,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3203"]=setmetatable({id=3203,levelId=4050207,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3204"]=setmetatable({id=3204,levelId=4050208,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3205"]=setmetatable({id=3205,levelId=4050221,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3206"]=setmetatable({id=3206,levelId=4050222,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3207"]=setmetatable({id=3207,levelId=4050223,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3301"]=setmetatable({id=3301,levelId=4050209,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3302"]=setmetatable({id=3302,levelId=4050210,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3303"]=setmetatable({id=3303,levelId=4050211,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3304"]=setmetatable({id=3304,levelId=4050212,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3401"]=setmetatable({id=3401,levelId=4050213,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90302,teamType=1,insType=203},mt),
    ["3402"]=setmetatable({id=3402,levelId=4050214,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90302,teamType=1,insType=203},mt),
    ["3501"]=setmetatable({id=3501,levelId=4050215,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3502"]=setmetatable({id=3502,levelId=4050216,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3503"]=setmetatable({id=3503,levelId=4050217,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3504"]=setmetatable({id=3504,levelId=4050218,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90301,teamType=1,insType=203},mt),
    ["3601"]=setmetatable({id=3601,levelId=4050220,levelBuffRandom=100001,name="强敌来袭",nameEn="Warning",icon="img_seasonlevel_point_03",desc="前方出现高能源个体，可以预见这是一场十分危险的战斗，不过敌人并非不可战胜，请拼尽全力开拓道路吧。",loading=90303,teamType=1,insType=203},mt),
    ["4101"]=setmetatable({id=4101,levelId=4050301,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4102"]=setmetatable({id=4102,levelId=4050302,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4103"]=setmetatable({id=4103,levelId=4050303,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4104"]=setmetatable({id=4104,levelId=4050304,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4201"]=setmetatable({id=4201,levelId=4050305,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4202"]=setmetatable({id=4202,levelId=4050306,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4203"]=setmetatable({id=4203,levelId=4050307,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4204"]=setmetatable({id=4204,levelId=4050308,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4205"]=setmetatable({id=4205,levelId=4050321,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4206"]=setmetatable({id=4206,levelId=4050322,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4207"]=setmetatable({id=4207,levelId=4050323,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4301"]=setmetatable({id=4301,levelId=4050309,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4302"]=setmetatable({id=4302,levelId=4050310,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4303"]=setmetatable({id=4303,levelId=4050311,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4304"]=setmetatable({id=4304,levelId=4050312,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4401"]=setmetatable({id=4401,levelId=4050313,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90402,teamType=1,insType=203},mt),
    ["4402"]=setmetatable({id=4402,levelId=4050314,levelBuffRandom=100002,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90402,teamType=1,insType=203},mt),
    ["4501"]=setmetatable({id=4501,levelId=4050315,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4502"]=setmetatable({id=4502,levelId=4050316,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4503"]=setmetatable({id=4503,levelId=4050317,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4504"]=setmetatable({id=4504,levelId=4050318,levelBuffRandom=100001,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90401,teamType=1,insType=203},mt),
    ["4601"]=setmetatable({id=4601,levelId=4050320,levelBuffRandom=100001,name="强敌来袭",nameEn="Warning",icon="img_seasonlevel_point_03",desc="前方出现高能源个体，可以预见这是一场十分危险的战斗，不过敌人并非不可战胜，请拼尽全力开拓道路吧。",loading=90403,teamType=1,insType=203},mt),
    ["9001"]=setmetatable({id=9001,levelId=4051001,levelBuffRandom=100011,name="常规接敌",nameEn="Battle",icon="img_seasonlevel_point_04",desc="前方出现了异生体反应，万幸的是都是一些威胁性较低的类型。",loading=90101,teamType=1,insType=203},mt),
    ["9002"]=setmetatable({id=9002,levelId=4051002,levelBuffRandom=100012,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90202,teamType=1,insType=203},mt),
    ["9003"]=setmetatable({id=9003,levelId=4051003,levelBuffRandom=100013,name="高危战斗",nameEn="Danger",icon="img_seasonlevel_point_05",desc="前方出现了异生体反应，根据资料可知存在一些高威胁个体，请谨慎应对。",loading=90202,teamType=1,insType=203},mt),
}
--生成获取数据的方法
---@return RoguelikeLevelBattle
function GetRoguelikeLevelBattleData(id)
    return RoguelikeLevelBattle_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeLevelBattle : table 
---@field id number
---@field levelId number
---@field levelBuffRandom number
---@field name string
---@field nameEn string
---@field icon string
---@field desc string
---@field loading number
---@field teamType number
---@field insType number
---@field monster table
