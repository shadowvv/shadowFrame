---@class SkyBoxParam_Xls : table 
SkyBoxParam_Xls =
{
    ["1"]={id=1,type=1,back="法尼亚（雷",delayTime=0.0,time=0.0,removeDelayTime=0.0,removeTime=1.0,floatKey={[1]="_Exposure"},floatValue={[1]=1.0},colorKey={[1]="_Tint"},colorValue={[1]="3086D1"}},
    ["2"]={id=2,type=1,back="奈纳（火",delayTime=0.0,time=0.0,removeDelayTime=0.0,removeTime=1.0,floatKey={[1]="_Exposure"},floatValue={[1]=0.6},colorKey={[1]="_Tint"},colorValue={[1]="FF8133"}},
    ["3"]={id=3,type=1,back="夏洛（风",delayTime=0.0,time=0.0,removeDelayTime=0.0,removeTime=1.0,floatKey={[1]="_Exposure"},floatValue={[1]=1.0},colorKey={[1]="_Tint"},colorValue={[1]="80FFC3"}},
}
--生成获取数据的方法
---@return SkyBoxParam
function GetSkyBoxParamData(id)
    return SkyBoxParam_Xls[tostring(id)]
end
--自动生成注释
---@class SkyBoxParam : table 
---@field id number
---@field type number
---@field back string
---@field delayTime number
---@field time number
---@field removeDelayTime number
---@field removeTime number
---@field floatKey table
---@field floatValue table
---@field colorKey table
---@field colorValue table
---@field texturePath string
