---@class FallObject_Xls : table 
FallObject_Xls =
{
    ["101"]={id=101,beiZhu="通用能量球",prefab="EFF_jizou_power_all",elementType=1,energy=3.0,energyType=1,disappearEffectId=311,pickupEffectId=313},
    ["102"]={id=102,beiZhu="通用能量微粒",prefab="EFF_jizou_power_s_all",elementType=1,energy=1.2,energyType=2,disappearEffectId=312,pickupEffectId=313},
    ["201"]={id=201,beiZhu="火能量球",prefab="EFF_jizou_power_fire",elementType=2,energy=3.0,energyType=1,disappearEffectId=321,pickupEffectId=323},
    ["202"]={id=202,beiZhu="火能量微粒",prefab="EFF_jizou_power_s_fire",elementType=2,energy=1.2,energyType=2,disappearEffectId=322,pickupEffectId=323},
    ["301"]={id=301,beiZhu="雷能量球",prefab="EFF_jizou_power_lei",elementType=3,energy=3.0,energyType=1,disappearEffectId=331,pickupEffectId=333},
    ["302"]={id=302,beiZhu="雷能量微粒",prefab="EFF_jizou_power_s_lei",elementType=3,energy=1.2,energyType=2,disappearEffectId=332,pickupEffectId=333},
    ["401"]={id=401,beiZhu="冰能量球",prefab="EFF_jizou_power_ice",elementType=4,energy=3.0,energyType=1,disappearEffectId=341,pickupEffectId=343},
    ["402"]={id=402,beiZhu="冰能量微粒",prefab="EFF_jizou_power_s_ice",elementType=4,energy=1.2,energyType=2,disappearEffectId=342,pickupEffectId=343},
    ["501"]={id=501,beiZhu="风能量球",prefab="EFF_jizou_power_wind",elementType=5,energy=3.0,energyType=1,disappearEffectId=351,pickupEffectId=353},
    ["502"]={id=502,beiZhu="风能量微粒",prefab="EFF_jizou_power_s_wind",elementType=5,energy=1.2,energyType=2,disappearEffectId=352,pickupEffectId=353},
    ["601"]={id=601,beiZhu="源能能量球",prefab="EFF_jizou_power_yuanneng",elementType=6,energy=3.0,energyType=1,disappearEffectId=361,pickupEffectId=363},
    ["602"]={id=602,beiZhu="源能能量微粒",prefab="EFF_jizou_power_s_yuanneng",elementType=6,energy=1.2,energyType=2,disappearEffectId=362,pickupEffectId=363},
    ["701"]={id=701,beiZhu="重力能量球",prefab="EFF_jizou_power_zhongli",elementType=7,energy=3.0,energyType=1,disappearEffectId=371,pickupEffectId=373},
    ["702"]={id=702,beiZhu="重力能量微粒",prefab="EFF_jizou_power_s_zhongli",elementType=7,energy=1.2,energyType=2,disappearEffectId=372,pickupEffectId=373},
}
--生成获取数据的方法
---@return FallObject
function GetFallObjectData(id)
    return FallObject_Xls[tostring(id)]
end
--自动生成注释
---@class FallObject : table 
---@field id number
---@field beiZhu string
---@field prefab string
---@field elementType number
---@field energy number
---@field energyType number
---@field disappearEffectId number
---@field pickupEffectId number
