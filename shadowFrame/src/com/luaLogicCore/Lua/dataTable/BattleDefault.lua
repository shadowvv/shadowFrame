---@class BattleDefault_Xls : table 
BattleDefault_Xls =
{
    ["1"]={id=1,typeExclude="【基础移动】体力值的上限，float",value=0,value2="",value3=120.0},
    ["2"]={id=2,typeExclude="【基础移动】体力值回复速度，float",value=0,value2="",value3=15.0},
    ["3"]={id=3,typeExclude="【基础移动】体力值到0回复冷却时间，float",value=0,value2="",value3=0.5},
    ["4"]={id=4,typeExclude="【基础移动】体力值不到0回复冷却时间，float",value=0,value2="",value3=1.0},
    ["5"]={id=5,typeExclude="【基础移动】冲刺能量消耗，每秒N点，float",value=0,value2="",value3=20.0},
    ["6"]={id=6,typeExclude="【基础移动】闪避单次消耗，每次N点，float",value=0,value2="",value3=20.0},
    ["12"]={id=12,typeExclude="【子弹通用】子弹能量上限（value）",value=1000},
    ["13"]={id=13,typeExclude="【子弹通用】子弹回复间隔（value3）和子弹回复速度（value）",value=1000,value2="",value3=1.0},
    ["14"]={id=14,typeExclude="【子弹通用】子弹自然回复时间（value3）",value=0,value2="",value3=1.5},
    ["15"]={id=15,typeExclude="【子弹通用】子弹过载时间（value4）",value=0,value2="",value3=2.5},
    ["16"]={id=16,typeExclude="【UI预警】怪物UI预警屏幕范围（value6:1）圆半径，UI预警屏幕上消失的范围（value6:2）",value=0,value2="",value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=265.0,[2]=265.0}},
    ["17"]={id=17,typeExclude="【UI预警】子弹UI预警屏幕范围（value6）圆半径",value=0,value2="",value3=247.0},
    ["18"]={id=18,typeExclude="【UI预警】怪物UI预警显示时怪物的距离（value6:1）怪物在此范围内UI透明度为1（value6:2）怪物在此范围外UI透明度为0.1（value6:3）",value=0,value2="",value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=1500.0,[2]=100.0,[3]=200.0}},
    ["19"]={id=19,typeExclude="【UI预警】子弹UI预警显示时子弹的距离（value6:1）子弹在此范围内透明度为1（value6:2）",value=0,value2="",value3=100.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=500.0,[2]=50.0}},
    ["20"]={id=20,typeExclude="【UI预警】怪物UI预警最大数量（Value1）",value=5,value2="",value3=5.0},
    ["21"]={id=21,typeExclude="【受击效果】伤害超过血量最大值百分比N，判定为大受击，否则为小受击",value=0,value2="",value3=0.15},
    ["22"]={id=22,typeExclude="【受击效果】大受击的特效路径",value=0,value2="effect/eff_prefabs/tongyong/tongyong_juese_shouji"},
    ["23"]={id=23,typeExclude="【受击效果】受击闪红的CD",value=0,value2="",value3=0.2},
    ["24"]={id=24,typeExclude="【受击效果】大受击语音的CD",value=0,value2="",value3=1.0},
    ["25"]={id=25,typeExclude="【受击效果】受击音效ID",value=77},
    ["26"]={id=26,typeExclude="【元素体质】元素体质的通用附着量（value6:1），元素体质的回复时间（value6:2）秒",value=0,value2="",value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=1.0,[2]=0.2}},
    ["27"]={id=27,typeExclude="【元素反应】元素反应cd ，value3 （秒）",value=0,value2="",value3=0.2},
    ["28"]={id=28,typeExclude="testteamcityVCStrigger9"},
    ["29"]={id=29,typeExclude="【元素反应】最大元素量",value=3},
    ["30"]={id=30,typeExclude="【元素反应】衰减比",value=0,value2="",value3=0.8},
    ["31"]={id=31,typeExclude="【元素反应】人物附着特效比例变化",value=0,value2="",value3=0.15},
    ["32"]={id=32,typeExclude="【元素反应】极奏能量状态修正（阵上，阵下）",value=0,value2="",value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=1.0,[2]=0.6}},
    ["100"]={id=100,typeExclude="【状态机相关】受击值上限",value=100},
    ["101"]={id=101,typeExclude="【状态机相关】受击值回复/秒",value=0,value2="",value3=2.5},
    ["102"]={id=102,typeExclude="【状态机相关】受击值清零直接回复值",value=60},
    ["103"]={id=103,typeExclude="【状态机相关】强受击（击倒）冻结时间（单位：秒）",value=3},
    ["200"]={id=200,typeExclude="【武装相关】普攻伤害衰减比例（4层）",value=0,value2="",value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=1.2,[2]=1.0,[3]=0.8,[4]=0.1}},
    ["201"]={id=201,typeExclude="【武装相关】攻击距离分成（小于等于）（8层）",value=0,value2="",value3=0.0,value4=xlsNilTable,value5=xlsNilTable,value6={[1]=0.0,[2]=20.0,[3]=40.0,[4]=60.0,[5]=80.0,[6]=100.0,[7]=120.0,[8]=160.0,[9]=999.0}},
    ["301"]={id=301,typeExclude="【瞄准镜相关】中心点偏移像素 Y",value=40},
    ["302"]={id=302,typeExclude="【瞄准镜相关】瞄准镜半径  单位: 像素",value=120},
    ["303"]={id=303,typeExclude="【体力条相关】低体力状态百分比",value=0,value2="",value3=0.2},
    ["305"]={id=305,typeExclude="【战斗结束】战斗结束后战斗结果延迟时间",value=0,value2="",value3=0.5},
    ["306"]={id=306,typeExclude="【子弹能量】子弹能量低状态百分比",value=0,value2="",value3=0.2},
    ["307"]={id=307,typeExclude="【瞄准镜相关】锁定冷却时间",value=0,value2="",value3=0.8},
    ["10001"]={id=10001,typeExclude="【战斗数值】默认初始暴击伤害",value=0,value2="",value3=1.5},
    ["501"]={id=501,typeExclude="【战斗掉落物】主动技能命中后，掉落物的单位时间(value3)和最大上限数(value)",value=5,value2="",value3=0.5},
    ["400"]={id=400,typeExclude="【血条】【怪物】显示距离",value=0,value2="",value3=150.0},
    ["401"]={id=401,typeExclude="【血条】【怪物】出视野后持续显示时间",value=0,value2="",value3=3.0},
    ["410"]={id=410,typeExclude="【血条】【角色】角色低血量状态百分比",value=0,value2="",value3=0.2},
    ["10002"]={id=10002,typeExclude="【战斗数值】减伤参数1",value=0,value2="",value3=10.0},
    ["10003"]={id=10003,typeExclude="【战斗数值】减伤参数2",value=0,value2="",value3=3500.0},
    ["10004"]={id=10004,typeExclude="【战斗数值】减伤参数3",value=0,value2="",value3=0.0},
    ["10005"]={id=10005,typeExclude="【战斗数值】爆击参数1",value=0,value2="",value3=0.5},
    ["10006"]={id=10006,typeExclude="【战斗数值】爆击参数2",value=0,value2="",value3=0.005},
    ["10007"]={id=10007,typeExclude="【战斗数值】爆击参数3",value=0,value2="",value3=0.3},
    ["10008"]={id=10008,typeExclude="【战斗数值】爆击参数4",value=0,value2="",value3=1500.0},
    ["10009"]={id=10009,typeExclude="【战斗数值】能量参数1",value=0,value2="",value3=0.5},
    ["10010"]={id=10010,typeExclude="【战斗数值】能量参数1",value=0,value2="",value3=550.0},
    ["10011"]={id=10011,typeExclude="【战斗数值】能量参数 a",value=0,value2="",value3=0.88},
}
--生成获取数据的方法
---@return BattleDefault
function GetBattleDefaultData(id)
    return BattleDefault_Xls[tostring(id)]
end
--自动生成注释
---@class BattleDefault : table 
---@field id number
---@field typeExclude string
---@field value number
---@field value2 string
---@field value3 number
---@field value4 table
---@field value5 table
---@field value6 table
