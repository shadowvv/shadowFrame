---@class BattlePoint_Xls : table 
BattlePoint_Xls =
{
    ["1"]={id=1,name="Point1",scale=1.0,position={[1]=-150.0,[2]=98.0}},
    ["2"]={id=2,name="Point2",scale=1.0,position={[1]=-213.0,[2]=240.0}},
    ["3"]={id=3,name="Point3",scale=1.0,position={[1]=-81.0,[2]=240.0}},
    ["4"]={id=4,name="Point4",scale=1.0,position={[1]=-332.0,[2]=98.0}},
}
--生成获取数据的方法
---@return BattlePoint
function GetBattlePointData(id)
    return BattlePoint_Xls[tostring(id)]
end
--自动生成注释
---@class BattlePoint : table 
---@field id number
---@field name string
---@field scale number
---@field position table
