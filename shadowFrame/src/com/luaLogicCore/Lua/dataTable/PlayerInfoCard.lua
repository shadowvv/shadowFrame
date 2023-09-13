local default = {id=0,name="",sort=0,cardShow=0,channel=0,friendIcon="",icon="",patrolIcon="",transparency=0,conditionId=0,unlockTip=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PlayerInfoCard_Xls : table 
PlayerInfoCard_Xls =
{
    ["8910001"]=setmetatable({id=8910001,name="默认",sort=1,cardShow=0,channel=0,friendIcon="UI_teamBg1_s",icon="UI_cardBg1",patrolIcon="UI_teamBg1_s",transparency=30,conditionId=101,unlockTip="默认自动解锁"},mt),
    ["8910002"]=setmetatable({id=8910002,name="绝对冰点",sort=3,cardShow=0,channel=0,friendIcon="UI_teamBg_bing_s",icon="UI_cardBg_bing",patrolIcon="UI_teamBg_bing_s",transparency=30,conditionId=101,unlockTip="默认自动解锁"},mt),
    ["8910003"]=setmetatable({id=8910003,name="极致火光",sort=4,cardShow=0,channel=0,friendIcon="UI_teamBg_huo_s",icon="UI_cardBg_huo",patrolIcon="UI_teamBg_huo_s",transparency=30,conditionId=101,unlockTip="默认自动解锁"},mt),
    ["8910004"]=setmetatable({id=8910004,name="群雷回响",sort=5,cardShow=0,channel=0,friendIcon="UI_teamBg_lei_s",icon="UI_cardBg_lei",patrolIcon="UI_teamBg_lei_s",transparency=30,conditionId=101,unlockTip="默认自动解锁"},mt),
    ["8910005"]=setmetatable({id=8910005,name="源初能量",sort=2,cardShow=0,channel=0,friendIcon="UI_teamBg_yuanneng_s",icon="UI_cardBg_yuanneng",patrolIcon="UI_teamBg_yuanneng_s",transparency=30,conditionId=101,unlockTip="默认自动解锁"},mt),
    ["8910006"]=setmetatable({id=8910006,name="远空风鸣",sort=6,cardShow=0,channel=0,friendIcon="UI_teamBg_feng_s",icon="UI_cardBg_feng",patrolIcon="UI_teamBg_feng_s",transparency=30,conditionId=101,unlockTip="默认自动解锁"},mt),
    ["8900001"]=setmetatable({id=8900001,name="限定名片-云环测试",sort=101,cardShow=1,channel=0,friendIcon="UI_teamBg_yunhuan_s",icon="UI_teamBg_yunhuan",patrolIcon="UI_teamBg_yunhuan_s",transparency=30,conditionId=2007,unlockTip="获取后解锁"},mt),
    ["8900002"]=setmetatable({id=8900002,name="限定名片-交界虚空",sort=102,cardShow=1,channel=0,friendIcon="UI_teamBg_jiaojie_s",icon="UI_teamBg_jiaojie",patrolIcon="UI_teamBg_jiaojie_s",transparency=30,conditionId=2008,unlockTip="获取后解锁"},mt),
    ["8900003"]=setmetatable({id=8900003,name="限定名片-空境测试",sort=103,cardShow=1,channel=0,friendIcon="UI_teamBg_kongjing_s",icon="UI_teamBg_kongjing",patrolIcon="UI_teamBg_kongjing_s",transparency=30,conditionId=2009,unlockTip="获取后解锁"},mt),
    ["8900004"]=setmetatable({id=8900004,name="限定名片-晴空测试",sort=104,cardShow=1,channel=0,friendIcon="UI_teamBg_qingkong_s",icon="UI_teamBg_qingkong",patrolIcon="UI_teamBg_qingkong_s",transparency=30,conditionId=2010,unlockTip="获取后解锁"},mt),
    ["8910007"]=setmetatable({id=8910007,name="限定名片-战士集结",sort=7,cardShow=1,channel=24,friendIcon="UI_teamBg_bili_s",icon="UI_teamBg_bili",patrolIcon="UI_teamBg_bili_s",transparency=30,conditionId=2011,unlockTip="获取后解锁"},mt),
    ["8910008"]=setmetatable({id=8910008,name="限定名片-战士集结",sort=8,cardShow=1,channel=48,friendIcon="UI_teamBg_yingyongbao_s",icon="UI_teamBg_yingyongbao",patrolIcon="UI_teamBg_yingyongbao_s",transparency=30,conditionId=2012,unlockTip="获取后解锁"},mt),
    ["8910009"]=setmetatable({id=8910009,name="限定名片-战士集结",sort=9,cardShow=1,channel=1,friendIcon="UI_teamBg_jiuyou_s",icon="UI_teamBg_jiuyou",patrolIcon="UI_teamBg_jiuyou_s",transparency=30,conditionId=2013,unlockTip="获取后解锁"},mt),
    ["8910010"]=setmetatable({id=8910010,name="限定名片-战士集结",sort=10,cardShow=1,channel=4,friendIcon="UI_teamBg_xiaomi_s",icon="UI_teamBg_xiaomi",patrolIcon="UI_teamBg_xiaomi_s",transparency=30,conditionId=2014,unlockTip="获取后解锁"},mt),
    ["8910011"]=setmetatable({id=8910011,name="限定名片-战士集结",sort=11,cardShow=1,channel=25,friendIcon="UI_teamBg_huawei_s",icon="UI_teamBg_huawei",patrolIcon="UI_teamBg_huawei_s",transparency=30,conditionId=2015,unlockTip="获取后解锁"},mt),
    ["8910012"]=setmetatable({id=8910012,name="限定名片-战士集结",sort=12,cardShow=1,channel=17,friendIcon="UI_teamBg_oppo_s",icon="UI_teamBg_oppo",patrolIcon="UI_teamBg_oppo_s",transparency=30,conditionId=2016,unlockTip="获取后解锁"},mt),
    ["8910013"]=setmetatable({id=8910013,name="限定名片-战士集结",sort=13,cardShow=1,channel=23,friendIcon="UI_teamBg_vivo_s",icon="UI_teamBg_vivo",patrolIcon="UI_teamBg_vivo_s",transparency=30,conditionId=2017,unlockTip="获取后解锁"},mt),
    ["8910014"]=setmetatable({id=8910014,name="限定名片-战士集结",sort=14,cardShow=1,channel=21,friendIcon="UI_teamBg_4399_s",icon="UI_teamBg_4399",patrolIcon="UI_teamBg_4399_s",transparency=30,conditionId=2018,unlockTip="获取后解锁"},mt),
    ["8910015"]=setmetatable({id=8910015,name="限定名片-战士集结",sort=15,cardShow=1,channel=59,friendIcon="UI_teamBg_mumu_s",icon="UI_teamBg_mumu",patrolIcon="UI_teamBg_mumu_s",transparency=30,conditionId=2019,unlockTip="获取后解锁"},mt),
    ["8910016"]=setmetatable({id=8910016,name="限定名片-战士集结",sort=16,cardShow=1,channel=81,friendIcon="UI_teamBg_wegame_s",icon="UI_teamBg_wegame",patrolIcon="UI_teamBg_wegame_s",transparency=30,conditionId=2020,unlockTip="获取后解锁"},mt),
}
--生成获取数据的方法
---@return PlayerInfoCard
function GetPlayerInfoCardData(id)
    return PlayerInfoCard_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerInfoCard : table 
---@field id number
---@field name string
---@field sort number
---@field cardShow number
---@field channel number
---@field friendIcon string
---@field icon string
---@field patrolIcon string
---@field transparency number
---@field conditionId number
---@field unlockTip string
