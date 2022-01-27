---@class MainCityAdvertisement_Xls : table 
MainCityAdvertisement_Xls =
{
    ["1"]={id=1,image="texture/MainViewBanner/main_bt_ad_01",skip="logic/UI/UIFramework/TestChapter",des="跳转至章节"},
    ["2"]={id=2,image="texture/MainViewBanner/main_bt_ad_02",skip="ogic/UI/UIFramework/TestCheckPoint",des="跳转至关卡"},
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
---@field skip string
---@field des string
