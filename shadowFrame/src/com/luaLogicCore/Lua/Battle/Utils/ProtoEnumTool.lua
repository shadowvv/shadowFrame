---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/02/11 11:24
--- Describe:
---

---战斗属性名字枚举
---@class BattlePropertyEnum : table
BattlePropertyEnum = {
    --生命
    Hp_Max = "Hp_new",                                                  --总血量
    Hp_Cur = "CHp_new",                                                 --当前血量
    Hp_PercentAdd_Max = "TotalHpPercentAdd",                            --总血量百分比加成
    Hp_PercentAdd_Cur = "CurHpPercentAdd",                              --当前血量百分比加成
    Hp_Lost = "suishihp_new",                                           --目前损失血量
    Hp_LastChanged = "zuihousunxu_new",                                 --最后一次损血

    --攻击
    Atk = "ATK_new",                                                    --攻击
    Atk_PercentAdd = "AtkPercentAdd",                                   --攻击百分比加成

    --防御
    Def = "Defense_new",                                                --防御
    Def_PercentAdd = "DefPercentAdd",                                   --防御百分比加成

    --能量
    En = "Energy_new",                                                  --能量
    En_PercentAdd = "EnPercentAdd",                                     --能量百分比加成
    En_Param = "EnParam",                                               --能量系数
    En_SkillCache = "SkillCacheEn",                                     --特殊技能积攒能量
    En_SkillCacheMax = "SkillCacheEnMax",                               --特殊技能积攒能量最大值

    --暴击
    CritValue = "Crit_new",                                             --暴击值
    Crit_PercentAdd_Value = "CriticalPercentAdd",                       --暴击值百分比加成
    Crit_RateAdd = "CriticalRate",                                      --暴击率加成
    Crit_HurtAdd = "CritValuePercent_200",                              --爆伤加成

    --治疗
    Cure_PercentAdd_Curer = "CureAddPercent",                           --治疗施法百分比加成
    Cure_PercentAdd_Cured = "BeCureAddPercent",                         --被治疗百分比加成
    CureAdd_NormalAtk = "NormalCureAdd",                                --普攻治疗加成
    CureAdd_ActiveSkill = "ActiveSkillCureAdd",                         --主动治疗加成
    CureAdd_JizouSkill = "JizouCureAdd",                                     --极奏治疗加成
    
    --伤害加成
    HurtAdd_Normal = "HurtIncreases",                                   --伤害加成-物理
    HurtReduce_Normal = "HurtReduce",                                   --伤害减免-物理
    AntiHurtAdd_Normal = "InverseHurtIncreases",                        --伤害加成抗性-物理
    AntiHurtReduce_Normal = "InverseHurtReduce",                        --伤害减免抗性-物理
    HurtAdd_Element_Common = "AllElementHurtIncreases",                 --伤害加成-元素-通用
    HurtReduce_Element_Common = "AllElementHurtReduce",                 --伤害减免-元素-通用
    AntiHurtAdd_Element_Common = "AllElementInverseHurtIncreases",      --伤害加成抗性-元素-通用
    AntiHurtReduce_Element_Common = "AllElementInverseHurtReduce",      --伤害减免抗性-元素-通用
    HurtAdd_Element_Fire = "FireHurtIncreases",                         --伤害加成-元素-火
    HurtReduce_Element_File = "FireHurtReduce",                         --伤害减免-元素-火
    AntiHurtAdd_Element_Fire = "FireInverseHurtIncreases",              --伤害加成抗性-元素-火
    AntiHurtReduce_Element_Fire = "FireInverseHurtReduce",              --伤害减免抗性-元素-火
    HurtAdd_Element_Thunder = "ThunderHurtIncreases",                   --伤害加成-元素-雷
    HurtReduce_Element_Thunder = "ThunderHurtReduce",                   --伤害减免-元素-雷
    AntiHurtAdd_Element_Thunder = "ThunderInverseHurtIncreases",        --伤害加成抗性-元素-雷
    AntiHurtReduce_Element_Thunder = "ThunderInverseHurtReduce",        --伤害减免抗性-元素-雷
    HurtAdd_Element_Ice = "IceHurtIncreases",                           --伤害加成-元素-冰
    HurtReduce_Element_Ice = "IceHurtReduce",                           --伤害减免-元素-冰
    AntiHurtAdd_Element_Ice = "IceInverseHurtIncreases",                --伤害加成抗性-元素-冰
    AntiHurtReduce_Element_Ice = "IceInverseHurtReduce",                --伤害减免抗性-元素-冰
    HurtAdd_Element_Wind = "WindHurtIncreases",                         --伤害加成-元素-风
    HurtReduce_Element_Wind = "WindHurtReduce",                         --伤害减免-元素-风
    AntiHurtAdd_Element_Wind = "WindInverseHurtIncreases",              --伤害加成抗性-元素-风
    AntiHurtReduce_Element_Wind = "WindInverseHurtReduce",              --伤害减免抗性-元素-风
    HurtAdd_Element_Power = "SuperPowerHurtIncreases",                  --伤害加成-元素-源能
    HurtReduce_Element_Power = "SuperPowerHurtReduce",                  --伤害减免-元素-源能
    AntiHurtAdd_Element_Power = "SuperPowerInverseHurtIncreases",       --伤害加成抗性-元素-源能
    AntiHurtReduce_Element_Power = "SuperPowerInverseHurtReduce",       --伤害减免抗性-元素-源能
    HurtAdd_Element_Gravity = "GrivatyHurtIncreases",                   --伤害加成-元素-重力
    HurtReduce_Element_Gravity = "GrivatyHurtReduce",                   --伤害减免-元素-重力
    AntiHurtAdd_Element_Gravity = "GrivatyInverseHurtIncreases",        --伤害加成抗性-元素-重力
    AntiHurtReduce_Element_Gravity = "GrivatyInverseHurtReduce",        --伤害减免抗性-元素-重力
    HurtAdd_WeakPoint = "WeakHurtAdd",                                  --伤害加成-弱点
	HurtAdd_EleBreak = "EleBreakHurtAdd",                               --伤害加成-元素击破
    HurtAdd_EleBreak_Fire = "FireBreakHurtAdd",                         --伤害加成-元素击破-火
    HurtAdd_EleBreak_Thunder = "ThunderBreakHurtAdd",                   --伤害加成-元素击破-雷
    HurtAdd_EleBreak_Ice = "IceBreakHurtAdd",                           --伤害加成-元素击破-冰
    HurtAdd_EleBreak_Wind = "WindBreakHurtAdd",                         --伤害加成-元素击破-风
    HurtAdd_EleWeak_Fire = "FireWeakCommonHurtAdd",                     --伤害加成-弱点通用-火
    HurtAdd_EleWeak_Thunder = "ThunderWeakCommonHurtAdd",               --伤害加成-弱点通用-雷
    HurtAdd_EleWeak_Ice = "IceWeakCommonHurtAdd",                       --伤害加成-弱点通用-冰
    HurtAdd_EleWeak_Wind = "WindWeakCommonHurtAdd",                     --伤害加成-弱点通用-风
    HurtAdd_NormalAtk = "NormalAtkHurtAdd",                             --伤害加成-普攻
    HurtAdd_ActiveSkill = "ActiveSkillHurtAdd",                         --伤害加成-主动
    HurtAdd_JizouSkill = "JizouHurtAdd",                                --伤害加成-极奏
	
	--元素积累
    ElementWeaknessBreak = "ElementWeaknessBreak",                      --元素击破属性
    ElementAccSpdAdd_NormalSkill = "ElementAccSpdAdd_NormalSkill",      --元素积累效率提升-普攻
    ElementAccSpdAdd_ActiveSkill = "ElementAccSpdAdd_ActiveSkill",      --元素积累效率提升-主动
    ElementAccSpdAdd_JizouSkill = "ElementAccSpdAdd_JizouSkill",        --元素积累效率提升-极奏
    ElementAccSpdAdd_All = "ElementAccSpdAdd_All",                      --全元素积累效率提升
    ElementAccAdd_Fire = "FireAccAdd",                                  --元素积累加成-火
	AntiElementAccAdd_Fire = "FireInverseAccAdd",                       --元素积累抗性-火
	ElementAccAdd_Thunder = "ThunderAccAdd",                            --元素积累加成-雷
	AntiElementAccAdd_Thunder = "ThunderInverseAccAdd",                 --元素积累抗性-雷
	ElementAccAdd_Ice = "IceAccAdd",                                    --元素积累加成-冰
	AntiElementAccAdd_Ice = "IceInverseAccAdd",                         --元素积累抗性-冰
	ElementAccAdd_Wind = "WindAccAdd",                                  --元素积累加成-风
	AntiElementAccAdd_Wind = "WindInverseAccAdd",                       --元素积累抗性-风
	
    --速度
    Speed_Add_Atk = "AtkSpeed_new",                                     --攻击速度加成
    Speed_Add_Move = "MoveSpeedAdd",                                    --移动速度加成
    Speed_Add_HodingAtk = "HoldingAtkSpeedAdd",                         --蓄力攻击速度加成
    Speed_Add_Reload = "ReloadSpdAdd",                                  --换弹速度加成
    Speed_WeaponShoot = "WeaponShootSpd",                               --武器射击速度
    
    --极奏
    Jizou_Max = "FlyRecovery",                                          --极奏能量上限
    Jizou_Cur = "JiZouEnergyGet",                                       --当前极奏能量
    Jizou_Recover = "JiZouCD",                                          --极奏能量获取效率
    Jizou_CD_Reduce = "BulletEnergyMax",                                --极奏能量CD冷却缩减
    
    --子弹能量
    BulletEnergyMax = "BulletEnergyRecovery",                           --子弹能量上限
    BulletEnergyCur = "BulletEnergyDelayRecovery",                      --当前子弹能量
    BulletEnergyMaxJialifu = "MaxBulletEnergyJialifu",                  --加利福子弹能量上限
    BulletEnergyCurJialifu = "CurBulletEnergyJialifu",                  --加利福当前子弹能量
    BulletEnergyRecovery = "ABulletEnergyCost",                         --子弹能量恢复速率
    BulletEnergyConsume = "BBulletEnergyCost",                          --子弹能量消耗率
    HoldingAtkConsumeAdd = "HoldingAtkConsumeAdd",                      --蓄力攻击消耗加成(百分比)
    Zuoyide_Cur = "ZuoyideStashEnergy",                                 --佐伊德存储属性(当前值)
    Zuoyide_Max = "ZuoyideStashEnergyMax",                              --佐伊德存储属性(最大值)
    
    --冲刺值/冲刺值/体力值
    Sprint_En_Cur = "ShanBiRecovery",                                   --当前冲刺值
    Sprint_En_Max = "AllBulletSpeedAdd",                                --最大冲刺值(自动回复)
    Sprint_En_Max_2 = "Sprint_En_Max_2",                                --最大冲刺值（主动增加）
    Sprint_En_Recover = "CommonBulletSpeedAdd",                         --冲刺值恢复速度
    Sprint_En_Consume = "ShanBiMax",                                    --冲刺消耗率
    Dash_En_Consume = "JizouTotalEnergy",                               --闪避消耗率
    Sprint_Add = "SprintAdd",                                           --冲刺速度加成百分比
    
    --技能
    Skill_Active_CD_Reduce = "ActiveSkillCDReduce",                     --主动技能CD冷却缩减
    
    --精准
    Accurate_Add = "AccurateAdd_new",                                   --精准参数加成
    Aim_Range_Add = "AmiRangeAdd",                                      --瞄准范围加成
    HurtReduce_Add_Value = "HurtReduceDisAddValue",                     --攻击距离衰减范围加成（数值）
    ShootStability = "ShootStability",                                  --射击稳定性
    BulletNumber = "BulletNumber",                                      --弹丸数量
    BulletFlySpd = "BulletFlySpd",                                      --子弹飞行速度
    WeaponHurtScore = "WeaponHurtScore",                                --武器伤害评分

    --距离
    Dis_Adv_Min = "AdvDistanceMin",                                     --优势距离最小值
    Dis_Adv_Max = "AdvDistanceMax",                                     --优势距离最大值
    Dis_Reduce_Midle_Min = "AttenuationDistanceMin",                    --中衰减距离最小值
    Dis_Reduce_Midle_Max = "AttenuationDistanceMax",                    --中衰减距离最大值
    Dis_Reduce_High_Min = "HighAttenuationDistanceMin",                 --高衰减距离最小值
    Dis_Reduce_High_Max = "HighAttenuationDistanceMax",                 --高衰减距离最大值
    Dis_Useless_Min = "UselessDistanceMin",                             --无效距离边界最小值
    Dis_Useless_Max = "UselessDistanceMax",                             --无效距离边界最大值
    
    --机动参数
    Sensitivity_Rotate_X = "RotateSensitivityX",                        --横向转向灵敏度
    Sensitivity_Rotate_Y = "RotateSensitivityY",                        --纵向转向灵敏度
    
    --肉鸽
    RogueUnitSkillEnMax_Fire = "RogueUnitSkillEnMax_Fire",              --肉鸽主公技最大能量-火
    RogueUnitSkillEnCur_Fire = "RogueUnitSkillEnCur_Fire",              --肉鸽主公技当前能量-火
    RogueUnitSkillEnMax_Thunder = "RogueUnitSkillEnMax_Thunder",        --肉鸽主公技最大能量-雷
    RogueUnitSkillEnCur_Thunder = "RogueUnitSkillEnCur_Thunder",        --肉鸽主公技当前能量-雷
    RogueUnitSkillEnMax_Ice = "RogueUnitSkillEnMax_Ice",                --肉鸽主公技最大能量-冰
    RogueUnitSkillEnCur_Ice = "RogueUnitSkillEnCur_Ice",                --肉鸽主公技当前能量-冰
    RogueUnitSkillEnMax_Wind = "RogueUnitSkillEnMax_Wind",              --肉鸽主公技最大能量-风
    RogueUnitSkillEnCur_Wind = "RogueUnitSkillEnCur_Wind",              --肉鸽主公技当前能量-风
    
    ---------------------------------------------------自定属性--------------------------------------------------------------
    
    --CoverShield = "CoverShield",                                        --覆盖护罩
    
}

