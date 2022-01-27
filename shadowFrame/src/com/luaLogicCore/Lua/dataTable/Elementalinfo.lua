---@class ElementalInfo_Xls : table 
ElementalInfo_Xls =
{
    ["1"]={elementId=1,elementName="物理",elementEnName="wuli",elementIcon="limit_UI_icon_element_fire",elementColor={[1]=232,[2]=68,[3]=76},elementColorOutline={[1]=232,[2]=68,[3]=76},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_fire",elementBuffIcon="icon_fire",elementEneryColor={[1]=232,[2]=68,[3]=76}},
    ["2"]={elementId=2,elementName="火",elementEnName="huo",elementIcon="limit_UI_icon_element_fire",elementColor={[1]=253,[2]=61,[3]=60},elementColorOutline={[1]=232,[2]=68,[3]=76},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_fire",elementBuffIcon="icon_fire",elementEneryColor={[1]=235,[2]=83,[3]=83}},
    ["3"]={elementId=3,elementName="雷",elementEnName="lei",elementIcon="limit_UI_icon_element_thunder",elementColor={[1]=103,[2]=237,[3]=212},elementColorOutline={[1]=224,[2]=200,[3]=0},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_lei",elementBuffIcon="icon_thunder",elementEneryColor={[1]=99,[2]=238,[3]=216}},
    ["4"]={elementId=4,elementName="冰",elementEnName="bing",elementIcon="limit_UI_icon_element_ice",elementColor={[1]=150,[2]=198,[3]=246},elementColorOutline={[1]=100,[2]=143,[3]=202},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_ice",elementBuffIcon="icon_ice",elementEneryColor={[1]=170,[2]=214,[3]=255}},
    ["5"]={elementId=5,elementName="风",elementEnName="feng",elementIcon="limit_UI_icon_element_wind",elementColor={[1]=13,[2]=158,[3]=246},elementColorOutline={[1]=109,[2]=198,[3]=199},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_wind",elementBuffIcon="icon_wind",elementEneryColor={[1]=101,[2]=175,[3]=246}},
    ["6"]={elementId=6,elementName="源能",elementEnName="yuanneng",elementIcon="limit_UI_icon_element_yuanneng",elementColor={[1]=79,[2]=238,[3]=135},elementColorOutline={[1]=109,[2]=198,[3]=199},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_yuanneng",elementBuffIcon="icon_reactiontype",elementEneryColor={[1]=129,[2]=228,[3]=159}},
    ["7"]={elementId=7,elementName="重力",elementEnName="zhongli",elementIcon="limit_UI_icon_element_ice",elementColor={[1]=198,[2]=100,[3]=247},elementColorOutline={[1]=109,[2]=198,[3]=199},elementDes="描述描述描述描述描述描述描述描述描述描述",elementButton="Eff_ui_jizoutips_yuanneng",elementBuffIcon="icon_reactiontype",elementEneryColor={[1]=129,[2]=228,[3]=159}},
}
--生成获取数据的方法
---@return ElementalInfo
function GetElementalInfoData(id)
    return ElementalInfo_Xls[tostring(id)]
end
--自动生成注释
---@class ElementalInfo : table 
---@field elementId number
---@field elementName string
---@field elementEnName string
---@field elementIcon string
---@field elementColor table
---@field elementColorOutline table
---@field elementDes string
---@field elementButton string
---@field elementBuffIcon string
---@field elementEneryColor table
