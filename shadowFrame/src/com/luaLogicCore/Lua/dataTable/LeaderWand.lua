local default = {wandSlotId=0,wandSlotOrder=0,slotSkillBag=0,slotOpen=0,locationName="",locationNameEn=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class LeaderWand_Xls : table 
LeaderWand_Xls =
{
    ["20011"]=setmetatable({wandSlotId=20011,wandSlotOrder=1,slotSkillBag=2001001,slotOpen=8200120,locationName="刻痕",locationNameEn="ying"},mt),
    ["20012"]=setmetatable({wandSlotId=20012,wandSlotOrder=2,slotSkillBag=212,slotOpen=8200130,locationName="印迹",locationNameEn="sun"},mt),
    ["20013"]=setmetatable({wandSlotId=20013,wandSlotOrder=3,slotSkillBag=2001,slotOpen=8200135,locationName="灵感",locationNameEn="moon"},mt),
    ["20014"]=setmetatable({wandSlotId=20014,wandSlotOrder=4,slotSkillBag=2001,slotOpen=8200140,locationName="意志",locationNameEn="moon"},mt),
    ["20021"]=setmetatable({wandSlotId=20021,wandSlotOrder=1,slotSkillBag=2002001,slotOpen=8200220,locationName="刻痕",locationNameEn="ying"},mt),
    ["20022"]=setmetatable({wandSlotId=20022,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200230,locationName="印迹",locationNameEn="sun"},mt),
    ["20023"]=setmetatable({wandSlotId=20023,wandSlotOrder=3,slotSkillBag=2002,slotOpen=8200235,locationName="灵感",locationNameEn="moon"},mt),
    ["20024"]=setmetatable({wandSlotId=20024,wandSlotOrder=4,slotSkillBag=2002,slotOpen=8200240,locationName="意志",locationNameEn="moon"},mt),
    ["20031"]=setmetatable({wandSlotId=20031,wandSlotOrder=1,slotSkillBag=2003001,slotOpen=8200320,locationName="刻痕",locationNameEn="ying"},mt),
    ["20032"]=setmetatable({wandSlotId=20032,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200330,locationName="印迹",locationNameEn="sun"},mt),
    ["20033"]=setmetatable({wandSlotId=20033,wandSlotOrder=3,slotSkillBag=2003,slotOpen=8200335,locationName="灵感",locationNameEn="moon"},mt),
    ["20034"]=setmetatable({wandSlotId=20034,wandSlotOrder=4,slotSkillBag=2003,slotOpen=8200340,locationName="意志",locationNameEn="moon"},mt),
    ["20041"]=setmetatable({wandSlotId=20041,wandSlotOrder=1,slotSkillBag=2004001,slotOpen=8200420,locationName="刻痕",locationNameEn="ying"},mt),
    ["20042"]=setmetatable({wandSlotId=20042,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200430,locationName="印迹",locationNameEn="sun"},mt),
    ["20043"]=setmetatable({wandSlotId=20043,wandSlotOrder=3,slotSkillBag=2004,slotOpen=8200435,locationName="灵感",locationNameEn="moon"},mt),
    ["20044"]=setmetatable({wandSlotId=20044,wandSlotOrder=4,slotSkillBag=2004,slotOpen=8200440,locationName="意志",locationNameEn="moon"},mt),
    ["20051"]=setmetatable({wandSlotId=20051,wandSlotOrder=1,slotSkillBag=2005001,slotOpen=8200520,locationName="刻痕",locationNameEn="ying"},mt),
    ["20052"]=setmetatable({wandSlotId=20052,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200530,locationName="印迹",locationNameEn="sun"},mt),
    ["20053"]=setmetatable({wandSlotId=20053,wandSlotOrder=3,slotSkillBag=2005,slotOpen=8200535,locationName="灵感",locationNameEn="moon"},mt),
    ["20054"]=setmetatable({wandSlotId=20054,wandSlotOrder=4,slotSkillBag=2005,slotOpen=8200540,locationName="意志",locationNameEn="moon"},mt),
    ["20061"]=setmetatable({wandSlotId=20061,wandSlotOrder=1,slotSkillBag=2006001,slotOpen=8200620,locationName="刻痕",locationNameEn="ying"},mt),
    ["20062"]=setmetatable({wandSlotId=20062,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200630,locationName="印迹",locationNameEn="sun"},mt),
    ["20063"]=setmetatable({wandSlotId=20063,wandSlotOrder=3,slotSkillBag=2006,slotOpen=8200635,locationName="灵感",locationNameEn="moon"},mt),
    ["20064"]=setmetatable({wandSlotId=20064,wandSlotOrder=4,slotSkillBag=2006,slotOpen=8200640,locationName="意志",locationNameEn="moon"},mt),
    ["20071"]=setmetatable({wandSlotId=20071,wandSlotOrder=1,slotSkillBag=2007001,slotOpen=8200720,locationName="刻痕",locationNameEn="ying"},mt),
    ["20072"]=setmetatable({wandSlotId=20072,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200730,locationName="印迹",locationNameEn="sun"},mt),
    ["20073"]=setmetatable({wandSlotId=20073,wandSlotOrder=3,slotSkillBag=2007,slotOpen=8200735,locationName="灵感",locationNameEn="moon"},mt),
    ["20074"]=setmetatable({wandSlotId=20074,wandSlotOrder=4,slotSkillBag=2007,slotOpen=8200740,locationName="意志",locationNameEn="moon"},mt),
    ["20081"]=setmetatable({wandSlotId=20081,wandSlotOrder=1,slotSkillBag=2008001,slotOpen=8200820,locationName="刻痕",locationNameEn="ying"},mt),
    ["20082"]=setmetatable({wandSlotId=20082,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200830,locationName="印迹",locationNameEn="sun"},mt),
    ["20083"]=setmetatable({wandSlotId=20083,wandSlotOrder=3,slotSkillBag=2008,slotOpen=8200835,locationName="灵感",locationNameEn="moon"},mt),
    ["20084"]=setmetatable({wandSlotId=20084,wandSlotOrder=4,slotSkillBag=2008,slotOpen=8200840,locationName="意志",locationNameEn="moon"},mt),
    ["20091"]=setmetatable({wandSlotId=20091,wandSlotOrder=1,slotSkillBag=2009001,slotOpen=8200920,locationName="刻痕",locationNameEn="ying"},mt),
    ["20092"]=setmetatable({wandSlotId=20092,wandSlotOrder=2,slotSkillBag=210,slotOpen=8200930,locationName="印迹",locationNameEn="sun"},mt),
    ["20093"]=setmetatable({wandSlotId=20093,wandSlotOrder=3,slotSkillBag=2009,slotOpen=8200935,locationName="灵感",locationNameEn="moon"},mt),
    ["20094"]=setmetatable({wandSlotId=20094,wandSlotOrder=4,slotSkillBag=2009,slotOpen=8200940,locationName="意志",locationNameEn="moon"},mt),
    ["20101"]=setmetatable({wandSlotId=20101,wandSlotOrder=1,slotSkillBag=2010001,slotOpen=8201020,locationName="刻痕",locationNameEn="ying"},mt),
    ["20102"]=setmetatable({wandSlotId=20102,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201030,locationName="印迹",locationNameEn="sun"},mt),
    ["20103"]=setmetatable({wandSlotId=20103,wandSlotOrder=3,slotSkillBag=2010,slotOpen=8201035,locationName="灵感",locationNameEn="moon"},mt),
    ["20104"]=setmetatable({wandSlotId=20104,wandSlotOrder=4,slotSkillBag=2010,slotOpen=8201040,locationName="意志",locationNameEn="moon"},mt),
    ["20111"]=setmetatable({wandSlotId=20111,wandSlotOrder=1,slotSkillBag=2011001,slotOpen=8201120,locationName="刻痕",locationNameEn="ying"},mt),
    ["20112"]=setmetatable({wandSlotId=20112,wandSlotOrder=2,slotSkillBag=212,slotOpen=8201130,locationName="印迹",locationNameEn="sun"},mt),
    ["20113"]=setmetatable({wandSlotId=20113,wandSlotOrder=3,slotSkillBag=2011,slotOpen=8201135,locationName="灵感",locationNameEn="moon"},mt),
    ["20114"]=setmetatable({wandSlotId=20114,wandSlotOrder=4,slotSkillBag=2011,slotOpen=8201140,locationName="意志",locationNameEn="moon"},mt),
    ["20121"]=setmetatable({wandSlotId=20121,wandSlotOrder=1,slotSkillBag=2012001,slotOpen=8201220,locationName="刻痕",locationNameEn="ying"},mt),
    ["20122"]=setmetatable({wandSlotId=20122,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201230,locationName="印迹",locationNameEn="sun"},mt),
    ["20123"]=setmetatable({wandSlotId=20123,wandSlotOrder=3,slotSkillBag=2012,slotOpen=8201235,locationName="灵感",locationNameEn="moon"},mt),
    ["20124"]=setmetatable({wandSlotId=20124,wandSlotOrder=4,slotSkillBag=2012,slotOpen=8201240,locationName="意志",locationNameEn="moon"},mt),
    ["20131"]=setmetatable({wandSlotId=20131,wandSlotOrder=1,slotSkillBag=2013001,slotOpen=8201320,locationName="刻痕",locationNameEn="ying"},mt),
    ["20132"]=setmetatable({wandSlotId=20132,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201330,locationName="印迹",locationNameEn="sun"},mt),
    ["20133"]=setmetatable({wandSlotId=20133,wandSlotOrder=3,slotSkillBag=2013,slotOpen=8201335,locationName="灵感",locationNameEn="moon"},mt),
    ["20134"]=setmetatable({wandSlotId=20134,wandSlotOrder=4,slotSkillBag=2013,slotOpen=8201340,locationName="意志",locationNameEn="moon"},mt),
    ["20141"]=setmetatable({wandSlotId=20141,wandSlotOrder=1,slotSkillBag=2014001,slotOpen=8201420,locationName="刻痕",locationNameEn="ying"},mt),
    ["20142"]=setmetatable({wandSlotId=20142,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201430,locationName="印迹",locationNameEn="sun"},mt),
    ["20143"]=setmetatable({wandSlotId=20143,wandSlotOrder=3,slotSkillBag=2014,slotOpen=8201435,locationName="灵感",locationNameEn="moon"},mt),
    ["20144"]=setmetatable({wandSlotId=20144,wandSlotOrder=4,slotSkillBag=2014,slotOpen=8201440,locationName="意志",locationNameEn="moon"},mt),
    ["20151"]=setmetatable({wandSlotId=20151,wandSlotOrder=1,slotSkillBag=2015001,slotOpen=8201520,locationName="刻痕",locationNameEn="ying"},mt),
    ["20152"]=setmetatable({wandSlotId=20152,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201530,locationName="印迹",locationNameEn="sun"},mt),
    ["20153"]=setmetatable({wandSlotId=20153,wandSlotOrder=3,slotSkillBag=2015,slotOpen=8201535,locationName="灵感",locationNameEn="moon"},mt),
    ["20154"]=setmetatable({wandSlotId=20154,wandSlotOrder=4,slotSkillBag=2015,slotOpen=8201540,locationName="意志",locationNameEn="moon"},mt),
    ["20161"]=setmetatable({wandSlotId=20161,wandSlotOrder=1,slotSkillBag=2016001,slotOpen=8201620,locationName="刻痕",locationNameEn="ying"},mt),
    ["20162"]=setmetatable({wandSlotId=20162,wandSlotOrder=2,slotSkillBag=212,slotOpen=8201630,locationName="印迹",locationNameEn="sun"},mt),
    ["20163"]=setmetatable({wandSlotId=20163,wandSlotOrder=3,slotSkillBag=2016,slotOpen=8201635,locationName="灵感",locationNameEn="moon"},mt),
    ["20164"]=setmetatable({wandSlotId=20164,wandSlotOrder=4,slotSkillBag=2016,slotOpen=8201640,locationName="意志",locationNameEn="moon"},mt),
    ["20171"]=setmetatable({wandSlotId=20171,wandSlotOrder=1,slotSkillBag=2017001,slotOpen=8201720,locationName="刻痕",locationNameEn="ying"},mt),
    ["20172"]=setmetatable({wandSlotId=20172,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201730,locationName="印迹",locationNameEn="sun"},mt),
    ["20173"]=setmetatable({wandSlotId=20173,wandSlotOrder=3,slotSkillBag=2017,slotOpen=8201735,locationName="灵感",locationNameEn="moon"},mt),
    ["20174"]=setmetatable({wandSlotId=20174,wandSlotOrder=4,slotSkillBag=2017,slotOpen=8201740,locationName="意志",locationNameEn="moon"},mt),
    ["20181"]=setmetatable({wandSlotId=20181,wandSlotOrder=1,slotSkillBag=2018001,slotOpen=8201820,locationName="刻痕",locationNameEn="ying"},mt),
    ["20182"]=setmetatable({wandSlotId=20182,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201830,locationName="印迹",locationNameEn="sun"},mt),
    ["20183"]=setmetatable({wandSlotId=20183,wandSlotOrder=3,slotSkillBag=2018,slotOpen=8201835,locationName="灵感",locationNameEn="moon"},mt),
    ["20184"]=setmetatable({wandSlotId=20184,wandSlotOrder=4,slotSkillBag=2018,slotOpen=8201840,locationName="意志",locationNameEn="moon"},mt),
    ["20191"]=setmetatable({wandSlotId=20191,wandSlotOrder=1,slotSkillBag=2019001,slotOpen=8201920,locationName="刻痕",locationNameEn="ying"},mt),
    ["20192"]=setmetatable({wandSlotId=20192,wandSlotOrder=2,slotSkillBag=210,slotOpen=8201930,locationName="印迹",locationNameEn="sun"},mt),
    ["20193"]=setmetatable({wandSlotId=20193,wandSlotOrder=3,slotSkillBag=2019,slotOpen=8201935,locationName="灵感",locationNameEn="moon"},mt),
    ["20194"]=setmetatable({wandSlotId=20194,wandSlotOrder=4,slotSkillBag=2019,slotOpen=8201940,locationName="意志",locationNameEn="moon"},mt),
    ["20201"]=setmetatable({wandSlotId=20201,wandSlotOrder=1,slotSkillBag=2020001,slotOpen=8202020,locationName="刻痕",locationNameEn="ying"},mt),
    ["20202"]=setmetatable({wandSlotId=20202,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202030,locationName="印迹",locationNameEn="sun"},mt),
    ["20203"]=setmetatable({wandSlotId=20203,wandSlotOrder=3,slotSkillBag=2020,slotOpen=8202035,locationName="灵感",locationNameEn="moon"},mt),
    ["20204"]=setmetatable({wandSlotId=20204,wandSlotOrder=4,slotSkillBag=2020,slotOpen=8202040,locationName="意志",locationNameEn="moon"},mt),
    ["20211"]=setmetatable({wandSlotId=20211,wandSlotOrder=1,slotSkillBag=2021001,slotOpen=8202120,locationName="刻痕",locationNameEn="ying"},mt),
    ["20212"]=setmetatable({wandSlotId=20212,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202130,locationName="印迹",locationNameEn="sun"},mt),
    ["20213"]=setmetatable({wandSlotId=20213,wandSlotOrder=3,slotSkillBag=2021,slotOpen=8202135,locationName="灵感",locationNameEn="moon"},mt),
    ["20214"]=setmetatable({wandSlotId=20214,wandSlotOrder=4,slotSkillBag=2021,slotOpen=8202140,locationName="意志",locationNameEn="moon"},mt),
    ["20231"]=setmetatable({wandSlotId=20231,wandSlotOrder=1,slotSkillBag=2023001,slotOpen=8202320,locationName="刻痕",locationNameEn="ying"},mt),
    ["20232"]=setmetatable({wandSlotId=20232,wandSlotOrder=2,slotSkillBag=212,slotOpen=8202330,locationName="印迹",locationNameEn="sun"},mt),
    ["20233"]=setmetatable({wandSlotId=20233,wandSlotOrder=3,slotSkillBag=2023,slotOpen=8202335,locationName="灵感",locationNameEn="moon"},mt),
    ["20234"]=setmetatable({wandSlotId=20234,wandSlotOrder=4,slotSkillBag=2023,slotOpen=8202340,locationName="意志",locationNameEn="moon"},mt),
    ["20241"]=setmetatable({wandSlotId=20241,wandSlotOrder=1,slotSkillBag=2024001,slotOpen=8202420,locationName="刻痕",locationNameEn="ying"},mt),
    ["20242"]=setmetatable({wandSlotId=20242,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202430,locationName="印迹",locationNameEn="sun"},mt),
    ["20243"]=setmetatable({wandSlotId=20243,wandSlotOrder=3,slotSkillBag=2024,slotOpen=8202435,locationName="灵感",locationNameEn="moon"},mt),
    ["20244"]=setmetatable({wandSlotId=20244,wandSlotOrder=4,slotSkillBag=2024,slotOpen=8202440,locationName="意志",locationNameEn="moon"},mt),
    ["20251"]=setmetatable({wandSlotId=20251,wandSlotOrder=1,slotSkillBag=2025001,slotOpen=8202520,locationName="刻痕",locationNameEn="ying"},mt),
    ["20252"]=setmetatable({wandSlotId=20252,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202530,locationName="印迹",locationNameEn="sun"},mt),
    ["20253"]=setmetatable({wandSlotId=20253,wandSlotOrder=3,slotSkillBag=2025,slotOpen=8202535,locationName="灵感",locationNameEn="moon"},mt),
    ["20254"]=setmetatable({wandSlotId=20254,wandSlotOrder=4,slotSkillBag=2025,slotOpen=8202540,locationName="意志",locationNameEn="moon"},mt),
    ["20261"]=setmetatable({wandSlotId=20261,wandSlotOrder=1,slotSkillBag=2026001,slotOpen=8202620,locationName="刻痕",locationNameEn="ying"},mt),
    ["20262"]=setmetatable({wandSlotId=20262,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202630,locationName="印迹",locationNameEn="sun"},mt),
    ["20263"]=setmetatable({wandSlotId=20263,wandSlotOrder=3,slotSkillBag=2026,slotOpen=8202635,locationName="灵感",locationNameEn="moon"},mt),
    ["20264"]=setmetatable({wandSlotId=20264,wandSlotOrder=4,slotSkillBag=2026,slotOpen=8202640,locationName="意志",locationNameEn="moon"},mt),
    ["20271"]=setmetatable({wandSlotId=20271,wandSlotOrder=1,slotSkillBag=2027001,slotOpen=8202720,locationName="刻痕",locationNameEn="ying"},mt),
    ["20272"]=setmetatable({wandSlotId=20272,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202730,locationName="印迹",locationNameEn="sun"},mt),
    ["20273"]=setmetatable({wandSlotId=20273,wandSlotOrder=3,slotSkillBag=2029,slotOpen=8202735,locationName="灵感",locationNameEn="moon"},mt),
    ["20274"]=setmetatable({wandSlotId=20274,wandSlotOrder=4,slotSkillBag=2029,slotOpen=8202740,locationName="意志",locationNameEn="moon"},mt),
    ["20291"]=setmetatable({wandSlotId=20291,wandSlotOrder=1,slotSkillBag=2029001,slotOpen=8202920,locationName="刻痕",locationNameEn="ying"},mt),
    ["20292"]=setmetatable({wandSlotId=20292,wandSlotOrder=2,slotSkillBag=210,slotOpen=8202930,locationName="印迹",locationNameEn="sun"},mt),
    ["20293"]=setmetatable({wandSlotId=20293,wandSlotOrder=3,slotSkillBag=2029,slotOpen=8202935,locationName="灵感",locationNameEn="moon"},mt),
    ["20294"]=setmetatable({wandSlotId=20294,wandSlotOrder=4,slotSkillBag=2029,slotOpen=8202940,locationName="意志",locationNameEn="moon"},mt),
    ["20301"]=setmetatable({wandSlotId=20301,wandSlotOrder=1,slotSkillBag=2030001,slotOpen=8203020,locationName="刻痕",locationNameEn="ying"},mt),
    ["20302"]=setmetatable({wandSlotId=20302,wandSlotOrder=2,slotSkillBag=210,slotOpen=8203030,locationName="印迹",locationNameEn="sun"},mt),
    ["20303"]=setmetatable({wandSlotId=20303,wandSlotOrder=3,slotSkillBag=2030,slotOpen=8203035,locationName="灵感",locationNameEn="moon"},mt),
    ["20304"]=setmetatable({wandSlotId=20304,wandSlotOrder=4,slotSkillBag=2030,slotOpen=8203040,locationName="意志",locationNameEn="moon"},mt),
    ["20311"]=setmetatable({wandSlotId=20311,wandSlotOrder=1,slotSkillBag=2031001,slotOpen=8203120,locationName="刻痕",locationNameEn="ying"},mt),
    ["20312"]=setmetatable({wandSlotId=20312,wandSlotOrder=2,slotSkillBag=210,slotOpen=8203130,locationName="印迹",locationNameEn="sun"},mt),
    ["20313"]=setmetatable({wandSlotId=20313,wandSlotOrder=3,slotSkillBag=2031,slotOpen=8203135,locationName="灵感",locationNameEn="moon"},mt),
    ["20314"]=setmetatable({wandSlotId=20314,wandSlotOrder=4,slotSkillBag=2031,slotOpen=8203140,locationName="意志",locationNameEn="moon"},mt),
}
--生成获取数据的方法
---@return LeaderWand
function GetLeaderWandData(id)
    return LeaderWand_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderWand : table 
---@field wandSlotId number
---@field wandSlotOrder number
---@field slotSkillBag number
---@field slotOpen number
---@field locationName string
---@field locationNameEn string