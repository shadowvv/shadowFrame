local default = {id=0,levelType="",levelTypeTrans="",introduce="",bgPic="",unlock=0,typeIntroduce="",levelTypeIntroduce="",textPro=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class TrainLevelEntrance_Xls : table 
TrainLevelEntrance_Xls =
{
    ["1"]=setmetatable({id=1,levelType="常规作战",levelTypeTrans="Basic",introduce="产出基础物资材料",bgPic="trainlevel_type_bg_1",unlock=294,typeIntroduce="",levelTypeIntroduce="",textPro={[1]="levelType"}},mt),
    ["2"]=setmetatable({id=2,levelType="异生醒转",levelTypeTrans="Crystals",introduce="产出斯露德突破材料",bgPic="trainlevel_type_bg_2",unlock=295,typeIntroduce="",levelTypeIntroduce="",textPro={[1]="levelType"}},mt),
    ["3"]=setmetatable({id=3,levelType="竟日战心",levelTypeTrans="Weapons",introduce="产出武装",bgPic="trainlevel_type_bg_3",unlock=296,typeIntroduce="",levelTypeIntroduce="",textPro={[1]="levelType"}},mt),
    ["4"]=setmetatable({id=4,levelType="解构测试",levelTypeTrans="Metal",introduce="产出武装突破材料",bgPic="trainlevel_type_bg_4",unlock=297,typeIntroduce="",levelTypeIntroduce="",textPro={[1]="levelType"}},mt),
    ["5"]=setmetatable({id=5,levelType="意识深潜",levelTypeTrans="ComingSoon",introduce="敬请期待",bgPic="trainlevel_type_bg_5",unlock=298,typeIntroduce="",levelTypeIntroduce="",textPro={[1]="levelType"}},mt),
}
--生成获取数据的方法
---@return TrainLevelEntrance
function GetTrainLevelEntranceData(id)
    return TrainLevelEntrance_Xls[tostring(id)]
end
--自动生成注释
---@class TrainLevelEntrance : table 
---@field id number
---@field levelType string
---@field levelTypeTrans string
---@field introduce string
---@field bgPic string
---@field unlock number
---@field typeIntroduce string
---@field levelTypeIntroduce string
---@field textPro table
