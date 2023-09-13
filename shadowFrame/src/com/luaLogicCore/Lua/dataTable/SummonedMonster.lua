local default = {id=0,monsterInstanceid=0,durationCount=0,isSummoned=0,summonedEffect=0,deathType=0,durationTime=0,campType=0,bornPosition=0,bornDeviation=xlsNilTable,bornOrientations=xlsNilTable,moveType=0,moveTypeValue=xlsNilTable,attributeType=0,attributeValue=xlsNilTable,isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0,rootName="",hitboxEx=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SummonedMonster_Xls : table 
SummonedMonster_Xls =
{
    ["999"]=setmetatable({id=999,monsterInstanceid=110101,durationCount=1,isSummoned=0,summonedEffect=1026,deathType=0,durationTime=20,campType=-1,bornPosition=0,bornDeviation={[1]=2,[2]=0,[3]=0},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0},mt),
    ["200801301"]=setmetatable({id=200801301,monsterInstanceid=200801301,durationCount=1,isSummoned=0,summonedEffect=1026,deathType=2,durationTime=14,campType=-1,bornPosition=0,bornDeviation={[1]=-1.1,[2]=0.54,[3]=0.42},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["200801302"]=setmetatable({id=200801302,monsterInstanceid=200801301,durationCount=1,isSummoned=0,summonedEffect=1026,deathType=2,durationTime=14,campType=-1,bornPosition=0,bornDeviation={[1]=1.1,[2]=0.54,[3]=0.42},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["320"]=setmetatable({id=320,monsterInstanceid=320,durationCount=1,isSummoned=0,summonedEffect=1023,deathType=3,durationTime=8,campType=-1,bornPosition=0,bornDeviation={[1]=-0.64,[2]=0.52,[3]=0.42},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["330"]=setmetatable({id=330,monsterInstanceid=330,durationCount=1,isSummoned=0,summonedEffect=1025,deathType=3,durationTime=8,campType=-1,bornPosition=0,bornDeviation={[1]=0.64,[2]=0.52,[3]=0.42},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["340"]=setmetatable({id=340,monsterInstanceid=340,durationCount=1,isSummoned=0,summonedEffect=1024,deathType=3,durationTime=8,campType=-1,bornPosition=0,bornDeviation={[1]=-0.76,[2]=-0.15,[3]=0.42},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["350"]=setmetatable({id=350,monsterInstanceid=350,durationCount=1,isSummoned=0,summonedEffect=1026,deathType=3,durationTime=8,campType=-1,bornPosition=0,bornDeviation={[1]=0.76,[2]=-0.15,[3]=0.42},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["110101"]=setmetatable({id=110101,monsterInstanceid=110101,durationCount=3,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=0,[2]=-7.25,[3]=0},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=0,moveTypeValue=xlsNilTable,attributeType=2,attributeValue={[1]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0},mt),
    ["110102"]=setmetatable({id=110102,monsterInstanceid=110101,durationCount=3,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=12,[2]=7,[3]=0},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=0,moveTypeValue=xlsNilTable,attributeType=2,attributeValue={[1]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0},mt),
    ["110103"]=setmetatable({id=110103,monsterInstanceid=110101,durationCount=3,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=-12,[2]=7,[3]=0},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=0,moveTypeValue=xlsNilTable,attributeType=2,attributeValue={[1]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0},mt),
    ["30400101"]=setmetatable({id=30400101,monsterInstanceid=30400101,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=15,campType=-1,bornPosition=0,bornDeviation={[1]=0,[2]=60,[3]=30},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=2,attributeValue={[1]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0},mt),
    ["30400102"]=setmetatable({id=30400102,monsterInstanceid=30400102,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=15,campType=-1,bornPosition=0,bornDeviation={[1]=0,[2]=60,[3]=30},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=2,attributeValue={[1]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0},mt),
    ["30400103"]=setmetatable({id=30400103,monsterInstanceid=30400103,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=30,campType=-1,bornPosition=0,bornDeviation={[1]=0,[2]=15,[3]=50},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=2,attributeValue={[1]=5.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0},mt),
    ["201601301"]=setmetatable({id=201601301,monsterInstanceid=201601301,durationCount=1,isSummoned=0,summonedEffect=1026,deathType=2,durationTime=10,campType=-1,bornPosition=0,bornDeviation={[1]=-1,[2]=0,[3]=0},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["202901301"]=setmetatable({id=202901301,monsterInstanceid=202901301,durationCount=1,isSummoned=0,summonedEffect=1026,deathType=3,durationTime=10,campType=-1,bornPosition=0,bornDeviation={[1]=0,[2]=0,[3]=0},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=1.0,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=0,isShowBlood=0,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=0,isHit=0,isCalculated=0,isAimed=0,useWeaponModel=0},mt),
    ["30500101"]=setmetatable({id=30500101,monsterInstanceid=905001,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=0.8,[2]=114,[3]=23},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0.0,rootName="Boss_Angeerzhijian_Head",hitboxEx={[1]=1}},mt),
    ["30500102"]=setmetatable({id=30500102,monsterInstanceid=905002,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=38,[2]=100,[3]=23},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0.0,rootName="Boss_Angeerzhijian_Left",hitboxEx={[1]=2}},mt),
    ["30500103"]=setmetatable({id=30500103,monsterInstanceid=905003,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=-28,[2]=100,[3]=23},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0.0,rootName="Boss_Angeerzhijian_Right",hitboxEx={[1]=3}},mt),
    ["30500104"]=setmetatable({id=30500104,monsterInstanceid=905004,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=0.8,[2]=114,[3]=23},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0.0,rootName="Boss_Angeerzhijian_Head",hitboxEx={[1]=1}},mt),
    ["30500105"]=setmetatable({id=30500105,monsterInstanceid=905005,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=38,[2]=100,[3]=23},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0.0,rootName="Boss_Angeerzhijian_Left",hitboxEx={[1]=2}},mt),
    ["30500106"]=setmetatable({id=30500106,monsterInstanceid=905006,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=999,campType=-1,bornPosition=0,bornDeviation={[1]=-28,[2]=100,[3]=23},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.1,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0,hangPoint="",hurtBelongType=0,hurtBelongParam=0.0,rootName="Boss_Angeerzhijian_Right",hitboxEx={[1]=3}},mt),
    ["30500107"]=setmetatable({id=30500107,monsterInstanceid=905007,durationCount=1,isSummoned=0,summonedEffect=905,deathType=1,durationTime=16,campType=-1,bornPosition=0,bornDeviation={[1]=0,[2]=63.5,[3]=99.4},bornOrientations={[1]=0,[2]=0,[3]=0},moveType=1,moveTypeValue=xlsNilTable,attributeType=1,attributeValue={[1]=0.05,[2]=1.0,[3]=1.0,[4]=1.0,[5]=1.0},isDetained=0,isBump=1,isShowBlood=1,cleanType=0,cleanValue1=0,cleanValue2=0,cleanValue3=0,cleanValue4=0,isDraged=1,isHit=1,isCalculated=1,isAimed=1,useWeaponModel=0},mt),
}
--生成获取数据的方法
---@return SummonedMonster
function GetSummonedMonsterData(id)
    return SummonedMonster_Xls[tostring(id)]
end
--自动生成注释
---@class SummonedMonster : table 
---@field id number
---@field monsterInstanceid number
---@field durationCount number
---@field isSummoned number
---@field summonedEffect number
---@field deathType number
---@field durationTime number
---@field campType number
---@field bornPosition number
---@field bornDeviation table
---@field bornOrientations table
---@field moveType number
---@field moveTypeValue table
---@field attributeType number
---@field attributeValue table
---@field isDetained number
---@field isBump number
---@field isShowBlood number
---@field cleanType number
---@field cleanValue1 number
---@field cleanValue2 number
---@field cleanValue3 number
---@field cleanValue4 number
---@field isDraged number
---@field isHit number
---@field isCalculated number
---@field isAimed number
---@field useWeaponModel number
---@field hangPoint string
---@field hurtBelongType number
---@field hurtBelongParam number
---@field rootName string
---@field hitboxEx table
