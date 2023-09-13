local default = {id=0,functionID=0,moduleName="",indexesSheet="",wordName=xlsNilTable,param=0,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonSource_Xls : table 
CommonSource_Xls =
{
    ["1001"]=setmetatable({id=1001,functionID=31,moduleName="作战行动-主线剧情",indexesSheet="Mainlevel",wordName={[1]="FirstPassReward",[2]="PassDropID"},param=1,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="主线关卡-【{0}{1}-{2}{3}】"},mt),
    ["1002"]=setmetatable({id=1002,functionID=33,moduleName="作战行动-个人剧情",indexesSheet="Mainlevel",wordName={[1]="FirstPassReward",[2]="PassDropID"},param=2,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="个人关卡-【{0}{1}-{2}{3}】"},mt),
    ["1003"]=setmetatable({id=1003,functionID=34,moduleName="作战行动-训练",indexesSheet="Mainlevel",wordName={[1]="FirstPassReward",[2]="PassDropID"},param=3,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="训练-【{0}-{1}{2}】"},mt),
    ["1005"]=setmetatable({id=1005,functionID=11,moduleName="解析",indexesSheet="swear_type",wordName={[1]="DropID"},param=0,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="解析"},mt),
    ["1006"]=setmetatable({id=1006,functionID=4,moduleName="任务",indexesSheet="ActivityPointReward",wordName={[1]="FixedRewardID"},param=0,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="每日任务"},mt),
    ["1007"]=setmetatable({id=1007,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=10,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-金 币"},mt),
    ["1008"]=setmetatable({id=1008,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=11,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-升 级"},mt),
    ["1009"]=setmetatable({id=1009,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=12,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-突 破"},mt),
    ["1010"]=setmetatable({id=1010,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=13,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-碎 片"},mt),
    ["1011"]=setmetatable({id=1011,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=20,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-低 级"},mt),
    ["1012"]=setmetatable({id=1012,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=21,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-高 级"},mt),
    ["1013"]=setmetatable({id=1013,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=30,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-启 示"},mt),
    ["1014"]=setmetatable({id=1014,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=40,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-雷达图"},mt),
    ["1015"]=setmetatable({id=1015,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=50,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-礼 物"},mt),
    ["5001"]=setmetatable({id=5001,functionID=31,moduleName="测试模块",indexesSheet="",wordName=xlsNilTable,param=101101,hideWhenLock=0,noNeedSearch=1,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="主线关卡 1-1"},mt),
    ["5002"]=setmetatable({id=5002,functionID=9,moduleName="测试模块",indexesSheet="",wordName=xlsNilTable,param=101102,hideWhenLock=1,noNeedSearch=1,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-突 破"},mt),
    ["5003"]=setmetatable({id=5003,functionID=31,moduleName="测试模块",indexesSheet="",wordName=xlsNilTable,param=101103,hideWhenLock=0,noNeedSearch=1,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="主线关卡 1-3"},mt),
}
--生成获取数据的方法
---@return CommonSource
function GetCommonSourceData(id)
    return CommonSource_Xls[tostring(id)]
end
--自动生成注释
---@class CommonSource : table 
---@field id number
---@field functionID number
---@field moduleName string
---@field indexesSheet string
---@field wordName table
---@field param number
---@field hideWhenLock number
---@field noNeedSearch number
---@field hideItems1 number
---@field hideItems2 number
---@field hideItems3 number
---@field textDisplay string
