---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2023-04-11 17:42:53
---
--- 通过Java工具类自动生成，请勿修改，重新生成会被覆盖
---

require "Lib/class"

---@class ServerBattleDict : ServerLuaDict
ServerBattleDict = class(ServerLuaDict, 'ServerBattleDict');

function ServerBattleDict:ctor()
end

-- 根据怪物掉落id获取掉落数据
---@param fallObjectId number 掉落物id
---@param elementType number 元素类型
---@type function
---@return FallObject
---@public
function ServerBattleDict:getFallObjectByIdAndElement(fallObjectId, elementType)
    return
end

-- 根据怪物掉落id获取掉落数据
---@param monsterFallId number 怪物掉落id
---@type function
---@return table
---@public
function ServerBattleDict:getMonsterFallDataList(monsterFallId)
    return
end

-- 根据触发id和附着id获取元素反应
---@param triggerId number 触发元素id
---@param attachId number 附着元素id
---@type function
---@return ElementalReaction
---@public
function ServerBattleDict:getEleReactByTrigIdAndAttachId(triggerId, attachId)
    return
end

-- 根据元素id和附着量获取元素强度
---@param elementId number 元素id
---@param attachNum number 附着元素量
---@type function
---@return ElementStrength
---@public
function ServerBattleDict:getEleStrengthByEleIdAndAttachId(elementId, attachNum)
    return
end

-- 根据距离获取伤害系数
---@param weaponDistanceType number 武器类型
---@param distance number 距离
---@type function
---@return number
---@public
function ServerBattleDict:getDistanceRatioByRangeIndex(weaponDistanceType, distance)
    return
end

-- 根据被动技能id和等级获取被动技能
---@param skillId number 被动技能id
---@param level number 被动技能等级
---@type function
---@return table
---@public
function ServerBattleDict:getTalentSkillBySkillIdAndSkillLevel(skillId, level)
    return
end

-- 根据技能id和等级获取技能
---@param skillId number 技能id
---@param level number 技能等级
---@type function
---@return table
---@public
function ServerBattleDict:getSkillValueBySkillIdAndSkillLevel(skillId, level)
    return
end

-- 根据类型获取关卡常量
---@param type string 常量类型
---@type function
---@return LevelConstant
---@public
function ServerBattleDict:getLevelConstantByType(type)
    return
end

-- 根据主线id获取战前剧情id列表
---@param mainLevelId number 主线id
---@type function
---@return table
---@public
function ServerBattleDict:getPreBattlePlotIdsByMainLevelId(mainLevelId)
    return
end

-- 根据多人pve id获取战前剧情id列表
---@param multiPveBossLevelId number 多人pve id
---@type function
---@return table
---@public
function ServerBattleDict:getPreBattlePlotIdsByMultiPveBossLevelId(multiPveBossLevelId)
    return
end

-- 获取元素数值
---@param buffInstanceId number buff实例id
---@param level number 等级
---@type function
---@return ElementValue
---@public
function ServerBattleDict:getElementValueByBuffInstanceIdAndLevel(buffInstanceId, level)
    return
end

-- 获取伤害参数
---@param weaponType number 攻击方武装类型ID
---@param dis number 测算的距离的平方值
---@param propChangeValue number 攻击方 Skill_Active_CD_Reduce 属性值
---@type function
---@return number
---@public
function ServerBattleDict:getHurtDisReduceParamCnt(weaponType, dis, propChangeValue)
    return
end

-- 获取怪物属性修正
---@param group number 组
---@param classify number 类别
---@param playerNum number 玩家数量
---@type function
---@return table
---@public
function ServerBattleDict:getLevelMemberFix(group, classify, playerNum)
    return
end

-- 获取伤害距离衰减下标
---@param levelInstanceId number 关卡id
---@param level number 等级
---@type function
---@return BountyMissionsLevelStage
---@public
function ServerBattleDict:getBountyMissionLevelStage(levelInstanceId, level)
    return
end

-- 修正属性上下限
---@param propId number 属性ID
---@param value number 属性原始值
---@type function
---@return number
---@public
function ServerBattleDict:formatPropLimit(propId, value)
    return
end

-- 根据levelInstanceId和赛季获取赛季关卡数据
---@param levelInstanceId number 关卡id
---@param season number 赛季
---@type function
---@return SeasonReplaceLevel
---@public
function ServerBattleDict:getSeasonReplaceLevelByLevelIdAndSeason(levelInstanceId, season)
    return
end

return ServerBattleDict;
