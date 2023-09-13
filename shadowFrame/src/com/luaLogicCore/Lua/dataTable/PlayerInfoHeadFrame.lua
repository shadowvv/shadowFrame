local default = {id=0,name="",sort=0,cardShow=0,channel=0,icon="",time=0,conditionId=0,unlockTip=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PlayerInfoHeadFrame_Xls : table 
PlayerInfoHeadFrame_Xls =
{
    ["8920001"]=setmetatable({id=8920001,name="默认",sort=1,cardShow=0,channel=0,icon="common_headframe_00",time=-1,conditionId=101,unlockTip="默认"},mt),
    ["8920002"]=setmetatable({id=8920002,name="能量印记",sort=3,cardShow=0,channel=0,icon="common_headframe_01",time=-1,conditionId=3002,unlockTip="获取后解锁"},mt),
    ["8920003"]=setmetatable({id=8920003,name="限定头像框-小电视",sort=4,cardShow=0,channel=0,icon="event_headframe_00-1",time=-1,conditionId=3003,unlockTip="获取后解锁"},mt),
    ["8920011"]=setmetatable({id=8920011,name="虚空耀斑",sort=11,cardShow=0,channel=0,icon="pata_headframe_01",time=80004,conditionId=3011,unlockTip="获取后解锁"},mt),
    ["8920012"]=setmetatable({id=8920012,name="虚空回光",sort=12,cardShow=0,channel=0,icon="pata_headframe_02",time=80004,conditionId=3012,unlockTip="获取后解锁"},mt),
    ["8920013"]=setmetatable({id=8920013,name="虚空之影",sort=13,cardShow=0,channel=0,icon="pata_headframe_03",time=80004,conditionId=3013,unlockTip="获取后解锁"},mt),
    ["8920014"]=setmetatable({id=8920014,name="辉源圣迹",sort=14,cardShow=0,channel=0,icon="exoticbattleline_headframe_01",time=80006,conditionId=3014,unlockTip="获取后解锁"},mt),
    ["8920015"]=setmetatable({id=8920015,name="通晓将夕",sort=15,cardShow=0,channel=0,icon="exoticbattleline_headframe_02",time=80006,conditionId=3015,unlockTip="获取后解锁"},mt),
    ["8920016"]=setmetatable({id=8920016,name="辽域监察",sort=16,cardShow=0,channel=0,icon="exoticbattleline_headframe_03",time=80006,conditionId=3016,unlockTip="获取后解锁"},mt),
    ["8920017"]=setmetatable({id=8920017,name="萧寂之夜",sort=17,cardShow=0,channel=0,icon="fissureclosure_headframe_01",time=80004,conditionId=3017,unlockTip="获取后解锁"},mt),
    ["8920018"]=setmetatable({id=8920018,name="萧寂之昏",sort=18,cardShow=0,channel=0,icon="fissureclosure_headframe_02",time=80004,conditionId=3018,unlockTip="获取后解锁"},mt),
    ["8920019"]=setmetatable({id=8920019,name="萧寂之空",sort=19,cardShow=0,channel=0,icon="fissureclosure_headframe_03",time=80004,conditionId=3019,unlockTip="获取后解锁"},mt),
}
--生成获取数据的方法
---@return PlayerInfoHeadFrame
function GetPlayerInfoHeadFrameData(id)
    return PlayerInfoHeadFrame_Xls[tostring(id)]
end
--自动生成注释
---@class PlayerInfoHeadFrame : table 
---@field id number
---@field name string
---@field sort number
---@field cardShow number
---@field channel number
---@field icon string
---@field time number
---@field conditionId number
---@field unlockTip string
