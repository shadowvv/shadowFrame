local default = {displayGoods=0,text="",probability=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CardBoxDisplayGoods_Xls : table 
CardBoxDisplayGoods_Xls =
{
    ["1"]=setmetatable({displayGoods=1,text="5星斯露德概率",probability="1.20%"},mt),
    ["2"]=setmetatable({displayGoods=2,text="4星斯露德概率",probability="3.00%"},mt),
    ["3"]=setmetatable({displayGoods=3,text="4星武装概率",probability="3.00%"},mt),
    ["4"]=setmetatable({displayGoods=4,text="2、3星武装概率",probability="92.80%"},mt),
    ["11"]=setmetatable({displayGoods=11,text="5星斯露德概率",probability="2.00%"},mt),
    ["12"]=setmetatable({displayGoods=12,text="4星斯露德概率",probability="7.50%"},mt),
    ["13"]=setmetatable({displayGoods=13,text="4星武装概率",probability="7.50%"},mt),
    ["14"]=setmetatable({displayGoods=14,text="2、3星武装概率",probability="83.00%"},mt),
    ["101"]=setmetatable({displayGoods=101,text="5星武装概率",probability="1.50%"},mt),
    ["102"]=setmetatable({displayGoods=102,text="4星斯露德概率",probability="4.50%"},mt),
    ["103"]=setmetatable({displayGoods=103,text="4星武装概率",probability="4.50%"},mt),
    ["104"]=setmetatable({displayGoods=104,text="2、3星武装概率",probability="89.50%"},mt),
    ["111"]=setmetatable({displayGoods=111,text="5星武装概率",probability="2.50%"},mt),
    ["112"]=setmetatable({displayGoods=112,text="4星斯露德概率",probability="9.00%"},mt),
    ["113"]=setmetatable({displayGoods=113,text="4星武装概率",probability="9.00%"},mt),
    ["114"]=setmetatable({displayGoods=114,text="2、3星武装概率",probability="79.50%"},mt),
    ["200"]=setmetatable({displayGoods=200,text="3星物品基础出率：94.05%"},mt),
    ["201"]=setmetatable({displayGoods=201,text="4星物品基础出率：5.10%（含保底出率13.00%）"},mt),
    ["202"]=setmetatable({displayGoods=202,text="5星物品基础出率：0.85%（含保底出率1.80%）"},mt),
    ["1001"]=setmetatable({displayGoods=1001,text="3星物品基础出率：85.85%"},mt),
    ["1002"]=setmetatable({displayGoods=1002,text="4星物品基础出率：13.30%（含保底出率18.00%）"},mt),
    ["1003"]=setmetatable({displayGoods=1003,text="5星物品基础出率：0.85%"},mt),
    ["1004"]=setmetatable({displayGoods=1004,text="3星物品基础出率：85.85%"},mt),
    ["1005"]=setmetatable({displayGoods=1005,text="4星物品基础出率：13.30%（含保底出率18.00%）"},mt),
    ["1006"]=setmetatable({displayGoods=1006,text="5星物品基础出率：0.85%（含保底出率1.80%）"},mt),
    ["1007"]=setmetatable({displayGoods=1007,text="3星物品基础出率：85.70%"},mt),
    ["1008"]=setmetatable({displayGoods=1008,text="4星物品基础出率：13.30%（含保底出率18.00%）"},mt),
    ["1009"]=setmetatable({displayGoods=1009,text="5星物品基础出率：1.00%（含保底出率2.50%）"},mt),
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
