local default = {id=0,name="",textPro=xlsNilTable,nameEn="",pic="",openFunctionId=0,order=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class GameplaySum_Xls : table 
GameplaySum_Xls =
{
    ["1"]=setmetatable({id=1,name="交界虚空",textPro={[1]="name"},nameEn="hollowborder",pic="",openFunctionId=350,order=80},mt),
    ["2"]=setmetatable({id=2,name="脉流巡检",textPro={[1]="name"},nameEn="flowinspection",pic="",openFunctionId=420,order=90},mt),
    ["4"]=setmetatable({id=4,name="异空战线",textPro={[1]="name"},nameEn="Exoticbattleline",pic="",openFunctionId=600,order=100},mt),
    ["5"]=setmetatable({id=5,name="裂隙封锁",textPro={[1]="name"},nameEn="FissureClosure",pic="",openFunctionId=900,order=120},mt),
    ["6"]=setmetatable({id=6,name="交错迷宫",textPro={[1]="name"},nameEn="labyrinth",pic="img_playentrance_img_20",openFunctionId=480,order=140},mt),
}
--生成获取数据的方法
---@return GameplaySum
function GetGameplaySumData(id)
    return GameplaySum_Xls[tostring(id)]
end
--自动生成注释
---@class GameplaySum : table 
---@field id number
---@field name string
---@field textPro table
---@field nameEn string
---@field pic string
---@field openFunctionId number
---@field order number
