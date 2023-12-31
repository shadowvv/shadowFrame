local default = {id=0,skillId=xlsNilTable,skillAddType=xlsNilTable,isActive=0,checkTypeAmount=0,quality=0,type=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeBuff_Xls : table 
RoguelikeBuff_Xls =
{
    ["1201"]=setmetatable({id=1201,skillId={[1]=2030010},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=1},mt),
    ["1202"]=setmetatable({id=1202,skillId={[1]=2030040},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=2,type=1},mt),
    ["1203"]=setmetatable({id=1203,skillId={[1]=2030070},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=2,type=1},mt),
    ["1204"]=setmetatable({id=1204,skillId={[1]=2030100},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=1,quality=2,type=1},mt),
    ["1205"]=setmetatable({id=1205,skillId={[1]=2030130},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=1,quality=2,type=1},mt),
    ["1206"]=setmetatable({id=1206,skillId={[1]=2030160},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=1},mt),
    ["1208"]=setmetatable({id=1208,skillId={[1]=2031120},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=2,type=1},mt),
    ["1209"]=setmetatable({id=1209,skillId={[1]=2031150},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=2,type=1},mt),
    ["1210"]=setmetatable({id=1210,skillId={[1]=2031220,[2]=2031221},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=1},mt),
    ["1301"]=setmetatable({id=1301,skillId={[1]=2030020},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=1},mt),
    ["1302"]=setmetatable({id=1302,skillId={[1]=2030050},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=3,type=1},mt),
    ["1303"]=setmetatable({id=1303,skillId={[1]=2030080},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=3,type=1},mt),
    ["1304"]=setmetatable({id=1304,skillId={[1]=2030110},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=1,quality=3,type=1},mt),
    ["1305"]=setmetatable({id=1305,skillId={[1]=2030140},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=1,quality=3,type=1},mt),
    ["1306"]=setmetatable({id=1306,skillId={[1]=2030170},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=1},mt),
    ["1308"]=setmetatable({id=1308,skillId={[1]=2031130},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=3,type=1},mt),
    ["1309"]=setmetatable({id=1309,skillId={[1]=2031160},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=3,type=1},mt),
    ["1310"]=setmetatable({id=1310,skillId={[1]=2031230,[2]=2031231},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=1},mt),
    ["1401"]=setmetatable({id=1401,skillId={[1]=2030030},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1402"]=setmetatable({id=1402,skillId={[1]=2030060},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=4,type=1},mt),
    ["1403"]=setmetatable({id=1403,skillId={[1]=2030090},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1404"]=setmetatable({id=1404,skillId={[1]=2030120},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=1,quality=4,type=1},mt),
    ["1405"]=setmetatable({id=1405,skillId={[1]=2030150},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=1,quality=4,type=1},mt),
    ["1406"]=setmetatable({id=1406,skillId={[1]=2030180},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1407"]=setmetatable({id=1407,skillId={[1]=2030190},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1408"]=setmetatable({id=1408,skillId={[1]=2030200},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1410"]=setmetatable({id=1410,skillId={[1]=2031140},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1411"]=setmetatable({id=1411,skillId={[1]=2031170},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1412"]=setmetatable({id=1412,skillId={[1]=2031180},skillAddType={[1]=1,[2]=3},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1413"]=setmetatable({id=1413,skillId={[1]=2031240,[2]=2031241},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=1},mt),
    ["1490"]=setmetatable({id=1490,skillId={[1]=102},skillAddType={[1]=0},isActive=1,checkTypeAmount=0,quality=4,type=1},mt),
    ["1491"]=setmetatable({id=1491,skillId={[1]=10202},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=1},mt),
    ["1492"]=setmetatable({id=1492,skillId={[1]=1020300},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=1},mt),
    ["1493"]=setmetatable({id=1493,skillId={[1]=10204},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=1},mt),
    ["2201"]=setmetatable({id=2201,skillId={[1]=2020010},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=2},mt),
    ["2202"]=setmetatable({id=2202,skillId={[1]=2020040},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=2,type=2},mt),
    ["2203"]=setmetatable({id=2203,skillId={[1]=2020070},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=2,type=2},mt),
    ["2204"]=setmetatable({id=2204,skillId={[1]=2020100},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=1,quality=2,type=2},mt),
    ["2205"]=setmetatable({id=2205,skillId={[1]=2020130},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=1,quality=2,type=2},mt),
    ["2206"]=setmetatable({id=2206,skillId={[1]=2020160},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=2},mt),
    ["2208"]=setmetatable({id=2208,skillId={[1]=2020960},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=2,type=2},mt),
    ["2209"]=setmetatable({id=2209,skillId={[1]=2020990},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=2,type=2},mt),
    ["2210"]=setmetatable({id=2210,skillId={[1]=2021060,[2]=2021061},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=2},mt),
    ["2301"]=setmetatable({id=2301,skillId={[1]=2020020},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=2},mt),
    ["2302"]=setmetatable({id=2302,skillId={[1]=2020050},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=3,type=2},mt),
    ["2303"]=setmetatable({id=2303,skillId={[1]=2020080},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=3,type=2},mt),
    ["2304"]=setmetatable({id=2304,skillId={[1]=2020110},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=1,quality=3,type=2},mt),
    ["2305"]=setmetatable({id=2305,skillId={[1]=2020140},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=1,quality=3,type=2},mt),
    ["2306"]=setmetatable({id=2306,skillId={[1]=2020170},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=2},mt),
    ["2308"]=setmetatable({id=2308,skillId={[1]=2020970},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=3,type=2},mt),
    ["2309"]=setmetatable({id=2309,skillId={[1]=2021000},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=3,type=2},mt),
    ["2310"]=setmetatable({id=2310,skillId={[1]=2021070,[2]=2021071},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=2},mt),
    ["2401"]=setmetatable({id=2401,skillId={[1]=2020030},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2402"]=setmetatable({id=2402,skillId={[1]=2020060},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=4,type=2},mt),
    ["2403"]=setmetatable({id=2403,skillId={[1]=2020090},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2404"]=setmetatable({id=2404,skillId={[1]=2020120},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=1,quality=4,type=2},mt),
    ["2405"]=setmetatable({id=2405,skillId={[1]=2020150},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=1,quality=4,type=2},mt),
    ["2406"]=setmetatable({id=2406,skillId={[1]=2020180},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2407"]=setmetatable({id=2407,skillId={[1]=2020210,[2]=2020211,[3]=2020212},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2408"]=setmetatable({id=2408,skillId={[1]=2020220},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2410"]=setmetatable({id=2410,skillId={[1]=2020980},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2411"]=setmetatable({id=2411,skillId={[1]=2021010},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2412"]=setmetatable({id=2412,skillId={[1]=2021020},skillAddType={[1]=1,[2]=2},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2413"]=setmetatable({id=2413,skillId={[1]=2021080,[2]=2021081},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=2},mt),
    ["2490"]=setmetatable({id=2490,skillId={[1]=101},skillAddType={[1]=0},isActive=1,checkTypeAmount=0,quality=4,type=2},mt),
    ["2491"]=setmetatable({id=2491,skillId={[1]=1010205},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=2},mt),
    ["2492"]=setmetatable({id=2492,skillId={[1]=10103},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=2},mt),
    ["2493"]=setmetatable({id=2493,skillId={[1]=10104},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=2},mt),
    ["3201"]=setmetatable({id=3201,skillId={[1]=2040010},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=3},mt),
    ["3202"]=setmetatable({id=3202,skillId={[1]=2040040},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=2,type=3},mt),
    ["3203"]=setmetatable({id=3203,skillId={[1]=2040070},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=2,type=3},mt),
    ["3204"]=setmetatable({id=3204,skillId={[1]=2040100},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=1,quality=2,type=3},mt),
    ["3205"]=setmetatable({id=3205,skillId={[1]=2040130},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=1,quality=2,type=3},mt),
    ["3206"]=setmetatable({id=3206,skillId={[1]=2040160},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=3},mt),
    ["3208"]=setmetatable({id=3208,skillId={[1]=2041280},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=2,type=3},mt),
    ["3209"]=setmetatable({id=3209,skillId={[1]=2041310},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=2,type=3},mt),
    ["3210"]=setmetatable({id=3210,skillId={[1]=2041380,[2]=2041381},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=3},mt),
    ["3301"]=setmetatable({id=3301,skillId={[1]=2040020},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=3},mt),
    ["3302"]=setmetatable({id=3302,skillId={[1]=2040050},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=3,type=3},mt),
    ["3303"]=setmetatable({id=3303,skillId={[1]=2040080},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=3,type=3},mt),
    ["3304"]=setmetatable({id=3304,skillId={[1]=2040110},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=1,quality=3,type=3},mt),
    ["3305"]=setmetatable({id=3305,skillId={[1]=2040140},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=1,quality=3,type=3},mt),
    ["3306"]=setmetatable({id=3306,skillId={[1]=2040170},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=3},mt),
    ["3308"]=setmetatable({id=3308,skillId={[1]=2041290},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=3,type=3},mt),
    ["3309"]=setmetatable({id=3309,skillId={[1]=2041320},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=3,type=3},mt),
    ["3310"]=setmetatable({id=3310,skillId={[1]=2041390,[2]=2041391},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=3},mt),
    ["3401"]=setmetatable({id=3401,skillId={[1]=2040030},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3402"]=setmetatable({id=3402,skillId={[1]=2040060},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=4,type=3},mt),
    ["3403"]=setmetatable({id=3403,skillId={[1]=2040090},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3404"]=setmetatable({id=3404,skillId={[1]=2040120},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=1,quality=4,type=3},mt),
    ["3405"]=setmetatable({id=3405,skillId={[1]=2040150},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=1,quality=4,type=3},mt),
    ["3406"]=setmetatable({id=3406,skillId={[1]=2040180},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3407"]=setmetatable({id=3407,skillId={[1]=2040230,[2]=2040231,[3]=2040233},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3408"]=setmetatable({id=3408,skillId={[1]=2040240},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3410"]=setmetatable({id=3410,skillId={[1]=2041300},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3411"]=setmetatable({id=3411,skillId={[1]=2041330},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3412"]=setmetatable({id=3412,skillId={[1]=2041340},skillAddType={[1]=1,[2]=4},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3413"]=setmetatable({id=3413,skillId={[1]=2041400,[2]=2041401},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=3},mt),
    ["3490"]=setmetatable({id=3490,skillId={[1]=103},skillAddType={[1]=0},isActive=1,checkTypeAmount=0,quality=4,type=3},mt),
    ["3491"]=setmetatable({id=3491,skillId={[1]=10302},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=3},mt),
    ["3492"]=setmetatable({id=3492,skillId={[1]=10303},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=3},mt),
    ["3493"]=setmetatable({id=3493,skillId={[1]=10304},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=3},mt),
    ["4201"]=setmetatable({id=4201,skillId={[1]=2050010},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=4},mt),
    ["4202"]=setmetatable({id=4202,skillId={[1]=2050040},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=2,type=4},mt),
    ["4203"]=setmetatable({id=4203,skillId={[1]=2050070},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=2,type=4},mt),
    ["4204"]=setmetatable({id=4204,skillId={[1]=2050100},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=1,quality=2,type=4},mt),
    ["4205"]=setmetatable({id=4205,skillId={[1]=2050130},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=1,quality=2,type=4},mt),
    ["4206"]=setmetatable({id=4206,skillId={[1]=2050160},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=4},mt),
    ["4208"]=setmetatable({id=4208,skillId={[1]=2051440},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=2,type=4},mt),
    ["4209"]=setmetatable({id=4209,skillId={[1]=2051470},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=2,type=4},mt),
    ["4210"]=setmetatable({id=4210,skillId={[1]=2051540,[2]=2051541},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=4},mt),
    ["4301"]=setmetatable({id=4301,skillId={[1]=2050020},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=4},mt),
    ["4302"]=setmetatable({id=4302,skillId={[1]=2050050},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=3,type=4},mt),
    ["4303"]=setmetatable({id=4303,skillId={[1]=2050080},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=3,type=4},mt),
    ["4304"]=setmetatable({id=4304,skillId={[1]=2050110},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=1,quality=3,type=4},mt),
    ["4305"]=setmetatable({id=4305,skillId={[1]=2050140},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=1,quality=3,type=4},mt),
    ["4306"]=setmetatable({id=4306,skillId={[1]=2050170},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=4},mt),
    ["4308"]=setmetatable({id=4308,skillId={[1]=2051450},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=3,type=4},mt),
    ["4309"]=setmetatable({id=4309,skillId={[1]=2051480},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=3,type=4},mt),
    ["4310"]=setmetatable({id=4310,skillId={[1]=2051550,[2]=2051551},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=4},mt),
    ["4401"]=setmetatable({id=4401,skillId={[1]=2050030},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4402"]=setmetatable({id=4402,skillId={[1]=2050060},skillAddType={[1]=2},isActive=0,checkTypeAmount=1,quality=4,type=4},mt),
    ["4403"]=setmetatable({id=4403,skillId={[1]=2050090},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4404"]=setmetatable({id=4404,skillId={[1]=2050120},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=1,quality=4,type=4},mt),
    ["4405"]=setmetatable({id=4405,skillId={[1]=2050150},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=1,quality=4,type=4},mt),
    ["4406"]=setmetatable({id=4406,skillId={[1]=2050180},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4407"]=setmetatable({id=4407,skillId={[1]=2040250},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4408"]=setmetatable({id=4408,skillId={[1]=2040260,[2]=2040261},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4410"]=setmetatable({id=4410,skillId={[1]=2051460},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4411"]=setmetatable({id=4411,skillId={[1]=2051490},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4412"]=setmetatable({id=4412,skillId={[1]=2051500},skillAddType={[1]=1,[2]=5},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4413"]=setmetatable({id=4413,skillId={[1]=2051560,[2]=2051561},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=4},mt),
    ["4490"]=setmetatable({id=4490,skillId={[1]=104},skillAddType={[1]=0},isActive=1,checkTypeAmount=0,quality=4,type=4},mt),
    ["4491"]=setmetatable({id=4491,skillId={[1]=10402},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=4},mt),
    ["4492"]=setmetatable({id=4492,skillId={[1]=10403},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=4},mt),
    ["4493"]=setmetatable({id=4493,skillId={[1]=10404},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=4},mt),
    ["5201"]=setmetatable({id=5201,skillId={[1]=2000270},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5202"]=setmetatable({id=5202,skillId={[1]=2000300},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5203"]=setmetatable({id=5203,skillId={[1]=2000330},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5204"]=setmetatable({id=5204,skillId={[1]=2000360},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5205"]=setmetatable({id=5205,skillId={[1]=2000390},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5206"]=setmetatable({id=5206,skillId={[1]=2000420},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5207"]=setmetatable({id=5207,skillId={[1]=2000450},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5208"]=setmetatable({id=5208,skillId={[1]=2000480},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5209"]=setmetatable({id=5209,skillId={[1]=2001570},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5210"]=setmetatable({id=5210,skillId={[1]=2001600},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5211"]=setmetatable({id=5211,skillId={[1]=2001630},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5212"]=setmetatable({id=5212,skillId={[1]=2001660},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5213"]=setmetatable({id=5213,skillId={[1]=2001690},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=2,type=5},mt),
    ["5301"]=setmetatable({id=5301,skillId={[1]=2000280},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5302"]=setmetatable({id=5302,skillId={[1]=2000310},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5303"]=setmetatable({id=5303,skillId={[1]=2000340},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5304"]=setmetatable({id=5304,skillId={[1]=2000370},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5305"]=setmetatable({id=5305,skillId={[1]=2000400},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5306"]=setmetatable({id=5306,skillId={[1]=2000430},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5307"]=setmetatable({id=5307,skillId={[1]=2000460},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5308"]=setmetatable({id=5308,skillId={[1]=2000490},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5309"]=setmetatable({id=5309,skillId={[1]=2001580},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5310"]=setmetatable({id=5310,skillId={[1]=2001610},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5311"]=setmetatable({id=5311,skillId={[1]=2001640},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5312"]=setmetatable({id=5312,skillId={[1]=2001670},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5313"]=setmetatable({id=5313,skillId={[1]=2001700},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=3,type=5},mt),
    ["5401"]=setmetatable({id=5401,skillId={[1]=2000290},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5402"]=setmetatable({id=5402,skillId={[1]=2000320},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5403"]=setmetatable({id=5403,skillId={[1]=2000350},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5404"]=setmetatable({id=5404,skillId={[1]=2000380},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5405"]=setmetatable({id=5405,skillId={[1]=2000410},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5406"]=setmetatable({id=5406,skillId={[1]=2000440},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5407"]=setmetatable({id=5407,skillId={[1]=2000470},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5408"]=setmetatable({id=5408,skillId={[1]=2000500},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5409"]=setmetatable({id=5409,skillId={[1]=2001590},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5410"]=setmetatable({id=5410,skillId={[1]=2001620},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5411"]=setmetatable({id=5411,skillId={[1]=2001650},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5412"]=setmetatable({id=5412,skillId={[1]=2001680},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5413"]=setmetatable({id=5413,skillId={[1]=2001710},skillAddType={[1]=2},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5414"]=setmetatable({id=5414,skillId={[1]=2001720},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5415"]=setmetatable({id=5415,skillId={[1]=2001730,[2]=2001731},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5416"]=setmetatable({id=5416,skillId={[1]=2001740},skillAddType={[1]=0},isActive=0,checkTypeAmount=0,quality=4,type=5},mt),
    ["5490"]=setmetatable({id=5490,skillId={[1]=104},skillAddType={[1]=0},isActive=1,checkTypeAmount=0,quality=4,type=5},mt),
    ["5491"]=setmetatable({id=5491,skillId={[1]=10402},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=5},mt),
    ["5492"]=setmetatable({id=5492,skillId={[1]=10403},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=5},mt),
    ["5493"]=setmetatable({id=5493,skillId={[1]=10404},skillAddType={[1]=0},isActive=2,checkTypeAmount=0,quality=4,type=5},mt),
}
--生成获取数据的方法
---@return RoguelikeBuff
function GetRoguelikeBuffData(id)
    return RoguelikeBuff_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeBuff : table 
---@field id number
---@field skillId table
---@field skillAddType table
---@field isActive number
---@field checkTypeAmount number
---@field quality number
---@field type number
