---@class MonsterBaseAttribute_Xls : table 
MonsterBaseAttribute_Xls =
{
    ["1"]={monsterBaseAttributeId=1,beiZhu="demo 杂鱼1",level=0,atk=60.96,hp=36.0,def=15.0,crit=0.0,en=0.0},
    ["2"]={monsterBaseAttributeId=2,beiZhu="demo 杂鱼2",level=0,atk=60.96,hp=113.0,def=15.0,crit=0.0,en=0.0},
    ["3"]={monsterBaseAttributeId=3,beiZhu="demo 中型1",level=0,atk=81.28,hp=1115.0,def=20.0,crit=0.0,en=0.0},
    ["4"]={monsterBaseAttributeId=4,beiZhu="demo 中型2",level=0,atk=81.28,hp=1671.0,def=20.0,crit=0.0,en=0.0},
    ["5"]={monsterBaseAttributeId=5,beiZhu="demo精英2",level=0,atk=121.92,hp=5200.0,def=30.0,crit=0.0,en=0.0},
    ["6"]={monsterBaseAttributeId=6,beiZhu="demoBOSS1",level=0,atk=121.92,hp=8212.0,def=30.0,crit=0.0,en=0.0},
    ["7"]={monsterBaseAttributeId=7,beiZhu="demo 杂鱼3",level=0,atk=81.28,hp=7.0,def=15.0,crit=0.0,en=0.0},
    ["999999"]={monsterBaseAttributeId=999999,beiZhu="测试数据",level=0,atk=10.0,hp=1000000.0,def=10.0,crit=10.0,en=10.0},
}
--生成获取数据的方法
---@return MonsterBaseAttribute
function GetMonsterBaseAttributeData(id)
    return MonsterBaseAttribute_Xls[tostring(id)]
end
--自动生成注释
---@class MonsterBaseAttribute : table 
---@field monsterBaseAttributeId number
---@field beiZhu string
---@field level number
---@field atk number
---@field hp number
---@field def number
---@field crit number
---@field en number
