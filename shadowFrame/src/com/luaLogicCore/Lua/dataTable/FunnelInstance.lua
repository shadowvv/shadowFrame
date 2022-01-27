---@class FunnelInstance_Xls : table 
FunnelInstance_Xls =
{
    ["1001"]={id=1001,name="浮游炮1",beiZhu="法尼娅-临时1",type=1,moveType=2,initPosition={[1]=0.6,[2]=-0.5,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Assault_02_Rechengyouchangshi"},
    ["1002"]={id=1002,name="浮游炮1",beiZhu="法尼娅-临时2",type=1,moveType=2,initPosition={[1]=0.6,[2]=-0.5,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Assault_02_Rechengyouchangshi"},
    ["2001"]={id=2001,name="浮游炮2",beiZhu="剩余临时",type=2,moveType=1,initPosition={[1]=0.0,[2]=0.0,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Assault_02_Rechengyouchangshi"},
    ["3001"]={id=3001,name="浮游炮3",beiZhu="夏洛-临时1",type=3,moveType=1,initPosition={[1]=0.0,[2]=0.0,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Sniper_01_Xianzhaozhe"},
    ["3002"]={id=3002,name="浮游炮3",beiZhu="夏洛-临时2",type=3,moveType=1,initPosition={[1]=0.0,[2]=0.0,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Sniper_01_Xianzhaozhe"},
    ["4001"]={id=4001,name="浮游炮4",beiZhu="奈纳-临时1",type=4,moveType=2,initPosition={[1]=0.6,[2]=-0.5,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Heavy_01_Qihuanzhe"},
    ["4002"]={id=4002,name="浮游炮4",beiZhu="奈纳-临时2",type=4,moveType=2,initPosition={[1]=0.6,[2]=-0.5,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Heavy_01_Qihuanzhe"},
    ["5001"]={id=5001,name="浮游炮5",beiZhu="维拉-临时",type=5,moveType=1,initPosition={[1]=0.0,[2]=0.0,[3]=0.0},initRotation={[1]=0.0,[2]=0.0,[3]=1.0},funnelPrefab="PF_Battle_Weapon_Scatter_01_Kuangrezhe"},
}
--生成获取数据的方法
---@return FunnelInstance
function GetFunnelInstanceData(id)
    return FunnelInstance_Xls[tostring(id)]
end
--自动生成注释
---@class FunnelInstance : table 
---@field id number
---@field name string
---@field beiZhu string
---@field type number
---@field moveType number
---@field initPosition table
---@field initRotation table
---@field funnelPrefab string
