local default = {id="",disableScene=xlsNilTable,group=0,isParallel=0,priority=0,isRepeatable=0,guideType=0,closeTips=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CommonPopupFrame_Xls : table 
CommonPopupFrame_Xls =
{
    ["1"]=setmetatable({id="1",disableScene=xlsNilTable,group=256,isParallel=0,priority=0,isRepeatable=1,guideType=2,closeTips=0},mt),
    ["2"]=setmetatable({id="2",disableScene={[1]=3,[2]=6},group=128,isParallel=0,priority=0,isRepeatable=1,guideType=2,closeTips=0},mt),
    ["3"]=setmetatable({id="3",disableScene={[1]=2,[2]=6},group=64,isParallel=0,priority=0,isRepeatable=1,guideType=2,closeTips=0},mt),
    ["UINetBlock"]=setmetatable({id="UINetBlock",disableScene={[1]=3,[2]=4,[3]=5},group=32,isParallel=0,priority=0,isRepeatable=0,guideType=2,closeTips=1},mt),
    ["4"]=setmetatable({id="4",disableScene={[1]=2,[2]=3,[3]=4,[4]=5,[5]=6,[6]=7},group=2,isParallel=1,priority=70,isRepeatable=1,guideType=2,closeTips=0},mt),
    ["UIOpenFunction"]=setmetatable({id="UIOpenFunction",disableScene={[1]=2,[2]=3,[3]=4,[4]=5,[5]=6,[6]=7},group=2,isParallel=1,priority=80,isRepeatable=1,guideType=2,closeTips=0},mt),
    ["UINormalSystemConfirm"]=setmetatable({id="UINormalSystemConfirm",disableScene=xlsNilTable,group=16,isParallel=0,priority=0,isRepeatable=1,guideType=1,closeTips=1},mt),
    ["UINotice"]=setmetatable({id="UINotice",disableScene={[1]=1,[2]=6,[3]=7},group=1,isParallel=1,priority=100,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UISignInMonthly"]=setmetatable({id="UISignInMonthly",disableScene={[1]=1,[2]=6,[3]=7},group=1,isParallel=1,priority=90,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UIPopupItemGet"]=setmetatable({id="UIPopupItemGet",disableScene={[1]=2,[2]=6,[3]=7},group=4,isParallel=1,priority=90,isRepeatable=1,guideType=2,closeTips=1},mt),
    ["8"]=setmetatable({id="8",disableScene={[1]=3,[2]=4,[3]=6},group=8,isParallel=0,priority=0,isRepeatable=1,guideType=2,closeTips=0},mt),
    ["UIPlayerLevelUp"]=setmetatable({id="UIPlayerLevelUp",disableScene={[1]=2,[2]=3,[3]=6,[4]=7},group=4,isParallel=1,priority=110,isRepeatable=1,guideType=1,closeTips=1},mt),
    ["UIBeginner7Days"]=setmetatable({id="UIBeginner7Days",disableScene={[1]=1,[2]=6,[3]=7},group=1,isParallel=1,priority=95,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UILvUpSuccess"]=setmetatable({id="UILvUpSuccess",disableScene=xlsNilTable,group=4,isParallel=1,priority=100,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UIItemGetShow"]=setmetatable({id="UIItemGetShow",disableScene={[1]=2,[2]=3,[3]=4,[4]=6,[5]=7},group=4,isParallel=1,priority=85,isRepeatable=1,guideType=2,closeTips=1},mt),
    ["UIHeroFavorLevelUp"]=setmetatable({id="UIHeroFavorLevelUp",disableScene=xlsNilTable,group=4,isParallel=1,priority=95,isRepeatable=1,guideType=2,closeTips=1},mt),
    ["UITeamInviteConfirm"]=setmetatable({id="UITeamInviteConfirm",disableScene={[1]=2,[2]=3,[3]=4,[4]=5,[5]=6,[6]=7},group=512,isParallel=0,priority=0,isRepeatable=1,guideType=1,closeTips=1},mt),
    ["UITeamApplyConfirm"]=setmetatable({id="UITeamApplyConfirm",disableScene={[1]=2,[2]=3,[3]=4,[4]=5,[5]=6,[6]=7},group=512,isParallel=0,priority=0,isRepeatable=1,guideType=1,closeTips=1},mt),
    ["UIActivityTips"]=setmetatable({id="UIActivityTips",disableScene={[1]=1,[2]=6,[3]=7},group=1,isParallel=1,priority=90,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UIActivity"]=setmetatable({id="UIActivity",disableScene={[1]=1,[2]=6,[3]=7},group=1,isParallel=1,priority=80,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UIGamePassChooseReward"]=setmetatable({id="UIGamePassChooseReward",disableScene=xlsNilTable,group=4,isParallel=1,priority=80,isRepeatable=1,guideType=2,closeTips=1},mt),
    ["UIPushPack"]=setmetatable({id="UIPushPack",disableScene={[1]=1,[2]=6,[3]=7},group=1,isParallel=1,priority=70,isRepeatable=1,guideType=1,closeTips=1},mt),
    ["UIMonthCardItemGet"]=setmetatable({id="UIMonthCardItemGet",disableScene={[1]=1,[2]=6,[3]=7},group=4,isParallel=1,priority=75,isRepeatable=1,guideType=1,closeTips=1},mt),
    ["UIActivityNoticeOpen"]=setmetatable({id="UIActivityNoticeOpen",disableScene={[1]=1},group=1,isParallel=1,priority=2,isRepeatable=0,guideType=1,closeTips=1},mt),
    ["UIActivityNoticeClose"]=setmetatable({id="UIActivityNoticeClose",disableScene={[1]=1},group=1,isParallel=1,priority=1,isRepeatable=0,guideType=1,closeTips=1},mt),
}
--生成获取数据的方法
---@return CommonPopupFrame
function GetCommonPopupFrameData(id)
    return CommonPopupFrame_Xls[tostring(id)]
end
--自动生成注释
---@class CommonPopupFrame : table 
---@field id string
---@field disableScene table
---@field group number
---@field isParallel number
---@field priority number
---@field isRepeatable number
---@field guideType number
---@field closeTips number
