local default = {id=0,shopName="",shopEnName="",shopId=0,shopType=0,showGroup=0,redPointId=0,openType=0,shopOpen=0,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="",classifyEnName="",classifyShow=0,classifyOpen=0,classifyTop=0,classifyRefreshTpye=0,classifyRefreshTimePoint=0,classifyRefreshNum=xlsNilTable,classifyItemId=0,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Shop_Xls : table 
Shop_Xls =
{
    ["70"]=setmetatable({id=70,shopName="圣钥兑换",shopEnName="SEED",shopId=7,shopType=1,showGroup=1,redPointId=31,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="圣钥之壳",classifyEnName="SEED",classifyShow=101,classifyOpen=101,classifyTop=1422,classifyRefreshTpye=1,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
    ["71"]=setmetatable({id=71,shopName="圣钥兑换",shopEnName="SEED",shopId=7,shopType=1,showGroup=1,redPointId=31,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="圣钥之落",classifyEnName="GAINS",classifyShow=101,classifyOpen=101,classifyTop=1422,classifyRefreshTpye=3,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
    ["91"]=setmetatable({id=91,shopName="共鸣圣钥",shopEnName="RESONANCE",shopId=9,shopType=1,showGroup=1,redPointId=31,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="共鸣圣钥",classifyEnName="RESONANCE",classifyShow=101,classifyOpen=101,classifyTop=1425,classifyRefreshTpye=0,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
    ["191"]=setmetatable({id=191,shopName="符灵货栈",shopEnName="FULING",shopId=18,shopType=1,showGroup=1,redPointId=31,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="符灵货栈",classifyEnName="FULING",classifyShow=101,classifyOpen=101,classifyTop=3900,classifyRefreshTpye=0,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
    ["201"]=setmetatable({id=201,shopName="异空战线",shopEnName="EXOTICBATTLELINE",shopId=20,shopType=1,showGroup=1,redPointId=31,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="战场兑换",classifyEnName="EXOTIC",classifyShow=101,classifyOpen=101,classifyTop=3700,classifyRefreshTpye=1,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
    ["220"]=setmetatable({id=220,shopName="前线补给",shopEnName="SUPPLY",shopId=22,shopType=1,showGroup=1,redPointId=31,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="前线补给",classifyEnName="SUPPLY",classifyShow=101,classifyOpen=101,classifyTop=3801,classifyRefreshTpye=1,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
    ["300"]=setmetatable({id=300,shopName="旅梦商店",shopEnName="EXCHANGE",shopId=30,shopType=2,showGroup=2,redPointId=0,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="旅梦商店",classifyEnName="EXCHANGE",classifyShow=101,classifyOpen=101,classifyTop=6752,classifyRefreshTpye=0,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro={[1]="classifyName"}},mt),
    ["301"]=setmetatable({id=301,shopName="旅梦商店",shopEnName="EXCHANGE",shopId=31,shopType=2,showGroup=2,redPointId=0,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="旅梦商店",classifyEnName="EXCHANGE",classifyShow=101,classifyOpen=101,classifyTop=6754,classifyRefreshTpye=0,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro={[1]="classifyName"}},mt),
    ["600"]=setmetatable({id=600,shopName="迷宫商店",shopEnName="SHOP",shopId=60,shopType=1,showGroup=4,redPointId=0,openType=0,shopOpen=101,field=xlsNilTable,fieldOpen=xlsNilTable,classifyName="迷宫商店",classifyEnName="SHOP",classifyShow=101,classifyOpen=101,classifyTop=4001,classifyRefreshTpye=0,classifyRefreshTimePoint=2,classifyRefreshNum=xlsNilTable,classifyItemId=11,classifyItemNum=xlsNilTable,textPro=xlsNilTable,iosWhite=1},mt),
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
---@field shopType number
---@field showGroup number
---@field redPointId number
---@field openType number
---@field shopOpen number
---@field field table
---@field fieldOpen table
---@field classifyName string
---@field classifyEnName string
---@field classifyShow number
---@field classifyOpen number
---@field classifyTop number
---@field classifyRefreshTpye number
---@field classifyRefreshTimePoint number
---@field classifyRefreshNum table
---@field classifyItemId number
---@field classifyItemNum table
---@field textPro table
---@field iosWhite number
