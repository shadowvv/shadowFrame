local default = {id=0,nodes=xlsNilTable,showCurrencyPage=0,openTime=0,openTimeCanReplay=0,basicRewardLevel=xlsNilTable,basicRewardTask=xlsNilTable,basicRewardShopGood=xlsNilTable,seasonIdGroup=0,replayRewardShow=0,buttonImg="",bgImg="",maskImg="",logoImgs=xlsNilTable,alignType=xlsNilTable,logoPos=xlsNilTable,logoPosReplay=xlsNilTable,logoPosReplayScale=0,timeBarImgs="",timeBarAlignType=0,timeBarPos=xlsNilTable,animationName="",animationSound="",animationBgm=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class NormalActivityMainPage_Xls : table 
NormalActivityMainPage_Xls =
{
    ["1"]=setmetatable({id=1,nodes={[1]=2,[2]=4},showCurrencyPage=6751,openTime=23201,openTimeCanReplay=23299,basicRewardLevel={[1]=800102,[2]=800103,[3]=800105,[4]=800106,[5]=800107,[6]=800108,[7]=800109,[8]=800110,[9]=800114,[10]=800115,[11]=800116,[12]=800117},basicRewardTask=xlsNilTable,basicRewardShopGood=xlsNilTable,seasonIdGroup=1,replayRewardShow=800001,buttonImg="UIMain_btn_main_event",bgImg="activitynormal202301_bg2",maskImg="activitynormal202301_zhezhao",logoImgs={[1]="activitynormal202301_biaoti_i18n"},alignType={[1]=5},logoPos={[1]=17,[2]=-350},logoPosReplay={[1]=-290,[2]=-248},logoPosReplayScale=1,timeBarImgs="activitynormal202301_shijiandi",timeBarAlignType=5,timeBarPos={[1]=22,[2]=-464},animationName="UIActivityNormalAnimS1E1",animationSound="UI_Event_ActivityNormal_Show",animationBgm="Music_Menu_Season1"},mt),
    ["20"]=setmetatable({id=20,nodes={[1]=21,[2]=22,[3]=23,[4]=24},showCurrencyPage=6754,openTime=23320,openTimeCanReplay=23321,basicRewardLevel={[1]=800201,[2]=800202,[3]=800203,[4]=800204,[5]=800205,[6]=800206,[7]=800207,[8]=800208,[9]=800209,[10]=800210,[11]=800211,[12]=800212},basicRewardTask=xlsNilTable,basicRewardShopGood=xlsNilTable,seasonIdGroup=1,replayRewardShow=800002,buttonImg="UI_S1E2_Entry",bgImg="UI_S1E2_Main_Bg",maskImg="UI_S1E2_Main_Mask",logoImgs={[1]="UI_S1E2_Main_Title_i18n"},alignType={[1]=1},logoPos={[1]=462,[2]=-276},logoPosReplay={[1]=-290,[2]=-248},logoPosReplayScale=1,timeBarImgs="UI_S1E2_shijiandi",timeBarAlignType=1,timeBarPos={[1]=303,[2]=-433},animationName="UIActivityNormalAnimS1E2",animationSound="UI_Event_ActivityS1E2_Show",animationBgm="Music_Menu_Season1"},mt),
}
--生成获取数据的方法
---@return NormalActivityMainPage
function GetNormalActivityMainPageData(id)
    return NormalActivityMainPage_Xls[tostring(id)]
end
--自动生成注释
---@class NormalActivityMainPage : table 
---@field id number
---@field nodes table
---@field showCurrencyPage number
---@field openTime number
---@field openTimeCanReplay number
---@field basicRewardLevel table
---@field basicRewardTask table
---@field basicRewardShopGood table
---@field seasonIdGroup number
---@field replayRewardShow number
---@field buttonImg string
---@field bgImg string
---@field maskImg string
---@field logoImgs table
---@field alignType table
---@field logoPos table
---@field logoPosReplay table
---@field logoPosReplayScale number
---@field timeBarImgs string
---@field timeBarAlignType number
---@field timeBarPos table
---@field animationName string
---@field animationSound string
---@field animationBgm string
