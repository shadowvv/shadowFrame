---@class AreaColliderAction_Xls : table 
AreaColliderAction_Xls =
{
    ["3011"]={id=3011,type=1,back="增加buff",param={[1]="1004"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["3031"]={id=3031,type=1,back="增加buff",param={[1]="200301300"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["3032"]={id=3032,type=1,back="增加buff",param={[1]="200301301"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["3033"]={id=3033,type=4,back="增加元素量",param={[1]="501"},exit=0,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.5},
    ["1000"]={id=1000,type=1,back="淬火-瘟疫云",param={[1]="101"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["1700"]={id=1700,type=1,back="风雷-雷云（风）",param={[1]="171"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["1800"]={id=1800,type=1,back="风雷-雷云（雷）",param={[1]="181"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["1900"]={id=1900,type=1,back="冰风反应",param={[1]="191"},exit=1,loop=0,loopTime=0.0,loopTimes=0,firstDelay=0.0},
    ["10001"]={id=10001,type=4,back="添加元素量_风",param={[1]="401"},exit=0,loop=1,loopTime=1.0,loopTimes=100,firstDelay=0.0},
    ["10002"]={id=10002,type=4,back="添加元素量_火",param={[1]="201"},exit=0,loop=1,loopTime=1.0,loopTimes=100,firstDelay=0.0},
    ["10003"]={id=10003,type=4,back="添加元素量_雷",param={[1]="301"},exit=0,loop=1,loopTime=1.0,loopTimes=100,firstDelay=0.0},
    ["10004"]={id=10004,type=4,back="添加元素量_冰",param={[1]="501"},exit=0,loop=1,loopTime=1.0,loopTimes=100,firstDelay=0.0},
    ["10005"]={id=10005,type=4,back="添加元素量_原能",param={[1]="601"},exit=0,loop=1,loopTime=1.0,loopTimes=100,firstDelay=0.0},
}
--生成获取数据的方法
---@return AreaColliderAction
function GetAreaColliderActionData(id)
    return AreaColliderAction_Xls[tostring(id)]
end
--自动生成注释
---@class AreaColliderAction : table 
---@field id number
---@field type number
---@field back string
---@field param table
---@field exit number
---@field loop number
---@field loopTime number
---@field loopTimes number
---@field firstDelay number
