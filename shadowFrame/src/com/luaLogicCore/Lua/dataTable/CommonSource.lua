---@class CommonSource_Xls : table 
CommonSource_Xls =
{
    ["1001"]={id=1001,functionID=31,moduleName="作战行动-主线剧情",indexesSheet="Mainlevel",wordName={[1]="FirstPassReward",[2]="PassDropID"},param=1,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="主线关卡-【{0}{1}-{2}{3}】"},
    ["1002"]={id=1002,functionID=33,moduleName="作战行动-个人剧情",indexesSheet="Mainlevel",wordName={[1]="FirstPassReward",[2]="PassDropID"},param=2,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="个人关卡-【{0}{1}-{2}{3}】"},
    ["1003"]={id=1003,functionID=34,moduleName="作战行动-训练",indexesSheet="Mainlevel",wordName={[1]="FirstPassReward",[2]="PassDropID"},param=3,hideWhenLock=0,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="训练-【{0}-{1}{2}】"},
    ["1005"]={id=1005,functionID=11,moduleName="解析",indexesSheet="swear_type",wordName={[1]="DropID"},param=0,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="解析"},
    ["1006"]={id=1006,functionID=4,moduleName="任务",indexesSheet="ActivityPointReward",wordName={[1]="FixedRewardID"},param=0,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="每日任务"},
    ["1007"]={id=1007,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=10,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-金 币"},
    ["1008"]={id=1008,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=11,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-升 级"},
    ["1009"]={id=1009,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=12,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-突 破"},
    ["1010"]={id=1010,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=13,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-碎 片"},
    ["1011"]={id=1011,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=20,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-低 级"},
    ["1012"]={id=1012,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=21,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-高 级"},
    ["1013"]={id=1013,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=30,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-启 示"},
    ["1014"]={id=1014,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=40,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-雷达图"},
    ["1015"]={id=1015,functionID=9,moduleName="商城",indexesSheet="Shopgood",wordName={[1]="ItemId"},param=50,hideWhenLock=1,noNeedSearch=0,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-礼 物"},
    ["5001"]={id=5001,functionID=31,moduleName="测试模块",indexesSheet="",wordName=xlsNilTable,param=101101,hideWhenLock=0,noNeedSearch=1,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="主线关卡 1-1"},
    ["5002"]={id=5002,functionID=9,moduleName="测试模块",indexesSheet="",wordName=xlsNilTable,param=101102,hideWhenLock=1,noNeedSearch=1,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="商城-突 破"},
    ["5003"]={id=5003,functionID=31,moduleName="测试模块",indexesSheet="",wordName=xlsNilTable,param=101103,hideWhenLock=0,noNeedSearch=1,hideItems1=0,hideItems2=0,hideItems3=0,textDisplay="主线关卡 1-3"},
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
