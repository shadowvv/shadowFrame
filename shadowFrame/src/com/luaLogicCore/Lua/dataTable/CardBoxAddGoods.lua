local default = {id=0,cardBoxType=0,grate=0,firstTime=0,itemId=0,itemNumber=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CardBoxAddGoods_Xls : table 
CardBoxAddGoods_Xls =
{
    ["11"]=setmetatable({id=11,cardBoxType=1,grate=1,firstTime=0,itemId=14,itemNumber=10},mt),
    ["12"]=setmetatable({id=12,cardBoxType=1,grate=2,firstTime=0,itemId=14,itemNumber=10},mt),
    ["13"]=setmetatable({id=13,cardBoxType=1,grate=3,firstTime=0,itemId=14,itemNumber=10},mt),
    ["14"]=setmetatable({id=14,cardBoxType=1,grate=4,firstTime=0,itemId=15,itemNumber=3},mt),
    ["15"]=setmetatable({id=15,cardBoxType=1,grate=5,firstTime=0,itemId=15,itemNumber=10},mt),
    ["21"]=setmetatable({id=21,cardBoxType=2,grate=1,firstTime=0,itemId=14,itemNumber=10},mt),
    ["22"]=setmetatable({id=22,cardBoxType=2,grate=2,firstTime=0,itemId=14,itemNumber=10},mt),
    ["23"]=setmetatable({id=23,cardBoxType=2,grate=3,firstTime=0,itemId=14,itemNumber=10},mt),
    ["24"]=setmetatable({id=24,cardBoxType=2,grate=4,firstTime=0,itemId=15,itemNumber=3},mt),
    ["25"]=setmetatable({id=25,cardBoxType=2,grate=5,firstTime=0,itemId=15,itemNumber=10},mt),
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
