---@class FixedEquip_Xls : table 
FixedEquip_Xls =
{
    ["70003010"]={fixedEquipId=70003010,des="歌者的华冠-3星1条属性",equipId=7000301,changeAttributeId=51001},
    ["70003020"]={fixedEquipId=70003020,des="歌者的宝石-3星1条属性",equipId=7000302,changeAttributeId=51001},
    ["70003030"]={fixedEquipId=70003030,des="歌者的胸花-3星1条属性",equipId=7000303,changeAttributeId=51001},
    ["70003040"]={fixedEquipId=70003040,des="歌者的荣光-3星1条属性",equipId=7000304,changeAttributeId=51001},
    ["70003050"]={fixedEquipId=70003050,des="歌者的铜匙-3星1条属性",equipId=7000305,changeAttributeId=51001},
    ["70104010"]={fixedEquipId=70104010,des="十字样貌的日冕-4星2条副属性",equipId=7010401,changeAttributeId=51001},
    ["70104020"]={fixedEquipId=70104020,des="破碎灼目的焰萤-4星2条副属性",equipId=7010402,changeAttributeId=51001},
    ["70104030"]={fixedEquipId=70104030,des="往常盛开的阳葵-4星2条副属性",equipId=7010403,changeAttributeId=51001},
    ["70104040"]={fixedEquipId=70104040,des="二月失坠的火瀑-4星2条副属性",equipId=7010404,changeAttributeId=51001},
    ["70104050"]={fixedEquipId=70104050,des="扑赴烈焰的残蛾-4星2条副属性",equipId=7010405,changeAttributeId=51001},
    ["70204010"]={fixedEquipId=70204010,des="十字样貌的日冕-4星3条副属性",equipId=7020401,changeAttributeId=51001},
    ["70204020"]={fixedEquipId=70204020,des="破碎灼目的焰萤-4星3条副属性",equipId=7020402,changeAttributeId=51001},
    ["70204030"]={fixedEquipId=70204030,des="往常盛开的阳葵-4星3条副属性",equipId=7020403,changeAttributeId=51001},
    ["70204040"]={fixedEquipId=70204040,des="二月失坠的火瀑-4星3条副属性",equipId=7020404,changeAttributeId=51001},
    ["70204050"]={fixedEquipId=70204050,des="扑赴烈焰的残蛾-4星3条副属性",equipId=7020405,changeAttributeId=51001},
    ["70105010"]={fixedEquipId=70105010,des="十字样貌的日冕-5星3条副属性",equipId=7010501,changeAttributeId=51001},
    ["70105020"]={fixedEquipId=70105020,des="破碎灼目的焰萤-5星3条副属性",equipId=7010502,changeAttributeId=51001},
    ["70105030"]={fixedEquipId=70105030,des="往常盛开的阳葵-5星3条副属性",equipId=7010503,changeAttributeId=51001},
    ["70105040"]={fixedEquipId=70105040,des="二月失坠的火瀑-5星3条副属性",equipId=7010504,changeAttributeId=51001},
    ["70105050"]={fixedEquipId=70105050,des="扑赴烈焰的残蛾-5星3条副属性",equipId=7010505,changeAttributeId=51001},
    ["70205010"]={fixedEquipId=70205010,des="十字样貌的日冕-5星4条副属性",equipId=7020501,changeAttributeId=51001},
    ["70205020"]={fixedEquipId=70205020,des="破碎灼目的焰萤-5星4条副属性",equipId=7020502,changeAttributeId=51001},
    ["70205030"]={fixedEquipId=70205030,des="往常盛开的阳葵-5星4条副属性",equipId=7020503,changeAttributeId=51001},
    ["70205040"]={fixedEquipId=70205040,des="二月失坠的火瀑-5星4条副属性",equipId=7020504,changeAttributeId=51001},
    ["70205050"]={fixedEquipId=70205050,des="扑赴烈焰的残蛾-5星4条副属性",equipId=7020505,changeAttributeId=51001},
}
--生成获取数据的方法
---@return FixedEquip
function GetFixedEquipData(id)
    return FixedEquip_Xls[tostring(id)]
end
--自动生成注释
---@class FixedEquip : table 
---@field fixedEquipId number
---@field des string
---@field equipId number
---@field changeAttributeId number
