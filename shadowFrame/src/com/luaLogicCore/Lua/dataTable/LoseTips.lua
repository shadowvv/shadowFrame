---@class LoseTips_Xls : table 
LoseTips_Xls =
{
    ["1"]={id=1,type=1,pram="1",weight=10,des="当异生体聚集时，是使用具现技能的良好时机"},
    ["2"]={id=2,type=1,pram="1",weight=10,des="当弹药耗尽时，可以使用高速冲刺离开作战区域，等待恢复"},
    ["3"]={id=3,type=1,pram="1",weight=10,des="法尼娅面对雷属性异生体时，无法造成有效的伤害，这时候请灵活使用奈纳具现的蓄力攻击"},
    ["4"]={id=4,type=1,pram="1",weight=10,des="大部分异生体的攻击，都可以通过移动、闪避、高速冲刺来躲避"},
    ["5"]={id=5,type=1,pram="1",weight=10,des="留意战场中的预警，这一般是异生体高威胁攻击的前兆"},
    ["6"]={id=6,type=1,pram="1",weight=10,des="灵活的使用元素相变，是获胜的关键"},
}
--生成获取数据的方法
---@return LoseTips
function GetLoseTipsData(id)
    return LoseTips_Xls[tostring(id)]
end
--自动生成注释
---@class LoseTips : table 
---@field id number
---@field type number
---@field pram string
---@field weight number
---@field des string
