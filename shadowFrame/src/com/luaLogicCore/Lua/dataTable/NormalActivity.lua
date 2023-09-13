local default = {id=0,activityName="",activityDes="",activityType=0,jumpTo="",param="",paramShop="",showCurrencyPage=0,eventId=0,helpId=0,openCondition=0,openTime=0,canBeReplay=0,alignType=0,offsetPos=xlsNilTable,recastSize=xlsNilTable,imagePos=xlsNilTable,imageName="",hideImageWhenLock=0,lockedImageName="",disabledImageName="",cdTimeBgImage="",cdTimeBgImagePos=xlsNilTable,cdTimeFontName="",cdTimeA="",cdTimeFontSize=0,cdTimeFontColor="",cdTimeFontPos=xlsNilTable,redpointPos=xlsNilTable,redPointId=xlsNilTable,redPointImg=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class NormalActivity_Xls : table 
NormalActivity_Xls =
{
    ["1"]=setmetatable({id=1,activityName="深空歧梦",activityDes="天空之外，执念产生梦魇，使人在梦境的幻象中迷失。是飞行亦或是坠落，穿行在回忆碎片中拼凑真相。以初心为锚点，寻回自己。",activityType=1,jumpTo="61000",param="",paramShop="",showCurrencyPage=0,eventId=0,helpId=2010,openCondition=6101101,openTime=23201,canBeReplay=1},mt),
    ["2"]=setmetatable({id=2,activityName="同途异梦",activityDes="",activityType=2,jumpTo="61001",param="1,2",paramShop="4",showCurrencyPage=0,eventId=0,helpId=2011,openCondition=6101101,openTime=23201,canBeReplay=1,alignType=5,offsetPos={[1]=695,[2]=-320},recastSize={[1]=240,[2]=80},imagePos={[1]=0,[2]=0},imageName="activitynormal202301_tongtuyimeng_i18n",hideImageWhenLock=0,lockedImageName="activitynormal202301_tongtuyimenglock_i18n",disabledImageName="activitynormal202301_tongtuyimenglock_i18n",cdTimeBgImage="UIActivityNormalSprite_trans",cdTimeBgImagePos={[1]=0,[2]=0},cdTimeFontName="UILanTing_Big_GBK",cdTimeA="2",cdTimeFontSize=20,cdTimeFontColor="b7b7b7",cdTimeFontPos={[1]=0,[2]=-1050},redpointPos={[1]=92,[2]=28},redPointId={[1]=78},redPointImg="UIActivityNormalSprite_red1"},mt),
    ["4"]=setmetatable({id=4,activityName="旅梦商店",activityDes="",activityType=4,jumpTo="61002",param="300,1007",paramShop="4023101",showCurrencyPage=6752,eventId=0,helpId=20020,openCondition=6101101,openTime=23201,canBeReplay=1,alignType=5,offsetPos={[1]=-638,[2]=-377},recastSize={[1]=240,[2]=80},imagePos={[1]=0,[2]=0},imageName="activitynormal202301_lvmengshangdian_i18n",hideImageWhenLock=0,lockedImageName="activitynormal202301_lvmengshangdian_i18n",disabledImageName="activitynormal202301_lvmengshangdian_i18n",cdTimeBgImage="UIActivityNormalSprite_trans",cdTimeBgImagePos={[1]=0,[2]=0},cdTimeFontName="UILanTing_Big_GBK",cdTimeA="3",cdTimeFontSize=20,cdTimeFontColor="b7b7b7",cdTimeFontPos={[1]=50,[2]=-1050},redpointPos={[1]=92,[2]=28},redPointId={[1]=77},redPointImg="UIActivityNormalSprite_red1"},mt),
    ["20"]=setmetatable({id=20,activityName="金色梦乡",activityDes="想要闪亮的舞台？想要最棒的商店？一步踏入双重梦境，一次满足两个愿望。导师，做得到吗！",activityType=1,jumpTo="61000",param="",paramShop="",showCurrencyPage=0,eventId=0,helpId=2010,openCondition=6101101,openTime=23320,canBeReplay=1},mt),
    ["21"]=setmetatable({id=21,activityName="酣然入梦",activityDes="",activityType=2,jumpTo="61007",param="21,22",paramShop="22",showCurrencyPage=0,eventId=0,helpId=2011,openCondition=6101101,openTime=23320,canBeReplay=1,alignType=9,offsetPos={[1]=-350,[2]=318},recastSize={[1]=350,[2]=136},imagePos={[1]=0,[2]=0},imageName="UI_S1E2_Main_Btn_Battle_On_i18n",hideImageWhenLock=0,lockedImageName="UI_S1E2_Main_Btn_Battle_Off_i18n",disabledImageName="UI_S1E2_Main_Btn_Battle_Off_i18n",cdTimeBgImage="UIActivityNormalSprite_trans",cdTimeBgImagePos={[1]=0,[2]=0},cdTimeFontName="UILanTing_Big_GBK",cdTimeA="2",cdTimeFontSize=20,cdTimeFontColor="f0e8db",cdTimeFontPos={[1]=0,[2]=-1050},redpointPos={[1]=190,[2]=20},redPointId={[1]=78},redPointImg="UIActivityNormalSprite_red2"},mt),
    ["22"]=setmetatable({id=22,activityName="旅梦商店",activityDes="",activityType=4,jumpTo="61005",param="301,1011",paramShop="4029101",showCurrencyPage=6754,eventId=0,helpId=20020,openCondition=6101101,openTime=23320,canBeReplay=1,alignType=7,offsetPos={[1]=415,[2]=157},recastSize={[1]=304,[2]=136},imagePos={[1]=0,[2]=0},imageName="UI_S1E2_Main_Btn_Store_On_i18n",hideImageWhenLock=0,lockedImageName="UI_S1E2_Main_Btn_Store_Off_i18n",disabledImageName="UI_S1E2_Main_Btn_Store_Off_i18n",cdTimeBgImage="UIActivityNormalSprite_trans",cdTimeBgImagePos={[1]=0,[2]=0},cdTimeFontName="UILanTing_Big_GBK",cdTimeA="3",cdTimeFontSize=20,cdTimeFontColor="f0e8db",cdTimeFontPos={[1]=50,[2]=-1050},redpointPos={[1]=163,[2]=44},redPointId={[1]=77},redPointImg="UIActivityNormalSprite_red2"},mt),
    ["23"]=setmetatable({id=23,activityName="思维巡回",activityDes="在梦境中游荡，噩梦与美梦总会带来意外之喜。",activityType=3,jumpTo="61003",param="1",paramShop="",showCurrencyPage=6754,eventId=0,helpId=2008,openCondition=6101101,openTime=23324,canBeReplay=1,alignType=9,offsetPos={[1]=-425,[2]=166},recastSize={[1]=320,[2]=120},imagePos={[1]=0,[2]=0},imageName="UI_S1E2_Main_Btn_Story_On_i18n",hideImageWhenLock=1,lockedImageName="UI_S1E2_Main_Btn_Story_Off_i18n",disabledImageName="UI_S1E2_Main_Btn_Story_Off_i18n",cdTimeBgImage="UIActivityNormalSprite_trans",cdTimeBgImagePos={[1]=0,[2]=0},cdTimeFontName="UILanTing_Big_GBK",cdTimeA="2",cdTimeFontSize=20,cdTimeFontColor="f0e8db",cdTimeFontPos={[1]=0,[2]=11},redpointPos={[1]=170,[2]=42},redPointId={[1]=121,[2]=122},redPointImg="UIActivityNormalSprite_red2"},mt),
    ["24"]=setmetatable({id=24,activityName="愿望手账",activityDes="",activityType=5,jumpTo="61006",param="2",paramShop="",showCurrencyPage=6754,eventId=0,helpId=0,openCondition=6101101,openTime=23320,canBeReplay=1,alignType=7,offsetPos={[1]=349,[2]=316},recastSize={[1]=352,[2]=120},imagePos={[1]=0,[2]=0},imageName="UI_S1E2_Main_Btn_04_On_i18n",hideImageWhenLock=0,lockedImageName="UI_S1E2_Main_Btn_04_Off_i18n",disabledImageName="UI_S1E2_Main_Btn_04_Off_i18n",cdTimeBgImage="UIActivityNormalSprite_trans",cdTimeBgImagePos={[1]=0,[2]=0},cdTimeFontName="UILanTing_Big_GBK",cdTimeA="2",cdTimeFontSize=20,cdTimeFontColor="f0e8db",cdTimeFontPos={[1]=0,[2]=-1050},redpointPos={[1]=159,[2]=16},redPointId={[1]=110},redPointImg="UIActivityNormalSprite_red2"},mt),
}
--生成获取数据的方法
---@return NormalActivity
function GetNormalActivityData(id)
    return NormalActivity_Xls[tostring(id)]
end
--自动生成注释
---@class NormalActivity : table 
---@field id number
---@field activityName string
---@field activityDes string
---@field activityType number
---@field jumpTo string
---@field param string
---@field paramShop string
---@field showCurrencyPage number
---@field eventId number
---@field helpId number
---@field openCondition number
---@field openTime number
---@field canBeReplay number
---@field alignType number
---@field offsetPos table
---@field recastSize table
---@field imagePos table
---@field imageName string
---@field hideImageWhenLock number
---@field lockedImageName string
---@field disabledImageName string
---@field cdTimeBgImage string
---@field cdTimeBgImagePos table
---@field cdTimeFontName string
---@field cdTimeA string
---@field cdTimeFontSize number
---@field cdTimeFontColor string
---@field cdTimeFontPos table
---@field redpointPos table
---@field redPointId table
---@field redPointImg string
