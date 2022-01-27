---@class BuffGroup_Xls : table 
BuffGroup_Xls =
{
    ["1"]={id=1,name="测试buff-1",des1Exclude="敌方增加我方攻击10%的敌方攻击",des2Exclude="这是一个描述",buffInstanceId={[1]=1},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["2"]={id=2,name="测试buff-2",des1Exclude="敌方增加10%攻击",des2Exclude="这是一个描述",buffInstanceId={[1]=2},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=1,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["3"]={id=3,name="测试buff-2",des1Exclude="敌方增加10%攻击",des2Exclude="这是一个描述",buffInstanceId={[1]=2},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=2,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["4"]={id=4,name="测试buff-3",des1Exclude="敌方增加20%攻击",des2Exclude="这是一个描述",buffInstanceId={[1]=2},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=2,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["5"]={id=5,name="测试buff-4",des1Exclude="持续伤害",des2Exclude="这是一个描述",buffInstanceId={[1]=2},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["6"]={id=6,name="测试buff-5",des1Exclude="持续伤害，敌方增加20%攻击",des2Exclude="这是一个描述",buffInstanceId={[1]=2},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=2},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["7"]={id=7,name="测试buff-6",des1Exclude="释法者自身，敌方增加20%攻击",des2Exclude="这是一个描述",buffInstanceId={[1]=4},specialState=0,durationTime=5.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=5,[2]=2},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["8"]={id=8,name="空，暂用特效1弱点",des1Exclude="",des2Exclude="",buffInstanceId=xlsNilTable,specialState=0,durationTime=9999.0,control={[1]=4},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=902}},
    ["9"]={id=9,name="空，暂用特效2水属",des1Exclude="",des2Exclude="",buffInstanceId=xlsNilTable,specialState=0,durationTime=9999.0,control={[1]=4},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=1}},
    ["10"]={id=10,name="临时用-大减速！",des1Exclude="大减速！",des2Exclude="大减速！",buffInstanceId={[1]=10},specialState=0,durationTime=9999.0,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["100"]={id=100,name="淬火",des1Exclude="淬火反应buff-瘟疫云区域",des2Exclude="",buffInstanceId={[1]=100},specialState=0,durationTime=1.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["101"]={id=101,name="淬火",des1Exclude="淬火反应buff-物伤+减防",des2Exclude="",buffInstanceId={[1]=101,[2]=102},specialState=0,durationTime=10.0,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["120"]={id=120,name="电磁",des1Exclude="电磁反应buff-雷伤",des2Exclude="",buffInstanceId={[1]=120,[2]=121},specialState=0,durationTime=0.5,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=106}},
    ["140"]={id=140,name="雷暴",des1Exclude="雷暴反应buff-火伤",des2Exclude="",buffInstanceId={[1]=140},specialState=0,durationTime=0.15,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=103}},
    ["150"]={id=150,name="雷暴",des1Exclude="雷暴反应buff-雷伤",des2Exclude="",buffInstanceId={[1]=150},specialState=0,durationTime=0.15,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=104}},
    ["160"]={id=160,name="转化",des1Exclude="转化反应buff-源能伤",des2Exclude="",buffInstanceId={[1]=160},specialState=0,durationTime=6.0,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["170"]={id=170,name="风雷",des1Exclude="风雷反应buff-相变雷云",des2Exclude="",buffInstanceId={[1]=170},specialState=0,durationTime=1.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["171"]={id=171,name="风雷",des1Exclude="风雷反应buff-风伤",des2Exclude="",buffInstanceId={[1]=171},specialState=0,durationTime=10.0,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["180"]={id=180,name="风雷",des1Exclude="风雷反应buff-相变雷云",des2Exclude="",buffInstanceId={[1]=180},specialState=0,durationTime=1.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["181"]={id=181,name="风雷",des1Exclude="风雷反应buff-雷伤",des2Exclude="",buffInstanceId={[1]=181},specialState=0,durationTime=10.0,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["190"]={id=190,name="冰风",des1Exclude="冰风反应buff-冰伤区域",des2Exclude="",buffInstanceId={[1]=190},specialState=0,durationTime=1.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["191"]={id=191,name="冰风",des1Exclude="冰风反应buff-冰伤通用",des2Exclude="",buffInstanceId={[1]=191},specialState=0,durationTime=2.0,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["200"]={id=200,name="风火",des1Exclude="风火反应buff-风伤",des2Exclude="",buffInstanceId={[1]=200},specialState=0,durationTime=0.15,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=108}},
    ["210"]={id=210,name="风火",des1Exclude="风火反应buff-火伤",des2Exclude="",buffInstanceId={[1]=210},specialState=0,durationTime=0.15,control={[1]=3,[2]=4,[3]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=109}},
    ["1000"]={id=1000,name="无敌",des1Exclude="无敌buff",des2Exclude="无敌buff",buffInstanceId={[1]=10000},specialState=0,durationTime=-1.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=1003},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1001"]={id=1001,name="给父物体减伤",des1Exclude="自身反增伤降低，被打的更疼",des2Exclude="",buffInstanceId={[1]=10011,[2]=10012},specialState=0,durationTime=10.0,control={[1]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=901}},
    ["1002"]={id=1002,name="无敌物抗+魔抗变化",des1Exclude="无敌物抗+魔抗变化",des2Exclude="",buffInstanceId={[1]=10051},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=902}},
    ["10022"]={id=10022,name="无敌物抗+魔抗变化",des1Exclude="无敌物抗+魔抗变化",des2Exclude="",buffInstanceId={[1]=10051},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1003"]={id=1003,name="无敌出场",des1Exclude="无敌buff出场",des2Exclude="无敌buff出场",buffInstanceId={[1]=10000},specialState=0,durationTime=0.5,control={[1]=0},stackableNum=0,offsettingBuff={[1]=1000},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1004"]={id=1004,name="通用加速",des1Exclude="通用加速",des2Exclude="",buffInstanceId={[1]=10040},specialState=0,durationTime=999.0,control={[1]=1},stackableNum=0,offsettingBuff={[1]=200301200},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10052"]={id=10052,name="火元素体质buff",des1Exclude="高物理免伤，火元素免疫",des2Exclude="",buffInstanceId={[1]=10051,[2]=10052},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10053"]={id=10053,name="雷元素体质buff",des1Exclude="高物理免伤，雷元素免疫",des2Exclude="",buffInstanceId={[1]=10051,[2]=10053},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10054"]={id=10054,name="冰元素体质buff",des1Exclude="高物理免伤，冰元素免疫",des2Exclude="",buffInstanceId={[1]=10051,[2]=10054},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10055"]={id=10055,name="风元素体质buff",des1Exclude="高物理免伤，风元素免疫",des2Exclude="",buffInstanceId={[1]=10051,[2]=10055},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10101"]={id=10101,name="元素关特化_小火元素体质buff",des1Exclude="物理免伤70，火元素免疫",des2Exclude="",buffInstanceId={[1]=10151,[2]=10052},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10102"]={id=10102,name="元素关特化_小雷元素体质buff",des1Exclude="物理免伤70，雷元素免疫",des2Exclude="",buffInstanceId={[1]=10151,[2]=10053},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10103"]={id=10103,name="元素关特化_小冰元素体质buff",des1Exclude="物理免伤70，冰元素免疫",des2Exclude="",buffInstanceId={[1]=10151,[2]=10054},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10104"]={id=10104,name="元素关特化_小风元素体质buff",des1Exclude="物理免伤70，风元素免疫",des2Exclude="",buffInstanceId={[1]=10151,[2]=10055},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10211"]={id=10211,name="火元素关特化_中风元素体质buff",des1Exclude="正常物理免伤，元素抗性正常，风元素免疫",des2Exclude="",buffInstanceId={[1]=10151,[2]=10113,[3]=10055},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10212"]={id=10212,name="火元素关特化_中雷元素体质buff",des1Exclude="正常物理免伤，元素抗性正常，雷元素免疫",des2Exclude="",buffInstanceId={[1]=10151,[2]=10113,[3]=10053},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10213"]={id=10213,name="火元素关特化_大冰元素体质buff",des1Exclude="较高物理免伤，较高元素抗性，冰元素免疫",des2Exclude="",buffInstanceId={[1]=10251,[2]=10123,[3]=10054},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10221"]={id=10221,name="雷元素关特化_中风元素体质buff",des1Exclude="高物理免伤，中元素抗，风元素免疫",des2Exclude="",buffInstanceId={[1]=10251,[2]=10113,[3]=10055},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10222"]={id=10222,name="雷元素关特化_中火元素体质buff",des1Exclude="高物理免伤，低元素抗，火元素免疫，风元素低抗",des2Exclude="",buffInstanceId={[1]=10251,[2]=10052,[3]=10155},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10223"]={id=10223,name="雷元素关特化_大风元素体质buff",des1Exclude="高物理免伤，高元素抗，风元素免疫",des2Exclude="",buffInstanceId={[1]=10251,[2]=10123,[3]=10055},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10224"]={id=10224,name="雷元素关特化_大火元素体质buff",des1Exclude="高物理免伤，高元素抗，火元素免疫，风元素低抗",des2Exclude="",buffInstanceId={[1]=10251,[2]=10123,[3]=10052,[4]=10155},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10231"]={id=10231,name="风元素关特化_中雷元素体质buff",des1Exclude="高物理免伤，中元素抗，雷元素免疫",des2Exclude="",buffInstanceId={[1]=10251,[2]=10113,[3]=10053},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10232"]={id=10232,name="风元素关特化_中火元素体质buff",des1Exclude="高物理免伤，低元素抗，火元素免疫，雷元素低抗",des2Exclude="",buffInstanceId={[1]=10251,[2]=10052,[3]=10153},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10233"]={id=10233,name="风元素关特化_大雷元素体质buff",des1Exclude="高物理免伤，高元素抗，雷元素免疫",des2Exclude="",buffInstanceId={[1]=10251,[2]=10123,[3]=10053},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10234"]={id=10234,name="风元素关特化_大火元素体质buff",des1Exclude="高物理免伤，高元素抗，火元素免疫，雷元素低抗",des2Exclude="",buffInstanceId={[1]=10251,[2]=10123,[3]=10052,[4]=10153},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10241"]={id=10241,name="冰元素关特化_大火元素体质buff",des1Exclude="高物理免伤，超高元素抗性，火属性免疫",des2Exclude="",buffInstanceId={[1]=10251,[2]=10013,[3]=10052},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["10301"]={id=10301,name="冲刺关卡_弱怪物子弹减速buff",des1Exclude="怪物子弹击中玩家时减速15%",des2Exclude="",buffInstanceId={[1]=10201},specialState=0,durationTime=1.5,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=1},
    ["10302"]={id=10302,name="冲刺关卡_强怪物子弹减速buff",des1Exclude="激光击中玩家时减速25%",des2Exclude="",buffInstanceId={[1]=10202},specialState=0,durationTime=1.5,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=1},
    ["1006"]={id=1006,name="无敌转阶段用",des1Exclude="无敌buff",des2Exclude="无敌buff",buffInstanceId={[1]=10000},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=1003,[2]=1000},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1007"]={id=1007,name="普通防御减低buff",des1Exclude="60%物理免伤",des2Exclude="",buffInstanceId={[1]=10056},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1008"]={id=1008,name="全元素防御免伤",des1Exclude="80%元素免伤",des2Exclude="",buffInstanceId={[1]=10013},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1009"]={id=1009,name="全元素防御免伤",des1Exclude="约等于无敌",des2Exclude="",buffInstanceId={[1]=10057,[2]=10058},specialState=0,durationTime=999.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1010"]={id=1010,name="父物体无敌",des1Exclude="无敌buff",des2Exclude="无敌buff",buffInstanceId={[1]=10000},specialState=0,durationTime=999.0,control={[1]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["1400"]={id=1400,name="霸体",des1Exclude="霸体buff",des2Exclude="霸体buff出场",buffInstanceId={[1]=14000},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["5000"]={id=5000,name="治疗测试",des1Exclude="治疗测试",des2Exclude="测试用治疗",buffInstanceId={[1]=5000},specialState=0,durationTime=4.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["9001"]={id=9001,name="晕眩",des1Exclude="晕眩",des2Exclude="",buffInstanceId=xlsNilTable,specialState=6,durationTime=10.0,control={[1]=5},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=906}},
    ["200101200"]={id=200101200,name="法尼娅主动技能炸开buff",des1Exclude="法尼娅主动技能炸开buff",des2Exclude="",buffInstanceId={[1]=200101200},specialState=0,durationTime=10.0,control={[1]=0},stackableNum=1,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=200101200}},
    ["200101300"]={id=200101300,name="法尼娅极奏飘带",des1Exclude="法尼娅极奏飘带",des2Exclude="",buffInstanceId=xlsNilTable,specialState=0,durationTime=11.1,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=200101300},endEffectId={[1]=200101301,[2]=200101302}},
    ["200101301"]={id=200101301,name="法尼娅极奏切技能",des1Exclude="法尼娅极奏切技能",des2Exclude="",buffInstanceId={[1]=200101300},specialState=0,durationTime=8.0,control={[1]=0},stackableNum=0,offsettingBuff={[1]=0},buffGroupIcon="icon_fire",sideShow=1,isDebuff=2},
    ["200201100"]={id=200201100,name="奈纳普攻消散",des1Exclude="奈纳普攻消散",des2Exclude="",buffInstanceId=xlsNilTable,specialState=0,durationTime=0.2,control={[1]=0},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=2104}},
    ["200201200"]={id=200201200,name="奈纳主动法阵持续特效",des1Exclude="奈纳主动法阵持续特效",des2Exclude="",buffInstanceId=xlsNilTable,specialState=0,durationTime=-1.0,control={[1]=0},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=2202}},
    ["200301200"]={id=200301200,name="夏洛加速",des1Exclude="夏洛主动鸟buff",des2Exclude="",buffInstanceId={[1]=200301200},specialState=0,durationTime=5.0,control={[1]=1,[2]=2},stackableNum=1,offsettingBuff={[1]=1004},buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=3206},endEffectId={[1]=3207}},
    ["200301300"]={id=200301300,name="夏洛极奏伤害",des1Exclude="",des2Exclude="",buffInstanceId={[1]=200301300},specialState=0,durationTime=15.0,control={[1]=3,[2]=4},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["200301301"]={id=200301301,name="夏洛极奏回复",des1Exclude="",des2Exclude="",buffInstanceId={[1]=200301301},specialState=0,durationTime=15.0,control={[1]=1},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["200401201"]={id=200401201,name="维拉主动",des1Exclude="",des2Exclude="",buffInstanceId={[1]=200401201},specialState=0,durationTime=5.0,control={[1]=0},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2,effectId={[1]=4201},endEffectId={[1]=4202}},
    ["50410100"]={id=50410100,name="",des1Exclude="提升15%增伤率",des2Exclude="",buffInstanceId={[1]=50410100},specialState=0,durationTime=-1.0,control={[1]=0},stackableNum=0,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["50430100"]={id=50430100,name="",des1Exclude="增加4%增伤率，最多叠加4层",des2Exclude="",buffInstanceId={[1]=50430100},specialState=0,durationTime=-1.0,control={[1]=0},stackableNum=4,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
    ["50440100"]={id=50440100,name="",des1Exclude="增加自身3%通用元素伤害加成，最多叠加5层",des2Exclude="",buffInstanceId={[1]=50440100},specialState=0,durationTime=-1.0,control={[1]=0},stackableNum=5,offsettingBuff=xlsNilTable,buffGroupIcon="icon_fire",sideShow=0,isDebuff=2},
}
--生成获取数据的方法
---@return BuffGroup
function GetBuffGroupData(id)
    return BuffGroup_Xls[tostring(id)]
end
--自动生成注释
---@class BuffGroup : table 
---@field id number
---@field name string
---@field des1Exclude string
---@field des2Exclude string
---@field buffInstanceId table
---@field specialState number
---@field durationTime number
---@field control table
---@field stackableNum number
---@field offsettingBuff table
---@field buffGroupIcon string
---@field sideShow number
---@field isDebuff number
---@field effectId table
---@field endEffectId table
---@field startSoundId table
---@field endSoundId table
---@field startNoiseId table
---@field endNoiseId table
