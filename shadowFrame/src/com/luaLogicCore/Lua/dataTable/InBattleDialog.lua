local default = {talkgroupid=0,content=xlsNilTable,triggertype=xlsNilTable,delaytype=0,marktype=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class InBattleDialog_Xls : table 
InBattleDialog_Xls =
{
    ["1000101"]=setmetatable({talkgroupid=1000101,content={[1]=100010101,[2]=100010102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1000102"]=setmetatable({talkgroupid=1000102,content={[1]=100010201,[2]=100010202},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1000103"]=setmetatable({talkgroupid=1000103,content={[1]=100010301},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1000201"]=setmetatable({talkgroupid=1000201,content={[1]=100020101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1000202"]=setmetatable({talkgroupid=1000202,content={[1]=100020201},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1000203"]=setmetatable({talkgroupid=1000203,content={[1]=100020301},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1000204"]=setmetatable({talkgroupid=1000204,content={[1]=100020401},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1010301"]=setmetatable({talkgroupid=1010301,content={[1]=101030101,[2]=101030102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1010501"]=setmetatable({talkgroupid=1010501,content={[1]=101050101,[2]=101050102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1020101"]=setmetatable({talkgroupid=1020101,content={[1]=102010101,[2]=102010102,[3]=102010103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1020201"]=setmetatable({talkgroupid=1020201,content={[1]=102020101,[2]=102020102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1020301"]=setmetatable({talkgroupid=1020301,content={[1]=102030101,[2]=102030102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1021101"]=setmetatable({talkgroupid=1021101,content={[1]=102110101,[2]=102110102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1030101"]=setmetatable({talkgroupid=1030101,content={[1]=103010101,[2]=103010102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1030201"]=setmetatable({talkgroupid=1030201,content={[1]=103020101,[2]=103020102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1030301"]=setmetatable({talkgroupid=1030301,content={[1]=103030101,[2]=103030102,[3]=103030103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1030401"]=setmetatable({talkgroupid=1030401,content={[1]=103040101,[2]=103040102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1030801"]=setmetatable({talkgroupid=1030801,content={[1]=103080101,[2]=103080102,[3]=103080103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1031201"]=setmetatable({talkgroupid=1031201,content={[1]=103120101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1040201"]=setmetatable({talkgroupid=1040201,content={[1]=104020101,[2]=104020102,[3]=104020103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1040301"]=setmetatable({talkgroupid=1040301,content={[1]=104030101,[2]=104030102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1040401"]=setmetatable({talkgroupid=1040401,content={[1]=104040101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1040701"]=setmetatable({talkgroupid=1040701,content={[1]=104070101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1040901"]=setmetatable({talkgroupid=1040901,content={[1]=104090101,[2]=104090102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1041001"]=setmetatable({talkgroupid=1041001,content={[1]=104100101,[2]=104100102,[3]=104100103,[4]=104100104,[5]=104100105},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1050101"]=setmetatable({talkgroupid=1050101,content={[1]=105010101,[2]=105010102,[3]=105010103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1050901"]=setmetatable({talkgroupid=1050901,content={[1]=105090101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1051201"]=setmetatable({talkgroupid=1051201,content={[1]=105120101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1060501"]=setmetatable({talkgroupid=1060501,content={[1]=106050101,[2]=106050102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1060601"]=setmetatable({talkgroupid=1060601,content={[1]=106060101,[2]=106060102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1060701"]=setmetatable({talkgroupid=1060701,content={[1]=106070101,[2]=106070102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1060801"]=setmetatable({talkgroupid=1060801,content={[1]=106080101,[2]=106080102,[3]=106080103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1060901"]=setmetatable({talkgroupid=1060901,content={[1]=106090101,[2]=106090102,[3]=106090103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1070101"]=setmetatable({talkgroupid=1070101,content={[1]=107010101,[2]=107010102,[3]=107010103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1070201"]=setmetatable({talkgroupid=1070201,content={[1]=107020101,[2]=107020102,[3]=107020103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1070701"]=setmetatable({talkgroupid=1070701,content={[1]=107070101,[2]=107070102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1070801"]=setmetatable({talkgroupid=1070801,content={[1]=107080101,[2]=107080102,[3]=107080103,[4]=107080104,[5]=107080105,[6]=107080106},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1080701"]=setmetatable({talkgroupid=1080701,content={[1]=108070101,[2]=108070102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1080801"]=setmetatable({talkgroupid=1080801,content={[1]=108080101,[2]=108080102,[3]=108080103,[4]=108080104,[5]=108080105},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1080901"]=setmetatable({talkgroupid=1080901,content={[1]=108090101,[2]=108090102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["1081001"]=setmetatable({talkgroupid=1081001,content={[1]=108100101,[2]=108100102,[3]=108100103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010201"]=setmetatable({talkgroupid=2010201,content={[1]=201020101,[2]=201020102,[3]=201020103,[4]=201020104,[5]=201020105},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010301"]=setmetatable({talkgroupid=2010301,content={[1]=201030101,[2]=201030102,[3]=201030103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010401"]=setmetatable({talkgroupid=2010401,content={[1]=201040101,[2]=201040102,[3]=201040103,[4]=201040104},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010501"]=setmetatable({talkgroupid=2010501,content={[1]=201050101,[2]=201050102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010601"]=setmetatable({talkgroupid=2010601,content={[1]=201060101,[2]=201060102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010701"]=setmetatable({talkgroupid=2010701,content={[1]=201070101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010702"]=setmetatable({talkgroupid=2010702,content={[1]=201070201},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010703"]=setmetatable({talkgroupid=2010703,content={[1]=201070301},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010704"]=setmetatable({talkgroupid=2010704,content={[1]=201070401,[2]=201070402},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010801"]=setmetatable({talkgroupid=2010801,content={[1]=201080101},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010802"]=setmetatable({talkgroupid=2010802,content={[1]=201080201,[2]=201080202},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2010901"]=setmetatable({talkgroupid=2010901,content={[1]=201090101,[2]=201090102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2011001"]=setmetatable({talkgroupid=2011001,content={[1]=201100101,[2]=201100102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2011101"]=setmetatable({talkgroupid=2011101,content={[1]=201110101,[2]=201110102,[3]=201110103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2011201"]=setmetatable({talkgroupid=2011201,content={[1]=201120101,[2]=201120102,[3]=201120103,[4]=201120104},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2011202"]=setmetatable({talkgroupid=2011202,content={[1]=201120201,[2]=201120202},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2020101"]=setmetatable({talkgroupid=2020101,content={[1]=202010101,[2]=202010102,[3]=202010103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2020401"]=setmetatable({talkgroupid=2020401,content={[1]=202040101,[2]=202040102,[3]=202040103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2020501"]=setmetatable({talkgroupid=2020501,content={[1]=202050101,[2]=202050102,[3]=202050103,[4]=202050104},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2020601"]=setmetatable({talkgroupid=2020601,content={[1]=202060101,[2]=202060102,[3]=202060103,[4]=202060104,[5]=202060105},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2020801"]=setmetatable({talkgroupid=2020801,content={[1]=202080101,[2]=202080102,[3]=202080103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2021101"]=setmetatable({talkgroupid=2021101,content={[1]=202110101,[2]=202110102,[3]=202110103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2021301"]=setmetatable({talkgroupid=2021301,content={[1]=202130101,[2]=202130102},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["2021501"]=setmetatable({talkgroupid=2021501,content={[1]=202150101,[2]=202150102,[3]=202150103},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99000"]=setmetatable({talkgroupid=99000,content={[1]=990001,[2]=990002},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99001"]=setmetatable({talkgroupid=99001,content={[1]=990011,[2]=990012},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99002"]=setmetatable({talkgroupid=99002,content={[1]=990021,[2]=990022},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99003"]=setmetatable({talkgroupid=99003,content={[1]=990031},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99004"]=setmetatable({talkgroupid=99004,content={[1]=990041},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99005"]=setmetatable({talkgroupid=99005,content={[1]=990051,[2]=990052,[3]=990053},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99006"]=setmetatable({talkgroupid=99006,content={[1]=990061},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99007"]=setmetatable({talkgroupid=99007,content={[1]=990071},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99008"]=setmetatable({talkgroupid=99008,content={[1]=990081},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
    ["99009"]=setmetatable({talkgroupid=99009,content={[1]=990091,[2]=990092},triggertype={[1]=1,[2]=10000},delaytype=2,marktype=2},mt),
}
--生成获取数据的方法
---@return InBattleDialog
function GetInBattleDialogData(id)
    return InBattleDialog_Xls[tostring(id)]
end
--自动生成注释
---@class InBattleDialog : table 
---@field talkgroupid number
---@field content table
---@field triggertype table
---@field delaytype number
---@field marktype number
