local default = {optionalRewardId=0,rewardGoodId=xlsNilTable,num=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class OptionalPackageReward_Xls : table 
OptionalPackageReward_Xls =
{
    ["1"]=setmetatable({optionalRewardId=1,rewardGoodId={[1]=1030011,[2]=1030012,[3]=1030013,[4]=1030014,[5]=3001001},num={[1]=1,[2]=1,[3]=1,[4]=1,[5]=10}},mt),
    ["2"]=setmetatable({optionalRewardId=2,rewardGoodId={[1]=2001001,[2]=2008001,[3]=2024001},num={[1]=1,[2]=1,[3]=1}},mt),
    ["1001"]=setmetatable({optionalRewardId=1001,rewardGoodId={[1]=5051030,[2]=5054030,[3]=5055030,[4]=5053030},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051001"]=setmetatable({optionalRewardId=1051001,rewardGoodId={[1]=1080021,[2]=1080031,[3]=1080041,[4]=1080051},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051002"]=setmetatable({optionalRewardId=1051002,rewardGoodId={[1]=1080022,[2]=1080032,[3]=1080042,[4]=1080052},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051003"]=setmetatable({optionalRewardId=1051003,rewardGoodId={[1]=1080023,[2]=1080033,[3]=1080043,[4]=1080053},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051004"]=setmetatable({optionalRewardId=1051004,rewardGoodId={[1]=1080024,[2]=1080034,[3]=1080044,[4]=1080054},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051020"]=setmetatable({optionalRewardId=1051020,rewardGoodId={[1]=3004001,[2]=3007001,[3]=3011001,[4]=3014001,[5]=3016001,[6]=3026001,[7]=3008001,[8]=3009001},num={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]=1,[7]=1,[8]=1}},mt),
    ["1051022"]=setmetatable({optionalRewardId=1051022,rewardGoodId={[1]=85000000,[2]=85000001,[3]=85000002,[4]=85000003,[5]=85000004,[6]=85000005},num={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]=1}},mt),
    ["1051023"]=setmetatable({optionalRewardId=1051023,rewardGoodId={[1]=85000006,[2]=85000007,[3]=85000008,[4]=85000009,[5]=85000010,[6]=85000011},num={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]=1}},mt),
    ["1051024"]=setmetatable({optionalRewardId=1051024,rewardGoodId={[1]=85000012,[2]=85000013,[3]=85000014,[4]=85000015},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051025"]=setmetatable({optionalRewardId=1051025,rewardGoodId={[1]=85000016,[2]=85000017,[3]=85000018,[4]=85000019},num={[1]=1,[2]=1,[3]=1,[4]=1}},mt),
    ["1051029"]=setmetatable({optionalRewardId=1051029,rewardGoodId={[1]=2010001,[2]=2006001,[3]=2012001,[4]=2013001,[5]=2015001,[6]=2017001},num={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]=1}},mt),
    ["1051030"]=setmetatable({optionalRewardId=1051030,rewardGoodId={[1]=5041010,[2]=5043020,[3]=5041020,[4]=5045020,[5]=5044020,[6]=5141010,[7]=5041050,[8]=5044050,[9]=5043050,[10]=5041070,[11]=5041060,[12]=5043060,[13]=5045060,[14]=5044060,[15]=5041040,[16]=5043040,[17]=5044040,[18]=5045040,[19]=5041090,[20]=5041080,[21]=5041081,[22]=5041082,[23]=5041083,[24]=5045080},num={[1]=1,[2]=1,[3]=1,[4]=1,[5]=1,[6]=1,[7]=1,[8]=1,[9]=1,[10]=1,[11]=1,[12]=1,[13]=1,[14]=1,[15]=1,[16]=1,[17]=1,[18]=1,[19]=1,[20]=1,[21]=1,[22]=1,[23]=1,[24]=1}},mt),
}
--生成获取数据的方法
---@return OptionalPackageReward
function GetOptionalPackageRewardData(id)
    return OptionalPackageReward_Xls[tostring(id)]
end
--自动生成注释
---@class OptionalPackageReward : table 
---@field optionalRewardId number
---@field rewardGoodId table
---@field num table
