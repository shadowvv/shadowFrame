---@class EquipSuit_Xls : table 
EquipSuit_Xls =
{
    ["1003001"]={equipSuitId=1003001,suitName="歌者",suitEffectName="歌唱",suitIcon="Equip_4_1003001",suitNum1=2,suitEffect1=9952,suitNum2=5,suitEffect2=9955},
    ["1003002"]={equipSuitId=1003002,suitName="绚烂的根源",suitEffectName="绚烂的根源",suitIcon="Equip_4_1003002",suitNum1=2,suitEffect1=9962,suitNum2=5,suitEffect2=9965},
}
--生成获取数据的方法
---@return EquipSuit
function GetEquipSuitData(id)
    return EquipSuit_Xls[tostring(id)]
end
--自动生成注释
---@class EquipSuit : table 
---@field equipSuitId number
---@field suitName string
---@field suitEffectName string
---@field suitIcon string
---@field suitNum1 number
---@field suitEffect1 number
---@field suitNum2 number
---@field suitEffect2 number
