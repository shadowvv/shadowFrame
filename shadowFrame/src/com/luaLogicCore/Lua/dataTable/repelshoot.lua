---@class RepelShoot_Xls : table 
RepelShoot_Xls =
{
    ["1"]={id=1,startTime=0.0,endTime=1.0,speed=10.0,speedTime=1.0,acceleratedSpeed=10.0,acceleratedTime=0.5},
    ["2"]={id=2,startTime=0.0,endTime=1.0,speed=10.0,speedTime=1.0,acceleratedSpeed=10.0,acceleratedTime=0.5},
    ["3"]={id=3,startTime=0.0,endTime=1.0,speed=10.0,speedTime=1.0,acceleratedSpeed=10.0,acceleratedTime=0.5},
}
--生成获取数据的方法
---@return RepelShoot
function GetRepelShootData(id)
    return RepelShoot_Xls[tostring(id)]
end
--自动生成注释
---@class RepelShoot : table 
---@field id number
---@field startTime number
---@field endTime number
---@field speed number
---@field speedTime number
---@field acceleratedSpeed number
---@field acceleratedTime number
