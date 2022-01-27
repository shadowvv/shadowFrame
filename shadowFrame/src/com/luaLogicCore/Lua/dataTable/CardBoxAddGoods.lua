---@class CardBoxAddGoods_Xls : table 
CardBoxAddGoods_Xls =
{
    ["11"]={id=11,cardBoxType=1,grate=1,firstTime=1,itemId=1020001,itemNumber=60},
    ["12"]={id=12,cardBoxType=1,grate=2,firstTime=1,itemId=1020001,itemNumber=60},
    ["13"]={id=13,cardBoxType=1,grate=3,firstTime=1,itemId=1020001,itemNumber=60},
    ["14"]={id=14,cardBoxType=1,grate=4,firstTime=0,itemId=1020004,itemNumber=3},
    ["15"]={id=15,cardBoxType=1,grate=5,firstTime=0,itemId=1020004,itemNumber=3},
    ["21"]={id=21,cardBoxType=2,grate=1,firstTime=1,itemId=1020001,itemNumber=50},
    ["22"]={id=22,cardBoxType=2,grate=2,firstTime=1,itemId=1020001,itemNumber=50},
    ["23"]={id=23,cardBoxType=2,grate=3,firstTime=1,itemId=1020001,itemNumber=50},
    ["24"]={id=24,cardBoxType=2,grate=4,firstTime=0,itemId=1020004,itemNumber=2},
    ["25"]={id=25,cardBoxType=2,grate=5,firstTime=0,itemId=1020004,itemNumber=2},
}
--生成获取数据的方法
---@return CardBoxAddGoods
function GetCardBoxAddGoodsData(id)
    return CardBoxAddGoods_Xls[tostring(id)]
end
--自动生成注释
---@class CardBoxAddGoods : table 
---@field id number
---@field cardBoxType number
---@field grate number
---@field firstTime number
---@field itemId number
---@field itemNumber number
