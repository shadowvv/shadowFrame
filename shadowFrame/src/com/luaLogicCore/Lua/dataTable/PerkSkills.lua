local default = {id=0,perkSkillName="",perkSkillDesc="",skillType="",illustrate="",limit=xlsNilTable,skillQuality=0,passiveSkills=xlsNilTable,fight=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PerkSkills_Xls : table 
PerkSkills_Xls =
{
    ["10000001"]=setmetatable({id=10000001,perkSkillName="慑服",perkSkillDesc="处于【异梦】状态时提高25%防御力，并且击败敌方目标时会恢复自身2%生命值。",skillType="增益",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200220,[2]=1200221},fight=10},mt),
    ["10001001"]=setmetatable({id=10001001,perkSkillName="灵活增幅",perkSkillDesc="闪避消弹成功后立刻恢复25％的弹药，并在5秒内提高蓄力速度。",skillType="增益",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200010},fight=10},mt),
    ["10001002"]=setmetatable({id=10001002,perkSkillName="无畏祝福",perkSkillDesc="连续击杀四个目标后可在之后4秒内大幅提高装弹速度。",skillType="增益",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200020},fight=10},mt),
    ["10001003"]=setmetatable({id=10001003,perkSkillName="冷静恢复",perkSkillDesc="在场上不攻击时，缓慢的自动装填弹药，最多可装到弹药容量上限的2倍。",skillType="增益",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200030,[2]=1200031},fight=10},mt),
    ["10001004"]=setmetatable({id=10001004,perkSkillName="狩猎高手",perkSkillDesc="完成装弹时，会根据此前击杀敌方目标的数量获得超过上限的弹药量。完成装弹时，会根据此前击杀敌方目标的数量获得超过上限的弹药量。完成装弹时，会根据此前击杀敌方目标的数量获得超过上限的弹药量。完成装弹时，会根据此前击杀敌方目标的数量获得超过上限的弹药量。完成装弹时，会根据此前击杀敌方目标的数量获得超过上限的弹药量。完成装弹时，会根据此前击杀敌方目标的数量获得超过上限的弹药量。",skillType="增益",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200040,[2]=1200041},fight=10},mt),
    ["10001005"]=setmetatable({id=10001005,perkSkillName="极奏就绪",perkSkillDesc="极奏技能准备就绪后，可大幅提升换弹速度和蓄力速度。",skillType="增益",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200050,[2]=1200052},fight=10},mt),
    ["10001006"]=setmetatable({id=10001006,perkSkillName="自动填装",perkSkillDesc="不出战时会缓慢装填弹药。",skillType="增益",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200060},fight=10},mt),
    ["10001007"]=setmetatable({id=10001007,perkSkillName="神射手",perkSkillDesc="短时间内攻击连续命中6次就会恢复少量弹药。",skillType="增益",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200070},fight=10},mt),
    ["10001008"]=setmetatable({id=10001008,perkSkillName="运营大师",perkSkillDesc="击杀目标后恢复20％弹药，如果目标为精英或首领，则恢复量提高。",skillType="增益",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200080,[2]=1200081,[3]=1200082},fight=10},mt),
    ["10001009"]=setmetatable({id=10001009,perkSkillName="快速冷却",perkSkillDesc="当前弹药量高于50％时加快换弹速度。",skillType="增益",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200090},fight=10},mt),
    ["10001010"]=setmetatable({id=10001010,perkSkillName="惊叫箱",perkSkillDesc="完成装弹时，随机额外装填40%-100%。",skillType="增益",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200100},fight=10},mt),
    ["10002001"]=setmetatable({id=10002001,perkSkillName="战斗之心",perkSkillDesc="短时间内连续击杀4个目标后普通攻击的伤害增加。",skillType="增益",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200110},fight=10},mt),
    ["10002002"]=setmetatable({id=10002002,perkSkillName="步入佳境",perkSkillDesc="在战斗中逐渐提高普通攻击的伤害，此效果最多叠加5次，停止攻击4秒或受伤后失效。",skillType="增益",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200120,[2]=1200121,[3]=1200122},fight=10},mt),
    ["10002003"]=setmetatable({id=10002003,perkSkillName="除根者",perkSkillDesc="对首领、异种、精英的普通攻击伤害提高。",skillType="增益",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200130},fight=10},mt),
    ["10002004"]=setmetatable({id=10002004,perkSkillName="个中强手",perkSkillDesc="对普通敌人的普通攻击伤害提高。",skillType="增益",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200140},fight=10},mt),
    ["10002005"]=setmetatable({id=10002005,perkSkillName="战中修整",perkSkillDesc="击杀敌方目标后提高换弹速度，有效时间内装弹会使自己进入【异梦】状态。",skillType="增益",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200150,[2]=1200151},fight=10},mt),
    ["10002006"]=setmetatable({id=10002006,perkSkillName="目标锁定",perkSkillDesc="攻击连续命中敌人会提高普通攻击的伤害，若1.5秒内不进行攻击或攻击未命中目标，则伤害提升量重新叠加。",skillType="增益",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200160,[2]=1200161},fight=10},mt),
    ["10002007"]=setmetatable({id=10002007,perkSkillName="精英猎手",perkSkillDesc="击杀敌方目标后会略微加快换弹速度。",skillType="增益",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200170,[2]=1200171},fight=10},mt),
    ["10002008"]=setmetatable({id=10002008,perkSkillName="最佳距离",perkSkillDesc="提高射程，同时增加最佳射程内的伤害。",skillType="增益",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200180},fight=10},mt),
    ["10002009"]=setmetatable({id=10002009,perkSkillName="超动力",perkSkillDesc="当前的弹量在大于90％的时候，提高普通攻击伤害和射程。",skillType="增益",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200190},fight=10},mt),
    ["10002010"]=setmetatable({id=10002010,perkSkillName="无畏",perkSkillDesc="斯露德造成的伤害会随着角色生命值降低而提升。",skillType="增益",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200200,[2]=1200201,[3]=1200202,[4]=1200203},fight=10},mt),
    ["10002011"]=setmetatable({id=10002011,perkSkillName="击破",perkSkillDesc="被动的无视敌人的部分物理抗性和元素抗性。",skillType="增益",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=1,passiveSkills={[1]=1200210},fight=10},mt),
    ["10002012"]=setmetatable({id=10002012,perkSkillName="征服者",perkSkillDesc="增幅状态下防御值提升25%，击杀敌人后恢复2%生命值。",skillType="增益",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=2,passiveSkills={[1]=1200220,[2]=1200221},fight=10},mt),
    ["10002013"]=setmetatable({id=10002013,perkSkillName="致命节奏",perkSkillDesc="增幅状态下普通攻击命中后增加1%攻击速度和1米射程，最多叠加15层，持续6秒。",skillType="增益",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=3,passiveSkills={[1]=1200230},fight=10},mt),
    ["20002001"]=setmetatable({id=20002001,perkSkillName="炙炎",perkSkillDesc="提升 2.5% 生命值，每上阵一位火元素斯露德，我方全员提升 1% 火元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2020510,[2]=2020511},fight=567},mt),
    ["20002002"]=setmetatable({id=20002002,perkSkillName="炙炎",perkSkillDesc="提升 5% 生命值，每上阵一位火元素斯露德，我方全员提升 2% 火元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2020520,[2]=2020521},fight=1133},mt),
    ["20002003"]=setmetatable({id=20002003,perkSkillName="炙炎",perkSkillDesc="提升 10% 生命值，每上阵一位火元素斯露德，我方全员提升 3% 火元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2020530,[2]=2020531},fight=1700},mt),
    ["20003001"]=setmetatable({id=20003001,perkSkillName="鸣雷",perkSkillDesc="提升 2.5% 生命值，每上阵一位雷元素斯露德，我方全员提升 1% 雷元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2030510,[2]=2030511},fight=567},mt),
    ["20003002"]=setmetatable({id=20003002,perkSkillName="鸣雷",perkSkillDesc="提升 5% 生命值，每上阵一位雷元素斯露德，我方全员提升 2% 雷元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2030520,[2]=2030521},fight=1133},mt),
    ["20003003"]=setmetatable({id=20003003,perkSkillName="鸣雷",perkSkillDesc="提升 10% 生命值，每上阵一位雷元素斯露德，我方全员提升 3% 雷元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2030530,[2]=2030531},fight=1700},mt),
    ["20003004"]=setmetatable({id=20003004,perkSkillName="干杯",perkSkillDesc="提升 5% 生命值，每上阵一位雷元素斯露德，我方全员提升 2% 雷元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2030550,[2]=2030551},fight=1133},mt),
    ["20004001"]=setmetatable({id=20004001,perkSkillName="寒冰",perkSkillDesc="提升 2.5% 生命值，每上阵一位冰元素斯露德，我方全员提升 1% 冰元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2040510,[2]=2040511},fight=567},mt),
    ["20004002"]=setmetatable({id=20004002,perkSkillName="寒冰",perkSkillDesc="提升 5% 生命值，每上阵一位冰元素斯露德，我方全员提升 2% 冰元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2040520,[2]=2040521},fight=1133},mt),
    ["20004003"]=setmetatable({id=20004003,perkSkillName="寒冰",perkSkillDesc="提升 10% 生命值，每上阵一位冰元素斯露德，我方全员提升 3% 冰元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2040530,[2]=2040531},fight=1700},mt),
    ["20005001"]=setmetatable({id=20005001,perkSkillName="疾风",perkSkillDesc="提升 2.5% 生命值，每上阵一位风元素斯露德，我方全员提升 1% 风元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2050510,[2]=2050511},fight=567},mt),
    ["20005002"]=setmetatable({id=20005002,perkSkillName="疾风",perkSkillDesc="提升 5% 生命值，每上阵一位风元素斯露德，我方全员提升 2% 风元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2050520,[2]=2050521},fight=1133},mt),
    ["20005003"]=setmetatable({id=20005003,perkSkillName="疾风",perkSkillDesc="提升 10% 生命值，每上阵一位风元素斯露德，我方全员提升 3% 风元素伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2050530,[2]=2050531},fight=1700},mt),
    ["20011001"]=setmetatable({id=20011001,perkSkillName="充盈",perkSkillDesc="提升 2.5% 充能效率，当携带者的充能效率达到 13% 并施放极奏时，为其他斯露德恢复 2.5% 极奏能量",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000570,[2]=2000571},fight=567},mt),
    ["20011002"]=setmetatable({id=20011002,perkSkillName="充盈",perkSkillDesc="提升 5% 充能效率，当携带者的充能效率达到 18% 并施放极奏时，为其他斯露德恢复 5% 极奏能量",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000580,[2]=2000581},fight=1133},mt),
    ["20011003"]=setmetatable({id=20011003,perkSkillName="充盈",perkSkillDesc="提升 10% 充能效率，当携带者的充能效率达到 23% 并施放极奏时，为其他斯露德恢复 7.5% 极奏能量",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000590,[2]=2000591},fight=1700},mt),
    ["20011004"]=setmetatable({id=20011004,perkSkillName="流转",perkSkillDesc="提升 2.5% 充能效率，当携带者的充能效率达到 13% 时，减少 8% 极奏冷却时间",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000600,[2]=2000601},fight=567},mt),
    ["20011005"]=setmetatable({id=20011005,perkSkillName="流转",perkSkillDesc="提升 5% 充能效率，当携带者的充能效率达到 18% 时，减少 12% 极奏冷却时间",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000610,[2]=2000611},fight=1133},mt),
    ["20011006"]=setmetatable({id=20011006,perkSkillName="流转",perkSkillDesc="提升 10% 充能效率，当携带者的充能效率达到 23% 时，减少 16% 极奏冷却时间",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000620,[2]=2000621},fight=1700},mt),
    ["20011007"]=setmetatable({id=20011007,perkSkillName="蓄能",perkSkillDesc="提升 2.5% 充能效率，当携带者的充能效率达到 13% 时，我方全员提升 6% 暴击伤害",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000630,[2]=2000631},fight=567},mt),
    ["20011008"]=setmetatable({id=20011008,perkSkillName="蓄能",perkSkillDesc="提升 5% 充能效率，当携带者的充能效率达到 18% 时，我方全员提升 12% 暴击伤害",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000640,[2]=2000641},fight=1133},mt),
    ["20011009"]=setmetatable({id=20011009,perkSkillName="蓄能",perkSkillDesc="提升 10% 充能效率，当携带者的充能效率达到 23% 时，我方全员提升 18% 暴击伤害",skillType="辅助",illustrate="icon_perk_skill_class_4",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000650,[2]=2000651},fight=1700},mt),
    ["20011010"]=setmetatable({id=20011010,perkSkillName="抚慰",perkSkillDesc="提升 5% 治疗加成，当携带者的治疗加成达到 20% 时，友方施放序曲会使携带者获得 4 点极奏能量",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000660,[2]=2000661},fight=567},mt),
    ["20011011"]=setmetatable({id=20011011,perkSkillName="抚慰",perkSkillDesc="提升 10% 治疗加成，当携带者的治疗加成达到 25% 时，友方施放序曲会使携带者获得 7 点极奏能量",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000670,[2]=2000671},fight=1133},mt),
    ["20011012"]=setmetatable({id=20011012,perkSkillName="抚慰",perkSkillDesc="提升 15% 治疗加成，当携带者的治疗加成达到 30% 时，友方施放序曲会使携带者获得 10 点极奏能量",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000680,[2]=2000681},fight=1700},mt),
    ["20011013"]=setmetatable({id=20011013,perkSkillName="慈心",perkSkillDesc="提升 5% 治疗加成，当携带者的治疗加成达到 20% 时，减少 8% 序曲冷却时间",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000690,[2]=2000691},fight=567},mt),
    ["20011014"]=setmetatable({id=20011014,perkSkillName="慈心",perkSkillDesc="提升 10% 治疗加成，当携带者的治疗加成达到 25% 时，减少 12% 序曲冷却时间",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000700,[2]=2000701},fight=1133},mt),
    ["20011015"]=setmetatable({id=20011015,perkSkillName="慈心",perkSkillDesc="提升 15% 治疗加成，当携带者的治疗加成达到 30% 时，减少 16% 序曲冷却时间",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000710,[2]=2000711},fight=1700},mt),
    ["20011016"]=setmetatable({id=20011016,perkSkillName="激励",perkSkillDesc="提升 5% 治疗加成，当携带者的治疗加成达到 20% 时，我方全员提升 4% 充能效率",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000720,[2]=2000721},fight=567},mt),
    ["20011017"]=setmetatable({id=20011017,perkSkillName="激励",perkSkillDesc="提升 10% 治疗加成，当携带者的治疗加成达到 25% 时，我方全员提升 7% 充能效率",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000730,[2]=2000731},fight=1133},mt),
    ["20011018"]=setmetatable({id=20011018,perkSkillName="激励",perkSkillDesc="提升 15% 治疗加成，当携带者的治疗加成达到 30% 时，我方全员提升 10% 充能效率",skillType="治疗",illustrate="icon_perk_skill_class_2",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000740,[2]=2000741},fight=1700},mt),
    ["20011019"]=setmetatable({id=20011019,perkSkillName="会心",perkSkillDesc="提升 2.5% 暴击率，当携带者的暴击率达到 10% 时，提升 10% 暴击伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000750,[2]=2000751},fight=567},mt),
    ["20011020"]=setmetatable({id=20011020,perkSkillName="会心",perkSkillDesc="提升 5% 暴击率，当携带者的暴击率达到 15% 时，提升 15% 暴击伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000760,[2]=2000761},fight=1133},mt),
    ["20011021"]=setmetatable({id=20011021,perkSkillName="会心",perkSkillDesc="提升 10% 暴击率，当携带者的暴击率达到 20% 时，提升 20% 暴击伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000770,[2]=2000771},fight=1700},mt),
    ["20011022"]=setmetatable({id=20011022,perkSkillName="神力",perkSkillDesc="提升 2.5% 暴击率，当携带者的暴击率达到 10% 时，提升 10% 普通攻击伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000780,[2]=2000781},fight=567},mt),
    ["20011023"]=setmetatable({id=20011023,perkSkillName="神力",perkSkillDesc="提升 5% 暴击率，当携带者的暴击率达到 15% 时，提升 15% 普通攻击伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000790,[2]=2000791},fight=1133},mt),
    ["20011024"]=setmetatable({id=20011024,perkSkillName="神力",perkSkillDesc="提升 10% 暴击率，当携带者的暴击率达到 20% 时，提升 25% 普通攻击伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000800,[2]=2000801},fight=1700},mt),
    ["20011025"]=setmetatable({id=20011025,perkSkillName="凶猛",perkSkillDesc="提升 2.5% 暴击率，当携带者的暴击率达到 10% 时，提升 5% 技能伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000810,[2]=2000811},fight=567},mt),
    ["20011026"]=setmetatable({id=20011026,perkSkillName="凶猛",perkSkillDesc="提升 5% 暴击率，当携带者的暴击率达到 15% 时，提升 10% 技能伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000820,[2]=2000821},fight=1133},mt),
    ["20011027"]=setmetatable({id=20011027,perkSkillName="凶猛",perkSkillDesc="提升 10% 暴击率，当携带者的暴击率达到 20% 时，提升 15% 技能伤害",skillType="输出",illustrate="icon_perk_skill_class_1",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000830,[2]=2000831},fight=1700},mt),
    ["20011028"]=setmetatable({id=20011028,perkSkillName="过载",perkSkillDesc="提升 5% 积聚效率，当携带者的积聚效率达到 13% 时，延长敌方 1 秒过载时间",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000840,[2]=2000841},fight=567},mt),
    ["20011029"]=setmetatable({id=20011029,perkSkillName="过载",perkSkillDesc="提升 10% 积聚效率，当携带者的积聚效率达到 18% 时，延长敌方 1.5 秒过载时间",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000850,[2]=2000851},fight=1133},mt),
    ["20011030"]=setmetatable({id=20011030,perkSkillName="过载",perkSkillDesc="提升 15% 积聚效率，当携带者的积聚效率达到 23% 时，延长敌方 2 秒过载时间",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000860,[2]=2000861},fight=1700},mt),
    ["20011031"]=setmetatable({id=20011031,perkSkillName="爆裂",perkSkillDesc="提升 5% 积聚效率，当携带者的积聚效率达到 13% 时，提升 10% 过载伤害",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000870,[2]=2000871},fight=567},mt),
    ["20011032"]=setmetatable({id=20011032,perkSkillName="爆裂",perkSkillDesc="提升 10% 积聚效率，当携带者的积聚效率达到 18% 时，提升 20% 过载伤害",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000880,[2]=2000881},fight=1133},mt),
    ["20011033"]=setmetatable({id=20011033,perkSkillName="爆裂",perkSkillDesc="提升 15% 积聚效率，当携带者的积聚效率达到 23% 时，提升 40% 过载伤害",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000890,[2]=2000891},fight=1700},mt),
    ["20011034"]=setmetatable({id=20011034,perkSkillName="狂暴",perkSkillDesc="提升 5% 积聚效率，当携带者的积聚效率达到 13% 并触发过载时，我方全员 10 秒内提升 5% 暴击率",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=3,passiveSkills={[1]=2000900,[2]=2000901},fight=567},mt),
    ["20011035"]=setmetatable({id=20011035,perkSkillName="狂暴",perkSkillDesc="提升 10% 积聚效率，当携带者的积聚效率达到 18% 并触发过载时，我方全员 10 秒内提升 10% 暴击率",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=4,passiveSkills={[1]=2000910,[2]=2000911},fight=1133},mt),
    ["20011036"]=setmetatable({id=20011036,perkSkillName="狂暴",perkSkillDesc="提升 15% 积聚效率，当携带者的积聚效率达到 23% 并触发过载时，我方全员 10 秒内提升 15% 暴击率",skillType="积蓄",illustrate="icon_perk_skill_class_3",limit={[1]=0},skillQuality=5,passiveSkills={[1]=2000920,[2]=2000921},fight=1700},mt),
}
--生成获取数据的方法
---@return PerkSkills
function GetPerkSkillsData(id)
    return PerkSkills_Xls[tostring(id)]
end
--自动生成注释
---@class PerkSkills : table 
---@field id number
---@field perkSkillName string
---@field perkSkillDesc string
---@field skillType string
---@field illustrate string
---@field limit table
---@field skillQuality number
---@field passiveSkills table
---@field fight number
