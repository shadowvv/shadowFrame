local default = {elementId=0,comments="",mainEffectBuff=xlsNilTable,minorEffectBuff=xlsNilTable,weaknessEffectBuff=xlsNilTable,casterEffectBuff=xlsNilTable,reduceSpeed=xlsNilTable,denyOriginalDamage=0,trigEventMask=0,numericalParams=xlsNilTable,showResourcesPic="",showResourcesWord="",weaknessShowResourcesPic="",weaknessShowResourcesWord="",textPro=xlsNilTable,buffLayers=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ElementStackEffect_Xls : table 
ElementStackEffect_Xls =
{
    ["3"]=setmetatable({elementId=3,comments="雷元素",mainEffectBuff={[1]=401},minorEffectBuff={[1]=400,[2]=406,[3]=1623032,[4]=1623033},weaknessEffectBuff=xlsNilTable,casterEffectBuff=xlsNilTable,reduceSpeed={[1]=19.0,[2]=3.5,[3]=2.5,[4]=20.0,[5]=0.0,[6]=0.1,[7]=0.2,[8]=0.1,[9]=0.1,[10]=0.0},denyOriginalDamage=0,trigEventMask=1,numericalParams={[1]=11.0,[2]=1.4},showResourcesPic="",showResourcesWord="元素过载",weaknessShowResourcesPic="",weaknessShowResourcesWord="弱点元素过载",textPro={[1]="showResourcesWord",[2]="weaknessShowResourcesWord"}},mt),
    ["2"]=setmetatable({elementId=2,comments="火元素",mainEffectBuff={[1]=411},minorEffectBuff={[1]=410},weaknessEffectBuff=xlsNilTable,casterEffectBuff=xlsNilTable,reduceSpeed={[1]=19.0,[2]=3.5,[3]=2.5,[4]=20.0,[5]=0.0,[6]=0.1,[7]=0.2,[8]=0.1,[9]=0.1,[10]=0.0},denyOriginalDamage=0,trigEventMask=0,numericalParams={[1]=11.0,[2]=1.4},showResourcesPic="",showResourcesWord="元素过载",weaknessShowResourcesPic="",weaknessShowResourcesWord="弱点元素过载",textPro={[1]="showResourcesWord",[2]="weaknessShowResourcesWord"},buffLayers={[1]="img_battle_weakness_number_1",[2]="img_battle_weakness_number_2",[3]="img_battle_weakness_number_3",[4]="img_battle_weakness_number_4",[5]="img_battle_weakness_number_5",[6]="img_battle_weakness_number_6",[7]="img_battle_weakness_number_7",[8]="img_battle_weakness_number_8",[9]="img_battle_weakness_number_9",[10]="img_battle_weakness_number2_10",[11]="img_battle_weakness_number2_11",[12]="img_battle_weakness_number2_12",[13]="img_battle_weakness_number2_13",[14]="img_battle_weakness_number2_14",[15]="img_battle_weakness_number2_15",[16]="img_battle_weakness_number2_16",[17]="img_battle_weakness_number2_17",[18]="img_battle_weakness_number2_18",[19]="img_battle_weakness_number2_19",[20]="img_battle_weakness_number2_20"}},mt),
    ["4"]=setmetatable({elementId=4,comments="冰元素",mainEffectBuff={[1]=421},minorEffectBuff={[1]=420},weaknessEffectBuff=xlsNilTable,casterEffectBuff={[1]=500},reduceSpeed={[1]=19.0,[2]=3.5,[3]=2.5,[4]=14.0,[5]=0.0,[6]=0.1,[7]=0.2,[8]=0.125,[9]=0.125,[10]=0.0},denyOriginalDamage=0,trigEventMask=0,numericalParams={[1]=11.0,[2]=1.4},showResourcesPic="",showResourcesWord="元素过载",weaknessShowResourcesPic="",weaknessShowResourcesWord="弱点元素过载",textPro={[1]="showResourcesWord",[2]="weaknessShowResourcesWord"}},mt),
    ["5"]=setmetatable({elementId=5,comments="风元素",mainEffectBuff={[1]=437,[2]=433,[3]=432},minorEffectBuff={[1]=430},weaknessEffectBuff=xlsNilTable,casterEffectBuff=xlsNilTable,reduceSpeed={[1]=19.0,[2]=3.5,[3]=2.5,[4]=20.0,[5]=0.0,[6]=0.1,[7]=0.2,[8]=0.1,[9]=0.1,[10]=0.0},denyOriginalDamage=0,trigEventMask=0,numericalParams={[1]=11.0,[2]=1.4},showResourcesPic="",showResourcesWord="元素过载",weaknessShowResourcesPic="",weaknessShowResourcesWord="弱点元素过载",textPro={[1]="showResourcesWord",[2]="weaknessShowResourcesWord"}},mt),
}
--生成获取数据的方法
---@return ElementStackEffect
function GetElementStackEffectData(id)
    return ElementStackEffect_Xls[tostring(id)]
end
--自动生成注释
---@class ElementStackEffect : table 
---@field elementId number
---@field comments string
---@field mainEffectBuff table
---@field minorEffectBuff table
---@field weaknessEffectBuff table
---@field casterEffectBuff table
---@field reduceSpeed table
---@field denyOriginalDamage number
---@field trigEventMask number
---@field numericalParams table
---@field showResourcesPic string
---@field showResourcesWord string
---@field weaknessShowResourcesPic string
---@field weaknessShowResourcesWord string
---@field textPro table
---@field buffLayers table
