local default = {id=0,levelTitle="",levelTitleTxt1="",levelTitleType1=0,levelTitle1Value1=0,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="",levelTitleType2=0,levelTitle2Value1=0,levelTitle2Value2=0,levelTitle2Value3=xlsNilTable,levelTitleTxt3="",levelTitleType3=0,levelTitle3Value1=0,levelTitle3Value2=0,levelTitle3Value3=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class NewLevelTitle_Xls : table 
NewLevelTitle_Xls =
{
    ["1"]=setmetatable({id=1,levelTitle="保护核心，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=20},mt),
    ["2"]=setmetatable({id=2,levelTitle="保护安全区，坚持消灭所有敌人",levelTitleTxt1="已侵入",levelTitleType1=1003,levelTitle1Value1=5,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前波次",levelTitleType2=1004,levelTitle2Value1=5},mt),
    ["3"]=setmetatable({id=3,levelTitle="保护核心，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="奈娜当前血量",levelTitleType2=1001,levelTitle2Value1=2,levelTitle2Value2=0,levelTitle2Value3=xlsNilTable,levelTitleTxt3="已消灭",levelTitleType3=1002,levelTitle3Value1=20},mt),
    ["4"]=setmetatable({id=4,levelTitle="消灭所有敌人",levelTitleTxt1="消灭小冰角",levelTitleType1=1005,levelTitle1Value1=1001,levelTitle1Value2=5},mt),
    ["1000103"]=setmetatable({id=1000103,levelTitle="保护导师，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=38},mt),
    ["1000104"]=setmetatable({id=1000104,levelTitle="保护导师，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=126},mt),
    ["1000108"]=setmetatable({id=1000108,levelTitle="保护核心，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=30},mt),
    ["1000109"]=setmetatable({id=1000109,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=4},mt),
    ["1000110"]=setmetatable({id=1000110,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["1010102"]=setmetatable({id=1010102,levelTitle="保护核心，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["1010103"]=setmetatable({id=1010103,levelTitle="保护水晶，坚持倒计时结束",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="水晶当前血量",levelTitleType2=1001,levelTitle2Value1=2},mt),
    ["1000208"]=setmetatable({id=1000208,levelTitle="限定时间内消灭30只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["1000210"]=setmetatable({id=1000210,levelTitle="保护水晶，坚持倒计时结束",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="水晶当前血量",levelTitleType2=1001,levelTitle2Value1=40,levelTitle2Value2=0,levelTitle2Value3=xlsNilTable,levelTitleTxt3="水晶当前血量",levelTitleType3=1001,levelTitle3Value1=41},mt),
    ["1000211"]=setmetatable({id=1000211,levelTitle="规定时间内消灭45只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=45},mt),
    ["1000302"]=setmetatable({id=1000302,levelTitle="保护水晶，坚持倒计时结束或击败所有敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["1000305"]=setmetatable({id=1000305,levelTitle="解析文字，击败空腔",levelTitleTxt1="解析进度",levelTitleType1=1005,levelTitle1Value1=2001,levelTitle1Value2=3,levelTitle1Value3=xlsNilTable,levelTitleTxt2="击败空腔",levelTitleType2=1008,levelTitle2Value1=1,levelTitle2Value2=1,levelTitle2Value3={[1]=106002}},mt),
    ["1000307"]=setmetatable({id=1000307,levelTitle="躲避空间乱流，消灭50个异生体",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=50},mt),
    ["1000310"]=setmetatable({id=1000310,levelTitle="抵挡怪物，打开大门",levelTitleTxt1="打开大门",levelTitleType1=1005,levelTitle1Value1=2002,levelTitle1Value2=1},mt),
    ["1000311"]=setmetatable({id=1000311,levelTitle="关闭四个祭坛，切断首领能量供给",levelTitleTxt1="已关闭",levelTitleType1=1005,levelTitle1Value1=2006,levelTitle1Value2=4},mt),
    ["1000404"]=setmetatable({id=1000404,levelTitle="规定时间内消灭60只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=60},mt),
    ["1000410"]=setmetatable({id=1000410,levelTitle="规定时间内消灭60只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=60},mt),
    ["1000412"]=setmetatable({id=1000412,levelTitle="保护水晶并消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=55},mt),
    ["1000505"]=setmetatable({id=1000505,levelTitle="收集力量碎片，击败鲸鱼核心",levelTitleTxt1="力量碎片",levelTitleType1=1005,levelTitle1Value1=2004,levelTitle1Value2=3},mt),
    ["1000507"]=setmetatable({id=1000507,levelTitle="保护核心，限定时间内击败所有怪物",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=22},mt),
    ["1000508"]=setmetatable({id=1000508,levelTitle="规定时间内消灭30只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["1000605"]=setmetatable({id=1000605,levelTitle="规定时间内消灭40只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=40},mt),
    ["1000608"]=setmetatable({id=1000608,levelTitle="探查可疑地点，找到香料场",levelTitleTxt1="已探查",levelTitleType1=1005,levelTitle1Value1=2005,levelTitle1Value2=3},mt),
    ["1000702"]=setmetatable({id=1000702,levelTitle="保护顾途，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["1000704"]=setmetatable({id=1000704,levelTitle="限定时间内消灭30只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["1000707"]=setmetatable({id=1000707,levelTitle="规定时间内，护送水晶到安全区",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["1000709"]=setmetatable({id=1000709,levelTitle="规定时间内消灭4只精英怪物",levelTitleTxt1="已消灭",levelTitleType1=1008,levelTitle1Value1=4,levelTitle1Value2=4,levelTitle1Value3={[1]=107001,[2]=106001,[3]=104001}},mt),
    ["1020201"]=setmetatable({id=1020201,levelTitle="守护温德兰德，等待支援"},mt),
    ["1020202"]=setmetatable({id=1020202,levelTitle="保护“奈德兰德”"},mt),
    ["1020203"]=setmetatable({id=1020203,levelTitle="保护“奈德兰德”"},mt),
    ["1020204"]=setmetatable({id=1020204,levelTitle="保护“奈德兰德”",levelTitleTxt1="高威胁异生体",levelTitleType1=1004,levelTitle1Value1=2},mt),
    ["1020205"]=setmetatable({id=1020205,levelTitle="守护温德兰德，等待支援"},mt),
    ["1020206"]=setmetatable({id=1020206,levelTitle="保护“奈德兰德”"},mt),
    ["1020207"]=setmetatable({id=1020207,levelTitle="保护“奈德兰德”",levelTitleTxt1="消灭异生体",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["1020208"]=setmetatable({id=1020208,levelTitle="守护温德兰德",levelTitleTxt1="消灭异生体",levelTitleType1=1002,levelTitle1Value1=15},mt),
    ["1020301"]=setmetatable({id=1020301,levelTitle="实力展示",levelTitleTxt1="狙杀异生体",levelTitleType1=1002,levelTitle1Value1=15,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="水晶",levelTitleType2=1001,levelTitle2Value1=1},mt),
    ["1020302"]=setmetatable({id=1020302,levelTitle="守护乐器",levelTitleTxt1="水晶",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["1020303"]=setmetatable({id=1020303,levelTitle="保护逃难者",levelTitleTxt1="水晶",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["1020304"]=setmetatable({id=1020304,levelTitle="消灭所有异生体"},mt),
    ["1020305"]=setmetatable({id=1020305,levelTitle="消灭所有异生体"},mt),
    ["1020306"]=setmetatable({id=1020306,levelTitle="消灭所有异生体"},mt),
    ["1020307"]=setmetatable({id=1020307,levelTitle="消灭所有异生体"},mt),
    ["1020308"]=setmetatable({id=1020308,levelTitle="消灭所有异生体"},mt),
    ["1030201"]=setmetatable({id=1030201,levelTitle="规定时间内消灭30只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["1030202"]=setmetatable({id=1030202,levelTitle="保护水晶，消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=30},mt),
    ["2000001"]=setmetatable({id=2000001,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=5,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前得分",levelTitleType2=1006,levelTitle2Value1=999999},mt),
    ["2000003"]=setmetatable({id=2000003,levelTitle="消灭60只异生体",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=60},mt),
    ["2050201"]=setmetatable({id=2050201,levelTitle="保护水晶并消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=28},mt),
    ["2050202"]=setmetatable({id=2050202,levelTitle="保护水晶并消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=38},mt),
    ["2050203"]=setmetatable({id=2050203,levelTitle="保护水晶并消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=43},mt),
    ["3000202"]=setmetatable({id=3000202,levelTitle="保护水晶并消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=25},mt),
    ["3000205"]=setmetatable({id=3000205,levelTitle="保护水晶并消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=30},mt),
    ["3010001"]=setmetatable({id=3010001,levelTitle="消灭所有异生体"},mt),
    ["3010002"]=setmetatable({id=3010002,levelTitle="躲避激光，尽快到达终点"},mt),
    ["3020001"]=setmetatable({id=3020001,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=8,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前得分",levelTitleType2=1006,levelTitle2Value1=999999},mt),
    ["3020002"]=setmetatable({id=3020002,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=8,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前得分",levelTitleType2=1006,levelTitle2Value1=999999},mt),
    ["3020003"]=setmetatable({id=3020003,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=8,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前得分",levelTitleType2=1006,levelTitle2Value1=999999},mt),
    ["3020004"]=setmetatable({id=3020004,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=8,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前得分",levelTitleType2=1006,levelTitle2Value1=999999},mt),
    ["3020205"]=setmetatable({id=3020205,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["3020210"]=setmetatable({id=3020210,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["3020305"]=setmetatable({id=3020305,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["3020310"]=setmetatable({id=3020310,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["3020405"]=setmetatable({id=3020405,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=4},mt),
    ["3020411"]=setmetatable({id=3020411,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=6},mt),
    ["3020505"]=setmetatable({id=3020505,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["3020510"]=setmetatable({id=3020510,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=5},mt),
    ["3020602"]=setmetatable({id=3020602,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=5},mt),
    ["3020607"]=setmetatable({id=3020607,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=5},mt),
    ["3020703"]=setmetatable({id=3020703,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=8},mt),
    ["3020706"]=setmetatable({id=3020706,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=7},mt),
    ["3020803"]=setmetatable({id=3020803,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=13},mt),
    ["3020807"]=setmetatable({id=3020807,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=13},mt),
    ["4010203"]=setmetatable({id=4010203,levelTitle="倒计时结束前穿过全部光环抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=14},mt),
    ["3030301"]=setmetatable({id=3030301,levelTitle="保护核心，消灭全部敌人",levelTitleTxt1="核心当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="核心当前血量",levelTitleType2=1001,levelTitle2Value1=2,levelTitle2Value2=0,levelTitle2Value3=xlsNilTable,levelTitleTxt3="已消灭",levelTitleType3=1002,levelTitle3Value1=40},mt),
    ["3020005"]=setmetatable({id=3020005,levelTitle="穿越暴风雪，抵达终点",levelTitleTxt1="已激活庇护所",levelTitleType1=1005,levelTitle1Value1=3100,levelTitle1Value2=2},mt),
    ["3020006"]=setmetatable({id=3020006,levelTitle="穿越暴风雪，抵达终点",levelTitleTxt1="已激活庇护所",levelTitleType1=1005,levelTitle1Value1=3100,levelTitle1Value2=3},mt),
    ["3020007"]=setmetatable({id=3020007,levelTitle="穿越暴风雪，抵达终点",levelTitleTxt1="已激活庇护所",levelTitleType1=1005,levelTitle1Value1=3100,levelTitle1Value2=4},mt),
    ["3030101"]=setmetatable({id=3030101,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=8},mt),
    ["3030202"]=setmetatable({id=3030202,levelTitle="穿越暴风雪，抵达终点",levelTitleTxt1="已激活庇护所",levelTitleType1=1005,levelTitle1Value1=3100,levelTitle1Value2=3},mt),
    ["3030204"]=setmetatable({id=3030204,levelTitle="限时内消灭100只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=100},mt),
    ["3030404"]=setmetatable({id=3030404,levelTitle="关闭四个祭坛，击败铵格尔",levelTitleTxt1="已关闭",levelTitleType1=1005,levelTitle1Value1=2006,levelTitle1Value2=4},mt),
    ["3050001"]=setmetatable({id=3050001,levelTitle="永无止尽的战斗！"},mt),
    ["9000032"]=setmetatable({id=9000032,levelTitle="保护水晶，消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=26},mt),
    ["9000033"]=setmetatable({id=9000033,levelTitle="保护水晶，坚持倒计时结束",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="水晶当前血量",levelTitleType2=1001,levelTitle2Value1=2,levelTitle2Value2=0,levelTitle2Value3=xlsNilTable,levelTitleTxt3="水晶当前血量",levelTitleType3=1001,levelTitle3Value1=3},mt),
    ["9000034"]=setmetatable({id=9000034,levelTitle="规定时间内，护送水晶到安全区",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["9000035"]=setmetatable({id=9000035,levelTitle="拦截所有怪物，保护安全区",levelTitleTxt1="已侵入",levelTitleType1=1003,levelTitle1Value1=5,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=6},mt),
    ["9000036"]=setmetatable({id=9000036,levelTitle="45秒内消灭30只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=15},mt),
    ["9000037"]=setmetatable({id=9000037,levelTitle="拦截目标剩余血量",levelTitleTxt1="当前血量",levelTitleType1=1001,levelTitle1Value1=1},mt),
    ["9000066"]=setmetatable({id=9000066,levelTitle="拦截怪物，坚持倒计时结束",levelTitleTxt1="已侵入",levelTitleType1=1003,levelTitle1Value1=10},mt),
    ["9000067"]=setmetatable({id=9000067,levelTitle="时间限制内，尽可能多获得金币",levelTitleTxt1="当前分数",levelTitleType1=1002,levelTitle1Value1=1},mt),
    ["9000068"]=setmetatable({id=9000068,levelTitle="时限内抵达终点",levelTitleTxt1="总进度",levelTitleType1=1002,levelTitle1Value1=1},mt),
    ["9000069"]=setmetatable({id=9000069,levelTitle="规定时间内消灭30只怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["9000080"]=setmetatable({id=9000080,levelTitle="自爆怪死亡就加1",levelTitleTxt1="数量",levelTitleType1=1007,levelTitle1Value1=30},mt),
    ["9000081"]=setmetatable({id=9000081,levelTitle="击杀杂鱼和空腔",levelTitleTxt1="击杀杂鱼",levelTitleType1=1008,levelTitle1Value1=20,levelTitle1Value2=20,levelTitle1Value3={[1]=100001,[2]=101001,[3]=102001},levelTitleTxt2="击杀空腔",levelTitleType2=1008,levelTitle2Value1=20,levelTitle2Value2=20,levelTitle2Value3={[1]=106001,[2]=106002}},mt),
    ["9000085"]=setmetatable({id=9000085,levelTitle="倒计时结束前抵达终点",levelTitleTxt1="已通过检查点",levelTitleType1=1005,levelTitle1Value1=3011,levelTitle1Value2=5,levelTitle1Value3=xlsNilTable,levelTitleTxt2="当前得分",levelTitleType2=1006,levelTitle2Value1=999999},mt),
    ["9000091"]=setmetatable({id=9000091,levelTitle="保护区域，击败所有怪物",levelTitleTxt1="已侵入",levelTitleType1=1003,levelTitle1Value1=10,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="已消灭",levelTitleType2=1002,levelTitle2Value1=26},mt),
    ["9000092"]=setmetatable({id=9000092,levelTitle="拦截怪物，坚持倒计时结束",levelTitleTxt1="已侵入",levelTitleType1=1003,levelTitle1Value1=10},mt),
    ["3040001"]=setmetatable({id=3040001,levelTitle="按住瞄准目标，尽可能一次性的消灭更多敌人",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=39},mt),
    ["3040002"]=setmetatable({id=3040002,levelTitle="按住瞄准目标，尽可能一次性的消灭更多敌人",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=62},mt),
    ["3040003"]=setmetatable({id=3040003,levelTitle="打准节拍可以发出音波攻击，同时消除弹幕",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=29},mt),
    ["3040004"]=setmetatable({id=3040004,levelTitle="打出完美节拍可以造成更高的范围伤害",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=32},mt),
    ["3040005"]=setmetatable({id=3040005,levelTitle="在倒计时结束前，尽可能的击杀怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["3040006"]=setmetatable({id=3040006,levelTitle="可以预瞄怪物移动方位，提前释放技能来击杀移动中的怪物",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=24},mt),
    ["4010102"]=setmetatable({id=4010102,levelTitle="限定120s内消灭30只敌人",levelTitleTxt1="已消灭",levelTitleType1=1002,levelTitle1Value1=30},mt),
    ["4010104"]=setmetatable({id=4010104,levelTitle="前往目标点，消灭2只梦境精英",levelTitleTxt1="消灭梦境精英",levelTitleType1=1008,levelTitle1Value1=2,levelTitle1Value2=2,levelTitle1Value3={[1]=107102,[2]=106005,[3]=104008}},mt),
    ["4010106"]=setmetatable({id=4010106,levelTitle="规定时间内消灭3只梦境精英",levelTitleTxt1="消灭梦境精英",levelTitleType1=1008,levelTitle1Value1=3,levelTitle1Value2=3,levelTitle1Value3={[1]=107102,[2]=106005,[3]=104008}},mt),
    ["4010107"]=setmetatable({id=4010107,levelTitle="保护水晶，消灭全部敌人",levelTitleTxt1="水晶当前血量",levelTitleType1=1001,levelTitle1Value1=1,levelTitle1Value2=0,levelTitle1Value3=xlsNilTable,levelTitleTxt2="水晶当前血量",levelTitleType2=1001,levelTitle2Value1=2,levelTitle2Value2=0,levelTitle2Value3=xlsNilTable,levelTitleTxt3="已消灭",levelTitleType3=1002,levelTitle3Value1=30},mt),
    ["4010109"]=setmetatable({id=4010109,levelTitle="收集5个目标，消灭2只梦境精英",levelTitleTxt1="消灭梦境精英",levelTitleType1=1008,levelTitle1Value1=2,levelTitle1Value2=2,levelTitle1Value3={[1]=107102,[2]=106005,[3]=104008},levelTitleTxt2="已收集",levelTitleType2=1005,levelTitle2Value1=2004,levelTitle2Value2=5},mt),
    ["4010111"]=setmetatable({id=4010111,levelTitle="规定时间内消灭3只梦境精英",levelTitleTxt1="消灭梦境精英",levelTitleType1=1008,levelTitle1Value1=3,levelTitle1Value2=3,levelTitle1Value3={[1]=107102,[2]=106005,[3]=104008}},mt),
    ["4010153"]=setmetatable({id=4010153,levelTitle="规定时间内消灭3只梦境精英",levelTitleTxt1="消灭梦境精英",levelTitleType1=1008,levelTitle1Value1=3,levelTitle1Value2=3,levelTitle1Value3={[1]=107101,[2]=106004,[3]=104006}},mt),
    ["4010156"]=setmetatable({id=4010156,levelTitle="规定时间内消灭3只梦境精英",levelTitleTxt1="消灭梦境精英",levelTitleType1=1008,levelTitle1Value1=3,levelTitle1Value2=3,levelTitle1Value3={[1]=107101,[2]=106004,[3]=104006}},mt),
}
--生成获取数据的方法
---@return NewLevelTitle
function GetNewLevelTitleData(id)
    return NewLevelTitle_Xls[tostring(id)]
end
--自动生成注释
---@class NewLevelTitle : table 
---@field id number
---@field levelTitle string
---@field levelTitleTxt1 string
---@field levelTitleType1 number
---@field levelTitle1Value1 number
---@field levelTitle1Value2 number
---@field levelTitle1Value3 table
---@field levelTitleTxt2 string
---@field levelTitleType2 number
---@field levelTitle2Value1 number
---@field levelTitle2Value2 number
---@field levelTitle2Value3 table
---@field levelTitleTxt3 string
---@field levelTitleType3 number
---@field levelTitle3Value1 number
---@field levelTitle3Value2 number
---@field levelTitle3Value3 table
