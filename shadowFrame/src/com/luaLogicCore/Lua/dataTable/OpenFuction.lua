local default = {id=0,conditionId=0,toastText="",toast=0,iosDefaultValue=0,lock=0,lockTimeID=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class OpenFuction_Xls : table 
OpenFuction_Xls =
{
    ["100"]=setmetatable({id=100,conditionId=101,toastText="",toast=0},mt),
    ["110"]=setmetatable({id=110,conditionId=101,toastText="",toast=0},mt),
    ["111"]=setmetatable({id=111,conditionId=6101101,toastText="<权限解锁·成就>",toast=1},mt),
    ["120"]=setmetatable({id=120,conditionId=6101102,toastText="",toast=0},mt),
    ["121"]=setmetatable({id=121,conditionId=6101102,toastText="",toast=0},mt),
    ["122"]=setmetatable({id=122,conditionId=6101102,toastText="",toast=0},mt),
    ["123"]=setmetatable({id=123,conditionId=0,toastText="",toast=0},mt),
    ["124"]=setmetatable({id=124,conditionId=6101102,toastText="",toast=0},mt),
    ["130"]=setmetatable({id=130,conditionId=6101101,toastText="",toast=0},mt),
    ["140"]=setmetatable({id=140,conditionId=101,toastText="",toast=0},mt),
    ["150"]=setmetatable({id=150,conditionId=101,toastText="",toast=0},mt),
    ["160"]=setmetatable({id=160,conditionId=6101101,toastText="",toast=0},mt),
    ["170"]=setmetatable({id=170,conditionId=101,toastText="",toast=0},mt),
    ["180"]=setmetatable({id=180,conditionId=6461101,toastText="<权限解锁·商城>",toast=1},mt),
    ["190"]=setmetatable({id=190,conditionId=6461101,toastText="",toast=0},mt),
    ["200"]=setmetatable({id=200,conditionId=6101101,toastText="",toast=0},mt),
    ["201"]=setmetatable({id=201,conditionId=6101101,toastText="",toast=0},mt),
    ["202"]=setmetatable({id=202,conditionId=0,toastText="",toast=0},mt),
    ["203"]=setmetatable({id=203,conditionId=6101101,toastText="",toast=0},mt),
    ["204"]=setmetatable({id=204,conditionId=6461101,toastText="",toast=0},mt),
    ["205"]=setmetatable({id=205,conditionId=9001,toastText="",toast=0},mt),
    ["210"]=setmetatable({id=210,conditionId=6101102,toastText="",toast=0},mt),
    ["211"]=setmetatable({id=211,conditionId=6101102,toastText="",toast=0},mt),
    ["212"]=setmetatable({id=212,conditionId=0,toastText="",toast=0},mt),
    ["220"]=setmetatable({id=220,conditionId=0,toastText="",toast=0},mt),
    ["221"]=setmetatable({id=221,conditionId=0,toastText="",toast=0},mt),
    ["230"]=setmetatable({id=230,conditionId=101,toastText="",toast=0},mt),
    ["240"]=setmetatable({id=240,conditionId=0,toastText="",toast=0},mt),
    ["250"]=setmetatable({id=250,conditionId=101,toastText="",toast=0},mt),
    ["251"]=setmetatable({id=251,conditionId=101,toastText="",toast=0},mt),
    ["252"]=setmetatable({id=252,conditionId=101,toastText="",toast=0},mt),
    ["253"]=setmetatable({id=253,conditionId=6102113,toastText="<权限解锁·挑战>",toast=1},mt),
    ["254"]=setmetatable({id=254,conditionId=0,toastText="",toast=0},mt),
    ["255"]=setmetatable({id=255,conditionId=0,toastText="",toast=0},mt),
    ["256"]=setmetatable({id=256,conditionId=0,toastText="",toast=0},mt),
    ["257"]=setmetatable({id=257,conditionId=6101110,toastText="",toast=0},mt),
    ["258"]=setmetatable({id=258,conditionId=0,toastText="",toast=0},mt),
    ["259"]=setmetatable({id=259,conditionId=6461101,toastText="<权限解锁·回忆>",toast=1},mt),
    ["270"]=setmetatable({id=270,conditionId=101,toastText="",toast=0},mt),
    ["271"]=setmetatable({id=271,conditionId=101,toastText="",toast=0},mt),
    ["272"]=setmetatable({id=272,conditionId=101,toastText="",toast=0},mt),
    ["273"]=setmetatable({id=273,conditionId=101,toastText="",toast=0},mt),
    ["274"]=setmetatable({id=274,conditionId=101,toastText="",toast=0},mt),
    ["275"]=setmetatable({id=275,conditionId=0,toastText="",toast=0},mt),
    ["280"]=setmetatable({id=280,conditionId=101,toastText="",toast=0},mt),
    ["281"]=setmetatable({id=281,conditionId=101,toastText="",toast=0},mt),
    ["282"]=setmetatable({id=282,conditionId=101,toastText="",toast=0},mt),
    ["283"]=setmetatable({id=283,conditionId=101,toastText="",toast=0},mt),
    ["284"]=setmetatable({id=284,conditionId=101,toastText="",toast=0},mt),
    ["285"]=setmetatable({id=285,conditionId=0,toastText="",toast=0},mt),
    ["286"]=setmetatable({id=286,conditionId=6101103,toastText="",toast=0},mt),
    ["290"]=setmetatable({id=290,conditionId=6101103,toastText="",toast=0},mt),
    ["291"]=setmetatable({id=291,conditionId=6101103,toastText="",toast=0},mt),
    ["292"]=setmetatable({id=292,conditionId=6101103,toastText="",toast=0},mt),
    ["293"]=setmetatable({id=293,conditionId=6101103,toastText="",toast=0},mt),
    ["294"]=setmetatable({id=294,conditionId=6101110,toastText="<权限解锁·常规作战>",toast=1},mt),
    ["295"]=setmetatable({id=295,conditionId=6101110,toastText="<权限解锁·异生醒转>",toast=1},mt),
    ["296"]=setmetatable({id=296,conditionId=6102103,toastText="<权限解锁·竟日战心>",toast=1},mt),
    ["297"]=setmetatable({id=297,conditionId=6102106,toastText="<权限解锁·解构测试>",toast=1},mt),
    ["298"]=setmetatable({id=298,conditionId=0,toastText="",toast=0},mt),
    ["300"]=setmetatable({id=300,conditionId=0,toastText="<权限解锁·虚空火光>",toast=1},mt),
    ["350"]=setmetatable({id=350,conditionId=6103112,toastText="<权限解锁·交界虚空>",toast=1},mt),
    ["351"]=setmetatable({id=351,conditionId=6500001,toastText="<权限解锁·虚空·解构>",toast=0},mt),
    ["397"]=setmetatable({id=397,conditionId=6102101,toastText="",toast=0},mt),
    ["398"]=setmetatable({id=398,conditionId=6102101,toastText="",toast=0,iosDefaultValue=1},mt),
    ["399"]=setmetatable({id=399,conditionId=0,toastText="<权限解锁·意识深潜>",toast=0},mt),
    ["400"]=setmetatable({id=400,conditionId=6102104,toastText="",toast=0,iosDefaultValue=1},mt),
    ["401"]=setmetatable({id=401,conditionId=6102104,toastText="<权限解锁·舰体修整>",toast=1,iosDefaultValue=1},mt),
    ["402"]=setmetatable({id=402,conditionId=6102108,toastText="<权限解锁·聚餐>",toast=1,iosDefaultValue=1},mt),
    ["403"]=setmetatable({id=403,conditionId=6102104,toastText="<权限解锁·巡视任务>",toast=1,iosDefaultValue=1},mt),
    ["404"]=setmetatable({id=404,conditionId=0,toastText="",toast=0,iosDefaultValue=1},mt),
    ["410"]=setmetatable({id=410,conditionId=101,toastText="",toast=0,iosDefaultValue=1},mt),
    ["420"]=setmetatable({id=420,conditionId=620,toastText="<权限解锁·脉流巡检>",toast=0,iosDefaultValue=1},mt),
    ["430"]=setmetatable({id=430,conditionId=101,toastText="",toast=0},mt),
    ["440"]=setmetatable({id=440,conditionId=635,toastText="<权限解锁·联行>",toast=0,iosDefaultValue=0,lock=1,lockTimeID=200001},mt),
    ["450"]=setmetatable({id=450,conditionId=6461101,toastText="",toast=0},mt),
    ["460"]=setmetatable({id=460,conditionId=6461101,toastText="",toast=0},mt),
    ["461"]=setmetatable({id=461,conditionId=101,toastText="",toast=0},mt),
    ["4610"]=setmetatable({id=4610,conditionId=0,toastText="",toast=0},mt),
    ["470"]=setmetatable({id=470,conditionId=101,toastText="",toast=0},mt),
    ["480"]=setmetatable({id=480,conditionId=6101112,toastText="",toast=0},mt),
    ["481"]=setmetatable({id=481,conditionId=6101112,toastText="",toast=0},mt),
    ["482"]=setmetatable({id=482,conditionId=0,toastText="",toast=0},mt),
    ["483"]=setmetatable({id=483,conditionId=6101112,toastText="",toast=0},mt),
    ["484"]=setmetatable({id=484,conditionId=6101112,toastText="",toast=0},mt),
    ["500"]=setmetatable({id=500,conditionId=6461101,toastText="",toast=0},mt),
    ["510"]=setmetatable({id=510,conditionId=6461101,toastText="",toast=0},mt),
    ["600"]=setmetatable({id=600,conditionId=6102112,toastText="<权限解锁·异空战线>",toast=0},mt),
    ["801"]=setmetatable({id=801,conditionId=0,toastText="<权限解锁·赛季>",toast=0},mt),
    ["802"]=setmetatable({id=802,conditionId=620,toastText="",toast=0},mt),
    ["900"]=setmetatable({id=900,conditionId=6104112,toastText="<权限解锁·裂隙封锁>",toast=0},mt),
    ["803"]=setmetatable({id=803,conditionId=1,toastText="<退出游戏>",toast=0},mt),
}
--生成获取数据的方法
---@return OpenFuction
function GetOpenFuctionData(id)
    return OpenFuction_Xls[tostring(id)]
end
--自动生成注释
---@class OpenFuction : table 
---@field id number
---@field conditionId number
---@field toastText string
---@field toast number
---@field iosDefaultValue number
---@field lock number
---@field lockTimeID number