---自定属性Id(proto枚举中没有的)
---@class BattlePropertySpecifyIdEnum : table
BattlePropertySpecifyIdEnum = {
    --[BattlePropertyEnum.Sprint_En_Max_2] = 10000,
    
}

---自定属性默认值
---@class BattlePropertyDefaultValue : table
BattlePropertyDefaultValue = {
    --[BattlePropertySpecifyIdEnum[CoverShield]] = 0,
}

---属性枚举到ID的映射缓存
---@class BattlePropertyKeyToIdCache : table
BattlePropertyKeyToIdCache = {
    
}

---属性ID到枚举的映射缓存
---@class BattlePropertyIdToKeyCache : table
BattlePropertyIdToKeyCache = {
    
}

------------------------------------------------------------------------------------------------------------------------
---@class ProtoEnumTool : table
ProtoEnumTool = {}
local _trigEventPropDic = {}

---@public 
function ProtoEnumTool.Init()
    _trigEventPropDic = {
        [ProtoEnumTool.GetPropertyId(BattlePropertyEnum.AntiElementAccAdd_Fire)] = true,
        [ProtoEnumTool.GetPropertyId(BattlePropertyEnum.AntiElementAccAdd_Ice)] = true,
        [ProtoEnumTool.GetPropertyId(BattlePropertyEnum.AntiElementAccAdd_Thunder)] = true,
        [ProtoEnumTool.GetPropertyId(BattlePropertyEnum.AntiElementAccAdd_Wind)] = true,
    }
