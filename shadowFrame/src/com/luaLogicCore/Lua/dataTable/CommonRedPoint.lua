local default = {id=0,parent=0,sendToServer=0,display=0,postEvent=0,openFunctionId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonRedPoint_Xls : table 
CommonRedPoint_Xls =
{
    ["1"]=setmetatable({id=1,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=100},mt),
    ["2"]=setmetatable({id=2,parent=1,sendToServer=0,display=1,postEvent=400,openFunctionId=286},mt),
    ["3"]=setmetatable({id=3,parent=1,sendToServer=0,display=1,postEvent=400,openFunctionId=160},mt),
    ["4"]=setmetatable({id=4,parent=3,sendToServer=1,display=1,postEvent=0,openFunctionId=160},mt),
    ["5"]=setmetatable({id=5,parent=3,sendToServer=1,display=1,postEvent=0,openFunctionId=160},mt),
    ["6"]=setmetatable({id=6,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=140},mt),
    ["7"]=setmetatable({id=7,parent=0,sendToServer=1,display=1,postEvent=400,openFunctionId=293},mt),
    ["8"]=setmetatable({id=8,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=120},mt),
    ["9"]=setmetatable({id=9,parent=8,sendToServer=0,display=1,postEvent=0,openFunctionId=122},mt),
    ["10"]=setmetatable({id=10,parent=8,sendToServer=0,display=1,postEvent=0,openFunctionId=121},mt),
    ["11"]=setmetatable({id=11,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=292},mt),
    ["12"]=setmetatable({id=12,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=100},mt),
    ["13"]=setmetatable({id=13,parent=12,sendToServer=0,display=1,postEvent=0,openFunctionId=252},mt),
    ["14"]=setmetatable({id=14,parent=13,sendToServer=0,display=1,postEvent=0,openFunctionId=252},mt),
    ["15"]=setmetatable({id=15,parent=13,sendToServer=0,display=1,postEvent=0,openFunctionId=253},mt),
    ["16"]=setmetatable({id=16,parent=1,sendToServer=0,display=1,postEvent=400,openFunctionId=111},mt),
    ["17"]=setmetatable({id=17,parent=58,sendToServer=1,display=1,postEvent=0,openFunctionId=110},mt),
    ["18"]=setmetatable({id=18,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=230},mt),
    ["19"]=setmetatable({id=19,parent=1,sendToServer=0,display=1,postEvent=400,openFunctionId=410},mt),
    ["20"]=setmetatable({id=20,parent=0,sendToServer=1,display=1,postEvent=0,openFunctionId=0},mt),
    ["21"]=setmetatable({id=21,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=350},mt),
    ["22"]=setmetatable({id=22,parent=21,sendToServer=0,display=1,postEvent=0,openFunctionId=350},mt),
    ["23"]=setmetatable({id=23,parent=21,sendToServer=0,display=1,postEvent=0,openFunctionId=350},mt),
    ["24"]=setmetatable({id=24,parent=21,sendToServer=0,display=1,postEvent=0,openFunctionId=350},mt),
    ["25"]=setmetatable({id=25,parent=0,sendToServer=0,display=0,postEvent=0,openFunctionId=0},mt),
    ["26"]=setmetatable({id=26,parent=0,sendToServer=0,display=0,postEvent=0,openFunctionId=280},mt),
    ["27"]=setmetatable({id=27,parent=26,sendToServer=1,display=1,postEvent=0,openFunctionId=283},mt),
    ["28"]=setmetatable({id=28,parent=26,sendToServer=1,display=0,postEvent=0,openFunctionId=284},mt),
    ["29"]=setmetatable({id=29,parent=26,sendToServer=1,display=0,postEvent=0,openFunctionId=281},mt),
    ["30"]=setmetatable({id=30,parent=26,sendToServer=1,display=0,postEvent=0,openFunctionId=282},mt),
    ["31"]=setmetatable({id=31,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=180},mt),
    ["32"]=setmetatable({id=32,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=202},mt),
    ["33"]=setmetatable({id=33,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=0},mt),
    ["34"]=setmetatable({id=34,parent=33,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["35"]=setmetatable({id=35,parent=33,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["36"]=setmetatable({id=36,parent=35,sendToServer=0,display=1,postEvent=9001,openFunctionId=0},mt),
    ["37"]=setmetatable({id=37,parent=35,sendToServer=0,display=1,postEvent=9001,openFunctionId=0},mt),
    ["38"]=setmetatable({id=38,parent=34,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["39"]=setmetatable({id=39,parent=12,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["40"]=setmetatable({id=40,parent=12,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["41"]=setmetatable({id=41,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=300},mt),
    ["42"]=setmetatable({id=42,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=420},mt),
    ["43"]=setmetatable({id=43,parent=42,sendToServer=0,display=1,postEvent=0,openFunctionId=420},mt),
    ["44"]=setmetatable({id=44,parent=42,sendToServer=0,display=1,postEvent=0,openFunctionId=420},mt),
    ["45"]=setmetatable({id=45,parent=42,sendToServer=0,display=1,postEvent=0,openFunctionId=420},mt),
    ["46"]=setmetatable({id=46,parent=42,sendToServer=0,display=1,postEvent=0,openFunctionId=420},mt),
    ["47"]=setmetatable({id=47,parent=42,sendToServer=0,display=1,postEvent=0,openFunctionId=420},mt),
    ["48"]=setmetatable({id=48,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=0},mt),
    ["49"]=setmetatable({id=49,parent=48,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["50"]=setmetatable({id=50,parent=49,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["51"]=setmetatable({id=51,parent=49,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["52"]=setmetatable({id=52,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["53"]=setmetatable({id=53,parent=52,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["54"]=setmetatable({id=54,parent=52,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["55"]=setmetatable({id=55,parent=48,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["56"]=setmetatable({id=56,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=204},mt),
    ["57"]=setmetatable({id=57,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=211},mt),
    ["58"]=setmetatable({id=58,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=110},mt),
    ["59"]=setmetatable({id=59,parent=58,sendToServer=1,display=1,postEvent=0,openFunctionId=110},mt),
    ["60"]=setmetatable({id=60,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["61"]=setmetatable({id=61,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["70"]=setmetatable({id=70,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=0},mt),
    ["71"]=setmetatable({id=71,parent=70,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["72"]=setmetatable({id=72,parent=71,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["73"]=setmetatable({id=73,parent=70,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["74"]=setmetatable({id=74,parent=73,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["75"]=setmetatable({id=75,parent=70,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["62"]=setmetatable({id=62,parent=84,sendToServer=0,display=1,postEvent=0,openFunctionId=600},mt),
    ["63"]=setmetatable({id=63,parent=62,sendToServer=0,display=1,postEvent=0,openFunctionId=600},mt),
    ["76"]=setmetatable({id=76,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=398},mt),
    ["77"]=setmetatable({id=77,parent=76,sendToServer=0,display=1,postEvent=0,openFunctionId=398},mt),
    ["78"]=setmetatable({id=78,parent=76,sendToServer=1,display=1,postEvent=0,openFunctionId=398},mt),
    ["80"]=setmetatable({id=80,parent=78,sendToServer=0,display=0,postEvent=0,openFunctionId=398},mt),
    ["81"]=setmetatable({id=81,parent=78,sendToServer=0,display=0,postEvent=0,openFunctionId=398},mt),
    ["82"]=setmetatable({id=82,parent=84,sendToServer=1,display=1,postEvent=0,openFunctionId=300},mt),
    ["83"]=setmetatable({id=83,parent=84,sendToServer=1,display=1,postEvent=0,openFunctionId=350},mt),
    ["84"]=setmetatable({id=84,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=450},mt),
    ["85"]=setmetatable({id=85,parent=0,sendToServer=0,display=1,postEvent=0,openFunctionId=510},mt),
    ["86"]=setmetatable({id=86,parent=85,sendToServer=0,display=1,postEvent=0,openFunctionId=510},mt),
    ["87"]=setmetatable({id=87,parent=85,sendToServer=0,display=1,postEvent=0,openFunctionId=510},mt),
    ["88"]=setmetatable({id=88,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=460},mt),
    ["89"]=setmetatable({id=89,parent=0,sendToServer=0,display=1,postEvent=15002,openFunctionId=0},mt),
    ["110"]=setmetatable({id=110,parent=76,sendToServer=0,display=1,postEvent=0,openFunctionId=398},mt),
    ["121"]=setmetatable({id=121,parent=76,sendToServer=0,display=1,postEvent=0,openFunctionId=398},mt),
    ["122"]=setmetatable({id=122,parent=76,sendToServer=1,display=1,postEvent=0,openFunctionId=398},mt),
    ["95"]=setmetatable({id=95,parent=8,sendToServer=0,display=1,postEvent=0,openFunctionId=124},mt),
    ["123"]=setmetatable({id=123,parent=0,sendToServer=0,display=1,postEvent=400,openFunctionId=190},mt),
    ["130"]=setmetatable({id=130,parent=80,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["131"]=setmetatable({id=131,parent=130,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["132"]=setmetatable({id=132,parent=130,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["133"]=setmetatable({id=133,parent=130,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
    ["134"]=setmetatable({id=134,parent=130,sendToServer=0,display=1,postEvent=0,openFunctionId=0},mt),
}
--生成获取数据的方法
---@return CommonRedPoint
function GetCommonRedPointData(id)
    return CommonRedPoint_Xls[tostring(id)]
end
--自动生成注释
---@class CommonRedPoint : table 
---@field id number
---@field parent number
---@field sendToServer number
---@field display number
---@field postEvent number
---@field openFunctionId number
