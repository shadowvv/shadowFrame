---@class AreaColliderCondition_Xls : table 
AreaColliderCondition_Xls =
{
    ["1"]={id=1,type=1},
    ["2"]={id=2,type=4,back="",paramFloat=20},
    ["3"]={id=3,type=1},
    ["4"]={id=4,type=1},
}
--生成获取数据的方法
---@return AreaColliderCondition
function GetAreaColliderConditionData(id)
    return AreaColliderCondition_Xls[tostring(id)]
end
--自动生成注释
---@class AreaColliderCondition : table 
---@field id number
---@field type number
---@field back string
---@field paramFloat number
---@field paramString string
