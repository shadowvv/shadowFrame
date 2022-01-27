---@class CardBoxDisplayGoods_Xls : table 
CardBoxDisplayGoods_Xls =
{
    ["1"]={displayGoods=1,text="5星斯露德概率",probability="1%"},
    ["2"]={displayGoods=2,text="4星斯露德概率",probability="9%"},
    ["3"]={displayGoods=3,text="5星律叶概率",probability="2%"},
    ["4"]={displayGoods=4,text="4星律叶概率",probability="15%"},
    ["5"]={displayGoods=5,text="3星律叶概率",probability="23%"},
    ["6"]={displayGoods=6,text="碎片概率",probability="35%"},
    ["7"]={displayGoods=7,text="道具概率",probability="60%"},
    ["11"]={displayGoods=11,text="5星斯露德概率",probability="2%"},
    ["12"]={displayGoods=12,text="4星斯露德概率",probability="15%"},
    ["13"]={displayGoods=13,text="5星律叶概率",probability="3%"},
    ["14"]={displayGoods=14,text="4星律叶概率",probability="21%"},
    ["15"]={displayGoods=15,text="3星律叶概率",probability="23%"},
    ["16"]={displayGoods=16,text="碎片概率",probability="35%"},
    ["17"]={displayGoods=17,text="道具概率",probability="60%"},
}
--生成获取数据的方法
---@return CardBoxDisplayGoods
function GetCardBoxDisplayGoodsData(id)
    return CardBoxDisplayGoods_Xls[tostring(id)]
end
--自动生成注释
---@class CardBoxDisplayGoods : table 
---@field displayGoods number
---@field text string
---@field probability string
