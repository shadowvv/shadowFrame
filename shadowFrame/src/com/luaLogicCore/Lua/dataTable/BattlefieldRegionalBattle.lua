local default = {id=0,locationName="",characteristic=xlsNilTable,locationPicture="",locationPreview="",regionalLevel=xlsNilTable,textPro=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BattlefieldRegionalBattle_Xls : table 
BattlefieldRegionalBattle_Xls =
{
    ["10001"]=setmetatable({id=10001,locationName="重重炙热",characteristic={[1]=1520000},locationPicture="UIbattleground_battlefield_map_btn_1",locationPreview="pic2_1",regionalLevel={[1]=100001,[2]=100002,[3]=100003},textPro={[1]="locationName"}},mt),
    ["10002"]=setmetatable({id=10002,locationName="重重炙热",characteristic={[1]=10522},locationPicture="UIbattleground_battlefield_map_btn_1",locationPreview="pic2_1",regionalLevel={[1]=100004,[2]=100005,[3]=100006},textPro={[1]="locationName"}},mt),
    ["20001"]=setmetatable({id=20001,locationName="洞若雷霆",characteristic={[1]=1500010},locationPicture="UIbattleground_battlefield_map_btn_2",locationPreview="pic2_2",regionalLevel={[1]=200001,[2]=200002,[3]=200003},textPro={[1]="locationName"}},mt),
    ["20002"]=setmetatable({id=20002,locationName="洞若雷霆",characteristic={[1]=10521},locationPicture="UIbattleground_battlefield_map_btn_2",locationPreview="pic2_2",regionalLevel={[1]=200004,[2]=200005,[3]=200006},textPro={[1]="locationName"}},mt),
    ["30001"]=setmetatable({id=30001,locationName="隐秘流域",characteristic={[1]=1500020},locationPicture="UIbattleground_battlefield_map_btn_3",locationPreview="pic2_3",regionalLevel={[1]=300001,[2]=300002,[3]=300003},textPro={[1]="locationName"}},mt),
    ["30002"]=setmetatable({id=30002,locationName="隐秘流域",characteristic={[1]=10523},locationPicture="UIbattleground_battlefield_map_btn_3",locationPreview="pic2_3",regionalLevel={[1]=300004,[2]=300005,[3]=300006},textPro={[1]="locationName"}},mt),
    ["40001"]=setmetatable({id=40001,locationName="飞沙走石",characteristic={[1]=1500030},locationPicture="UIbattleground_battlefield_map_btn_4",locationPreview="pic2_4",regionalLevel={[1]=400001,[2]=400002,[3]=400003},textPro={[1]="locationName"}},mt),
    ["40002"]=setmetatable({id=40002,locationName="飞沙走石",characteristic={[1]=10524},locationPicture="UIbattleground_battlefield_map_btn_4",locationPreview="pic2_4",regionalLevel={[1]=400004,[2]=400005,[3]=400006},textPro={[1]="locationName"}},mt),
}
--生成获取数据的方法
---@return BattlefieldRegionalBattle
function GetBattlefieldRegionalBattleData(id)
    return BattlefieldRegionalBattle_Xls[tostring(id)]
end
--自动生成注释
---@class BattlefieldRegionalBattle : table 
---@field id number
---@field locationName string
---@field characteristic table
---@field locationPicture string
---@field locationPreview string
---@field regionalLevel table
---@field textPro table
