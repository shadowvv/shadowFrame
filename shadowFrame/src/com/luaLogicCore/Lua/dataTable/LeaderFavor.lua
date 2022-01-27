---@class LeaderFavor_Xls : table 
LeaderFavor_Xls =
{
    ["1"]={id=1,favorlv=1,favorName="陌生",favorExp=100},
    ["2"]={id=2,favorlv=2,favorName="交识",favorExp=200},
    ["3"]={id=3,favorlv=3,favorName="相知",favorExp=420},
    ["4"]={id=4,favorlv=4,favorName="友好",favorExp=650},
    ["5"]={id=5,favorlv=5,favorName="熟识",favorExp=900},
    ["6"]={id=6,favorlv=6,favorName="亲密",favorExp=1200},
    ["7"]={id=7,favorlv=7,favorName="信赖",favorExp=1600},
    ["8"]={id=8,favorlv=8,favorName="敬慕",favorExp=2400},
}
--生成获取数据的方法
---@return LeaderFavor
function GetLeaderFavorData(id)
    return LeaderFavor_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderFavor : table 
---@field id number
---@field favorlv number
---@field favorName string
---@field favorExp number
