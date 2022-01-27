---@class OpenFuction_Xls : table 
OpenFuction_Xls =
{
    ["100"]={id=100,conditionId=101,toastText="",toast=0,des="主界面秘书更换"},
    ["110"]={id=110,conditionId=101,toastText="",toast=0,des="导师信息"},
    ["111"]={id=111,conditionId=6102112,toastText="<权限解锁·成就>",toast=0,des="成就功能"},
    ["120"]={id=120,conditionId=6101102,toastText="<权限解锁·任务>",toast=1,des="任务功能"},
    ["121"]={id=121,conditionId=6101102,toastText="",toast=0,des="主线任务"},
    ["122"]={id=122,conditionId=6101105,toastText="",toast=0,des="每日任务"},
    ["130"]={id=130,conditionId=101,toastText="",toast=0,des="仓库"},
    ["140"]={id=140,conditionId=101,toastText="",toast=0,des="邮件"},
    ["150"]={id=150,conditionId=101,toastText="",toast=0,des="聊天"},
    ["160"]={id=160,conditionId=101,toastText="",toast=0,des="公告"},
    ["170"]={id=170,conditionId=101,toastText="",toast=0,des="设置"},
    ["180"]={id=180,conditionId=101,toastText="<权限解锁·巢>",toast=1,des="商城"},
    ["190"]={id=190,conditionId=6101109,toastText="<权限解锁·共鸣>",toast=0,des="抽卡"},
    ["200"]={id=200,conditionId=6101102,toastText="",toast=0,des="斯露德功能"},
    ["201"]={id=201,conditionId=6101102,toastText="<权限解锁·训练>",toast=1,des="训练"},
    ["202"]={id=202,conditionId=6101105,toastText="<权限解锁·式杖>",toast=1,des="式杖"},
    ["203"]={id=203,conditionId=6101105,toastText="<权限解锁·具现>",toast=1,des="具现"},
    ["204"]={id=204,conditionId=6102103,toastText="<权限解锁·位阶>",toast=1,des="位阶"},
    ["210"]={id=210,conditionId=6101109,toastText="<权限解锁·律叶>",toast=1,des="律叶功能"},
    ["211"]={id=211,conditionId=6101109,toastText="",toast=0,des="律叶强化/突破"},
    ["212"]={id=212,conditionId=6101109,toastText="",toast=0,des="律叶涂装"},
    ["220"]={id=220,conditionId=6102102,toastText="<权限解锁·镜像>",toast=1,des="镜像功能"},
    ["221"]={id=221,conditionId=6102102,toastText="",toast=0,des="镜像强化/突破"},
    ["230"]={id=230,conditionId=6101102,toastText="",toast=0,des="斯露德档案"},
    ["240"]={id=240,conditionId=0,toastText="",toast=0,des="斯露德服装"},
    ["250"]={id=250,conditionId=101,toastText="",toast=0,des="作战行动-大地图"},
    ["251"]={id=251,conditionId=101,toastText="",toast=0,des="主线剧情关卡功能"},
    ["252"]={id=252,conditionId=101,toastText="",toast=0,des="主线普通难度"},
    ["253"]={id=253,conditionId=6102112,toastText="",toast=0,des="主线困难难度"},
    ["254"]={id=254,conditionId=0,toastText="",toast=0,des="个人剧情关卡功能"},
    ["255"]={id=255,conditionId=0,toastText="",toast=0,des="个人故事模式"},
    ["256"]={id=256,conditionId=0,toastText="",toast=0,des="个人挑战模式"},
    ["257"]={id=257,conditionId=6101110,toastText="<权限解锁·资源关卡>",toast=1,des="资源关卡功能"},
    ["258"]={id=258,conditionId=0,toastText="<权限解锁·雷达图>",toast=1,des="雷达图功能"},
    ["270"]={id=270,conditionId=101,toastText="",toast=0,des="编队功能"},
    ["271"]={id=271,conditionId=101,toastText="",toast=0,des="编队位置_1"},
    ["272"]={id=272,conditionId=6101102,toastText="",toast=0,des="编队位置_2"},
    ["273"]={id=273,conditionId=6101110,toastText="",toast=0,des="编队位置_3"},
    ["274"]={id=274,conditionId=6101110,toastText="",toast=0,des="编队位置_4"},
    ["280"]={id=280,conditionId=0,toastText="<权限解锁·图鉴>",toast=1,des="图鉴功能"},
    ["281"]={id=281,conditionId=0,toastText="",toast=0,des="图鉴-镜像详情"},
    ["282"]={id=282,conditionId=0,toastText="",toast=0,des="图鉴-怪物详情"},
    ["283"]={id=283,conditionId=0,toastText="",toast=0,des="图鉴-剧情详情"},
    ["284"]={id=284,conditionId=0,toastText="",toast=0,des="图鉴-武装详情"},
    ["285"]={id=285,conditionId=0,toastText="",toast=0,des="章节定位功能"},
    ["286"]={id=286,conditionId=101,toastText="",toast=0,des="签到功能"},
    ["290"]={id=290,conditionId=101,toastText="",toast=0,des="初心者"},
    ["291"]={id=291,conditionId=101,toastText="",toast=0,des="初心者-签到"},
    ["292"]={id=292,conditionId=6101110,toastText="",toast=0,des="初心者-任务"},
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
---@field des string
