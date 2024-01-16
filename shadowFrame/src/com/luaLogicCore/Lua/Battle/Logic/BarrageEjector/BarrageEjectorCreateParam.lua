---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/10/28 14:54
--- Describe: 弹幕发射器创建参数类
---

---@class BarrageEjectorCreateParam : Utils_BasePoolData
BarrageEjectorCreateParam = class(Utils_BasePoolData, "BarrageEjectorCreateParam")

---回收处理
---@public
function BarrageEjectorCreateParam:OnPush()
	---施放弹幕技能的object
	---@public
	---@type BattleObjectBase
	self.castObject = nil
	---弹幕技能所属的英雄技能的ID
	---@public
	---@type number
	self.heroSkillId = -1
	---初始玩家技能ID
	---@public
	---@type number
	self.originalHeroSkillId = nil
	---弹幕技能所属的英雄技能的节点ID（技能创建弹幕时会传）
	---@public
	---@type number
	self.skillNodeId = -1
	---弹幕所属英雄技能的唯一ID
	---@public
	---@type number 
	self.heroSkillOnlyId = -1
	---弹幕所属英雄技能的等级
	---@public
	---@type number
	self.heroSkillLevel = 1
	---弹幕技能ID
	---@public
	---@type number
	self.barrageSkillId = -1
	---弹幕散射系数
	---@public
	---@type number
	self.spreadParam = 0
	---弹幕携带的元素强度ID
	---@public
	---@type number
	self.elementStrenthId = 0
	---弹幕锁定的目标netId(弹幕触发时会传)
	---@public
	---@type number
	self.targetNetId = -1
	---发射器位置
	---@public
	---@type Vector3
	self.position = Vector3.zero_local()
	---发射器旋转
	---@public
	---@type Vector3
	self.rotation = Vector3.zero_local()
	---所属的弹幕子弹客户端本地ID（弹幕触发时会传）
	---@public
	---@type number
	self.bulletLocalId = -1
	---是否使用这里的位置和旋转信息创建
	---额外的标记位，避免把positon和rotation来回置空产生大量垃圾内存
	---@public
	self.usePosAndRot = false
	---创建弹幕技能的时间
	---@public
	self.timeStamp = -1
	---是否触发后续伤害事件
	---@public
	self.trigEvent = true
	BarrageEjectorCreateParam.__ResetBuffTemplateList(self)
end

---拷贝数据
---@public
---@param _dest table
function BarrageEjectorCreateParam.CopyData(_srcData, _desData)
	_desData.castObject = _srcData.castObject
	_desData.originalHeroSkillId = _srcData.originalHeroSkillId
	_desData.heroSkillId = _srcData.heroSkillId
	_desData.skillNodeId = _srcData.skillNodeId
	_desData.nodeId = _srcData.nodeId
	_desData.barrageSkillId = _srcData.barrageSkillId
	_desData.spreadParam = _srcData.spreadParam
	_desData.elementStrenthId = _srcData.elementStrenthId
	_desData.targetNetId = _srcData.targetNetId
	if not _desData.position then _desData.position = Vector3.zero_local() end
	if not _desData.rotation then _desData.rotation = Vector3.zero_local() end
	Vector3.Copy(_desData.position, _srcData.position)
	Vector3.Copy(_desData.rotation, _srcData.rotation)
	_desData.bulletLocalId = _srcData.bulletLocalId
	_desData.usePosAndRot = _srcData.usePosAndRot
	_desData.timeStamp = _srcData.timeStamp
	_desData.trigEvent = _srcData.trigEvent
	_desData.heroSkillOnlyId = _srcData.heroSkillOnlyId
	_desData.heroSkillLevel = _srcData.heroSkillLevel
	BarrageEjectorCreateParam.__ResetBuffTemplateList(_desData)
	for i = 1, #_srcData.buffTemplatelist do
		table.insert(_desData.buffTemplatelist, _srcData.buffTemplatelist[i])
	end
end

---重置buff列表
---@private
function BarrageEjectorCreateParam.__ResetBuffTemplateList(_srcData)
	if not _srcData.buffTemplatelist then
		_srcData.buffTemplatelist = {}
	else
		for _key, _ in pairs(_srcData.buffTemplatelist) do
			_srcData.buffTemplatelist[_key] = nil
		end
	end
end

---清除处理
---@public
function BarrageEjectorCreateParam:Clear()
	self.castObject = nil
	self.heroSkillId = nil
	self.nodeId = nil
	self.barrageSkillId = nil
	self.spreadParam = nil
	self.elementStrenthId = nil
	self.buffTemplatelist = nil
	self.targetNetId = nil
	self.position = nil
	self.rotation = nil
	self.timeStamp = nil
	self.bulletLocalId = nil
	self.trigEvent = nil
	self.originalHeroSkillId = nil
	self.heroSkillOnlyId = nil
	self.heroSkillLevel = nil
end
return BarrageEjectorCreateParam