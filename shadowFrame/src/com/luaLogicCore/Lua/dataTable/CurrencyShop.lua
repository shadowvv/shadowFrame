---@class CurrencyShop_Xls : table 
CurrencyShop_Xls =
{
    ["1001"]={id=1001,consumeType=12,consumeNum=50,rewardType=13,rewardNum=50,frequency=10,des="源晶钻购买感知"},
    ["1101"]={id=1101,consumeType=12,consumeNum=10,rewardType=11,rewardNum=100,frequency=1000,des="源晶钻购买源晶碎"},
    ["1201"]={id=1201,consumeType=11,consumeNum=10,rewardType=10,rewardNum=40000,frequency=50,des="源晶碎兑换贡献点数"},
    ["1301"]={id=1301,consumeType=11,consumeNum=1,rewardType=1000000,rewardNum=1,frequency=-1,des="源晶碎兑换基础抽卡卷"},
    ["1302"]={id=1302,consumeType=11,consumeNum=1,rewardType=1000001,rewardNum=1,frequency=-1,des="源晶碎兑换抽卡卷"},
}
--生成获取数据的方法
---@return CurrencyShop
function GetCurrencyShopData(id)
    return CurrencyShop_Xls[tostring(id)]
end
--自动生成注释
---@class CurrencyShop : table 
---@field id number
---@field consumeType number
---@field consumeNum number
---@field rewardType number
---@field rewardNum number
---@field frequency number
---@field des string
