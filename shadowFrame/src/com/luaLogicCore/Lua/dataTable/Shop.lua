---@class Shop_Xls : table 
Shop_Xls =
{
    ["10"]={id=10,shopName="百货",shopEnName="GOOD",shopId=1,shopOpen=101,classifyName="金币",classifyEnName="MONEY",classifyOpen=101,classifyTop=1410,classifyRefreshTpye=0,classifyRefreshTimePoint=1,classifyRefreshNum=xlsNilTable,classifyItemId=11},
    ["11"]={id=11,shopName="百货",shopEnName="GOOD",shopId=1,shopOpen=101,classifyName="升级",classifyEnName="UP",classifyOpen=101,classifyTop=1411,classifyRefreshTpye=2,classifyRefreshTimePoint=1,classifyRefreshNum=xlsNilTable,classifyItemId=11},
    ["12"]={id=12,shopName="百货",shopEnName="GOOD",shopId=1,shopOpen=101,classifyName="突破",classifyEnName="LEVEL",classifyOpen=101,classifyTop=1412,classifyRefreshTpye=2,classifyRefreshTimePoint=1,classifyRefreshNum=xlsNilTable,classifyItemId=11},
    ["20"]={id=20,shopName="律叶",shopEnName="AUTO-FOLIAGE",shopId=2,shopOpen=101,classifyName="低级",classifyEnName="COMMOM",classifyOpen=101,classifyTop=1420,classifyRefreshTpye=1,classifyRefreshTimePoint=1,classifyRefreshNum={[1]=10,[2]=10},classifyItemId=11,classifyItemNum={[1]=1,[2]=5}},
    ["21"]={id=21,shopName="律叶",shopEnName="AUTO-FOLIAGE",shopId=2,shopOpen=101,classifyName="高级",classifyEnName="SUPER",classifyOpen=101,classifyTop=1421,classifyRefreshTpye=1,classifyRefreshTimePoint=1,classifyRefreshNum={[1]=3,[2]=3},classifyItemId=11,classifyItemNum={[1]=5,[2]=10}},
    ["50"]={id=50,shopName="礼物",shopEnName="GIFT",shopId=5,shopOpen=101,classifyName="礼物",classifyEnName="GIFT",classifyOpen=101,classifyTop=1440,classifyRefreshTpye=2,classifyRefreshTimePoint=1,classifyRefreshNum=xlsNilTable,classifyItemId=11},
    ["60"]={id=60,shopName="皮肤",shopEnName="CLOTHING",shopId=6,shopOpen=101,classifyName="皮肤",classifyEnName="CLOTHING",classifyOpen=101,classifyTop=1450,classifyRefreshTpye=0,classifyRefreshTimePoint=1,classifyRefreshNum=xlsNilTable,classifyItemId=11},
}
--生成获取数据的方法
---@return Shop
function GetShopData(id)
    return Shop_Xls[tostring(id)]
end
--自动生成注释
---@class Shop : table 
---@field id number
---@field shopName string
---@field shopEnName string
---@field shopId number
---@field shopOpen number
---@field classifyName string
---@field classifyEnName string
---@field classifyOpen number
---@field classifyTop number
---@field classifyRefreshTpye number
---@field classifyRefreshTimePoint number
---@field classifyRefreshNum table
---@field classifyItemId number
---@field classifyItemNum table
