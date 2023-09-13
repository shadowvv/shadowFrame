local default = {keyId=0,id=0,attackSpeedAddition=0,accurateAddition=0,attackSpeedAdditionscore=0,attackSpeedAdditionScoreLimit=0,accurateAdditionScore=0,accurateAdditionScoreLimit=0,limit=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponHighValue_Xls : table 
WeaponHighValue_Xls =
{
    ["5011010"]=setmetatable({keyId=5011010,id=5011010,attackSpeedAddition=-0.4,accurateAddition=-0.4,attackSpeedAdditionscore=720,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=720,accurateAdditionScoreLimit=1500,limit=30},mt),
    ["5012010"]=setmetatable({keyId=5012010,id=5012010,attackSpeedAddition=-0.4,accurateAddition=-0.4,attackSpeedAdditionscore=720,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=720,accurateAdditionScoreLimit=1500,limit=850},mt),
    ["5013010"]=setmetatable({keyId=5013010,id=5013010,attackSpeedAddition=-0.4,accurateAddition=-0.4,attackSpeedAdditionscore=720,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=720,accurateAdditionScoreLimit=1500,limit=8},mt),
    ["5014010"]=setmetatable({keyId=5014010,id=5014010,attackSpeedAddition=-0.4,accurateAddition=-0.4,attackSpeedAdditionscore=720,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=720,accurateAdditionScoreLimit=1500,limit=12},mt),
    ["5015010"]=setmetatable({keyId=5015010,id=5015010,attackSpeedAddition=-0.4,accurateAddition=-0.4,attackSpeedAdditionscore=720,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=720,accurateAdditionScoreLimit=1500,limit=6},mt),
    ["5021010"]=setmetatable({keyId=5021010,id=5021010,attackSpeedAddition=-0.35,accurateAddition=-0.25,attackSpeedAdditionscore=780,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=900,accurateAdditionScoreLimit=1500,limit=30},mt),
    ["5022010"]=setmetatable({keyId=5022010,id=5022010,attackSpeedAddition=-0.35,accurateAddition=-0.25,attackSpeedAdditionscore=780,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=900,accurateAdditionScoreLimit=1500,limit=850},mt),
    ["5023010"]=setmetatable({keyId=5023010,id=5023010,attackSpeedAddition=-0.35,accurateAddition=-0.25,attackSpeedAdditionscore=780,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=900,accurateAdditionScoreLimit=1500,limit=15},mt),
    ["5024010"]=setmetatable({keyId=5024010,id=5024010,attackSpeedAddition=-0.35,accurateAddition=-0.25,attackSpeedAdditionscore=780,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=900,accurateAdditionScoreLimit=1500,limit=10},mt),
    ["5025010"]=setmetatable({keyId=5025010,id=5025010,attackSpeedAddition=-0.35,accurateAddition=-0.25,attackSpeedAdditionscore=780,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=900,accurateAdditionScoreLimit=1500,limit=15},mt),
    ["5031010"]=setmetatable({keyId=5031010,id=5031010,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=45},mt),
    ["5031020"]=setmetatable({keyId=5031020,id=5031020,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=75},mt),
    ["5032010"]=setmetatable({keyId=5032010,id=5032010,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=1000},mt),
    ["5033010"]=setmetatable({keyId=5033010,id=5033010,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=15},mt),
    ["5033020"]=setmetatable({keyId=5033020,id=5033020,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=27},mt),
    ["5034010"]=setmetatable({keyId=5034010,id=5034010,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=10},mt),
    ["5034020"]=setmetatable({keyId=5034020,id=5034020,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=10},mt),
    ["5035010"]=setmetatable({keyId=5035010,id=5035010,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=15},mt),
    ["5035020"]=setmetatable({keyId=5035020,id=5035020,attackSpeedAddition=-0.2,accurateAddition=-0.2,attackSpeedAdditionscore=960,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=960,accurateAdditionScoreLimit=1500,limit=20},mt),
    ["5041010"]=setmetatable({keyId=5041010,id=5041010,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041020"]=setmetatable({keyId=5041020,id=5041020,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041030"]=setmetatable({keyId=5041030,id=5041030,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041040"]=setmetatable({keyId=5041040,id=5041040,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041050"]=setmetatable({keyId=5041050,id=5041050,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=45},mt),
    ["5041060"]=setmetatable({keyId=5041060,id=5041060,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041070"]=setmetatable({keyId=5041070,id=5041070,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041080"]=setmetatable({keyId=5041080,id=5041080,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041081"]=setmetatable({keyId=5041081,id=5041081,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041082"]=setmetatable({keyId=5041082,id=5041082,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041083"]=setmetatable({keyId=5041083,id=5041083,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5041090"]=setmetatable({keyId=5041090,id=5041090,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5042010"]=setmetatable({keyId=5042010,id=5042010,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5042020"]=setmetatable({keyId=5042020,id=5042020,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5042030"]=setmetatable({keyId=5042030,id=5042030,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5042040"]=setmetatable({keyId=5042040,id=5042040,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5043010"]=setmetatable({keyId=5043010,id=5043010,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5043020"]=setmetatable({keyId=5043020,id=5043020,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5043030"]=setmetatable({keyId=5043030,id=5043030,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5043040"]=setmetatable({keyId=5043040,id=5043040,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=12},mt),
    ["5043050"]=setmetatable({keyId=5043050,id=5043050,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5043060"]=setmetatable({keyId=5043060,id=5043060,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5044010"]=setmetatable({keyId=5044010,id=5044010,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5044020"]=setmetatable({keyId=5044020,id=5044020,attackSpeedAddition=-0.1,accurateAddition=-0.05,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=16},mt),
    ["5044030"]=setmetatable({keyId=5044030,id=5044030,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5044040"]=setmetatable({keyId=5044040,id=5044040,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5044050"]=setmetatable({keyId=5044050,id=5044050,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5044060"]=setmetatable({keyId=5044060,id=5044060,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5045010"]=setmetatable({keyId=5045010,id=5045010,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5045020"]=setmetatable({keyId=5045020,id=5045020,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5045030"]=setmetatable({keyId=5045030,id=5045030,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5045040"]=setmetatable({keyId=5045040,id=5045040,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5045060"]=setmetatable({keyId=5045060,id=5045060,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1140,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1080,accurateAdditionScoreLimit=1500,limit=20},mt),
    ["5045080"]=setmetatable({keyId=5045080,id=5045080,attackSpeedAddition=-0.05,accurateAddition=-0.1,attackSpeedAdditionscore=1080,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1140,accurateAdditionScoreLimit=1500,limit=1100},mt),
    ["5051010"]=setmetatable({keyId=5051010,id=5051010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5051020"]=setmetatable({keyId=5051020,id=5051020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5051030"]=setmetatable({keyId=5051030,id=5051030,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5052010"]=setmetatable({keyId=5052010,id=5052010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5052020"]=setmetatable({keyId=5052020,id=5052020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5053010"]=setmetatable({keyId=5053010,id=5053010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5053020"]=setmetatable({keyId=5053020,id=5053020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5053030"]=setmetatable({keyId=5053030,id=5053030,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5054010"]=setmetatable({keyId=5054010,id=5054010,attackSpeedAddition=0.075,accurateAddition=0.05,attackSpeedAdditionscore=1290,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5054020"]=setmetatable({keyId=5054020,id=5054020,attackSpeedAddition=0.075,accurateAddition=0.05,attackSpeedAdditionscore=1290,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1260,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5054030"]=setmetatable({keyId=5054030,id=5054030,attackSpeedAddition=0.075,accurateAddition=0.05,attackSpeedAdditionscore=1290,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1260,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5055010"]=setmetatable({keyId=5055010,id=5055010,attackSpeedAddition=0.075,accurateAddition=0.05,attackSpeedAdditionscore=1290,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1260,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5055020"]=setmetatable({keyId=5055020,id=5055020,attackSpeedAddition=0.075,accurateAddition=0.05,attackSpeedAdditionscore=1290,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1260,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5055030"]=setmetatable({keyId=5055030,id=5055030,attackSpeedAddition=0.075,accurateAddition=0.05,attackSpeedAdditionscore=1290,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1260,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5141010"]=setmetatable({keyId=5141010,id=5141010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5155010"]=setmetatable({keyId=5155010,id=5155010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5154010"]=setmetatable({keyId=5154010,id=5154010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5155020"]=setmetatable({keyId=5155020,id=5155020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5155030"]=setmetatable({keyId=5155030,id=5155030,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5153010"]=setmetatable({keyId=5153010,id=5153010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5153020"]=setmetatable({keyId=5153020,id=5153020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5154020"]=setmetatable({keyId=5154020,id=5154020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5151010"]=setmetatable({keyId=5151010,id=5151010,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5151020"]=setmetatable({keyId=5151020,id=5151020,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5151030"]=setmetatable({keyId=5151030,id=5151030,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5151040"]=setmetatable({keyId=5151040,id=5151040,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5153030"]=setmetatable({keyId=5153030,id=5153030,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5155040"]=setmetatable({keyId=5155040,id=5155040,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
    ["5154030"]=setmetatable({keyId=5154030,id=5154030,attackSpeedAddition=0.05,accurateAddition=0.1,attackSpeedAdditionscore=1260,attackSpeedAdditionScoreLimit=1500,accurateAdditionScore=1320,accurateAdditionScoreLimit=1500,limit=1250},mt),
}
--生成获取数据的方法
---@return WeaponHighValue
function GetWeaponHighValueData(id)
    return WeaponHighValue_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponHighValue : table 
---@field keyId number
---@field id number
---@field attackSpeedAddition number
---@field accurateAddition number
---@field attackSpeedAdditionscore number
---@field attackSpeedAdditionScoreLimit number
---@field accurateAdditionScore number
---@field accurateAdditionScoreLimit number
---@field limit number
