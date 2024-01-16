local default = {id=0,info="",weaponRandomID=xlsNilTable,weight=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponLibrary_Xls : table 
WeaponLibrary_Xls =
{
    ["1001"]=setmetatable({id=1001,info="突击_1级改装组件",weaponRandomID={[1]=1001,[2]=1006,[3]=1011,[4]=1016,[5]=1021,[6]=1026},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19}},mt),
    ["1002"]=setmetatable({id=1002,info="突击_2级改装组件",weaponRandomID={[1]=1001,[2]=1006,[3]=1011,[4]=1016,[5]=1021,[6]=1026,[7]=1002,[8]=1007,[9]=1012,[10]=1017,[11]=1022,[12]=1027},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18}},mt),
    ["1003"]=setmetatable({id=1003,info="突击_3级改装组件",weaponRandomID={[1]=1001,[2]=1006,[3]=1011,[4]=1016,[5]=1021,[6]=1026,[7]=1002,[8]=1007,[9]=1012,[10]=1017,[11]=1022,[12]=1027,[13]=1003,[14]=1008,[15]=1013,[16]=1018,[17]=1023,[18]=1028},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17}},mt),
    ["1004"]=setmetatable({id=1004,info="突击_4级改装组件",weaponRandomID={[1]=1001,[2]=1006,[3]=1011,[4]=1016,[5]=1021,[6]=1026,[7]=1002,[8]=1007,[9]=1012,[10]=1017,[11]=1022,[12]=1027,[13]=1003,[14]=1008,[15]=1013,[16]=1018,[17]=1023,[18]=1028,[19]=1004,[20]=1009,[21]=1014,[22]=1019,[23]=1024,[24]=1029},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16}},mt),
    ["1005"]=setmetatable({id=1005,info="突击_5级改装组件",weaponRandomID={[1]=1001,[2]=1006,[3]=1011,[4]=1016,[5]=1021,[6]=1026,[7]=1002,[8]=1007,[9]=1012,[10]=1017,[11]=1022,[12]=1027,[13]=1003,[14]=1008,[15]=1013,[16]=1018,[17]=1023,[18]=1028,[19]=1004,[20]=1009,[21]=1014,[22]=1019,[23]=1024,[24]=1029,[25]=1005,[26]=1010,[27]=1015,[28]=1020,[29]=1025,[30]=1030},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16,[25]=8,[26]=8,[27]=8,[28]=8,[29]=8,[30]=8}},mt),
    ["1006"]=setmetatable({id=1006,info="重装_1级改装组件",weaponRandomID={[1]=1031,[2]=1036,[3]=1041,[4]=1046,[5]=1051,[6]=1056},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19}},mt),
    ["1007"]=setmetatable({id=1007,info="重装_2级改装组件",weaponRandomID={[1]=1031,[2]=1036,[3]=1041,[4]=1046,[5]=1051,[6]=1056,[7]=1032,[8]=1037,[9]=1042,[10]=1047,[11]=1052,[12]=1057},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18}},mt),
    ["1008"]=setmetatable({id=1008,info="重装_3级改装组件",weaponRandomID={[1]=1031,[2]=1036,[3]=1041,[4]=1046,[5]=1051,[6]=1056,[7]=1032,[8]=1037,[9]=1042,[10]=1047,[11]=1052,[12]=1057,[13]=1033,[14]=1038,[15]=1043,[16]=1048,[17]=1053,[18]=1058},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17}},mt),
    ["1009"]=setmetatable({id=1009,info="重装_4级改装组件",weaponRandomID={[1]=1031,[2]=1036,[3]=1041,[4]=1046,[5]=1051,[6]=1056,[7]=1032,[8]=1037,[9]=1042,[10]=1047,[11]=1052,[12]=1057,[13]=1033,[14]=1038,[15]=1043,[16]=1048,[17]=1053,[18]=1058,[19]=1034,[20]=1039,[21]=1044,[22]=1049,[23]=1054,[24]=1059},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16}},mt),
    ["1010"]=setmetatable({id=1010,info="重装_5级改装组件",weaponRandomID={[1]=1031,[2]=1036,[3]=1041,[4]=1046,[5]=1051,[6]=1056,[7]=1032,[8]=1037,[9]=1042,[10]=1047,[11]=1052,[12]=1057,[13]=1033,[14]=1038,[15]=1043,[16]=1048,[17]=1053,[18]=1058,[19]=1034,[20]=1039,[21]=1044,[22]=1049,[23]=1054,[24]=1059,[25]=1035,[26]=1040,[27]=1045,[28]=1050,[29]=1055,[30]=1060},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16,[25]=8,[26]=8,[27]=8,[28]=8,[29]=8,[30]=8}},mt),
    ["1011"]=setmetatable({id=1011,info="散射_1级改装组件",weaponRandomID={[1]=1061,[2]=1066,[3]=1071,[4]=1076,[5]=1081,[6]=1086},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19}},mt),
    ["1012"]=setmetatable({id=1012,info="散射_2级改装组件",weaponRandomID={[1]=1061,[2]=1066,[3]=1071,[4]=1076,[5]=1081,[6]=1086,[7]=1062,[8]=1067,[9]=1072,[10]=1077,[11]=1082,[12]=1087},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18}},mt),
    ["1013"]=setmetatable({id=1013,info="散射_3级改装组件",weaponRandomID={[1]=1061,[2]=1066,[3]=1071,[4]=1076,[5]=1081,[6]=1086,[7]=1062,[8]=1067,[9]=1072,[10]=1077,[11]=1082,[12]=1087,[13]=1063,[14]=1068,[15]=1073,[16]=1078,[17]=1083,[18]=1088},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17}},mt),
    ["1014"]=setmetatable({id=1014,info="散射_4级改装组件",weaponRandomID={[1]=1061,[2]=1066,[3]=1071,[4]=1076,[5]=1081,[6]=1086,[7]=1062,[8]=1067,[9]=1072,[10]=1077,[11]=1082,[12]=1087,[13]=1063,[14]=1068,[15]=1073,[16]=1078,[17]=1083,[18]=1088,[19]=1064,[20]=1069,[21]=1074,[22]=1079,[23]=1084,[24]=1089},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16}},mt),
    ["1015"]=setmetatable({id=1015,info="散射_5级改装组件",weaponRandomID={[1]=1061,[2]=1066,[3]=1071,[4]=1076,[5]=1081,[6]=1086,[7]=1062,[8]=1067,[9]=1072,[10]=1077,[11]=1082,[12]=1087,[13]=1063,[14]=1068,[15]=1073,[16]=1078,[17]=1083,[18]=1088,[19]=1064,[20]=1069,[21]=1074,[22]=1079,[23]=1084,[24]=1089,[25]=1065,[26]=1070,[27]=1075,[28]=1080,[29]=1085,[30]=1090},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16,[25]=8,[26]=8,[27]=8,[28]=8,[29]=8,[30]=8}},mt),
    ["1016"]=setmetatable({id=1016,info="狙击_1级改装组件",weaponRandomID={[1]=1091,[2]=1096,[3]=1101,[4]=1106,[5]=1111,[6]=1116},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19}},mt),
    ["1017"]=setmetatable({id=1017,info="狙击_2级改装组件",weaponRandomID={[1]=1091,[2]=1096,[3]=1101,[4]=1106,[5]=1111,[6]=1116,[7]=1092,[8]=1097,[9]=1102,[10]=1107,[11]=1112,[12]=1117},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18}},mt),
    ["1018"]=setmetatable({id=1018,info="狙击_3级改装组件",weaponRandomID={[1]=1091,[2]=1096,[3]=1101,[4]=1106,[5]=1111,[6]=1116,[7]=1092,[8]=1097,[9]=1102,[10]=1107,[11]=1112,[12]=1117,[13]=1093,[14]=1098,[15]=1103,[16]=1108,[17]=1113,[18]=1118},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17}},mt),
    ["1019"]=setmetatable({id=1019,info="狙击_4级改装组件",weaponRandomID={[1]=1091,[2]=1096,[3]=1101,[4]=1106,[5]=1111,[6]=1116,[7]=1092,[8]=1097,[9]=1102,[10]=1107,[11]=1112,[12]=1117,[13]=1093,[14]=1098,[15]=1103,[16]=1108,[17]=1113,[18]=1118,[19]=1094,[20]=1099,[21]=1104,[22]=1109,[23]=1114,[24]=1119},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16}},mt),
    ["1020"]=setmetatable({id=1020,info="狙击_5级改装组件",weaponRandomID={[1]=1091,[2]=1096,[3]=1101,[4]=1106,[5]=1111,[6]=1116,[7]=1092,[8]=1097,[9]=1102,[10]=1107,[11]=1112,[12]=1117,[13]=1093,[14]=1098,[15]=1103,[16]=1108,[17]=1113,[18]=1118,[19]=1094,[20]=1099,[21]=1104,[22]=1109,[23]=1114,[24]=1119,[25]=1095,[26]=1100,[27]=1105,[28]=1110,[29]=1115,[30]=1120},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=18,[8]=18,[9]=18,[10]=18,[11]=18,[12]=18,[13]=17,[14]=17,[15]=17,[16]=17,[17]=17,[18]=17,[19]=16,[20]=16,[21]=16,[22]=16,[23]=16,[24]=16,[25]=8,[26]=8,[27]=8,[28]=8,[29]=8,[30]=8}},mt),
    ["2001"]=setmetatable({id=2001,info="武装凭依_属性_1级",weaponRandomID={[1]=2001},weight={[1]=19}},mt),
    ["2002"]=setmetatable({id=2002,info="武装凭依_属性_2级",weaponRandomID={[1]=2001,[2]=2002},weight={[1]=19,[2]=18}},mt),
    ["2003"]=setmetatable({id=2003,info="武装凭依_属性_3级",weaponRandomID={[1]=2001,[2]=2002,[3]=2003},weight={[1]=19,[2]=18,[3]=17}},mt),
    ["2004"]=setmetatable({id=2004,info="武装凭依_属性+技能_4级",weaponRandomID={[1]=2001,[2]=2002,[3]=2003,[4]=2004},weight={[1]=19,[2]=18,[3]=17,[4]=10}},mt),
    ["2005"]=setmetatable({id=2005,info="武装凭依_属性+技能_5级",weaponRandomID={[1]=2001,[2]=2002,[3]=2003,[4]=2004,[5]=2005},weight={[1]=19,[2]=18,[3]=17,[4]=10,[5]=8}},mt),
    ["3001"]=setmetatable({id=3001,info="武装凭依_属性_1级",weaponRandomID={[1]=3101,[2]=3102,[3]=3103,[4]=3104,[5]=3105,[6]=3106,[7]=3107,[8]=3108,[9]=3109,[10]=3110,[11]=3111,[12]=3112,[13]=3113},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=19,[8]=19,[9]=19,[10]=19,[11]=19,[12]=19,[13]=19}},mt),
    ["3002"]=setmetatable({id=3002,info="武装凭依_属性_2级",weaponRandomID={[1]=3101,[2]=3102,[3]=3103,[4]=3104,[5]=3105,[6]=3106,[7]=3107,[8]=3108,[9]=3109,[10]=3110,[11]=3111,[12]=3112,[13]=3113,[14]=3201,[15]=3202,[16]=3203,[17]=3204,[18]=3205,[19]=3206,[20]=3207,[21]=3208,[22]=3209,[23]=3210,[24]=3211,[25]=3212,[26]=3213},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=19,[8]=19,[9]=19,[10]=19,[11]=19,[12]=19,[13]=19,[14]=18,[15]=18,[16]=18,[17]=18,[18]=18,[19]=18,[20]=18,[21]=18,[22]=18,[23]=18,[24]=18,[25]=18,[26]=18}},mt),
    ["3003"]=setmetatable({id=3003,info="武装凭依_属性_3级",weaponRandomID={[1]=3101,[2]=3102,[3]=3103,[4]=3104,[5]=3105,[6]=3106,[7]=3107,[8]=3108,[9]=3109,[10]=3110,[11]=3111,[12]=3112,[13]=3113,[14]=3201,[15]=3202,[16]=3203,[17]=3204,[18]=3205,[19]=3206,[20]=3207,[21]=3208,[22]=3209,[23]=3210,[24]=3211,[25]=3212,[26]=3213,[27]=3301,[28]=3302,[29]=3303,[30]=3304,[31]=3305,[32]=3306,[33]=3307,[34]=3308,[35]=3309,[36]=3310,[37]=3311,[38]=3312,[39]=3313},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=19,[8]=19,[9]=19,[10]=19,[11]=19,[12]=19,[13]=19,[14]=18,[15]=18,[16]=18,[17]=18,[18]=18,[19]=18,[20]=18,[21]=18,[22]=18,[23]=18,[24]=18,[25]=18,[26]=18,[27]=17,[28]=17,[29]=17,[30]=17,[31]=17,[32]=17,[33]=17,[34]=17,[35]=17,[36]=17,[37]=17,[38]=17,[39]=17}},mt),
    ["3004"]=setmetatable({id=3004,info="武装凭依_属性_4级",weaponRandomID={[1]=3101,[2]=3102,[3]=3103,[4]=3104,[5]=3105,[6]=3106,[7]=3107,[8]=3108,[9]=3109,[10]=3110,[11]=3111,[12]=3112,[13]=3113,[14]=3201,[15]=3202,[16]=3203,[17]=3204,[18]=3205,[19]=3206,[20]=3207,[21]=3208,[22]=3209,[23]=3210,[24]=3211,[25]=3212,[26]=3213,[27]=3301,[28]=3302,[29]=3303,[30]=3304,[31]=3305,[32]=3306,[33]=3307,[34]=3308,[35]=3309,[36]=3310,[37]=3311,[38]=3312,[39]=3313,[40]=3401,[41]=3402,[42]=3403,[43]=3404,[44]=3405,[45]=3406,[46]=3407,[47]=3408,[48]=3409,[49]=3410,[50]=3411,[51]=3412,[52]=3413},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=19,[8]=19,[9]=19,[10]=19,[11]=19,[12]=19,[13]=19,[14]=18,[15]=18,[16]=18,[17]=18,[18]=18,[19]=18,[20]=18,[21]=18,[22]=18,[23]=18,[24]=18,[25]=18,[26]=18,[27]=17,[28]=17,[29]=17,[30]=17,[31]=17,[32]=17,[33]=17,[34]=17,[35]=17,[36]=17,[37]=17,[38]=17,[39]=17,[40]=10,[41]=10,[42]=10,[43]=10,[44]=10,[45]=10,[46]=10,[47]=10,[48]=10,[49]=10,[50]=10,[51]=10,[52]=10}},mt),
    ["3005"]=setmetatable({id=3005,info="武装凭依_属性_5级",weaponRandomID={[1]=3101,[2]=3102,[3]=3103,[4]=3104,[5]=3105,[6]=3106,[7]=3107,[8]=3108,[9]=3109,[10]=3110,[11]=3111,[12]=3112,[13]=3113,[14]=3201,[15]=3202,[16]=3203,[17]=3204,[18]=3205,[19]=3206,[20]=3207,[21]=3208,[22]=3209,[23]=3210,[24]=3211,[25]=3212,[26]=3213,[27]=3301,[28]=3302,[29]=3303,[30]=3304,[31]=3305,[32]=3306,[33]=3307,[34]=3308,[35]=3309,[36]=3310,[37]=3311,[38]=3312,[39]=3313,[40]=3401,[41]=3402,[42]=3403,[43]=3404,[44]=3405,[45]=3406,[46]=3407,[47]=3408,[48]=3409,[49]=3410,[50]=3411,[51]=3412,[52]=3413,[53]=3501,[54]=3502,[55]=3503,[56]=3504,[57]=3505,[58]=3506,[59]=3507,[60]=3508,[61]=3509,[62]=3510,[63]=3511,[64]=3512,[65]=3513},weight={[1]=19,[2]=19,[3]=19,[4]=19,[5]=19,[6]=19,[7]=19,[8]=19,[9]=19,[10]=19,[11]=19,[12]=19,[13]=19,[14]=18,[15]=18,[16]=18,[17]=18,[18]=18,[19]=18,[20]=18,[21]=18,[22]=18,[23]=18,[24]=18,[25]=18,[26]=18,[27]=17,[28]=17,[29]=17,[30]=17,[31]=17,[32]=17,[33]=17,[34]=17,[35]=17,[36]=17,[37]=17,[38]=17,[39]=17,[40]=10,[41]=10,[42]=10,[43]=10,[44]=10,[45]=10,[46]=10,[47]=10,[48]=10,[49]=10,[50]=10,[51]=10,[52]=10,[53]=8,[54]=8,[55]=8,[56]=8,[57]=8,[58]=8,[59]=8,[60]=8,[61]=8,[62]=8,[63]=8,[64]=8,[65]=8}},mt),
}
--生成获取数据的方法
---@return WeaponLibrary
function GetWeaponLibraryData(id)
    return WeaponLibrary_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponLibrary : table 
---@field id number
---@field info string
---@field weaponRandomID table
---@field weight table