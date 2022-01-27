---@class BattleButton_Xls : table 
BattleButton_Xls =
{
    ["1"]={id=1,type=1,resPath="demo3/UI/BattleUI/SkillBtn/BattleBtnType1",initPoint=1},
    ["2"]={id=2,type=2,resPath="demo3/UI/BattleUI/SkillBtn/BattleBtnType2",initPoint=2},
    ["3"]={id=3,type=3,resPath="demo3/UI/BattleUI/SkillBtn/BattleBtnType3",initPoint=3},
    ["4"]={id=4,type=4,resPath="demo3/UI/BattleUI/SkillBtn/BattleBtnType4",initPoint=4},
}
--生成获取数据的方法
---@return BattleButton
function GetBattleButtonData(id)
    return BattleButton_Xls[tostring(id)]
end
--自动生成注释
---@class BattleButton : table 
---@field id number
---@field type number
---@field resPath string
---@field initPoint number
