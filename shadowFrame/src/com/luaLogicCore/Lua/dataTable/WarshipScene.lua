local default = {id=0,groupId=0,sceneNormal="",sceneDaytime="",sceneDusk="",sceneNight="",birthPosition=xlsNilTable,rotation=0,relateTime=0,iosDefaultValue=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WarshipScene_Xls : table 
WarshipScene_Xls =
{
    ["1"]=setmetatable({id=1,groupId=1,sceneNormal="Ship_wenxianguan_Daytime",sceneDaytime="Ship_wenxianguan_Daytime",sceneDusk="Ship_wenxianguan_Daytime",sceneNight="Ship_wenxianguan_Daytime",birthPosition={[1]=10,[2]=0,[3]=-6},rotation=-270,relateTime=0,iosDefaultValue=1},mt),
    ["2"]=setmetatable({id=2,groupId=2,sceneNormal="Ship_canting",sceneDaytime="Ship_canting",sceneDusk="Ship_canting",sceneNight="Ship_canting",birthPosition={[1]=10,[2]=0,[3]=-6},rotation=-270,relateTime=0,iosDefaultValue=1},mt),
}
--生成获取数据的方法
---@return WarshipScene
function GetWarshipSceneData(id)
    return WarshipScene_Xls[tostring(id)]
end
--自动生成注释
---@class WarshipScene : table 
---@field id number
---@field groupId number
---@field sceneNormal string
---@field sceneDaytime string
---@field sceneDusk string
---@field sceneNight string
---@field birthPosition table
---@field rotation number
---@field relateTime number
---@field iosDefaultValue number
