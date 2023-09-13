local default = {display=0,displayGoods=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CardBoxDisplay_Xls : table 
CardBoxDisplay_Xls =
{
    ["1"]=setmetatable({display=1,displayGoods={[1]=1,[2]=2,[3]=3,[4]=4}},mt),
    ["2"]=setmetatable({display=2,displayGoods={[1]=11,[2]=12,[3]=13,[4]=14}},mt),
    ["3"]=setmetatable({display=3,displayGoods={[1]=101,[2]=102,[3]=103,[4]=104}},mt),
    ["4"]=setmetatable({display=4,displayGoods={[1]=111,[2]=112,[3]=113,[4]=114}},mt),
    ["5"]=setmetatable({display=5,displayGoods={[1]=201,[2]=200}},mt),
    ["6"]=setmetatable({display=6,displayGoods={[1]=202}},mt),
    ["11"]=setmetatable({display=11,displayGoods={[1]=1002,[2]=1001}},mt),
    ["12"]=setmetatable({display=12,displayGoods={[1]=1003}},mt),
    ["13"]=setmetatable({display=13,displayGoods={[1]=1005,[2]=1004}},mt),
    ["14"]=setmetatable({display=14,displayGoods={[1]=1006}},mt),
    ["15"]=setmetatable({display=15,displayGoods={[1]=1008,[2]=1007}},mt),
    ["16"]=setmetatable({display=16,displayGoods={[1]=1009}},mt),
}
--生成获取数据的方法
---@return CardBoxDisplay
function GetCardBoxDisplayData(id)
    return CardBoxDisplay_Xls[tostring(id)]
end
--自动生成注释
---@class CardBoxDisplay : table 
---@field display number
---@field displayGoods table
