---@class Summon_Xls : table 
Summon_Xls =
{
    ["1"]={id=1,des="",monsterInstanceid=21,usePrefab=1,hurtBelongType=1,maxHp=100.0,bodyPartId=-1,pos={[1]=0.0,[2]=0.0,[3]=20.0},rotate={[1]=0.0,[2]=0.0,[3]=0.0},size={[1]=1.0,[2]=1.0,[3]=1.0},followType=1},
    ["2"]={id=2,des="",monsterInstanceid=23,usePrefab=1,hurtBelongType=1,maxHp=100.0,bodyPartId=-1,pos={[1]=0.0,[2]=0.0,[3]=0.0},rotate={[1]=0.0,[2]=0.0,[3]=0.0},size={[1]=1.0,[2]=1.0,[3]=1.0},followType=1},
    ["3"]={id=3,des="",monsterInstanceid=25,usePrefab=1,hurtBelongType=1,maxHp=100.0,bodyPartId=-1,pos={[1]=0.0,[2]=0.0,[3]=0.0},rotate={[1]=0.0,[2]=0.0,[3]=0.0},size={[1]=1.0,[2]=1.0,[3]=1.0},followType=1},
}
--生成获取数据的方法
---@return Summon
function GetSummonData(id)
    return Summon_Xls[tostring(id)]
end
--自动生成注释
---@class Summon : table 
---@field id number
---@field des string
---@field monsterInstanceid number
---@field usePrefab number
---@field hurtBelongType number
---@field maxHp number
---@field bodyPartId number
---@field pos table
---@field rotate table
---@field size table
---@field followType number
