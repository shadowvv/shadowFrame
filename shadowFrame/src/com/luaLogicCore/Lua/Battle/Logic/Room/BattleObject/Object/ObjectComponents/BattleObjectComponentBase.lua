---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/02/08 14:23
--- Describe: object组件，静态组件
---

---@class BattleObjectComponentBase : table
BattleObjectComponentBase = class(nil, "BattleObjectComponentBase")

---@protected
---@param _componentType BattleObjectComponentType
function BattleObjectComponentBase:__ctor(_componentType) 
	self.__type = _componentType
end

---@protected
---@param _battleObject BattleObjectBase
function BattleObjectComponentBase:__Init(_battleObject)
	self.__object = _battleObject
	self.__battleId = _battleObject:GetBattleId()
	self.battleRoom = _battleObject:GetBattleRoom()
end

---@protected
function BattleObjectComponentBase:__GetComponentType()
	return self.__type 
end

---@protected
function BattleObjectComponentBase:__GetObject()
	return self.__object
end

---@protected
function BattleObjectComponentBase:__OnUpdate(_deltaTime)
end

---@protected
function BattleObjectComponentBase:__OnDead()
	
end

---@protected
function BattleObjectComponentBase:__Clear()
	self.__type = nil
	self.__object = nil
	self.__battleId = nil
	self.battleRoom = nil
end

------------------------------------------------------------------------------------------------------------------------
---@param _componentType BattleObjectComponentType
function BattleObjectComponentBase:ctor(_componentType) 
	self:__ctor(_componentType)
end


---@public
---@param _componentType BattleObjectComponentType
---@param _battleObject BattleObjectBase
function BattleObjectComponentBase:Init(_battleObject)
	self:__Init(_battleObject)
end

---@public
-- 获取组件类型
function BattleObjectComponentBase:GetComponentType()
	return self:__GetComponentType()
end

---@public
-- 获取组件所属的object
---@return BattleObjectBase
function BattleObjectComponentBase:GetObject()
	return self:__GetObject()
end

---@public
-- 获取组件所属的battleId
---@return number
function BattleObjectComponentBase:GetBattleId()
	return self.__battleId
end

---@public
---@return BattleRoom
function BattleObjectComponentBase:GetBattleRoom()
	return self.battleRoom
end

---@public
-- 驱动
function BattleObjectComponentBase:OnUpdate(_deltaTime)
	return self:__OnUpdate(_deltaTime)
end

---@public
---obj死亡处理
function BattleObjectComponentBase:OnDead()
	self:__OnDead()
end

---@public
-- 清理
function BattleObjectComponentBase:Clear()
	self:__Clear()
end

------------------------------------------------------------------------------------------------------------------------
---服务器逻辑核生成用于发送给前端逻辑核的全量信息
---@public
function BattleObjectComponentBase:GetCreateSyncMessage_S2C()
    return nil
end

---前端逻辑核用服务器发来的全量信息刷新自身数据
---@public
function BattleObjectComponentBase:OnReceiveCreateSyncMessage_S2C(_message)
    
end

---前端逻辑核生成用于发送给表现的层全量信息
---@public
function BattleObjectComponentBase:GetCreateSyncMessage_L2V(_message)
    return nil
end
return BattleObjectComponentBase