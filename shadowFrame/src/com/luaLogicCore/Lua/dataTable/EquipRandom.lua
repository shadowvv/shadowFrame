---@class EquipRandom_Xls : table 
EquipRandom_Xls =
{
    ["7000301"]={equipRandomId=7000301,des="歌者的华冠",mainAttributeId=7000301,minorAttributeId={[1]=51001}},
    ["7000302"]={equipRandomId=7000302,des="歌者的宝石",mainAttributeId=7000302,minorAttributeId={[1]=52001}},
    ["7000303"]={equipRandomId=7000303,des="歌者的胸花",mainAttributeId=7000303,minorAttributeId={[1]=53001}},
    ["7000304"]={equipRandomId=7000304,des="歌者的荣光",mainAttributeId=7000304,minorAttributeId={[1]=54001}},
    ["7000305"]={equipRandomId=7000305,des="歌者的铜匙",mainAttributeId=7000305,minorAttributeId={[1]=55001}},
    ["7010401"]={equipRandomId=7010401,des="十字样貌的日冕-4星2条副属性",mainAttributeId=7010301,minorAttributeId={[1]=51001,[2]=51002}},
    ["7010402"]={equipRandomId=7010402,des="破碎灼目的焰萤-4星2条副属性",mainAttributeId=7010302,minorAttributeId={[1]=52001,[2]=52002}},
    ["7010403"]={equipRandomId=7010403,des="往常盛开的阳葵-4星2条副属性",mainAttributeId=7010303,minorAttributeId={[1]=53001,[2]=53002}},
    ["7010404"]={equipRandomId=7010404,des="二月失坠的火瀑-4星2条副属性",mainAttributeId=7010304,minorAttributeId={[1]=54001,[2]=54001}},
    ["7010405"]={equipRandomId=7010405,des="扑赴烈焰的残蛾-4星2条副属性",mainAttributeId=7010305,minorAttributeId={[1]=55001,[2]=55001}},
    ["7020401"]={equipRandomId=7020401,des="十字样貌的日冕-4星3条副属性",mainAttributeId=7010301,minorAttributeId={[1]=51001,[2]=51002,[3]=51003}},
    ["7020402"]={equipRandomId=7020402,des="破碎灼目的焰萤-4星3条副属性",mainAttributeId=7010302,minorAttributeId={[1]=52001,[2]=52002,[3]=52003}},
    ["7020403"]={equipRandomId=7020403,des="往常盛开的阳葵-4星3条副属性",mainAttributeId=7010303,minorAttributeId={[1]=53001,[2]=53002,[3]=53003}},
    ["7020404"]={equipRandomId=7020404,des="二月失坠的火瀑-4星3条副属性",mainAttributeId=7010304,minorAttributeId={[1]=54001,[2]=54001,[3]=54001}},
    ["7020405"]={equipRandomId=7020405,des="扑赴烈焰的残蛾-4星3条副属性",mainAttributeId=7010305,minorAttributeId={[1]=55001,[2]=55001,[3]=55001}},
    ["7010501"]={equipRandomId=7010501,des="十字样貌的日冕-5星3条副属性",mainAttributeId=7010301,minorAttributeId={[1]=51001,[2]=51002,[3]=51003}},
    ["7010502"]={equipRandomId=7010502,des="破碎灼目的焰萤-5星3条副属性",mainAttributeId=7010302,minorAttributeId={[1]=52001,[2]=52002,[3]=52003}},
    ["7010503"]={equipRandomId=7010503,des="往常盛开的阳葵-5星3条副属性",mainAttributeId=7010303,minorAttributeId={[1]=53001,[2]=53002,[3]=53003}},
    ["7010504"]={equipRandomId=7010504,des="二月失坠的火瀑-5星3条副属性",mainAttributeId=7010304,minorAttributeId={[1]=54001,[2]=54001,[3]=54001}},
    ["7010505"]={equipRandomId=7010505,des="扑赴烈焰的残蛾-5星3条副属性",mainAttributeId=7010305,minorAttributeId={[1]=55001,[2]=55001,[3]=55001}},
    ["7020501"]={equipRandomId=7020501,des="十字样貌的日冕-5星4条副属性",mainAttributeId=7010301,minorAttributeId={[1]=55001,[2]=55001,[3]=55001,[4]=55001}},
    ["7020502"]={equipRandomId=7020502,des="破碎灼目的焰萤-5星4条副属性",mainAttributeId=7010302,minorAttributeId={[1]=55001,[2]=55001,[3]=55001,[4]=55001}},
    ["7020503"]={equipRandomId=7020503,des="往常盛开的阳葵-5星4条副属性",mainAttributeId=7010303,minorAttributeId={[1]=55001,[2]=55001,[3]=55001,[4]=55001}},
    ["7020504"]={equipRandomId=7020504,des="二月失坠的火瀑-5星4条副属性",mainAttributeId=7010304,minorAttributeId={[1]=55001,[2]=55001,[3]=55001,[4]=55001}},
    ["7020505"]={equipRandomId=7020505,des="扑赴烈焰的残蛾-5星4条副属性",mainAttributeId=7010305,minorAttributeId={[1]=55001,[2]=55001,[3]=55001,[4]=55001}},
}
--生成获取数据的方法
---@return EquipRandom
function GetEquipRandomData(id)
    return EquipRandom_Xls[tostring(id)]
end
--自动生成注释
---@class EquipRandom : table 
---@field equipRandomId number
---@field des string
---@field mainAttributeId number
---@field minorAttributeId table
