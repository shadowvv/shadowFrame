local default = {functionId=0,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonCurrencyShow_Xls : table 
CommonCurrencyShow_Xls =
{
    ["1001"]=setmetatable({functionId=1001,currency={[1]=11,[2]=10,[3]=13},color=0,animation=0,showCurrency={[1]=11,[2]=10,[3]=13},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=0},mt),
    ["1002"]=setmetatable({functionId=1002,currency=xlsNilTable,color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1101"]=setmetatable({functionId=1101,currency={[1]=11,[2]=10,[3]=13},color=0,animation=0,showCurrency=xlsNilTable,showHelp=1003,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1102"]=setmetatable({functionId=1102,currency={[1]=11,[2]=10,[3]=13},color=0,animation=0,showCurrency=xlsNilTable,showHelp=1003,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1111"]=setmetatable({functionId=1111,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=1004,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1201"]=setmetatable({functionId=1201,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1202"]=setmetatable({functionId=1202,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1301"]=setmetatable({functionId=1301,currency={[1]=13,[2]=10,[3]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1410"]=setmetatable({functionId=1410,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1411"]=setmetatable({functionId=1411,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1412"]=setmetatable({functionId=1412,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1413"]=setmetatable({functionId=1413,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1420"]=setmetatable({functionId=1420,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1421"]=setmetatable({functionId=1421,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1422"]=setmetatable({functionId=1422,currency={[1]=14,[2]=15,[3]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1423"]=setmetatable({functionId=1423,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1424"]=setmetatable({functionId=1424,currency={[1]=1341030,[2]=1343030,[3]=1344030,[4]=1342030},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1425"]=setmetatable({functionId=1425,currency={[1]=1000001,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1426"]=setmetatable({functionId=1426,currency={[1]=1005,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1430"]=setmetatable({functionId=1430,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1440"]=setmetatable({functionId=1440,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1450"]=setmetatable({functionId=1450,currency={[1]=10,[2]=11},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1460"]=setmetatable({functionId=1460,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1470"]=setmetatable({functionId=1470,currency={[1]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1501"]=setmetatable({functionId=1501,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1601"]=setmetatable({functionId=1601,currency={[1]=12,[2]=11},color=0,animation=0,showCurrency={[1]=12,[2]=11},showHelp=1001,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1701"]=setmetatable({functionId=1701,currency={[1]=10},color=0,animation=2,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1702"]=setmetatable({functionId=1702,currency={[1]=10},color=0,animation=2,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1703"]=setmetatable({functionId=1703,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1704"]=setmetatable({functionId=1704,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1801"]=setmetatable({functionId=1801,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1802"]=setmetatable({functionId=1802,currency={[1]=10},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1803"]=setmetatable({functionId=1803,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1804"]=setmetatable({functionId=1804,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1902"]=setmetatable({functionId=1902,currency={[1]=13,[2]=10,[3]=11},color=0,animation=0,showCurrency={[1]=13},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1903"]=setmetatable({functionId=1903,currency={[1]=13,[2]=11},color=0,animation=0,showCurrency={[1]=13},showHelp=2001,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["1904"]=setmetatable({functionId=1904,currency={[1]=13,[2]=11},color=1,animation=0,showCurrency={[1]=13,[2]=0,[3]=1010001},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2001"]=setmetatable({functionId=2001,currency=xlsNilTable,color=1,animation=0,showCurrency=xlsNilTable,showHelp=2002,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2002"]=setmetatable({functionId=2002,currency=xlsNilTable,color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2003"]=setmetatable({functionId=2003,currency={[1]=13},color=1,animation=0,showCurrency={[1]=13},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2101"]=setmetatable({functionId=2101,currency=xlsNilTable,color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2102"]=setmetatable({functionId=2102,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2201"]=setmetatable({functionId=2201,currency={[1]=1010001,[2]=1001},color=0,animation=0,showCurrency={[1]=1010001,[2]=1001},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2202"]=setmetatable({functionId=2202,currency={[1]=1010001,[2]=1001},color=0,animation=0,showCurrency={[1]=1010001,[2]=1001},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2203"]=setmetatable({functionId=2203,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2204"]=setmetatable({functionId=2204,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2205"]=setmetatable({functionId=2205,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2206"]=setmetatable({functionId=2206,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2207"]=setmetatable({functionId=2207,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2208"]=setmetatable({functionId=2208,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2209"]=setmetatable({functionId=2209,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2210"]=setmetatable({functionId=2210,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2301"]=setmetatable({functionId=2301,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2401"]=setmetatable({functionId=2401,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2402"]=setmetatable({functionId=2402,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2403"]=setmetatable({functionId=2403,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2404"]=setmetatable({functionId=2404,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2501"]=setmetatable({functionId=2501,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2405"]=setmetatable({functionId=2405,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2601"]=setmetatable({functionId=2601,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2602"]=setmetatable({functionId=2602,currency={[1]=10,[2]=11,[3]=13},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3001"]=setmetatable({functionId=3001,currency={[1]=12,[2]=11,[3]=1000000},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3002"]=setmetatable({functionId=3002,currency={[1]=12,[2]=11,[3]=1000001},color=0,animation=0,showCurrency={[1]=12,[2]=11,[3]=1000001},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3003"]=setmetatable({functionId=3003,currency={[1]=12,[2]=11,[3]=1000002},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3004"]=setmetatable({functionId=3004,currency={[1]=12,[2]=11,[3]=1000003},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["9999"]=setmetatable({functionId=9999,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2502"]=setmetatable({functionId=2502,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2701"]=setmetatable({functionId=2701,currency={[1]=13},color=0,animation=0,showCurrency={[1]=13},showHelp=2003,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2702"]=setmetatable({functionId=2702,currency={[1]=10,[2]=11,[3]=13},color=0,animation=0,showCurrency={[1]=10,[2]=13},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2703"]=setmetatable({functionId=2703,currency={[1]=10,[2]=11,[3]=13},color=0,animation=0,showCurrency={[1]=10,[2]=13},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["2704"]=setmetatable({functionId=2704,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3100"]=setmetatable({functionId=3100,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=3001,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3101"]=setmetatable({functionId=3101,currency={[1]=10},color=0,animation=0,showCurrency=xlsNilTable,showHelp=3002,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3102"]=setmetatable({functionId=3102,currency={[1]=10},color=0,animation=0,showCurrency=xlsNilTable,showHelp=3003,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3103"]=setmetatable({functionId=3103,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=3004,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3104"]=setmetatable({functionId=3104,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=3006,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3105"]=setmetatable({functionId=3105,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3106"]=setmetatable({functionId=3106,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3107"]=setmetatable({functionId=3107,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3108"]=setmetatable({functionId=3108,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3109"]=setmetatable({functionId=3109,currency={[1]=10},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3110"]=setmetatable({functionId=3110,currency={[1]=10},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3111"]=setmetatable({functionId=3111,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3112"]=setmetatable({functionId=3112,currency={[1]=10},color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3113"]=setmetatable({functionId=3113,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3114"]=setmetatable({functionId=3114,currency={[1]=10,[2]=11},color=0,animation=0,showCurrency=xlsNilTable,showHelp=3009,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3200"]=setmetatable({functionId=3200,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=2010,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3201"]=setmetatable({functionId=3201,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=2011,helpFirstPop=1,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3300"]=setmetatable({functionId=3300,currency={[1]=18},color=0,animation=0,showCurrency={[1]=18},showHelp=4001,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3310"]=setmetatable({functionId=3310,currency={[1]=19},color=0,animation=0,showCurrency=xlsNilTable,showHelp=4004,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3320"]=setmetatable({functionId=3320,currency={[1]=18},color=0,animation=0,showCurrency={[1]=18},showHelp=4002,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3330"]=setmetatable({functionId=3330,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=4003,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3400"]=setmetatable({functionId=3400,currency=xlsNilTable,color=1,animation=0,showCurrency=xlsNilTable,showHelp=2008,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3500"]=setmetatable({functionId=3500,currency=xlsNilTable,color=1,animation=0,showCurrency=xlsNilTable,showHelp=2008,helpFirstPop=1,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3600"]=setmetatable({functionId=3600,currency={[1]=12,[2]=11},color=1,animation=0,showCurrency={[1]=12,[2]=11},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3601"]=setmetatable({functionId=3601,currency={[1]=12},color=1,animation=0,showCurrency={[1]=12},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3602"]=setmetatable({functionId=3602,currency={[1]=12,[2]=11},color=1,animation=0,showCurrency={[1]=11},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3603"]=setmetatable({functionId=3603,currency={[1]=12,[2]=1009},color=1,animation=0,showCurrency={[1]=12},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3900"]=setmetatable({functionId=3900,currency={[1]=90000000},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3901"]=setmetatable({functionId=3901,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=3009,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["4101"]=setmetatable({functionId=4101,currency={[1]=12,[2]=11},color=1,animation=0,showCurrency={[1]=12,[2]=11},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3700"]=setmetatable({functionId=3700,currency={[1]=1006},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3701"]=setmetatable({functionId=3701,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=2015,helpFirstPop=1,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3800"]=setmetatable({functionId=3800,currency=xlsNilTable,color=0,animation=0,showCurrency=xlsNilTable,showHelp=2020,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3801"]=setmetatable({functionId=3801,currency={[1]=1008},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["3802"]=setmetatable({functionId=3802,currency={[1]=11},color=0,animation=0,showCurrency={[1]=11},showHelp=2021,helpFirstPop=1,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["4000"]=setmetatable({functionId=4000,currency={[1]=27},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["4001"]=setmetatable({functionId=4001,currency={[1]=26},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["4002"]=setmetatable({functionId=4002,currency={[1]=28},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["6750"]=setmetatable({functionId=6750,currency={[1]=1010},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=1,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["6751"]=setmetatable({functionId=6751,currency={[1]=1007},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["6752"]=setmetatable({functionId=6752,currency={[1]=1007},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["6753"]=setmetatable({functionId=6753,currency={[1]=13},color=1,animation=0,showCurrency={[1]=13},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["6754"]=setmetatable({functionId=6754,currency={[1]=1011},color=1,animation=0,showCurrency=xlsNilTable,showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
    ["7000"]=setmetatable({functionId=7000,currency={[1]=12,[2]=11,[3]=10},color=0,animation=0,showCurrency={[1]=12,[2]=11,[3]=10},showHelp=0,helpFirstPop=0,helpReadEnd=0,helpBtnType=0,hangUpBattle=1},mt),
}
--生成获取数据的方法
---@return CommonCurrencyShow
function GetCommonCurrencyShowData(id)
    return CommonCurrencyShow_Xls[tostring(id)]
end
--自动生成注释
---@class CommonCurrencyShow : table 
---@field functionId number
---@field currency table
---@field color number
---@field animation number
---@field showCurrency table
---@field showHelp number
---@field helpFirstPop number
---@field helpReadEnd number
---@field helpBtnType number
---@field hangUpBattle number
