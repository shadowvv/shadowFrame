local default = {id=0,effectEntityId=0,effectChangeType1=0,effectChangePoint1=xlsNilTable,effectChangeColor1=xlsNilTable,effectChangeType2=0,effectChangePoint2=xlsNilTable,effectChangeColor2=xlsNilTable,effectChangeType3=0,effectChangePoint3=xlsNilTable,effectChangeColor3=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class EffectChange_Xls : table 
EffectChange_Xls =
{
    ["305111"]=setmetatable({id=305111,effectEntityId=305111,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
    ["305112"]=setmetatable({id=305112,effectEntityId=305112,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
    ["305113"]=setmetatable({id=305113,effectEntityId=305113,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
    ["305114"]=setmetatable({id=305114,effectEntityId=305114,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
    ["305115"]=setmetatable({id=305115,effectEntityId=305115,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
    ["305118"]=setmetatable({id=305118,effectEntityId=305118,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
    ["305119"]=setmetatable({id=305119,effectEntityId=305119,effectChangeType1=1,effectChangePoint1={[1]=0,[2]=40},effectChangeColor1={[1]=255,[2]=42,[3]=226,[4]=255,[5]=7},effectChangeType2=1,effectChangePoint2={[1]=40,[2]=100},effectChangeColor2={[1]=0,[2]=243,[3]=255,[4]=118,[5]=7},effectChangeType3=1,effectChangePoint3={[1]=100,[2]=100000},effectChangeColor3={[1]=255,[2]=42,[3]=42,[4]=255,[5]=7}},mt),
}
--生成获取数据的方法
---@return EffectChange
function GetEffectChangeData(id)
    return EffectChange_Xls[tostring(id)]
end
--自动生成注释
---@class EffectChange : table 
---@field id number
---@field effectEntityId number
---@field effectChangeType1 number
---@field effectChangePoint1 table
---@field effectChangeColor1 table
---@field effectChangeType2 number
---@field effectChangePoint2 table
---@field effectChangeColor2 table
---@field effectChangeType3 number
---@field effectChangePoint3 table
---@field effectChangeColor3 table
