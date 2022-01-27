---@class PlayerInfoCard_Xls : table 
PlayerInfoCard_Xls =
{
    ["1"]={id=1,name="默认",icon="texture/PlayerInfo/mingpian_di",conditionId=101,unlockTip="默认解锁"},
    ["2"]={id=2,name="夕阳",icon="texture/PlayerInfo/mingpian_xiyang",conditionId=101,unlockTip="默认解锁"},
    ["3"]={id=3,name="尼博赞歌",icon="texture/PlayerInfo/mingpian_chuan",conditionId=101,unlockTip="与法尼娅达到最高好感度"},
    ["4"]={id=4,name="异生体",icon="texture/PlayerInfo/mingpian_guaiwu",conditionId=101,unlockTip="与奈纳达到最高好感度"},
    ["5"]={id=5,name="天空",icon="texture/PlayerInfo/mingpian_lan",conditionId=101,unlockTip="与夏洛达到最高好感度"},
}
--生成获取数据的方法
---@return PlayerInfoCard
function GetPlayerInfoCardData(id)
    return PlayerInfoCard_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerInfoCard : table 
---@field id number
---@field name string
---@field icon string
---@field conditionId number
---@field unlockTip string
---@field des string
