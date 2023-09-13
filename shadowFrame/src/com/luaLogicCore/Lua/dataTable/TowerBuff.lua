local default = {id=0,buffId=0,showTalent=xlsNilTable,timeId=0,buffPic=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TowerBuff_Xls : table 
TowerBuff_Xls =
{
    ["1"]=setmetatable({id=1,buffId=10407,showTalent=xlsNilTable,timeId=20001,buffPic="trainlevel_detail_bg"},mt),
    ["2"]=setmetatable({id=2,buffId=1007,showTalent=xlsNilTable,timeId=20002,buffPic="trainlevel_detail_bg"},mt),
    ["3"]=setmetatable({id=3,buffId=1008,showTalent=xlsNilTable,timeId=20003,buffPic="uitower_banner2"},mt),
    ["4"]=setmetatable({id=4,buffId=1008,showTalent=xlsNilTable,timeId=20004,buffPic="uitower_banner2"},mt),
    ["5"]=setmetatable({id=5,buffId=1008,showTalent=xlsNilTable,timeId=20005,buffPic="uitower_banner2"},mt),
    ["6"]=setmetatable({id=6,buffId=11009,showTalent=xlsNilTable,timeId=20006,buffPic="uitower_banner2"},mt),
    ["7"]=setmetatable({id=7,buffId=11009,showTalent=xlsNilTable,timeId=20007,buffPic="uitower_banner2"},mt),
    ["8"]=setmetatable({id=8,buffId=11010,showTalent=xlsNilTable,timeId=20008,buffPic="uitower_banner2"},mt),
    ["9"]=setmetatable({id=9,buffId=11010,showTalent=xlsNilTable,timeId=20009,buffPic="uitower_banner2"},mt),
    ["10"]=setmetatable({id=10,buffId=1008,showTalent=xlsNilTable,timeId=20010,buffPic="uitower_banner2"},mt),
    ["11"]=setmetatable({id=11,buffId=1008,showTalent=xlsNilTable,timeId=20011,buffPic="uitower_banner1"},mt),
    ["12"]=setmetatable({id=12,buffId=10611,showTalent=xlsNilTable,timeId=20012,buffPic="uitower_banner2"},mt),
    ["13"]=setmetatable({id=13,buffId=0,showTalent={[1]=10620},timeId=20013,buffPic="uitower_banner2"},mt),
    ["14"]=setmetatable({id=14,buffId=0,showTalent={[1]=10620},timeId=20014,buffPic="uitower_banner2"},mt),
    ["15"]=setmetatable({id=15,buffId=0,showTalent={[1]=10620},timeId=20015,buffPic="uitower_banner2"},mt),
    ["16"]=setmetatable({id=16,buffId=0,showTalent={[1]=10620},timeId=20016,buffPic="uitower_banner2"},mt),
    ["17"]=setmetatable({id=17,buffId=0,showTalent={[1]=10620},timeId=20017,buffPic="uitower_banner2"},mt),
    ["18"]=setmetatable({id=18,buffId=0,showTalent={[1]=10620},timeId=20018,buffPic="uitower_banner2"},mt),
}
--生成获取数据的方法
---@return TowerBuff
function GetTowerBuffData(id)
    return TowerBuff_Xls[tostring(id)]
end
--自动生成注释
---@class TowerBuff : table 
---@field id number
---@field buffId number
---@field showTalent table
---@field timeId number
---@field buffPic string
