local default = {elementStrengthId=0,elementId=0,addNum=0,reduceSpeed=0,chance=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class ElementStrength_Xls : table 
ElementStrength_Xls =
{
    ["101"]=setmetatable({elementStrengthId=101,elementId=1,addNum=1.0,reduceSpeed=0.0,chance=0.5},mt),
    ["102"]=setmetatable({elementStrengthId=102,elementId=1,addNum=2.0,reduceSpeed=0.0,chance=0.5},mt),
    ["103"]=setmetatable({elementStrengthId=103,elementId=1,addNum=3.0,reduceSpeed=0.0,chance=0.5},mt),
    ["200"]=setmetatable({elementStrengthId=200,elementId=2,addNum=0.0,reduceSpeed=0.0,chance=0.0},mt),
    ["201"]=setmetatable({elementStrengthId=201,elementId=2,addNum=1.0,reduceSpeed=0.0,chance=0.5},mt),
    ["202"]=setmetatable({elementStrengthId=202,elementId=2,addNum=2.0,reduceSpeed=0.0,chance=0.5},mt),
    ["203"]=setmetatable({elementStrengthId=203,elementId=2,addNum=3.0,reduceSpeed=0.0,chance=0.5},mt),
    ["212"]=setmetatable({elementStrengthId=212,elementId=2,addNum=2.2,reduceSpeed=0.0,chance=1.0},mt),
    ["213"]=setmetatable({elementStrengthId=213,elementId=3,addNum=2.2,reduceSpeed=0.0,chance=1.0},mt),
    ["214"]=setmetatable({elementStrengthId=214,elementId=4,addNum=2.2,reduceSpeed=0.0,chance=1.0},mt),
    ["215"]=setmetatable({elementStrengthId=215,elementId=5,addNum=2.2,reduceSpeed=0.0,chance=1.0},mt),
    ["20211"]=setmetatable({elementStrengthId=20211,elementId=2,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20212"]=setmetatable({elementStrengthId=20212,elementId=2,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20241"]=setmetatable({elementStrengthId=20241,elementId=2,addNum=0.0,reduceSpeed=0.0,chance=0.0},mt),
    ["20242"]=setmetatable({elementStrengthId=20242,elementId=2,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20243"]=setmetatable({elementStrengthId=20243,elementId=2,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20021"]=setmetatable({elementStrengthId=20021,elementId=2,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["20022"]=setmetatable({elementStrengthId=20022,elementId=2,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20023"]=setmetatable({elementStrengthId=20023,elementId=2,addNum=5.5,reduceSpeed=0.0,chance=1.0},mt),
    ["20141"]=setmetatable({elementStrengthId=20141,elementId=2,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2014030"]=setmetatable({elementStrengthId=2014030,elementId=2,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20061"]=setmetatable({elementStrengthId=20061,elementId=2,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20062"]=setmetatable({elementStrengthId=20062,elementId=2,addNum=1.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20191"]=setmetatable({elementStrengthId=20191,elementId=2,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["20192"]=setmetatable({elementStrengthId=20192,elementId=2,addNum=17.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20193"]=setmetatable({elementStrengthId=20193,elementId=2,addNum=2.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20290"]=setmetatable({elementStrengthId=20290,elementId=2,addNum=0.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20291"]=setmetatable({elementStrengthId=20291,elementId=2,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["20292"]=setmetatable({elementStrengthId=20292,elementId=2,addNum=1.8,reduceSpeed=0.0,chance=1.0},mt),
    ["2000"]=setmetatable({elementStrengthId=2000,elementId=2,addNum=9999.0,reduceSpeed=0.0,chance=1.0},mt),
    ["300"]=setmetatable({elementStrengthId=300,elementId=3,addNum=0.0,reduceSpeed=0.0,chance=0.0},mt),
    ["301"]=setmetatable({elementStrengthId=301,elementId=3,addNum=1.0,reduceSpeed=0.0,chance=1.0},mt),
    ["302"]=setmetatable({elementStrengthId=302,elementId=3,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["303"]=setmetatable({elementStrengthId=303,elementId=3,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30011"]=setmetatable({elementStrengthId=30011,elementId=3,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30012"]=setmetatable({elementStrengthId=30012,elementId=3,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30013"]=setmetatable({elementStrengthId=30013,elementId=3,addNum=0.15,reduceSpeed=0.0,chance=1.0},mt),
    ["30231"]=setmetatable({elementStrengthId=30231,elementId=3,addNum=0.3,reduceSpeed=0.0,chance=1.0},mt),
    ["30232"]=setmetatable({elementStrengthId=30232,elementId=3,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30111"]=setmetatable({elementStrengthId=30111,elementId=3,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["30112"]=setmetatable({elementStrengthId=30112,elementId=3,addNum=50.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30113"]=setmetatable({elementStrengthId=30113,elementId=3,addNum=30.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30114"]=setmetatable({elementStrengthId=30114,elementId=3,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30101"]=setmetatable({elementStrengthId=30101,elementId=3,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30161"]=setmetatable({elementStrengthId=30161,elementId=3,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["30162"]=setmetatable({elementStrengthId=30162,elementId=3,addNum=1.8,reduceSpeed=0.0,chance=1.0},mt),
    ["30163"]=setmetatable({elementStrengthId=30163,elementId=3,addNum=1.8,reduceSpeed=0.0,chance=1.0},mt),
    ["30164"]=setmetatable({elementStrengthId=30164,elementId=3,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30331"]=setmetatable({elementStrengthId=30331,elementId=3,addNum=2.5,reduceSpeed=0.0,chance=1.0},mt),
    ["2004020"]=setmetatable({elementStrengthId=2004020,elementId=3,addNum=4.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2004030"]=setmetatable({elementStrengthId=2004030,elementId=3,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30370"]=setmetatable({elementStrengthId=30370,elementId=3,addNum=0.3,reduceSpeed=0.0,chance=1.0},mt),
    ["30371"]=setmetatable({elementStrengthId=30371,elementId=3,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30372"]=setmetatable({elementStrengthId=30372,elementId=3,addNum=50.0,reduceSpeed=0.0,chance=1.0},mt),
    ["30373"]=setmetatable({elementStrengthId=30373,elementId=3,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["400"]=setmetatable({elementStrengthId=400,elementId=4,addNum=0.0,reduceSpeed=0.0,chance=0.0},mt),
    ["401"]=setmetatable({elementStrengthId=401,elementId=4,addNum=1.0,reduceSpeed=0.0,chance=0.5},mt),
    ["402"]=setmetatable({elementStrengthId=402,elementId=4,addNum=10.0,reduceSpeed=0.0,chance=0.5},mt),
    ["403"]=setmetatable({elementStrengthId=403,elementId=4,addNum=20.0,reduceSpeed=0.0,chance=0.5},mt),
    ["40261"]=setmetatable({elementStrengthId=40261,elementId=4,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40262"]=setmetatable({elementStrengthId=40262,elementId=4,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40151"]=setmetatable({elementStrengthId=40151,elementId=4,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40152"]=setmetatable({elementStrengthId=40152,elementId=4,addNum=5.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40090"]=setmetatable({elementStrengthId=40090,elementId=4,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["40091"]=setmetatable({elementStrengthId=40091,elementId=4,addNum=50.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40092"]=setmetatable({elementStrengthId=40092,elementId=4,addNum=3.75,reduceSpeed=0.0,chance=1.0},mt),
    ["40171"]=setmetatable({elementStrengthId=40171,elementId=4,addNum=1.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40172"]=setmetatable({elementStrengthId=40172,elementId=4,addNum=1.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40201"]=setmetatable({elementStrengthId=40201,elementId=4,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["2020020"]=setmetatable({elementStrengthId=2020020,elementId=4,addNum=30.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2020021"]=setmetatable({elementStrengthId=2020021,elementId=4,addNum=30.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2020030"]=setmetatable({elementStrengthId=2020030,elementId=4,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40051"]=setmetatable({elementStrengthId=40051,elementId=4,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["40052"]=setmetatable({elementStrengthId=40052,elementId=4,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["40053"]=setmetatable({elementStrengthId=40053,elementId=4,addNum=2.5,reduceSpeed=0.0,chance=1.0},mt),
    ["40054"]=setmetatable({elementStrengthId=40054,elementId=4,addNum=9999.0,reduceSpeed=0.0,chance=1.0},mt),
    ["438"]=setmetatable({elementStrengthId=438,elementId=5,addNum=9999.0,reduceSpeed=0.0,chance=1.0},mt),
    ["500"]=setmetatable({elementStrengthId=500,elementId=5,addNum=0.0,reduceSpeed=0.0,chance=0.0},mt),
    ["501"]=setmetatable({elementStrengthId=501,elementId=5,addNum=1.0,reduceSpeed=0.0,chance=0.5},mt),
    ["502"]=setmetatable({elementStrengthId=502,elementId=5,addNum=2.0,reduceSpeed=0.0,chance=0.5},mt),
    ["503"]=setmetatable({elementStrengthId=503,elementId=5,addNum=3.0,reduceSpeed=0.0,chance=0.5},mt),
    ["50071"]=setmetatable({elementStrengthId=50071,elementId=5,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["50121"]=setmetatable({elementStrengthId=50121,elementId=5,addNum=1.5,reduceSpeed=0.0,chance=1.0},mt),
    ["50122"]=setmetatable({elementStrengthId=50122,elementId=5,addNum=8.0,reduceSpeed=0.0,chance=1.0},mt),
    ["50123"]=setmetatable({elementStrengthId=50123,elementId=5,addNum=0.0,reduceSpeed=0.0,chance=0.0},mt),
    ["50124"]=setmetatable({elementStrengthId=50124,elementId=5,addNum=25.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2007020"]=setmetatable({elementStrengthId=2007020,elementId=5,addNum=50.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2007030"]=setmetatable({elementStrengthId=2007030,elementId=5,addNum=6.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2012030"]=setmetatable({elementStrengthId=2012030,elementId=5,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["2012031"]=setmetatable({elementStrengthId=2012031,elementId=5,addNum=30.0,reduceSpeed=0.0,chance=1.0},mt),
    ["50031"]=setmetatable({elementStrengthId=50031,elementId=5,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["50041"]=setmetatable({elementStrengthId=50041,elementId=5,addNum=0.3,reduceSpeed=0.0,chance=1.0},mt),
    ["50042"]=setmetatable({elementStrengthId=50042,elementId=5,addNum=0.5,reduceSpeed=0.0,chance=1.0},mt),
    ["50181"]=setmetatable({elementStrengthId=50181,elementId=5,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["50182"]=setmetatable({elementStrengthId=50182,elementId=5,addNum=0.8,reduceSpeed=0.0,chance=1.0},mt),
    ["50183"]=setmetatable({elementStrengthId=50183,elementId=5,addNum=0.6,reduceSpeed=0.0,chance=1.0},mt),
    ["50251"]=setmetatable({elementStrengthId=50251,elementId=5,addNum=10.0,reduceSpeed=0.0,chance=1.0},mt),
    ["50252"]=setmetatable({elementStrengthId=50252,elementId=5,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["50271"]=setmetatable({elementStrengthId=50271,elementId=5,addNum=20.0,reduceSpeed=0.0,chance=1.0},mt),
    ["601"]=setmetatable({elementStrengthId=601,elementId=6,addNum=1.0,reduceSpeed=0.0,chance=0.5},mt),
    ["602"]=setmetatable({elementStrengthId=602,elementId=6,addNum=2.0,reduceSpeed=0.0,chance=0.5},mt),
    ["603"]=setmetatable({elementStrengthId=603,elementId=6,addNum=3.0,reduceSpeed=0.0,chance=0.5},mt),
}
--生成获取数据的方法
---@return ElementStrength
function GetElementStrengthData(id)
    return ElementStrength_Xls[tostring(id)]
end
--自动生成注释
---@class ElementStrength : table 
---@field elementStrengthId number
---@field elementId number
---@field addNum number
---@field reduceSpeed number
---@field chance number
