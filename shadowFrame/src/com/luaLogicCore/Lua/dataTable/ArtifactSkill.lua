local default = {id=0,displayName="",displayDetail="",icon="",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills=xlsNilTable,open=0,season=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ArtifactSkill_Xls : table 
ArtifactSkill_Xls =
{
    ["10001"]=setmetatable({id=10001,displayName="余能聚合",displayDetail="拾取【能量球】之后会使当前角色进入【异梦】状态。",icon="season_skill_15",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1000009},open=7203111,season=1},mt),
    ["10002"]=setmetatable({id=10002,displayName="火焰过载",displayDetail="火属性角色的重装蓄力攻击能克制跃迁异种。",icon="season_skill_13",elementLimit=2,weaponTypeLimit=4,artifactTalentSkills={[1]=1100000},open=7203111,season=1},mt),
    ["10003"]=setmetatable({id=10003,displayName="活化迅击",displayDetail="活化反应能克制跃迁异种。",icon="season_skill_12",elementLimit=6,weaponTypeLimit=0,artifactTalentSkills={[1]=1100002},open=7203111,season=1},mt),
    ["10004"]=setmetatable({id=10004,displayName="贯雷长枪",displayDetail="雷属性突击能克制护盾异种。",icon="season_skill_9",elementLimit=3,weaponTypeLimit=1,artifactTalentSkills={[1]=1100004},open=7203111,season=1},mt),
    ["10005"]=setmetatable({id=10005,displayName="破风箭矢",displayDetail="风属性狙击能克制追击异种。",icon="season_skill_11",elementLimit=5,weaponTypeLimit=3,artifactTalentSkills={[1]=1100005},open=7203111,season=1},mt),
    ["10006"]=setmetatable({id=10006,displayName="寒冰过载",displayDetail="冰属性重装角色的蓄力攻击能克制跃迁异种。",icon="season_skill_10",elementLimit=4,weaponTypeLimit=4,artifactTalentSkills={[1]=1100001},open=7203112,season=1},mt),
    ["10007"]=setmetatable({id=10007,displayName="聚风长枪",displayDetail="风属性突击能克制护盾异种。",icon="season_skill_18",elementLimit=5,weaponTypeLimit=1,artifactTalentSkills={[1]=1100003},open=7203112,season=1},mt),
    ["10008"]=setmetatable({id=10008,displayName="寒气散击",displayDetail="冰属性散射攻击在最佳射程中能克制追击异种。",icon="season_skill_19",elementLimit=4,weaponTypeLimit=5,artifactTalentSkills={[1]=1100006},open=7203112,season=1},mt),
    ["10009"]=setmetatable({id=10009,displayName="高能震爆",displayDetail="震爆反应能克制追击异种。",icon="season_skill_8",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=1100011},open=7203112,season=1},mt),
    ["10010"]=setmetatable({id=10010,displayName="极奏律动",displayDetail="施展极奏时，使全队斯露德进入【异梦】状态",icon="season_skill_16",elementLimit=2,weaponTypeLimit=0,artifactTalentSkills={[1]=1100040},open=7203112,season=1},mt),
    ["10011"]=setmetatable({id=10011,displayName="时刻力",displayDetail="在战斗中略微加快主动技冷却，3秒不受到或造成伤害时失效。",icon="season_skill_23",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100013,[2]=1100034,[3]=1100035},open=7203113,season=1},mt),
    ["10012"]=setmetatable({id=10012,displayName="源力加护",displayDetail="受到伤害后短暂获得大幅度物理减伤，无法连续触发。",icon="season_skill_29",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100008},open=7203113,season=1},mt),
    ["10013"]=setmetatable({id=10013,displayName="成就感",displayDetail="任意斯露德克制异种士时，自身进入【异梦】状态。",icon="season_skill_6",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100015},open=7203113,season=1},mt),
    ["10014"]=setmetatable({id=10014,displayName="战斗热情",displayDetail="使用序曲技能击杀敌方时，使全队斯露德进入【异梦】状态。",icon="season_skill_30",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100050},open=7203113,season=1},mt),
    ["10015"]=setmetatable({id=10015,displayName="破甲弓矢",displayDetail="狙击类提高护甲穿透，能克制护盾异种。",icon="season_skill_20",elementLimit=0,weaponTypeLimit=3,artifactTalentSkills={[1]=1100012,[2]=1100028},open=7203113,season=1},mt),
    ["10016"]=setmetatable({id=10016,displayName="相变异梦",displayDetail="形成震爆、熵增、升腾元素相变时，使全队斯露德进入【异梦】状态。",icon="season_skill_24",elementLimit=2,weaponTypeLimit=0,artifactTalentSkills={[1]=1100060},open=7203114,season=1},mt),
    ["10017"]=setmetatable({id=10017,displayName="余能吞噬",displayDetail="击败异种时，在身边产生1个【能量球】。",icon="season_skill_26",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100019},open=7203114,season=1},mt),
    ["10018"]=setmetatable({id=10018,displayName="元素侵蚀",displayDetail="无视敌人的部分元素抗性。",icon="season_skill_28",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100020},open=7203114,season=1},mt),
    ["10019"]=setmetatable({id=10019,displayName="元素爆破",displayDetail="【异梦】状态下连续命中敌方目标后会产生一次自适应元素的爆炸。",icon="season_skill_27",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=1100030},open=7203114,season=1},mt),
    ["10020"]=setmetatable({id=10020,displayName="蛇眼",displayDetail="【异梦】的状态不再有时间限制，击杀敌人后消失。",icon="season_skill_22",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100022,[2]=1100029},open=7203114,season=1},mt),
    ["10021"]=setmetatable({id=10021,displayName="晴空战歌",displayDetail="大幅度提高本赛季符灵诺姆所提供的【慑服】效果",icon="season_skill_21",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=1100023},open=7203115,season=1},mt),
    ["10022"]=setmetatable({id=10022,displayName="迅捷突击",displayDetail="提高突击类角色的主动技伤害，并且加快其主动技的冷却速度。",icon="season_skill_25",elementLimit=0,weaponTypeLimit=1,artifactTalentSkills={[1]=1100024},open=7203115,season=1},mt),
    ["10023"]=setmetatable({id=10023,displayName="精密弓矢",displayDetail="提高狙击类角色精确命中的伤害倍率。",icon="season_skill_17",elementLimit=0,weaponTypeLimit=3,artifactTalentSkills={[1]=1100036},open=7203115,season=1},mt),
    ["10024"]=setmetatable({id=10024,displayName="极奏华章",displayDetail="极奏造成的伤害能克制势追击异种。",icon="season_skill_14",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=1100026},open=7203115,season=1},mt),
    ["10025"]=setmetatable({id=10025,displayName="充能弹药",displayDetail="施展主动技后，在下次射击时打出充能弹药，能克制跃迁异种。",icon="season_skill_7",elementLimit=5,weaponTypeLimit=0,artifactTalentSkills={[1]=1100027},open=7203115,season=1},mt),
    ["20001"]=setmetatable({id=20001,displayName="极奏律动",displayDetail="施放极奏时在附近生成一个能恢复部分极奏的【能量球】。",icon="season_skill_15",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=2},mt),
    ["20002"]=setmetatable({id=20002,displayName="火焰过载",displayDetail="火属性角色的重装蓄力攻击能克制跃迁异种。",icon="season_skill_13",elementLimit=2,weaponTypeLimit=4,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=2},mt),
    ["20003"]=setmetatable({id=20003,displayName="活化迅击",displayDetail="活化反应能克制跃迁异种。",icon="season_skill_12",elementLimit=6,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=2},mt),
    ["20004"]=setmetatable({id=20004,displayName="贯雷长枪",displayDetail="雷属性突击能克制护盾异种。",icon="season_skill_9",elementLimit=3,weaponTypeLimit=1,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=2},mt),
    ["20005"]=setmetatable({id=20005,displayName="破风箭矢",displayDetail="风属性狙击在最佳射程中能克制追击异种。",icon="season_skill_11",elementLimit=5,weaponTypeLimit=3,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=2},mt),
    ["20006"]=setmetatable({id=20006,displayName="寒冰过载",displayDetail="冰属性角色的重装蓄力攻击能克制跃迁异种。",icon="season_skill_10",elementLimit=4,weaponTypeLimit=4,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=2},mt),
    ["20007"]=setmetatable({id=20007,displayName="聚风长枪",displayDetail="风属性突击能克制护盾异种。",icon="season_skill_18",elementLimit=5,weaponTypeLimit=1,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=2},mt),
    ["20008"]=setmetatable({id=20008,displayName="寒气散击",displayDetail="冰属性散射攻击在最佳射程中能克制追击异种。",icon="season_skill_19",elementLimit=4,weaponTypeLimit=5,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=2},mt),
    ["20009"]=setmetatable({id=20009,displayName="高能震爆",displayDetail="震爆反应能克制追击异种。",icon="season_skill_8",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=2},mt),
    ["20010"]=setmetatable({id=20010,displayName="破甲弓矢",displayDetail="狙击类提高护甲穿透，能克制护盾异种。",icon="season_skill_20",elementLimit=0,weaponTypeLimit=3,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=2},mt),
    ["20011"]=setmetatable({id=20011,displayName="时刻力",displayDetail="在战斗中略微加快主动技CD，3秒不受到或造成伤害时失效。",icon="season_skill_23",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=2},mt),
    ["20012"]=setmetatable({id=20012,displayName="源力加护",displayDetail="受到伤害后短暂获得大幅度减伤，无法连续触发。",icon="season_skill_29",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=2},mt),
    ["20013"]=setmetatable({id=20013,displayName="成就感",displayDetail="任意斯露德克制异种士时，自身进入【异梦】状态。",icon="season_skill_6",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=2},mt),
    ["20014"]=setmetatable({id=20014,displayName="战斗热情",displayDetail="【异梦】状态下连续击杀会延长【异梦】状态并强化【异梦】效果。",icon="season_skill_30",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=2},mt),
    ["20015"]=setmetatable({id=20015,displayName="节奏感",displayDetail="施展极奏后使自己进入【异梦】状态。",icon="season_skill_16",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=2},mt),
    ["20016"]=setmetatable({id=20016,displayName="相变异梦",displayDetail="打出相变后提高相变效率。",icon="season_skill_24",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=2},mt),
    ["20017"]=setmetatable({id=20017,displayName="余能吞噬",displayDetail="打破敌方的护罩后可可以产生一个能恢复部分极奏的【能量球】。",icon="season_skill_26",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=2},mt),
    ["20018"]=setmetatable({id=20018,displayName="元素侵蚀",displayDetail="无视敌人的部分元素抗性。",icon="season_skill_28",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=2},mt),
    ["20019"]=setmetatable({id=20019,displayName="元素爆破",displayDetail="【异梦】状态下连续命中敌方目标后会产生一次自适应元素的爆炸。",icon="season_skill_27",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=2},mt),
    ["20020"]=setmetatable({id=20020,displayName="蛇眼",displayDetail="【异梦】的状态不再有时间限制，击杀敌人后消失。",icon="season_skill_22",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=2},mt),
    ["20021"]=setmetatable({id=20021,displayName="晴空战歌",displayDetail="提高本赛季perk主词条的效果和持续时间。",icon="season_skill_21",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=2},mt),
    ["20022"]=setmetatable({id=20022,displayName="迅捷突击",displayDetail="提高突击类角色的主动技伤害，并且加快其主动技的冷却速度。",icon="season_skill_25",elementLimit=0,weaponTypeLimit=1,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=2},mt),
    ["20023"]=setmetatable({id=20023,displayName="精密弓矢",displayDetail="提高狙击类角色精确命中的伤害倍率。",icon="season_skill_17",elementLimit=0,weaponTypeLimit=3,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=2},mt),
    ["20024"]=setmetatable({id=20024,displayName="极奏华章",displayDetail="极奏造成的伤害能克制势追击异种。",icon="season_skill_14",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=2},mt),
    ["20025"]=setmetatable({id=20025,displayName="充能弹药",displayDetail="施展主动技后，在下次射击时打出充能弹药，能克制跃迁异种。",icon="season_skill_7",elementLimit=5,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=2},mt),
    ["30001"]=setmetatable({id=30001,displayName="极奏律动",displayDetail="施放极奏时在附近生成一个能恢复部分极奏的【能量球】。",icon="season_skill_15",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=3},mt),
    ["30002"]=setmetatable({id=30002,displayName="火焰过载",displayDetail="火属性角色的重装蓄力攻击能克制跃迁异种。",icon="season_skill_13",elementLimit=2,weaponTypeLimit=4,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=3},mt),
    ["30003"]=setmetatable({id=30003,displayName="活化迅击",displayDetail="活化反应能克制跃迁异种。",icon="season_skill_12",elementLimit=6,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=3},mt),
    ["30004"]=setmetatable({id=30004,displayName="贯雷长枪",displayDetail="雷属性突击能克制护盾异种。",icon="season_skill_9",elementLimit=3,weaponTypeLimit=1,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=3},mt),
    ["30005"]=setmetatable({id=30005,displayName="破风箭矢",displayDetail="风属性狙击在最佳射程中能克制追击异种。",icon="season_skill_11",elementLimit=5,weaponTypeLimit=3,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203111,season=3},mt),
    ["30006"]=setmetatable({id=30006,displayName="寒冰过载",displayDetail="冰属性角色的重装蓄力攻击能克制跃迁异种。",icon="season_skill_10",elementLimit=4,weaponTypeLimit=4,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=3},mt),
    ["30007"]=setmetatable({id=30007,displayName="聚风长枪",displayDetail="风属性突击能克制护盾异种。",icon="season_skill_18",elementLimit=5,weaponTypeLimit=1,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=3},mt),
    ["30008"]=setmetatable({id=30008,displayName="寒气散击",displayDetail="冰属性散射攻击在最佳射程中能克制追击异种。",icon="season_skill_19",elementLimit=4,weaponTypeLimit=5,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=3},mt),
    ["30009"]=setmetatable({id=30009,displayName="高能震爆",displayDetail="震爆反应能克制追击异种。",icon="season_skill_8",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=3},mt),
    ["30010"]=setmetatable({id=30010,displayName="破甲弓矢",displayDetail="狙击类提高护甲穿透，能克制护盾异种。",icon="season_skill_20",elementLimit=0,weaponTypeLimit=3,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203112,season=3},mt),
    ["30011"]=setmetatable({id=30011,displayName="时刻力",displayDetail="在战斗中略微加快主动技CD，3秒不受到或造成伤害时失效。",icon="season_skill_23",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=3},mt),
    ["30012"]=setmetatable({id=30012,displayName="源力加护",displayDetail="受到伤害后短暂获得大幅度减伤，无法连续触发。",icon="season_skill_29",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=3},mt),
    ["30013"]=setmetatable({id=30013,displayName="成就感",displayDetail="任意斯露德克制异种士时，自身进入【异梦】状态。",icon="season_skill_6",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=3},mt),
    ["30014"]=setmetatable({id=30014,displayName="战斗热情",displayDetail="【异梦】状态下连续击杀会延长【异梦】状态并强化【异梦】效果。",icon="season_skill_30",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=3},mt),
    ["30015"]=setmetatable({id=30015,displayName="节奏感",displayDetail="施展极奏后使自己进入【异梦】状态。",icon="season_skill_16",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203113,season=3},mt),
    ["30016"]=setmetatable({id=30016,displayName="相变异梦",displayDetail="打出相变后提高相变效率。",icon="season_skill_24",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=3},mt),
    ["30017"]=setmetatable({id=30017,displayName="余能吞噬",displayDetail="打破敌方的护罩后可可以产生一个能恢复部分极奏的【能量球】。",icon="season_skill_26",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=3},mt),
    ["30018"]=setmetatable({id=30018,displayName="元素侵蚀",displayDetail="无视敌人的部分元素抗性。",icon="season_skill_28",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=3},mt),
    ["30019"]=setmetatable({id=30019,displayName="元素爆破",displayDetail="【异梦】状态下连续命中敌方目标后会产生一次自适应元素的爆炸。",icon="season_skill_27",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=3},mt),
    ["30020"]=setmetatable({id=30020,displayName="蛇眼",displayDetail="【异梦】的状态不再有时间限制，击杀敌人后消失。",icon="season_skill_22",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203114,season=3},mt),
    ["30021"]=setmetatable({id=30021,displayName="晴空战歌",displayDetail="提高本赛季perk主词条的效果和持续时间。",icon="season_skill_21",elementLimit=0,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=3},mt),
    ["30022"]=setmetatable({id=30022,displayName="迅捷突击",displayDetail="提高突击类角色的主动技伤害，并且加快其主动技的冷却速度。",icon="season_skill_25",elementLimit=0,weaponTypeLimit=1,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=3},mt),
    ["30023"]=setmetatable({id=30023,displayName="精密弓矢",displayDetail="提高狙击类角色精确命中的伤害倍率。",icon="season_skill_17",elementLimit=0,weaponTypeLimit=3,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=3},mt),
    ["30024"]=setmetatable({id=30024,displayName="极奏华章",displayDetail="极奏造成的伤害能克制势追击异种。",icon="season_skill_14",elementLimit=3,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=3},mt),
    ["30025"]=setmetatable({id=30025,displayName="充能弹药",displayDetail="施展主动技后，在下次射击时打出充能弹药，能克制跃迁异种。",icon="season_skill_7",elementLimit=5,weaponTypeLimit=0,artifactTalentSkills={[1]=7000010,[2]=7000011},open=7203115,season=3},mt),
}
--生成获取数据的方法
---@return ArtifactSkill
function GetArtifactSkillData(id)
    return ArtifactSkill_Xls[tostring(id)]
end
--自动生成注释
---@class ArtifactSkill : table 
---@field id number
---@field displayName string
---@field displayDetail string
---@field icon string
---@field elementLimit number
---@field weaponTypeLimit number
---@field artifactTalentSkills table
---@field open number
---@field season number
