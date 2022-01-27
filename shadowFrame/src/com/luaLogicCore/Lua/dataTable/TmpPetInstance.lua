---@class TmpPetInstance_Xls : table 
TmpPetInstance_Xls =
{
    ["2001001"]={id=2001001,name="宠物1",beiZhu="临时",type=1,moveType=2,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon1",skillId=1000001},
    ["2002001"]={id=2002001,name="宠物2",beiZhu="临时",type=1,moveType=2,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon1_2",skillId=1000001},
    ["2003001"]={id=2003001,name="宠物3",beiZhu="临时",type=2,moveType=1,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon5",skillId=1000001},
    ["2004001"]={id=2004001,name="宠物4",beiZhu="临时",type=3,moveType=1,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon3",skillId=1000001},
    ["2005001"]={id=2005001,name="宠物5",beiZhu="临时",type=3,moveType=1,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon3_2",skillId=1000001},
    ["2006001"]={id=2006001,name="宠物6",beiZhu="临时",type=4,moveType=2,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon2",skillId=1000001},
    ["2007001"]={id=2007001,name="宠物7",beiZhu="临时",type=4,moveType=2,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon2_2",skillId=1000001},
    ["2008001"]={id=2008001,name="宠物8",beiZhu="临时",type=5,moveType=1,initDistance=1.25,initRotation={[1]=0.0,[2]=0.0,[3]=1.0},prefabPath="Faniya_Weapon4",skillId=1000001},
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
---@field beiZhu string
---@field type number
---@field moveType number
---@field initDistance number
---@field initRotation table
---@field prefabPath string
---@field skillId number
