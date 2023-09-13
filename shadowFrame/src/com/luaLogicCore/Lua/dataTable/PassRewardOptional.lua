local default = {id=0,name="",quality=0,description="",descriptionCopywriting="",iconNameB="",iconName="",smallIconName="",rewardId=xlsNilTable,rewardNum=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PassRewardOptional_Xls : table 
PassRewardOptional_Xls =
{
    ["1050050"]=setmetatable({id=1050050,name="青空之匣",quality=5,description="使用后可从提供武装中任选一个获得。",descriptionCopywriting="装着武装的神秘匣子，不过只能取出一件，稍微让人感到一些遗憾。",iconNameB="item_1050050_l",iconName="item_1050050_m",smallIconName="item_1050050_s",rewardId={[1]=5051030,[2]=5054030,[3]=5055030,[4]=5053030},rewardNum={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["2"]=setmetatable({id=2,name="测试",quality=4,description="功能描述",descriptionCopywriting="世界观包装描述",iconNameB="item_1050051_l",iconName="item_1050051_m",smallIconName="item_1050051_s",rewardId={[1]=1000001,[2]=1020003,[3]=1090003},rewardNum={[1]=10,[2]=1,[3]=2}},mt),
}
--生成获取数据的方法
---@return PassRewardOptional
function GetPassRewardOptionalData(id)
    return PassRewardOptional_Xls[tostring(id)]
end
--自动生成注释
---@class PassRewardOptional : table 
---@field id number
---@field name string
---@field quality number
---@field description string
---@field descriptionCopywriting string
---@field iconNameB string
---@field iconName string
---@field smallIconName string
---@field rewardId table
---@field rewardNum table
