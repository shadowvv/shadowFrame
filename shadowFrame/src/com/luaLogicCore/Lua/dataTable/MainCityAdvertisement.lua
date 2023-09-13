local default = {id=0,image="",skip=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class MainCityAdvertisement_Xls : table 
MainCityAdvertisement_Xls =
{
    ["1"]=setmetatable({id=1,image="img_Gacha_ad_fnjx",skip=7003002},mt),
    ["2"]=setmetatable({id=2,image="img_Gacha_ad_zycx",skip=7005001},mt),
}
--生成获取数据的方法
---@return MainCityAdvertisement
function GetMainCityAdvertisementData(id)
    return MainCityAdvertisement_Xls[tostring(id)]
end
--自动生成注释
---@class MainCityAdvertisement : table 
---@field id number
---@field image string
---@field skip number
