---@class CardBoxDisplay_Xls : table 
CardBoxDisplay_Xls =
{
    ["1"]={display=1,beiZhu="概率池1正常",displayGoods={[1]=1,[2]=2,[3]=3,[4]=4,[5]=5}},
    ["2"]={display=2,beiZhu="概率池1综合",displayGoods={[1]=11,[2]=12,[3]=13,[4]=14,[5]=15}},
}
--生成获取数据的方法
---@return CardBoxDisplay
function GetCardBoxDisplayData(id)
    return CardBoxDisplay_Xls[tostring(id)]
end
--自动生成注释
---@class CardBoxDisplay : table 
---@field display number
---@field beiZhu string
---@field displayGoods table
