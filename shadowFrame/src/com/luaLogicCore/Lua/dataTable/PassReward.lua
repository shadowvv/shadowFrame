local default = {id=0,group=0,lv=0,highlightLv=0,rewardId=xlsNilTable,rewardNum=xlsNilTable,rewardOptional=0,rewardProId=xlsNilTable,rewardProNum=xlsNilTable,rewardProOptional1=0,rewardProOptional2=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class PassReward_Xls : table 
PassReward_Xls =
{
    ["1"]=setmetatable({id=1,group=1,lv=1,highlightLv=0,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=11},rewardProNum={[1]=100,[2]=680}},mt),
    ["2"]=setmetatable({id=2,group=1,lv=2,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["3"]=setmetatable({id=3,group=1,lv=3,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["4"]=setmetatable({id=4,group=1,lv=4,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["5"]=setmetatable({id=5,group=1,lv=5,highlightLv=0,rewardId={[1]=1090101},rewardNum={[1]=150},rewardOptional=0,rewardProId={[1]=1090101,[2]=1009},rewardProNum={[1]=200,[2]=8}},mt),
    ["6"]=setmetatable({id=6,group=1,lv=6,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001},rewardProNum={[1]=90}},mt),
    ["7"]=setmetatable({id=7,group=1,lv=7,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["8"]=setmetatable({id=8,group=1,lv=8,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["9"]=setmetatable({id=9,group=1,lv=9,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["10"]=setmetatable({id=10,group=1,lv=10,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=1000001},rewardProNum={[1]=100,[2]=3}},mt),
    ["11"]=setmetatable({id=11,group=1,lv=11,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["12"]=setmetatable({id=12,group=1,lv=12,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["13"]=setmetatable({id=13,group=1,lv=13,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["14"]=setmetatable({id=14,group=1,lv=14,highlightLv=0,rewardId={[1]=1090102},rewardNum={[1]=15},rewardOptional=0,rewardProId={[1]=1090102},rewardProNum={[1]=30}},mt),
    ["15"]=setmetatable({id=15,group=1,lv=15,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001,[2]=1009},rewardProNum={[1]=90,[2]=8}},mt),
    ["16"]=setmetatable({id=16,group=1,lv=16,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["17"]=setmetatable({id=17,group=1,lv=17,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["18"]=setmetatable({id=18,group=1,lv=18,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["19"]=setmetatable({id=19,group=1,lv=19,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["20"]=setmetatable({id=20,group=1,lv=20,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=1000001},rewardProNum={[1]=100,[2]=3}},mt),
    ["21"]=setmetatable({id=21,group=1,lv=21,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["22"]=setmetatable({id=22,group=1,lv=22,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["23"]=setmetatable({id=23,group=1,lv=23,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["24"]=setmetatable({id=24,group=1,lv=24,highlightLv=0,rewardId={[1]=1090101},rewardNum={[1]=150},rewardOptional=0,rewardProId={[1]=1090101},rewardProNum={[1]=200}},mt),
    ["25"]=setmetatable({id=25,group=1,lv=25,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001,[2]=1009},rewardProNum={[1]=90,[2]=8}},mt),
    ["26"]=setmetatable({id=26,group=1,lv=26,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["27"]=setmetatable({id=27,group=1,lv=27,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["28"]=setmetatable({id=28,group=1,lv=28,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["29"]=setmetatable({id=29,group=1,lv=29,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["30"]=setmetatable({id=30,group=1,lv=30,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=1000001},rewardProNum={[1]=100,[2]=4}},mt),
    ["31"]=setmetatable({id=31,group=1,lv=31,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["32"]=setmetatable({id=32,group=1,lv=32,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["33"]=setmetatable({id=33,group=1,lv=33,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["34"]=setmetatable({id=34,group=1,lv=34,highlightLv=0,rewardId={[1]=1090102},rewardNum={[1]=15},rewardOptional=0,rewardProId={[1]=1090102},rewardProNum={[1]=30}},mt),
    ["35"]=setmetatable({id=35,group=1,lv=35,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001,[2]=1009},rewardProNum={[1]=90,[2]=8}},mt),
    ["36"]=setmetatable({id=36,group=1,lv=36,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["37"]=setmetatable({id=37,group=1,lv=37,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["38"]=setmetatable({id=38,group=1,lv=38,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["39"]=setmetatable({id=39,group=1,lv=39,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=75000},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=225000}},mt),
    ["40"]=setmetatable({id=40,group=1,lv=40,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101},rewardProNum={[1]=100},rewardProOptional1=0,rewardProOptional2=1050050},mt),
    ["101"]=setmetatable({id=101,group=2,lv=1,highlightLv=0,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=11},rewardProNum={[1]=100,[2]=680}},mt),
    ["102"]=setmetatable({id=102,group=2,lv=2,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["103"]=setmetatable({id=103,group=2,lv=3,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["104"]=setmetatable({id=104,group=2,lv=4,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["105"]=setmetatable({id=105,group=2,lv=5,highlightLv=0,rewardId={[1]=1090101},rewardNum={[1]=150},rewardOptional=0,rewardProId={[1]=1090101,[2]=1009},rewardProNum={[1]=200,[2]=8}},mt),
    ["106"]=setmetatable({id=106,group=2,lv=6,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001},rewardProNum={[1]=90}},mt),
    ["107"]=setmetatable({id=107,group=2,lv=7,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["108"]=setmetatable({id=108,group=2,lv=8,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["109"]=setmetatable({id=109,group=2,lv=9,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["110"]=setmetatable({id=110,group=2,lv=10,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=1000001},rewardProNum={[1]=100,[2]=3}},mt),
    ["111"]=setmetatable({id=111,group=2,lv=11,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["112"]=setmetatable({id=112,group=2,lv=12,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["113"]=setmetatable({id=113,group=2,lv=13,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["114"]=setmetatable({id=114,group=2,lv=14,highlightLv=0,rewardId={[1]=1090102},rewardNum={[1]=15},rewardOptional=0,rewardProId={[1]=1090102},rewardProNum={[1]=30}},mt),
    ["115"]=setmetatable({id=115,group=2,lv=15,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001,[2]=1009},rewardProNum={[1]=90,[2]=8}},mt),
    ["116"]=setmetatable({id=116,group=2,lv=16,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["117"]=setmetatable({id=117,group=2,lv=17,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["118"]=setmetatable({id=118,group=2,lv=18,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["119"]=setmetatable({id=119,group=2,lv=19,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["120"]=setmetatable({id=120,group=2,lv=20,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=1000001},rewardProNum={[1]=100,[2]=3}},mt),
    ["121"]=setmetatable({id=121,group=2,lv=21,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["122"]=setmetatable({id=122,group=2,lv=22,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["123"]=setmetatable({id=123,group=2,lv=23,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["124"]=setmetatable({id=124,group=2,lv=24,highlightLv=0,rewardId={[1]=1090101},rewardNum={[1]=150},rewardOptional=0,rewardProId={[1]=1090101},rewardProNum={[1]=200}},mt),
    ["125"]=setmetatable({id=125,group=2,lv=25,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001,[2]=1009},rewardProNum={[1]=90,[2]=8}},mt),
    ["126"]=setmetatable({id=126,group=2,lv=26,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["127"]=setmetatable({id=127,group=2,lv=27,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["128"]=setmetatable({id=128,group=2,lv=28,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["129"]=setmetatable({id=129,group=2,lv=29,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["130"]=setmetatable({id=130,group=2,lv=30,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101,[2]=1000001},rewardProNum={[1]=100,[2]=4}},mt),
    ["131"]=setmetatable({id=131,group=2,lv=31,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=37500},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=112500}},mt),
    ["132"]=setmetatable({id=132,group=2,lv=32,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["133"]=setmetatable({id=133,group=2,lv=33,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["134"]=setmetatable({id=134,group=2,lv=34,highlightLv=0,rewardId={[1]=1090102},rewardNum={[1]=15},rewardOptional=0,rewardProId={[1]=1090102},rewardProNum={[1]=30}},mt),
    ["135"]=setmetatable({id=135,group=2,lv=35,highlightLv=0,rewardId={[1]=1070001},rewardNum={[1]=30},rewardOptional=0,rewardProId={[1]=1070001,[2]=1009},rewardProNum={[1]=90,[2]=8}},mt),
    ["136"]=setmetatable({id=136,group=2,lv=36,highlightLv=0,rewardId={[1]=1070002},rewardNum={[1]=5},rewardOptional=0,rewardProId={[1]=1070002},rewardProNum={[1]=15}},mt),
    ["137"]=setmetatable({id=137,group=2,lv=37,highlightLv=0,rewardId={[1]=1020002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1020002},rewardProNum={[1]=27}},mt),
    ["138"]=setmetatable({id=138,group=2,lv=38,highlightLv=0,rewardId={[1]=1090002},rewardNum={[1]=9},rewardOptional=0,rewardProId={[1]=1090002},rewardProNum={[1]=27}},mt),
    ["139"]=setmetatable({id=139,group=2,lv=39,highlightLv=0,rewardId={[1]=10},rewardNum={[1]=75000},rewardOptional=0,rewardProId={[1]=10},rewardProNum={[1]=225000}},mt),
    ["140"]=setmetatable({id=140,group=2,lv=40,highlightLv=1,rewardId={[1]=1000001},rewardNum={[1]=1},rewardOptional=0,rewardProId={[1]=1090101},rewardProNum={[1]=100},rewardProOptional1=0,rewardProOptional2=1050050},mt),
}
--生成获取数据的方法
---@return PassReward
function GetPassRewardData(id)
    return PassReward_Xls[tostring(id)]
end
--自动生成注释
---@class PassReward : table 
---@field id number
---@field group number
---@field lv number
---@field highlightLv number
---@field rewardId table
---@field rewardNum table
---@field rewardOptional number
---@field rewardProId table
---@field rewardProNum table
---@field rewardProOptional1 number
---@field rewardProOptional2 number
