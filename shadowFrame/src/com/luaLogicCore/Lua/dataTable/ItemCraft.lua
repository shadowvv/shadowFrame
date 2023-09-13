local default = {id=0,recipeType=0,productId=0,productNum=0,conditionId=0,coinItem=0,coinNum=0,materialItem=xlsNilTable,materialItemCount=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ItemCraft_Xls : table 
ItemCraft_Xls =
{
    ["1"]=setmetatable({id=1,recipeType=1,productId=1080032,productNum=1,conditionId=7410202,coinItem=10,coinNum=200,materialItem={[1]=1080031},materialItemCount={[1]=3}},mt),
    ["2"]=setmetatable({id=2,recipeType=1,productId=1080033,productNum=1,conditionId=7410203,coinItem=10,coinNum=200,materialItem={[1]=1080032},materialItemCount={[1]=3}},mt),
    ["3"]=setmetatable({id=3,recipeType=1,productId=1080034,productNum=1,conditionId=7410204,coinItem=10,coinNum=200,materialItem={[1]=1080033},materialItemCount={[1]=3}},mt),
    ["4"]=setmetatable({id=4,recipeType=1,productId=1080022,productNum=1,conditionId=7410102,coinItem=10,coinNum=200,materialItem={[1]=1080021},materialItemCount={[1]=3}},mt),
    ["5"]=setmetatable({id=5,recipeType=1,productId=1080023,productNum=1,conditionId=7410103,coinItem=10,coinNum=200,materialItem={[1]=1080022},materialItemCount={[1]=3}},mt),
    ["6"]=setmetatable({id=6,recipeType=1,productId=1080024,productNum=1,conditionId=7410104,coinItem=10,coinNum=200,materialItem={[1]=1080023},materialItemCount={[1]=3}},mt),
    ["7"]=setmetatable({id=7,recipeType=1,productId=1080052,productNum=1,conditionId=7410302,coinItem=10,coinNum=200,materialItem={[1]=1080051},materialItemCount={[1]=3}},mt),
    ["8"]=setmetatable({id=8,recipeType=1,productId=1080053,productNum=1,conditionId=7410303,coinItem=10,coinNum=200,materialItem={[1]=1080052},materialItemCount={[1]=3}},mt),
    ["9"]=setmetatable({id=9,recipeType=1,productId=1080054,productNum=1,conditionId=7410304,coinItem=10,coinNum=200,materialItem={[1]=1080053},materialItemCount={[1]=3}},mt),
    ["10"]=setmetatable({id=10,recipeType=1,productId=1080042,productNum=1,conditionId=7410402,coinItem=10,coinNum=200,materialItem={[1]=1080041},materialItemCount={[1]=3}},mt),
    ["11"]=setmetatable({id=11,recipeType=1,productId=1080043,productNum=1,conditionId=7410403,coinItem=10,coinNum=200,materialItem={[1]=1080042},materialItemCount={[1]=3}},mt),
    ["12"]=setmetatable({id=12,recipeType=1,productId=1080044,productNum=1,conditionId=7410404,coinItem=10,coinNum=200,materialItem={[1]=1080043},materialItemCount={[1]=3}},mt),
    ["13"]=setmetatable({id=13,recipeType=2,productId=1030012,productNum=1,conditionId=7400102,coinItem=10,coinNum=200,materialItem={[1]=1030011},materialItemCount={[1]=3}},mt),
    ["14"]=setmetatable({id=14,recipeType=2,productId=1030013,productNum=1,conditionId=7400103,coinItem=10,coinNum=200,materialItem={[1]=1030012},materialItemCount={[1]=3}},mt),
    ["15"]=setmetatable({id=15,recipeType=2,productId=1030014,productNum=1,conditionId=7400104,coinItem=10,coinNum=200,materialItem={[1]=1030013},materialItemCount={[1]=3}},mt),
}
--生成获取数据的方法
---@return ItemCraft
function GetItemCraftData(id)
    return ItemCraft_Xls[tostring(id)]
end
--自动生成注释
---@class ItemCraft : table 
---@field id number
---@field recipeType number
---@field productId number
---@field productNum number
---@field conditionId number
---@field coinItem number
---@field coinNum number
---@field materialItem table
---@field materialItemCount table
