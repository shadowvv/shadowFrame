---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by jiangxuechen
--- DateTime: 2022/04/09 18:51
--- Describe:
---

---@class AreaTriggerTemplate_Sphere : table
AreaTriggerTemplate_Sphere = class(AreaTriggerTemplateBase, "AreaTriggerTemplate_Sphere")

---@public
function AreaTriggerTemplate_Sphere:CheckAABB(_createTime, _nowTime, _nowPos, _checkPos)
	local _size = self:__CountSizeScale(_createTime, _nowTime)
	
	local _r = _size.w
	if _checkPos.x < _nowPos.x - _r or _checkPos.x > _nowPos.x + _r then return false end
	if _checkPos.y < _nowPos.y - _r or _checkPos.y > _nowPos.y + _r then return false end
	if _checkPos.z < _nowPos.z - _r or _checkPos.z > _nowPos.z + _r then return false end
	
	return true
end

return AreaTriggerTemplate_Sphere