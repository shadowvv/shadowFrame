local default = {id=0,isOpen=0,themeId=0,difficultyOrder=0,difficultyCondition=0,difficultyNum="",difficultyName="",difficultyFirstPassReward=0,difficultyPassRewardShow=0,reBattlePower=0,reElement=xlsNilTable,position=0,stageGroup=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class RoguelikeThemeDifficulty_Xls : table 
RoguelikeThemeDifficulty_Xls =
{
    ["1"]=setmetatable({id=1,isOpen=1,themeId=1,difficultyOrder=1,difficultyCondition=601,difficultyNum="Ⅰ",difficultyName="第一歧路",difficultyFirstPassReward=15000001,difficultyPassRewardShow=1100001,reBattlePower=5000,reElement={[1]=3},position=4,stageGroup=101},mt),
    ["2"]=setmetatable({id=2,isOpen=1,themeId=1,difficultyOrder=2,difficultyCondition=620,difficultyNum="Ⅱ",difficultyName="第二歧路",difficultyFirstPassReward=15000002,difficultyPassRewardShow=1100002,reBattlePower=10000,reElement={[1]=3},position=4,stageGroup=102},mt),
    ["3"]=setmetatable({id=3,isOpen=1,themeId=1,difficultyOrder=3,difficultyCondition=640,difficultyNum="Ⅲ",difficultyName="第三歧路",difficultyFirstPassReward=15000003,difficultyPassRewardShow=1100003,reBattlePower=25000,reElement={[1]=3},position=4,stageGroup=103},mt),
    ["4"]=setmetatable({id=4,isOpen=1,themeId=1,difficultyOrder=4,difficultyCondition=650,difficultyNum="Ⅳ",difficultyName="第四歧路",difficultyFirstPassReward=15000004,difficultyPassRewardShow=1100004,reBattlePower=35000,reElement={[1]=3},position=4,stageGroup=104},mt),
    ["5"]=setmetatable({id=5,isOpen=1,themeId=1,difficultyOrder=5,difficultyCondition=660,difficultyNum="Ⅴ",difficultyName="第五歧路",difficultyFirstPassReward=15000005,difficultyPassRewardShow=1100005,reBattlePower=42000,reElement={[1]=3},position=4,stageGroup=105},mt),
    ["6"]=setmetatable({id=6,isOpen=1,themeId=1,difficultyOrder=6,difficultyCondition=670,difficultyNum="Ⅵ",difficultyName="第六歧路",difficultyFirstPassReward=15000006,difficultyPassRewardShow=1100006,reBattlePower=50000,reElement={[1]=3},position=4,stageGroup=106},mt),
    ["7"]=setmetatable({id=7,isOpen=1,themeId=2,difficultyOrder=1,difficultyCondition=601,difficultyNum="Ⅰ",difficultyName="第一歧路",difficultyFirstPassReward=15000007,difficultyPassRewardShow=1100007,reBattlePower=5000,reElement={[1]=2},position=4,stageGroup=201},mt),
    ["8"]=setmetatable({id=8,isOpen=1,themeId=2,difficultyOrder=2,difficultyCondition=620,difficultyNum="Ⅱ",difficultyName="第二歧路",difficultyFirstPassReward=15000008,difficultyPassRewardShow=1100008,reBattlePower=10000,reElement={[1]=2},position=4,stageGroup=202},mt),
    ["9"]=setmetatable({id=9,isOpen=1,themeId=2,difficultyOrder=3,difficultyCondition=640,difficultyNum="Ⅲ",difficultyName="第三歧路",difficultyFirstPassReward=15000009,difficultyPassRewardShow=1100009,reBattlePower=25000,reElement={[1]=2},position=4,stageGroup=203},mt),
    ["10"]=setmetatable({id=10,isOpen=1,themeId=2,difficultyOrder=4,difficultyCondition=650,difficultyNum="Ⅳ",difficultyName="第四歧路",difficultyFirstPassReward=15000010,difficultyPassRewardShow=1100010,reBattlePower=35000,reElement={[1]=2},position=4,stageGroup=204},mt),
    ["11"]=setmetatable({id=11,isOpen=1,themeId=2,difficultyOrder=5,difficultyCondition=660,difficultyNum="Ⅴ",difficultyName="第五歧路",difficultyFirstPassReward=15000011,difficultyPassRewardShow=1100011,reBattlePower=42000,reElement={[1]=2},position=4,stageGroup=205},mt),
    ["12"]=setmetatable({id=12,isOpen=1,themeId=2,difficultyOrder=6,difficultyCondition=670,difficultyNum="Ⅵ",difficultyName="第六歧路",difficultyFirstPassReward=15000012,difficultyPassRewardShow=1100012,reBattlePower=50000,reElement={[1]=2},position=4,stageGroup=206},mt),
    ["13"]=setmetatable({id=13,isOpen=1,themeId=3,difficultyOrder=1,difficultyCondition=601,difficultyNum="Ⅰ",difficultyName="第一歧路",difficultyFirstPassReward=15000013,difficultyPassRewardShow=1100013,reBattlePower=5000,reElement={[1]=4},position=4,stageGroup=301},mt),
    ["14"]=setmetatable({id=14,isOpen=1,themeId=3,difficultyOrder=2,difficultyCondition=620,difficultyNum="Ⅱ",difficultyName="第二歧路",difficultyFirstPassReward=15000014,difficultyPassRewardShow=1100014,reBattlePower=10000,reElement={[1]=4},position=4,stageGroup=302},mt),
    ["15"]=setmetatable({id=15,isOpen=1,themeId=3,difficultyOrder=3,difficultyCondition=640,difficultyNum="Ⅲ",difficultyName="第三歧路",difficultyFirstPassReward=15000015,difficultyPassRewardShow=1100015,reBattlePower=25000,reElement={[1]=4},position=4,stageGroup=303},mt),
    ["16"]=setmetatable({id=16,isOpen=1,themeId=3,difficultyOrder=4,difficultyCondition=650,difficultyNum="Ⅳ",difficultyName="第四歧路",difficultyFirstPassReward=15000016,difficultyPassRewardShow=1100016,reBattlePower=35000,reElement={[1]=4},position=4,stageGroup=304},mt),
    ["17"]=setmetatable({id=17,isOpen=1,themeId=3,difficultyOrder=5,difficultyCondition=660,difficultyNum="Ⅴ",difficultyName="第五歧路",difficultyFirstPassReward=15000017,difficultyPassRewardShow=1100017,reBattlePower=42000,reElement={[1]=4},position=4,stageGroup=305},mt),
    ["18"]=setmetatable({id=18,isOpen=1,themeId=3,difficultyOrder=6,difficultyCondition=670,difficultyNum="Ⅵ",difficultyName="第六歧路",difficultyFirstPassReward=15000018,difficultyPassRewardShow=1100018,reBattlePower=50000,reElement={[1]=4},position=4,stageGroup=306},mt),
    ["19"]=setmetatable({id=19,isOpen=1,themeId=4,difficultyOrder=1,difficultyCondition=601,difficultyNum="Ⅰ",difficultyName="第一歧路",difficultyFirstPassReward=15000019,difficultyPassRewardShow=1100019,reBattlePower=5000,reElement={[1]=5},position=4,stageGroup=401},mt),
    ["20"]=setmetatable({id=20,isOpen=1,themeId=4,difficultyOrder=2,difficultyCondition=620,difficultyNum="Ⅱ",difficultyName="第二歧路",difficultyFirstPassReward=15000020,difficultyPassRewardShow=1100020,reBattlePower=10000,reElement={[1]=5},position=4,stageGroup=402},mt),
    ["21"]=setmetatable({id=21,isOpen=1,themeId=4,difficultyOrder=3,difficultyCondition=640,difficultyNum="Ⅲ",difficultyName="第三歧路",difficultyFirstPassReward=15000021,difficultyPassRewardShow=1100021,reBattlePower=25000,reElement={[1]=5},position=4,stageGroup=403},mt),
    ["22"]=setmetatable({id=22,isOpen=1,themeId=4,difficultyOrder=4,difficultyCondition=650,difficultyNum="Ⅳ",difficultyName="第四歧路",difficultyFirstPassReward=15000022,difficultyPassRewardShow=1100022,reBattlePower=35000,reElement={[1]=5},position=4,stageGroup=404},mt),
    ["23"]=setmetatable({id=23,isOpen=1,themeId=4,difficultyOrder=5,difficultyCondition=660,difficultyNum="Ⅴ",difficultyName="第五歧路",difficultyFirstPassReward=15000023,difficultyPassRewardShow=1100023,reBattlePower=42000,reElement={[1]=5},position=4,stageGroup=405},mt),
    ["24"]=setmetatable({id=24,isOpen=1,themeId=4,difficultyOrder=6,difficultyCondition=670,difficultyNum="Ⅵ",difficultyName="第六歧路",difficultyFirstPassReward=15000024,difficultyPassRewardShow=1100024,reBattlePower=50000,reElement={[1]=5},position=4,stageGroup=406},mt),
    ["25"]=setmetatable({id=25,isOpen=0,themeId=5,difficultyOrder=1,difficultyCondition=655,difficultyNum="Ⅰ",difficultyName="第一歧路",difficultyFirstPassReward=501001,difficultyPassRewardShow=501001,reBattlePower=100,reElement={[1]=4},position=4,stageGroup=101},mt),
}
--生成获取数据的方法
---@return RoguelikeThemeDifficulty
function GetRoguelikeThemeDifficultyData(id)
    return RoguelikeThemeDifficulty_Xls[tostring(id)]
end
--自动生成注释
---@class RoguelikeThemeDifficulty : table 
---@field id number
---@field isOpen number
---@field themeId number
---@field difficultyOrder number
---@field difficultyCondition number
---@field difficultyNum string
---@field difficultyName string
---@field difficultyFirstPassReward number
---@field difficultyPassRewardShow number
---@field reBattlePower number
---@field reElement table
---@field position number
---@field stageGroup number
