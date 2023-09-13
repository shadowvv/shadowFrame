local default = {id=0,number=0,order=0,des="",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="",icon=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattleLimit_Xls : table 
BattleLimit_Xls =
{
    ["1"]=setmetatable({id=1,number=100,order=2,des="生命",valueDes="",percentAdd=9,showType1=1,showEquip=1,showType2=1,showTypeEquip=3,paramType=3,limitDown=0,limitUp=100000000,isCompleted=1,owner="",icon="Limit_shengming"},mt),
    ["2"]=setmetatable({id=2,number=101,order=1,des="攻击",valueDes="",percentAdd=10,showType1=1,showEquip=1,showType2=1,showTypeEquip=3,paramType=3,limitDown=0,limitUp=100000000,isCompleted=1,owner="",icon="Limit_gongji"},mt),
    ["3"]=setmetatable({id=3,number=102,order=3,des="防御",valueDes="",percentAdd=11,showType1=1,showEquip=1,showType2=1,showTypeEquip=3,paramType=3,limitDown=0,limitUp=100000000,isCompleted=1,owner="",icon="Limit_fangyv"},mt),
    ["4"]=setmetatable({id=4,number=103,order=0,des="相变增幅",valueDes="能量值越高，相变反应造成的元素伤害越高，当前元素伤害提高{1}。",percentAdd=0,showType1=0,showEquip=2,showType2=1,showTypeEquip=3,paramType=3,limitDown=0,limitUp=100000000,isCompleted=1,owner="",icon="Limit_yuansu"},mt),
    ["5"]=setmetatable({id=5,number=104,order=0,des="暴击",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=3,paramType=3,limitDown=0,limitUp=100000000,isCompleted=1,owner="",icon="Limit_huixin"},mt),
    ["6"]=setmetatable({id=6,number=105,order=0,des="当前生命",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=100000000,isCompleted=1,owner="",icon="Limit_shengming"},mt),
    ["7"]=setmetatable({id=7,number=108,order=0,des="目前损失hp",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=100000000,isCompleted=0,owner="",icon="Limit_shengming"},mt),
    ["8"]=setmetatable({id=8,number=109,order=0,des="最后一次损血",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=100000000,isCompleted=0,owner="",icon="Limit_shengming"},mt),
    ["9"]=setmetatable({id=9,number=120,order=0,des="生命百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_shengmingP"},mt),
    ["10"]=setmetatable({id=10,number=121,order=0,des="攻击百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_gongjiP"},mt),
    ["11"]=setmetatable({id=11,number=122,order=0,des="防御百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_fangyvP"},mt),
    ["12"]=setmetatable({id=12,number=123,order=0,des="能量百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["13"]=setmetatable({id=13,number=124,order=0,des="暴击率百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_huixin"},mt),
    ["14"]=setmetatable({id=14,number=130,order=0,des="生命百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_shengming"},mt),
    ["15"]=setmetatable({id=15,number=131,order=0,des="攻击百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_gongji"},mt),
    ["16"]=setmetatable({id=16,number=132,order=0,des="防御百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_fangyv"},mt),
    ["17"]=setmetatable({id=17,number=133,order=0,des="能量百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["18"]=setmetatable({id=18,number=134,order=0,des="暴击率百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_huixin"},mt),
    ["19"]=setmetatable({id=19,number=135,order=0,des="当前生命百分比（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=99.99,isCompleted=0,owner="",icon="Limit_shengming"},mt),
    ["20"]=setmetatable({id=20,number=200,order=12,des="暴击伤害",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=1,owner="",icon="Limit_baoshang"},mt),
    ["21"]=setmetatable({id=21,number=201,order=11,des="暴击率",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=1,isCompleted=1,owner="",icon="Limit_baojilv"},mt),
    ["22"]=setmetatable({id=22,number=202,order=0,des="相变速率",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=1,owner="",icon="Limit_nengliangxishu"},mt),
    ["23"]=setmetatable({id=23,number=203,order=15,des="治疗加成",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=0.6,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["24"]=setmetatable({id=24,number=204,order=0,des="射速加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=1,isCompleted=0,owner="",icon="Limit_gongsu"},mt),
    ["25"]=setmetatable({id=25,number=205,order=0,des="治疗恢复加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=2,isCompleted=0,owner="",icon="Limit_huifu"},mt),
    ["26"]=setmetatable({id=26,number=206,order=0,des="蓄力攻速加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=1,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["27"]=setmetatable({id=27,number=207,order=0,des="特殊储存属性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["28"]=setmetatable({id=28,number=208,order=0,des="蓄力攻击弹药消耗百分比加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["29"]=setmetatable({id=29,number=209,order=0,des="特殊储存属性上限（208占了",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["30"]=setmetatable({id=30,number=210,order=0,des="移动速度加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=2,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["31"]=setmetatable({id=31,number=211,order=0,des="体力回复速度",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=2,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["32"]=setmetatable({id=32,number=212,order=0,des="体力值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["33"]=setmetatable({id=33,number=213,order=0,des="当前体力值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["34"]=setmetatable({id=34,number=214,order=0,des="闪避下体力消耗率",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=1,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["35"]=setmetatable({id=35,number=215,order=0,des="冲刺下体力消耗率",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=-0.99,limitUp=1,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["36"]=setmetatable({id=36,number=216,order=0,des="极奏能量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["37"]=setmetatable({id=37,number=217,order=0,des="当前极奏能量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["38"]=setmetatable({id=38,number=218,order=16,des="充能效率",valueDes="",percentAdd=0,showType1=3,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=0,owner="",icon="Limit_gongming"},mt),
    ["39"]=setmetatable({id=39,number=219,order=17,des="极奏冷却缩减",valueDes="",percentAdd=0,showType1=3,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=0,owner="",icon="Limit_jizouCD"},mt),
    ["40"]=setmetatable({id=40,number=220,order=0,des="弹匣量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["41"]=setmetatable({id=41,number=221,order=0,des="当前弹量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["42"]=setmetatable({id=42,number=222,order=0,des="弹量恢复",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-99999,limitUp=999999,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["43"]=setmetatable({id=43,number=223,order=0,des="弹量消耗率",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-100,limitUp=0.99,isCompleted=0,owner="",icon="Limit_yuansu"},mt),
    ["44"]=setmetatable({id=44,number=224,order=18,des="序曲冷却缩减",valueDes="",percentAdd=0,showType1=3,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=0,owner="",icon="Limit_zhudongCD"},mt),
    ["45"]=setmetatable({id=45,number=225,order=0,des="精准参数加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=2,isCompleted=0,owner="",icon="Limit_zhiliao"},mt),
    ["46"]=setmetatable({id=46,number=226,order=0,des="冲刺速度加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=1},mt),
    ["47"]=setmetatable({id=47,number=227,order=0,des="瞄准范围加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=1},mt),
    ["48"]=setmetatable({id=48,number=228,order=0,des="射程提高",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=-9999999,limitUp=999999,isCompleted=1},mt),
    ["49"]=setmetatable({id=49,number=229,order=0,des="换弹速度提升",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=1},mt),
    ["50"]=setmetatable({id=50,number=230,order=0,des="弱点伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=1},mt),
    ["51"]=setmetatable({id=51,number=231,order=0,des="加利福当前子弹能量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["52"]=setmetatable({id=52,number=232,order=0,des="加利福最大子弹能量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["53"]=setmetatable({id=53,number=233,order=0,des="佐伊德特殊属性-当前",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["54"]=setmetatable({id=54,number=234,order=0,des="佐伊德特殊属性-上限",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["55"]=setmetatable({id=55,number=235,order=0,des="稳定性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["56"]=setmetatable({id=56,number=236,order=0,des="弹丸数量",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["57"]=setmetatable({id=57,number=237,order=0,des="子弹飞行速度",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=1},mt),
    ["58"]=setmetatable({id=58,number=238,order=0,des="武器伤害评分",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0},mt),
    ["59"]=setmetatable({id=59,number=239,order=0,des="武器射击速度",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=999999,isCompleted=0},mt),
    ["60"]=setmetatable({id=60,number=240,order=0,des="普攻伤害倍率增强",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=0},mt),
    ["61"]=setmetatable({id=61,number=241,order=0,des="序曲伤害提升",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=0},mt),
    ["62"]=setmetatable({id=62,number=242,order=0,des="极奏伤害提升",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=-0.99,limitUp=3,isCompleted=0},mt),
    ["63"]=setmetatable({id=63,number=243,order=0,des="体力最大值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=1,showTypeEquip=1,paramType=3,limitDown=0,limitUp=9999,isCompleted=1},mt),
    ["64"]=setmetatable({id=64,number=244,order=0,des="普攻治疗提升",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1},mt),
    ["65"]=setmetatable({id=65,number=245,order=0,des="主动治疗提升",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1},mt),
    ["66"]=setmetatable({id=66,number=246,order=0,des="极奏治疗提升",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1},mt),
    ["67"]=setmetatable({id=67,number=311,order=0,des="普通伤害增伤率",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_zengshang"},mt),
    ["68"]=setmetatable({id=68,number=312,order=0,des="物理反增伤率",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_wuli"},mt),
    ["69"]=setmetatable({id=69,number=313,order=0,des="普通伤害减伤率",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_jianshang"},mt),
    ["70"]=setmetatable({id=70,number=314,order=0,des="物理反减伤率",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=2,isCompleted=1,owner="",icon="Limit_wuli"},mt),
    ["71"]=setmetatable({id=71,number=301,order=16,des="元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_nengliang"},mt),
    ["72"]=setmetatable({id=72,number=302,order=0,des="通用反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_tongyong"},mt),
    ["73"]=setmetatable({id=73,number=303,order=0,des="元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_nengliang"},mt),
    ["74"]=setmetatable({id=74,number=304,order=0,des="通用反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=2,isCompleted=1,owner="",icon="Limit_tongyong"},mt),
    ["75"]=setmetatable({id=75,number=305,order=13,des="元素过载伤害",valueDes="元素积聚满后产生的元素过载伤害提高。数值越高，元素过载伤害越高。",percentAdd=0,showType1=2,showEquip=0,showType2=1,showTypeEquip=2,paramType=3,limitDown=0,limitUp=999999,isCompleted=1,owner="",icon="Limit_yuansu"},mt),
    ["76"]=setmetatable({id=76,number=306,order=0,des="过载伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=2,isCompleted=0,owner="",icon="Limit_tongyong"},mt),
    ["77"]=setmetatable({id=77,number=321,order=22,des="火元素伤害加成",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_huo"},mt),
    ["78"]=setmetatable({id=78,number=322,order=0,des="火反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_huo"},mt),
    ["79"]=setmetatable({id=79,number=323,order=32,des="火元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_huo"},mt),
    ["80"]=setmetatable({id=80,number=324,order=0,des="火反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.5,limitUp=2,isCompleted=1,owner="",icon="Limit_huo"},mt),
    ["81"]=setmetatable({id=81,number=325,order=0,des="火积聚效率加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.95,limitUp=5,isCompleted=0,owner="",icon="Limit_huo"},mt),
    ["82"]=setmetatable({id=82,number=326,order=0,des="火元素抗性加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=5,isCompleted=0,owner="",icon="Limit_huo"},mt),
    ["83"]=setmetatable({id=83,number=327,order=0,des="火弱点过载伤害",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_huo"},mt),
    ["84"]=setmetatable({id=84,number=328,order=0,des="火弱点伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_huo"},mt),
    ["85"]=setmetatable({id=85,number=331,order=21,des="雷元素伤害加成",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_lei"},mt),
    ["86"]=setmetatable({id=86,number=332,order=0,des="雷反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_lei"},mt),
    ["87"]=setmetatable({id=87,number=333,order=31,des="雷元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_lei"},mt),
    ["88"]=setmetatable({id=88,number=334,order=0,des="雷反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.5,limitUp=2,isCompleted=1,owner="",icon="Limit_lei"},mt),
    ["89"]=setmetatable({id=89,number=335,order=0,des="雷积聚效率加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.95,limitUp=5,isCompleted=0,owner="",icon="Limit_lei"},mt),
    ["90"]=setmetatable({id=90,number=336,order=0,des="雷元素抗性加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=5,isCompleted=0,owner="",icon="Limit_lei"},mt),
    ["91"]=setmetatable({id=91,number=337,order=0,des="雷弱点过载伤害",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_lei"},mt),
    ["92"]=setmetatable({id=92,number=338,order=0,des="雷弱点伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_lei"},mt),
    ["93"]=setmetatable({id=93,number=341,order=24,des="冰元素伤害加成",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_bing"},mt),
    ["94"]=setmetatable({id=94,number=342,order=0,des="冰反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_bing"},mt),
    ["95"]=setmetatable({id=95,number=343,order=34,des="冰元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_bing"},mt),
    ["96"]=setmetatable({id=96,number=344,order=0,des="冰反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.5,limitUp=2,isCompleted=1,owner="",icon="Limit_bing"},mt),
    ["97"]=setmetatable({id=97,number=345,order=0,des="冰积聚效率加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.95,limitUp=5,isCompleted=0,owner="",icon="Limit_bing"},mt),
    ["98"]=setmetatable({id=98,number=346,order=0,des="冰元素抗性加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=5,isCompleted=0,owner="",icon="Limit_bing"},mt),
    ["99"]=setmetatable({id=99,number=347,order=0,des="冰弱点过载伤害",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_bing"},mt),
    ["100"]=setmetatable({id=100,number=348,order=0,des="冰弱点伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_bing"},mt),
    ["101"]=setmetatable({id=101,number=351,order=23,des="风元素伤害加成",valueDes="",percentAdd=0,showType1=2,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_feng"},mt),
    ["102"]=setmetatable({id=102,number=352,order=0,des="风反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_feng"},mt),
    ["103"]=setmetatable({id=103,number=353,order=33,des="风元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_feng"},mt),
    ["104"]=setmetatable({id=104,number=354,order=0,des="风反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.5,limitUp=2,isCompleted=1,owner="",icon="Limit_feng"},mt),
    ["105"]=setmetatable({id=105,number=355,order=0,des="风积聚效率加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.95,limitUp=5,isCompleted=0,owner="",icon="Limit_feng"},mt),
    ["106"]=setmetatable({id=106,number=356,order=0,des="风元素抗性加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-0.99,limitUp=5,isCompleted=0,owner="",icon="Limit_feng"},mt),
    ["107"]=setmetatable({id=107,number=357,order=0,des="风弱点过载伤害",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_feng"},mt),
    ["108"]=setmetatable({id=108,number=358,order=0,des="风弱点伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_feng"},mt),
    ["109"]=setmetatable({id=109,number=361,order=0,des="符能元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_yuanneng"},mt),
    ["110"]=setmetatable({id=110,number=362,order=0,des="符能反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_yuanneng"},mt),
    ["111"]=setmetatable({id=111,number=363,order=0,des="符能元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_yuanneng"},mt),
    ["112"]=setmetatable({id=112,number=364,order=0,des="符能反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=2,isCompleted=1,owner="",icon="Limit_yuanneng"},mt),
    ["113"]=setmetatable({id=113,number=371,order=0,des="重力元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=99,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["114"]=setmetatable({id=114,number=372,order=0,des="重力反元素伤害加成",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["115"]=setmetatable({id=115,number=373,order=0,des="重力元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=-2,limitUp=0.95,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["116"]=setmetatable({id=116,number=374,order=0,des="重力反元素伤害抗性",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=2,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["117"]=setmetatable({id=117,number=376,order=0,des="过载伤害提升（%）",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=2,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["118"]=setmetatable({id=118,number=377,order=0,des="元素积聚效率提升-普攻",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["119"]=setmetatable({id=119,number=378,order=0,des="元素积聚效率提升-序曲",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["120"]=setmetatable({id=120,number=379,order=0,des="元素积聚效率提升-极奏",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1,owner="",icon="Limit_zhongli"},mt),
    ["121"]=setmetatable({id=121,number=380,order=14,des="积聚效率",valueDes="",percentAdd=0,showType1=2,showEquip=0,showType2=2,showTypeEquip=2,paramType=3,limitDown=0,limitUp=0.6,isCompleted=1,owner="",icon="Limit_jixu"},mt),
    ["122"]=setmetatable({id=122,number=401,order=0,des="优势距离最小值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["123"]=setmetatable({id=123,number=402,order=0,des="优势距离最大值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["124"]=setmetatable({id=124,number=403,order=0,des="中衰减距离最小值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["125"]=setmetatable({id=125,number=404,order=0,des="中衰减距离最大值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["126"]=setmetatable({id=126,number=405,order=0,des="高衰减距离最小值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["127"]=setmetatable({id=127,number=406,order=0,des="高衰减距离最大值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["128"]=setmetatable({id=128,number=407,order=0,des="无效距离边界最小值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["129"]=setmetatable({id=129,number=408,order=0,des="无效距离边界最大值",valueDes="",percentAdd=0,showType1=0,showEquip=0,showType2=0,showTypeEquip=0,paramType=0,limitDown=0,limitUp=0,isCompleted=0,owner="程序用"},mt),
    ["130"]=setmetatable({id=130,number=601,order=0,des="肉鸽主公技最大能量 - 火",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["131"]=setmetatable({id=131,number=602,order=0,des="肉鸽主公技当前能量 - 火",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["132"]=setmetatable({id=132,number=611,order=0,des="肉鸽主公技最大能量 - 雷",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["133"]=setmetatable({id=133,number=612,order=0,des="肉鸽主公技当前能量 - 雷",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["134"]=setmetatable({id=134,number=621,order=0,des="肉鸽主公技最大能量 - 冰",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["135"]=setmetatable({id=135,number=622,order=0,des="肉鸽主公技当前能量 - 冰",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["136"]=setmetatable({id=136,number=631,order=0,des="肉鸽主公技最大能量 - 风",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
    ["137"]=setmetatable({id=137,number=632,order=0,des="肉鸽主公技当前能量 - 风",valueDes="",percentAdd=0,showType1=0,showEquip=2,showType2=2,showTypeEquip=3,paramType=0,limitDown=99999,limitUp=1,isCompleted=0,owner="Limit_zhongli"},mt),
}
--生成获取数据的方法
---@return BattleLimit
function GetBattleLimitData(id)
    return BattleLimit_Xls[tostring(id)]
end
--自动生成注释
---@class BattleLimit : table 
---@field id number
---@field number number
---@field order number
---@field des string
---@field valueDes string
---@field percentAdd number
---@field showType1 number
---@field showEquip number
---@field showType2 number
---@field showTypeEquip number
---@field paramType number
---@field limitDown number
---@field limitUp number
---@field isCompleted number
---@field owner string
---@field icon string
