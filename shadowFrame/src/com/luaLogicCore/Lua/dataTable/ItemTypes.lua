local default = {id=0,remarks="",type=0,subType=0,autoUse=0,manualUse=0,useType=0,isShow=0,accumulateLimitNum=0,limitNum=0,showNum=0,order1=0,order2=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ItemTypes_Xls : table 
ItemTypes_Xls =
{
    ["1"]=setmetatable({id=1,remarks="源晶碎",type=1,subType=1,autoUse=1,manualUse=0,useType=4,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=1,order2=50},mt),
    ["2"]=setmetatable({id=2,remarks="源晶钻",type=1,subType=2,autoUse=1,manualUse=0,useType=3,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=1,order2=40},mt),
    ["3"]=setmetatable({id=3,remarks="贡献点数",type=1,subType=3,autoUse=1,manualUse=0,useType=2,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=100},mt),
    ["4"]=setmetatable({id=4,remarks="感知",type=9,subType=4,autoUse=1,manualUse=0,useType=6,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=270},mt),
    ["5"]=setmetatable({id=5,remarks="导师经验",type=9,subType=5,autoUse=1,manualUse=0,useType=1,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=1,order2=0},mt),
    ["6"]=setmetatable({id=6,remarks="vip进度",type=9,subType=6,autoUse=1,manualUse=0,useType=5,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["7"]=setmetatable({id=7,remarks="斯露德好感度",type=10,subType=8,autoUse=1,manualUse=0,useType=15,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["8"]=setmetatable({id=8,remarks="斯露德经验",type=10,subType=9,autoUse=1,manualUse=0,useType=9,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["9"]=setmetatable({id=9,remarks="武装经验",type=11,subType=10,autoUse=1,manualUse=0,useType=11,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["10"]=setmetatable({id=10,remarks="镜像经验",type=12,subType=11,autoUse=1,manualUse=0,useType=10,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["11"]=setmetatable({id=11,remarks="兑换货币",type=2,subType=13,autoUse=1,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=1,order2=801},mt),
    ["12"]=setmetatable({id=12,remarks="每日任务活跃度",type=2,subType=14,autoUse=0,manualUse=0,useType=100,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["13"]=setmetatable({id=13,remarks="商店展示用充值货币",type=2,subType=15,autoUse=0,manualUse=0,useType=100,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["14"]=setmetatable({id=14,remarks="战舰经验",type=9,subType=16,autoUse=1,manualUse=0,useType=16,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["15"]=setmetatable({id=15,remarks="战舰体力",type=9,subType=17,autoUse=1,manualUse=0,useType=17,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["16"]=setmetatable({id=16,remarks="战舰天赋",type=2,subType=18,autoUse=0,manualUse=0,useType=100,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["17"]=setmetatable({id=17,remarks="乌拉拉货币",type=2,subType=19,autoUse=0,manualUse=0,useType=100,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["18"]=setmetatable({id=18,remarks="多倍体力货币",type=2,subType=20,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=170},mt),
    ["19"]=setmetatable({id=19,remarks="爬塔货币",type=2,subType=21,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=851},mt),
    ["20"]=setmetatable({id=20,remarks="小战场货币",type=2,subType=22,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=852},mt),
    ["21"]=setmetatable({id=21,remarks="版本活动货币",type=2,subType=23,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=853},mt),
    ["22"]=setmetatable({id=22,remarks="大战场货币",type=2,subType=24,autoUse=0,manualUse=0,useType=100,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["23"]=setmetatable({id=23,remarks="时装票",type=2,subType=26,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=241},mt),
    ["24"]=setmetatable({id=24,remarks="活动门票道具",type=2,subType=27,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["25"]=setmetatable({id=25,remarks="赛季RL天赋道具",type=2,subType=29,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=24005,limitNum=-1,showNum=1,order1=0,order2=400},mt),
    ["26"]=setmetatable({id=26,remarks="活动代币-三叶虫金币",type=2,subType=30,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["200"]=setmetatable({id=200,remarks="源晶钻（程序专用）",type=1,subType=4,autoUse=1,manualUse=0,useType=500,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["40001"]=setmetatable({id=40001,remarks="角色激活道具",type=5,subType=1,autoUse=1,manualUse=0,useType=108,isShow=0,accumulateLimitNum=0,limitNum=1,showNum=0,order1=1,order2=0},mt),
    ["50001"]=setmetatable({id=50001,remarks="角色时装激活道具",type=6,subType=1,autoUse=1,manualUse=0,useType=109,isShow=0,accumulateLimitNum=0,limitNum=1,showNum=0,order1=1,order2=0},mt),
    ["60001"]=setmetatable({id=60001,remarks="武装时装激活道具",type=7,subType=1,autoUse=1,manualUse=0,useType=107,isShow=0,accumulateLimitNum=0,limitNum=1,showNum=0,order1=0,order2=0},mt),
    ["70001"]=setmetatable({id=70001,remarks="导师头像激活道具",type=8,subType=1,autoUse=1,manualUse=0,useType=110,isShow=0,accumulateLimitNum=0,limitNum=1,showNum=0,order1=0,order2=0},mt),
    ["70002"]=setmetatable({id=70002,remarks="导师名片激活道具",type=13,subType=1,autoUse=1,manualUse=0,useType=112,isShow=0,accumulateLimitNum=0,limitNum=1,showNum=0,order1=0,order2=0},mt),
    ["70003"]=setmetatable({id=70003,remarks="导师头像框激活道具",type=14,subType=1,autoUse=1,manualUse=0,useType=113,isShow=0,accumulateLimitNum=0,limitNum=1,showNum=0,order1=0,order2=0},mt),
    ["10001"]=setmetatable({id=10001,remarks="角色升级道具",type=2,subType=1,autoUse=0,manualUse=0,useType=103,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=240},mt),
    ["10002"]=setmetatable({id=10002,remarks="角色突破道具",type=2,subType=2,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=230},mt),
    ["10003"]=setmetatable({id=10003,remarks="角色具现技能点",type=2,subType=3,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=220},mt),
    ["10004"]=setmetatable({id=10004,remarks="角色碎片",type=2,subType=4,autoUse=0,manualUse=0,useType=19,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=280},mt),
    ["10005"]=setmetatable({id=10005,remarks="角色好感度道具",type=2,subType=5,autoUse=0,manualUse=0,useType=102,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=180},mt),
    ["10006"]=setmetatable({id=10006,remarks="武装经验道具",type=2,subType=6,autoUse=0,manualUse=0,useType=105,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=205},mt),
    ["10007"]=setmetatable({id=10007,remarks="武装突破道具",type=2,subType=7,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=200},mt),
    ["10008"]=setmetatable({id=10008,remarks="镜像经验道具",type=2,subType=8,autoUse=0,manualUse=0,useType=104,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=210},mt),
    ["10009"]=setmetatable({id=10009,remarks="普通宝箱（自动使用全部获取）FixedReward",type=2,subType=9,autoUse=1,manualUse=1,useType=101,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=995},mt),
    ["10010"]=setmetatable({id=10010,remarks="自选宝箱OptionalPackageReward",type=2,subType=10,autoUse=0,manualUse=1,useType=116,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=996},mt),
    ["10011"]=setmetatable({id=10011,remarks="体力道具",type=2,subType=11,autoUse=0,manualUse=1,useType=106,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=950},mt),
    ["10012"]=setmetatable({id=10012,remarks="其他道具",type=2,subType=12,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=400},mt),
    ["10013"]=setmetatable({id=10013,remarks="镜像掉落展示",type=2,subType=17,autoUse=0,manualUse=0,useType=100,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["10014"]=setmetatable({id=10014,remarks="战舰体力道具",type=2,subType=16,autoUse=0,manualUse=1,useType=111,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=260},mt),
    ["10015"]=setmetatable({id=10015,remarks="月卡",type=2,subType=22,autoUse=0,manualUse=0,useType=400,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["10016"]=setmetatable({id=10016,remarks="角色自选宝箱OptionalPackageReward",type=2,subType=10,autoUse=0,manualUse=1,useType=116,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=999},mt),
    ["10017"]=setmetatable({id=10017,remarks="普通宝箱（手动使用）FixedReward",type=2,subType=10,autoUse=0,manualUse=1,useType=101,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=998},mt),
    ["10018"]=setmetatable({id=10018,remarks="随机宝箱（自动使用）Drop",type=2,subType=10,autoUse=1,manualUse=0,useType=117,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["10019"]=setmetatable({id=10019,remarks="随机宝箱（手动使用）Drop",type=2,subType=10,autoUse=0,manualUse=1,useType=117,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=997},mt),
    ["10020"]=setmetatable({id=10020,remarks="通行证",type=2,subType=24,autoUse=0,manualUse=0,useType=401,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=330},mt),
    ["10021"]=setmetatable({id=10021,remarks="武器洗练道具",type=2,subType=25,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=190},mt),
    ["20001"]=setmetatable({id=20001,remarks="武装",type=3,subType=1,autoUse=0,manualUse=0,useType=200,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["20002"]=setmetatable({id=20002,remarks="武装",type=3,subType=1,autoUse=0,manualUse=0,useType=201,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["30001"]=setmetatable({id=30001,remarks="镜像",type=4,subType=1,autoUse=0,manualUse=0,useType=300,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["30002"]=setmetatable({id=30002,remarks="固定镜像",type=4,subType=2,autoUse=0,manualUse=0,useType=301,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["50"]=setmetatable({id=50,remarks="赛季经验",type=15,subType=5,autoUse=1,manualUse=0,useType=1,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=1,order2=0},mt),
    ["80001"]=setmetatable({id=80001,remarks="符灵",type=16,subType=1,autoUse=0,manualUse=0,useType=800,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=0},mt),
    ["80002"]=setmetatable({id=80002,remarks="固定符灵",type=16,subType=2,autoUse=0,manualUse=0,useType=801,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=410},mt),
    ["80003"]=setmetatable({id=80003,remarks="符灵币",type=1,subType=2,autoUse=1,manualUse=0,useType=2,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=1,order2=60},mt),
    ["90001"]=setmetatable({id=90001,remarks="周卡",type=2,subType=26,autoUse=0,manualUse=0,useType=402,isShow=0,accumulateLimitNum=0,limitNum=-1,showNum=0,order1=0,order2=340},mt),
    ["90002"]=setmetatable({id=90002,remarks="挂机加速卷",type=2,subType=27,autoUse=0,manualUse=0,useType=100,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
    ["90004"]=setmetatable({id=90004,remarks="通行证激活道具",type=2,subType=28,autoUse=0,manualUse=1,useType=403,isShow=1,accumulateLimitNum=0,limitNum=-1,showNum=1,order1=0,order2=0},mt),
}
--生成获取数据的方法
---@return ItemTypes
function GetItemTypesData(id)
    return ItemTypes_Xls[tostring(id)]
end
--自动生成注释
---@class ItemTypes : table 
---@field id number
---@field remarks string
---@field type number
---@field subType number
---@field autoUse number
---@field manualUse number
---@field useType number
---@field isShow number
---@field accumulateLimitNum number
---@field limitNum number
---@field showNum number
---@field order1 number
---@field order2 number
