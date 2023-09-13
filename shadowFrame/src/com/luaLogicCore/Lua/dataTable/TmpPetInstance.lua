local default = {id=0,name="",type=0,moveType=0,initDistance=0,initRotation=xlsNilTable,prefabPath="",skillId=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TmpPetInstance_Xls : table 
TmpPetInstance_Xls =
{
    ["2001001"]=setmetatable({id=2001001,name="宠物1",type=1,moveType=2,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon1",skillId=1000001},mt),
    ["2002001"]=setmetatable({id=2002001,name="宠物2",type=1,moveType=2,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon1",skillId=1000001},mt),
    ["2003001"]=setmetatable({id=2003001,name="宠物3",type=2,moveType=1,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon5",skillId=1000001},mt),
    ["2004001"]=setmetatable({id=2004001,name="宠物4",type=3,moveType=1,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon1",skillId=1000001},mt),
    ["2005001"]=setmetatable({id=2005001,name="宠物5",type=3,moveType=1,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon3_2",skillId=1000001},mt),
    ["2006001"]=setmetatable({id=2006001,name="宠物6",type=4,moveType=2,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon2",skillId=1000001},mt),
    ["2007001"]=setmetatable({id=2007001,name="宠物7",type=4,moveType=2,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon1",skillId=1000001},mt),
    ["2008001"]=setmetatable({id=2008001,name="宠物8",type=5,moveType=1,initDistance=1.25,initRotation={[1]=0,[2]=0,[3]=1},prefabPath="Faniya_Weapon1",skillId=1000001},mt),
}
--生成获取数据的方法
---@return TmpPetInstance
function GetTmpPetInstanceData(id)
    return TmpPetInstance_Xls[tostring(id)]
end
--自动生成注释
---@class TmpPetInstance : table 
---@field id number
---@field name string
---@field type number
---@field moveType number
---@field initDistance number
---@field initRotation table
---@field prefabPath string
---@field skillId number
