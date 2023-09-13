local default = {id=0,type=0,testMethod=0,content="",value1=0,value2=0,value3=0,value4=xlsNilTable,value5=xlsNilTable,value6=xlsNilTable,value7=xlsNilTable,value8=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LevelCondition_Xls : table 
LevelCondition_Xls =
{
    ["1"]=setmetatable({id=1,type=1001,testMethod=0,content="消灭所有敌人"},mt),
    ["2"]=setmetatable({id=2,type=2001,testMethod=0,content="全部斯露德阵亡"},mt),
    ["3"]=setmetatable({id=3,type=1003,testMethod=0,content="倒计时结束"},mt),
    ["4"]=setmetatable({id=4,type=1004,testMethod=0,content="消灭所有关键敌人",value1=0.0},mt),
    ["5"]=setmetatable({id=5,type=1007,testMethod=0,content="消灭60个敌人",value1=0.0,value2=60.0},mt),
    ["6"]=setmetatable({id=6,type=1006,testMethod=0,content="守护目标全部被毁",value1=0.0},mt),
    ["7"]=setmetatable({id=7,type=1005,testMethod=0,content="守护目标到达关键位置",value1=1.0},mt),
    ["8"]=setmetatable({id=8,type=1008,testMethod=0,content="侵入数量",value1=5.0},mt),
    ["9"]=setmetatable({id=9,type=1004,testMethod=0,content="关键怪死亡数量{1}",value1=5.0},mt),
    ["10"]=setmetatable({id=10,type=1007,testMethod=0,content="消灭45个敌人",value1=0.0,value2=45.0},mt),
    ["11"]=setmetatable({id=11,type=1004,testMethod=0,content="消灭45个敌人",value1=45.0},mt),
    ["12"]=setmetatable({id=12,type=1004,testMethod=0,content="消灭30个敌人",value1=30.0},mt),
    ["13"]=setmetatable({id=13,type=1005,testMethod=0,content="玩家到达关键区域",value1=0.0},mt),
    ["14"]=setmetatable({id=14,type=1009,testMethod=0,content="开门的交互1次",value1=2002.0,value2=1.0},mt),
    ["15"]=setmetatable({id=15,type=1009,testMethod=0,content="6-8采集交互5次",value1=2005.0,value2=3.0},mt),
    ["17"]=setmetatable({id=17,type=1009,testMethod=0,content="3-11 胜利条件",value1=2006.0,value2=4.0},mt),
    ["18"]=setmetatable({id=18,type=1004,testMethod=0,content="挑战2-4 限时击杀100只"},mt),
    ["19"]=setmetatable({id=19,type=1004,testMethod=0,content="消灭50个敌人",value1=50.0},mt),
    ["20"]=setmetatable({id=20,type=4019,testMethod=0,content="获得10积分",value1=10.0},mt),
    ["92"]=setmetatable({id=92,type=1009,testMethod=0,content="采集小飞机5次",value1=1001.0,value2=5.0},mt),
    ["93"]=setmetatable({id=93,type=1008,testMethod=0,content="失败：[测试]侵入数量大于10个",value1=10.0},mt),
    ["94"]=setmetatable({id=94,type=1004,testMethod=0,content="[测试5]30只关键怪死亡",value1=15.0},mt),
    ["95"]=setmetatable({id=95,type=1004,testMethod=0,content="[测试6]1只Boss死亡",value1=1.0},mt),
    ["96"]=setmetatable({id=96,type=1008,testMethod=0,content="胜利：[测试]侵入数量为1",value1=1.0},mt),
    ["97"]=setmetatable({id=97,type=1008,testMethod=0,content="失败：[测试]侵入数量大于5个",value1=5.0},mt),
    ["98"]=setmetatable({id=98,type=1006,testMethod=0,content="失败：[测试]守护目标全死",value1=0.0},mt),
    ["99"]=setmetatable({id=99,type=1006,testMethod=0,content="失败：[测试]守护目标死1个",value1=1.0},mt),
    ["101"]=setmetatable({id=101,type=4001,testMethod=0,content="胜利通关"},mt),
    ["102"]=setmetatable({id=102,type=4002,testMethod=0,content="至多{1}名斯露德退场",value1=1.0},mt),
    ["103"]=setmetatable({id=103,type=4003,testMethod=0,content="通关时长不超过{1}秒",value1=120.0},mt),
    ["104"]=setmetatable({id=104,type=4008,testMethod=0,content="触发元素相变{1}次",value1=5.0},mt),
    ["105"]=setmetatable({id=105,type=4009,testMethod=0,content="触发升腾反应{2}次",value1=0.0,value2=3.0,value3=0.0,value4={[1]=1,[2]=2}},mt),
    ["106"]=setmetatable({id=106,type=4009,testMethod=0,content="触发传导反应{2}次",value1=0.0,value2=3.0,value3=0.0,value4={[1]=3,[2]=4}},mt),
    ["107"]=setmetatable({id=107,type=4009,testMethod=0,content="触发震爆反应{2}次",value1=0.0,value2=3.0,value3=0.0,value4={[1]=5,[2]=6}},mt),
    ["108"]=setmetatable({id=108,type=4009,testMethod=0,content="触发符能反应{2}次",value1=0.0,value2=10.0,value3=0.0,value4={[1]=7,[2]=8,[3]=9,[4]=10,[5]=11}},mt),
    ["109"]=setmetatable({id=109,type=4009,testMethod=0,content="触发对流反应{2}次",value1=0.0,value2=3.0,value3=0.0,value4={[1]=12,[2]=13}},mt),
    ["110"]=setmetatable({id=110,type=4009,testMethod=0,content="触发结霰反应{2}次",value1=0.0,value2=3.0,value3=0.0,value4={[1]=14,[2]=15}},mt),
    ["111"]=setmetatable({id=111,type=4009,testMethod=0,content="触发熵增反应{2}次",value1=0.0,value2=3.0,value3=0.0,value4={[1]=16,[2]=17}},mt),
    ["112"]=setmetatable({id=112,type=4010,testMethod=0,content="受击不超过{1}次",value1=10.0},mt),
    ["113"]=setmetatable({id=113,type=4011,testMethod=0,content="使用{2}次极奏",value1=3.0,value2=1.0},mt),
    ["114"]=setmetatable({id=114,type=4012,testMethod=0,content="上阵{2}名突击类武装斯露德",value1=1.0,value2=2.0},mt),
    ["115"]=setmetatable({id=115,type=4012,testMethod=0,content="上阵{2}名狙击类武装斯露德",value1=3.0,value2=2.0},mt),
    ["116"]=setmetatable({id=116,type=4012,testMethod=0,content="上阵{2}名重装类武装斯露德",value1=4.0,value2=2.0},mt),
    ["117"]=setmetatable({id=117,type=4012,testMethod=0,content="上阵{2}名散射类武装斯露德",value1=5.0,value2=2.0},mt),
    ["118"]=setmetatable({id=118,type=4013,testMethod=0,content="上阵{2}名火元素斯露德",value1=2.0,value2=2.0},mt),
    ["119"]=setmetatable({id=119,type=4013,testMethod=0,content="上阵{2}名雷元素斯露德",value1=3.0,value2=2.0},mt),
    ["120"]=setmetatable({id=120,type=4013,testMethod=0,content="上阵{2}名冰元素斯露德",value1=4.0,value2=2.0},mt),
    ["121"]=setmetatable({id=121,type=4013,testMethod=0,content="上阵{2}名风元素斯露德",value1=5.0,value2=2.0},mt),
    ["122"]=setmetatable({id=122,type=4013,testMethod=0,content="上阵{2}名符能斯露德",value1=6.0,value2=2.0},mt),
    ["123"]=setmetatable({id=123,type=4014,testMethod=0,content="不上阵法尼娅",value1=2001001.0},mt),
    ["124"]=setmetatable({id=124,type=4015,testMethod=0,content="不超过{1}块水晶被破坏",value1=2.0},mt),
    ["125"]=setmetatable({id=125,type=4015,testMethod=0,content="守护目标不被破坏",value1=0.0},mt),
    ["126"]=setmetatable({id=126,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=30.0},mt),
    ["127"]=setmetatable({id=127,type=4017,testMethod=0,content="通关时血量不低于{1}%",value1=30.0},mt),
    ["128"]=setmetatable({id=128,type=4018,testMethod=0,content="入侵敌人不超过{1}",value1=5.0},mt),
    ["129"]=setmetatable({id=129,type=4018,testMethod=0,content="不被敌人入侵",value1=0.0},mt),
    ["130"]=setmetatable({id=130,type=4020,testMethod=0,content="判断玩家战斗中成功触发{1}次{2}buff"},mt),
    ["131"]=setmetatable({id=131,type=4021,testMethod=0,content="成功触发{1}次雷元素过载",value1=1.0},mt),
    ["132"]=setmetatable({id=132,type=4022,testMethod=0,content="成功触发{1}次闪电链",value1=1.0},mt),
    ["161"]=setmetatable({id=161,type=4001,testMethod=0,content="首次通关限定奈纳出击"},mt),
    ["162"]=setmetatable({id=162,type=4001,testMethod=0,content="首次通关限定夏洛出击"},mt),
    ["163"]=setmetatable({id=163,type=4001,testMethod=0,content="首次通关限定法尼娅及瓦希缇"},mt),
    ["164"]=setmetatable({id=164,type=4001,testMethod=0,content="首次通关限定奈纳及夏洛"},mt),
    ["165"]=setmetatable({id=165,type=4001,testMethod=0,content="首次通关限定法尼娅及夏洛"},mt),
    ["166"]=setmetatable({id=166,type=4001,testMethod=0,content="首次通关限定瓦希缇及奈纳"},mt),
    ["201"]=setmetatable({id=201,type=4006,testMethod=0,content="禁止使用{1}技能"},mt),
    ["202"]=setmetatable({id=202,type=4007,testMethod=0,content="{1}使用次数小于{2}次"},mt),
    ["203"]=setmetatable({id=203,type=4009,testMethod=0,content="触发{4}反应{2}次"},mt),
    ["204"]=setmetatable({id=204,type=4001,testMethod=0,content="消灭全部异生体"},mt),
    ["205"]=setmetatable({id=205,type=4001,testMethod=0,content="具现特效大小"},mt),
    ["1001"]=setmetatable({id=1001,type=4001,testMethod=0,content="胜利通关",value1=0.0,value2=0.0,value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6=xlsNilTable,value7=xlsNilTable,value8=xlsNilTable},mt),
    ["1002"]=setmetatable({id=1002,type=4003,testMethod=0,content="通关时长不超过{1}秒",value1=240.0,value2=0.0,value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6=xlsNilTable,value7=xlsNilTable,value8=xlsNilTable},mt),
    ["1003"]=setmetatable({id=1003,type=4002,testMethod=0,content="至多{1}名斯露德退场",value1=1.0,value2=0.0,value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6=xlsNilTable,value7=xlsNilTable,value8=xlsNilTable},mt),
    ["301"]=setmetatable({id=301,type=4002,testMethod=0,content="全部斯露德存活",value1=0.0},mt),
    ["302"]=setmetatable({id=302,type=4015,testMethod=0,content="无守护目标死亡",value1=0.0},mt),
    ["303"]=setmetatable({id=303,type=4010,testMethod=0,content="不受到1次损伤",value1=0.0},mt),
    ["401"]=setmetatable({id=401,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=10.0,value2=0.0,value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6=xlsNilTable,value7=xlsNilTable,value8=xlsNilTable},mt),
    ["402"]=setmetatable({id=402,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=20.0},mt),
    ["403"]=setmetatable({id=403,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=30.0},mt),
    ["404"]=setmetatable({id=404,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=40.0},mt),
    ["405"]=setmetatable({id=405,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=50.0},mt),
    ["406"]=setmetatable({id=406,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=60.0},mt),
    ["407"]=setmetatable({id=407,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=70.0},mt),
    ["408"]=setmetatable({id=408,type=4016,testMethod=0,content="守护目标血量不低于{1}%",value1=80.0,value2=0.0,value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6=xlsNilTable,value7=xlsNilTable,value8=xlsNilTable},mt),
    ["409"]=setmetatable({id=409,type=4020,testMethod=0,content="灼烧层数叠加至5层",value1=1.0,value2=411.0,value3=5.0},mt),
    ["410"]=setmetatable({id=410,type=4024,testMethod=0,content="延长冰冻时间{2}秒",value1=4.0,value2=3.0},mt),
    ["411"]=setmetatable({id=411,type=4010,testMethod=0,content="受伤次数不超过{1}次",value1=0.0},mt),
    ["412"]=setmetatable({id=412,type=4025,testMethod=0,content="冲刺状态下普攻敌人10次",value1=1.0,value2=10.0,value3=4.0},mt),
    ["413"]=setmetatable({id=413,type=4020,testMethod=0,content="制造{1}次火过载",value1=1.0,value2=411.0},mt),
    ["414"]=setmetatable({id=414,type=4020,testMethod=0,content="制造{1}次冰过载",value1=1.0,value2=421.0},mt),
    ["415"]=setmetatable({id=415,type=4020,testMethod=0,content="制造{1}次风过载",value1=4.0,value2=438.0},mt),
    ["416"]=setmetatable({id=416,type=4020,testMethod=0,content="获得{1}个体力球",value1=1.0,value2=199982.0},mt),
    ["417"]=setmetatable({id=417,type=4020,testMethod=0,content="制造{1}次风过载",value1=1.0,value2=438.0},mt),
    ["418"]=setmetatable({id=418,type=4003,testMethod=0,content="通关时长不超过{1}秒",value1=180.0},mt),
    ["419"]=setmetatable({id=419,type=4003,testMethod=0,content="通关时长不超过{1}秒",value1=60.0},mt),
    ["420"]=setmetatable({id=420,type=4003,testMethod=0,content="通关时长不超过{1}秒",value1=90.0},mt),
    ["421"]=setmetatable({id=421,type=4017,testMethod=0,content="通关时斯露德血量不低于{1}%",value1=50.0},mt),
}
--生成获取数据的方法
---@return LevelCondition
function GetLevelConditionData(id)
    return LevelCondition_Xls[tostring(id)]
end
--自动生成注释
---@class LevelCondition : table 
---@field id number
---@field type number
---@field testMethod number
---@field content string
---@field value1 number
---@field value2 number
---@field value3 number
---@field value4 table
---@field value5 table
---@field value6 table
---@field value7 table
---@field value8 table