end

---@public
function ProtoEnumTool.GetPropertyId(_str)
    local _id = BattlePropertyKeyToIdCache[_str]
    if _id then return _id end
    
    _id = BattlePropertySpecifyIdEnum[_str]
    if _id then 
        BattlePropertyKeyToIdCache[_str] = _id
        return _id
    end 
    
    if IsClient() then
        _id = pb.enum('msg.PropEnumNew', _str)
    else
        _id = SERVER_LIB.propertyTool:getPropIdByName(_str)
    end
    
    BattlePropertyKeyToIdCache[_str] = _id
    return _id
end

---@public
function ProtoEnumTool.GetPropertyKey(_id)
    local _str = BattlePropertyIdToKeyCache[_id]
    if _str then return _str end

    for _name, _value in pairs(BattlePropertySpecifyIdEnum) do
        if _value == _id then
            BattlePropertyIdToKeyCache[_id] = _name
            return _name
        end
    end


    if IsClient() then
        _str = pb.enum('msg.PropEnumNew', _id)
    else
        _str = SERVER_LIB.propertyTool:getPropNameById(_id)
    end

    BattlePropertyIdToKeyCache[_id] = _str
    return _str
end

---@public
---@return boolean
function ProtoEnumTool.CheckPropChangeEvent(_propId)
    return _trigEventPropDic[_propId] == true
end

return ProtoEnumTool