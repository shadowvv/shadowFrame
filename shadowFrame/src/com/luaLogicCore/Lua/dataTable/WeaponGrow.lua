local default = {id=0,quality=0,level=0,levelConsumeID=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class WeaponGrow_Xls : table 
WeaponGrow_Xls =
{
    ["101"]=setmetatable({id=101,quality=5,level=1,levelConsumeID=501001100},mt),
    ["102"]=setmetatable({id=102,quality=5,level=2,levelConsumeID=501001101},mt),
    ["103"]=setmetatable({id=103,quality=5,level=3,levelConsumeID=501001102},mt),
    ["104"]=setmetatable({id=104,quality=5,level=4,levelConsumeID=501001103},mt),
    ["105"]=setmetatable({id=105,quality=5,level=5,levelConsumeID=501001104},mt),
    ["106"]=setmetatable({id=106,quality=5,level=6,levelConsumeID=501001105},mt),
    ["107"]=setmetatable({id=107,quality=5,level=7,levelConsumeID=501001106},mt),
    ["108"]=setmetatable({id=108,quality=5,level=8,levelConsumeID=501001107},mt),
    ["109"]=setmetatable({id=109,quality=5,level=9,levelConsumeID=501001108},mt),
    ["110"]=setmetatable({id=110,quality=5,level=10,levelConsumeID=501001109},mt),
    ["111"]=setmetatable({id=111,quality=5,level=11,levelConsumeID=501001110},mt),
    ["112"]=setmetatable({id=112,quality=5,level=12,levelConsumeID=501001111},mt),
    ["113"]=setmetatable({id=113,quality=5,level=13,levelConsumeID=501001112},mt),
    ["114"]=setmetatable({id=114,quality=5,level=14,levelConsumeID=501001113},mt),
    ["115"]=setmetatable({id=115,quality=5,level=15,levelConsumeID=501001114},mt),
    ["116"]=setmetatable({id=116,quality=5,level=16,levelConsumeID=501001115},mt),
    ["117"]=setmetatable({id=117,quality=5,level=17,levelConsumeID=501001116},mt),
    ["118"]=setmetatable({id=118,quality=5,level=18,levelConsumeID=501001117},mt),
    ["119"]=setmetatable({id=119,quality=5,level=19,levelConsumeID=501001118},mt),
    ["120"]=setmetatable({id=120,quality=5,level=20,levelConsumeID=501001119},mt),
    ["121"]=setmetatable({id=121,quality=5,level=21,levelConsumeID=501001120},mt),
    ["122"]=setmetatable({id=122,quality=5,level=22,levelConsumeID=501001121},mt),
    ["123"]=setmetatable({id=123,quality=5,level=23,levelConsumeID=501001122},mt),
    ["124"]=setmetatable({id=124,quality=5,level=24,levelConsumeID=501001123},mt),
    ["125"]=setmetatable({id=125,quality=5,level=25,levelConsumeID=501001124},mt),
    ["126"]=setmetatable({id=126,quality=5,level=26,levelConsumeID=501001125},mt),
    ["127"]=setmetatable({id=127,quality=5,level=27,levelConsumeID=501001126},mt),
    ["128"]=setmetatable({id=128,quality=5,level=28,levelConsumeID=501001127},mt),
    ["129"]=setmetatable({id=129,quality=5,level=29,levelConsumeID=501001128},mt),
    ["130"]=setmetatable({id=130,quality=5,level=30,levelConsumeID=501001129},mt),
    ["131"]=setmetatable({id=131,quality=5,level=31,levelConsumeID=501001130},mt),
    ["132"]=setmetatable({id=132,quality=5,level=32,levelConsumeID=501001131},mt),
    ["133"]=setmetatable({id=133,quality=5,level=33,levelConsumeID=501001132},mt),
    ["134"]=setmetatable({id=134,quality=5,level=34,levelConsumeID=501001133},mt),
    ["135"]=setmetatable({id=135,quality=5,level=35,levelConsumeID=501001134},mt),
    ["136"]=setmetatable({id=136,quality=5,level=36,levelConsumeID=501001135},mt),
    ["137"]=setmetatable({id=137,quality=5,level=37,levelConsumeID=501001136},mt),
    ["138"]=setmetatable({id=138,quality=5,level=38,levelConsumeID=501001137},mt),
    ["139"]=setmetatable({id=139,quality=5,level=39,levelConsumeID=501001138},mt),
    ["140"]=setmetatable({id=140,quality=5,level=40,levelConsumeID=501001139},mt),
    ["141"]=setmetatable({id=141,quality=5,level=41,levelConsumeID=501001140},mt),
    ["142"]=setmetatable({id=142,quality=5,level=42,levelConsumeID=501001141},mt),
    ["143"]=setmetatable({id=143,quality=5,level=43,levelConsumeID=501001142},mt),
    ["144"]=setmetatable({id=144,quality=5,level=44,levelConsumeID=501001143},mt),
    ["145"]=setmetatable({id=145,quality=5,level=45,levelConsumeID=501001144},mt),
    ["146"]=setmetatable({id=146,quality=5,level=46,levelConsumeID=501001145},mt),
    ["147"]=setmetatable({id=147,quality=5,level=47,levelConsumeID=501001146},mt),
    ["148"]=setmetatable({id=148,quality=5,level=48,levelConsumeID=501001147},mt),
    ["149"]=setmetatable({id=149,quality=5,level=49,levelConsumeID=501001148},mt),
    ["150"]=setmetatable({id=150,quality=5,level=50,levelConsumeID=501001149},mt),
    ["151"]=setmetatable({id=151,quality=5,level=51,levelConsumeID=501001150},mt),
    ["152"]=setmetatable({id=152,quality=5,level=52,levelConsumeID=501001151},mt),
    ["153"]=setmetatable({id=153,quality=5,level=53,levelConsumeID=501001152},mt),
    ["154"]=setmetatable({id=154,quality=5,level=54,levelConsumeID=501001153},mt),
    ["155"]=setmetatable({id=155,quality=5,level=55,levelConsumeID=501001154},mt),
    ["156"]=setmetatable({id=156,quality=5,level=56,levelConsumeID=501001155},mt),
    ["157"]=setmetatable({id=157,quality=5,level=57,levelConsumeID=501001156},mt),
    ["158"]=setmetatable({id=158,quality=5,level=58,levelConsumeID=501001157},mt),
    ["159"]=setmetatable({id=159,quality=5,level=59,levelConsumeID=501001158},mt),
    ["160"]=setmetatable({id=160,quality=5,level=60,levelConsumeID=501001159},mt),
    ["161"]=setmetatable({id=161,quality=5,level=61,levelConsumeID=501001160},mt),
    ["162"]=setmetatable({id=162,quality=5,level=62,levelConsumeID=501001161},mt),
    ["163"]=setmetatable({id=163,quality=5,level=63,levelConsumeID=501001162},mt),
    ["164"]=setmetatable({id=164,quality=5,level=64,levelConsumeID=501001163},mt),
    ["165"]=setmetatable({id=165,quality=5,level=65,levelConsumeID=501001164},mt),
    ["166"]=setmetatable({id=166,quality=5,level=66,levelConsumeID=501001165},mt),
    ["167"]=setmetatable({id=167,quality=5,level=67,levelConsumeID=501001166},mt),
    ["168"]=setmetatable({id=168,quality=5,level=68,levelConsumeID=501001167},mt),
    ["169"]=setmetatable({id=169,quality=5,level=69,levelConsumeID=501001168},mt),
    ["170"]=setmetatable({id=170,quality=5,level=70,levelConsumeID=501001169},mt),
    ["171"]=setmetatable({id=171,quality=5,level=71,levelConsumeID=501001170},mt),
    ["172"]=setmetatable({id=172,quality=5,level=72,levelConsumeID=501001171},mt),
    ["173"]=setmetatable({id=173,quality=5,level=73,levelConsumeID=501001172},mt),
    ["174"]=setmetatable({id=174,quality=5,level=74,levelConsumeID=501001173},mt),
    ["175"]=setmetatable({id=175,quality=5,level=75,levelConsumeID=501001174},mt),
    ["176"]=setmetatable({id=176,quality=5,level=76,levelConsumeID=501001175},mt),
    ["177"]=setmetatable({id=177,quality=5,level=77,levelConsumeID=501001176},mt),
    ["178"]=setmetatable({id=178,quality=5,level=78,levelConsumeID=501001177},mt),
    ["179"]=setmetatable({id=179,quality=5,level=79,levelConsumeID=501001178},mt),
    ["180"]=setmetatable({id=180,quality=5,level=80},mt),
    ["201"]=setmetatable({id=201,quality=4,level=1,levelConsumeID=501001100},mt),
    ["202"]=setmetatable({id=202,quality=4,level=2,levelConsumeID=501001101},mt),
    ["203"]=setmetatable({id=203,quality=4,level=3,levelConsumeID=501001102},mt),
    ["204"]=setmetatable({id=204,quality=4,level=4,levelConsumeID=501001103},mt),
    ["205"]=setmetatable({id=205,quality=4,level=5,levelConsumeID=501001104},mt),
    ["206"]=setmetatable({id=206,quality=4,level=6,levelConsumeID=501001105},mt),
    ["207"]=setmetatable({id=207,quality=4,level=7,levelConsumeID=501001106},mt),
    ["208"]=setmetatable({id=208,quality=4,level=8,levelConsumeID=501001107},mt),
    ["209"]=setmetatable({id=209,quality=4,level=9,levelConsumeID=501001108},mt),
    ["210"]=setmetatable({id=210,quality=4,level=10,levelConsumeID=501001109},mt),
    ["211"]=setmetatable({id=211,quality=4,level=11,levelConsumeID=501001110},mt),
    ["212"]=setmetatable({id=212,quality=4,level=12,levelConsumeID=501001111},mt),
    ["213"]=setmetatable({id=213,quality=4,level=13,levelConsumeID=501001112},mt),
    ["214"]=setmetatable({id=214,quality=4,level=14,levelConsumeID=501001113},mt),
    ["215"]=setmetatable({id=215,quality=4,level=15,levelConsumeID=501001114},mt),
    ["216"]=setmetatable({id=216,quality=4,level=16,levelConsumeID=501001115},mt),
    ["217"]=setmetatable({id=217,quality=4,level=17,levelConsumeID=501001116},mt),
    ["218"]=setmetatable({id=218,quality=4,level=18,levelConsumeID=501001117},mt),
    ["219"]=setmetatable({id=219,quality=4,level=19,levelConsumeID=501001118},mt),
    ["220"]=setmetatable({id=220,quality=4,level=20,levelConsumeID=501001119},mt),
    ["221"]=setmetatable({id=221,quality=4,level=21,levelConsumeID=501001120},mt),
    ["222"]=setmetatable({id=222,quality=4,level=22,levelConsumeID=501001121},mt),
    ["223"]=setmetatable({id=223,quality=4,level=23,levelConsumeID=501001122},mt),
    ["224"]=setmetatable({id=224,quality=4,level=24,levelConsumeID=501001123},mt),
    ["225"]=setmetatable({id=225,quality=4,level=25,levelConsumeID=501001124},mt),
    ["226"]=setmetatable({id=226,quality=4,level=26,levelConsumeID=501001125},mt),
    ["227"]=setmetatable({id=227,quality=4,level=27,levelConsumeID=501001126},mt),
    ["228"]=setmetatable({id=228,quality=4,level=28,levelConsumeID=501001127},mt),
    ["229"]=setmetatable({id=229,quality=4,level=29,levelConsumeID=501001128},mt),
    ["230"]=setmetatable({id=230,quality=4,level=30,levelConsumeID=501001129},mt),
    ["231"]=setmetatable({id=231,quality=4,level=31,levelConsumeID=501001130},mt),
    ["232"]=setmetatable({id=232,quality=4,level=32,levelConsumeID=501001131},mt),
    ["233"]=setmetatable({id=233,quality=4,level=33,levelConsumeID=501001132},mt),
    ["234"]=setmetatable({id=234,quality=4,level=34,levelConsumeID=501001133},mt),
    ["235"]=setmetatable({id=235,quality=4,level=35,levelConsumeID=501001134},mt),
    ["236"]=setmetatable({id=236,quality=4,level=36,levelConsumeID=501001135},mt),
    ["237"]=setmetatable({id=237,quality=4,level=37,levelConsumeID=501001136},mt),
    ["238"]=setmetatable({id=238,quality=4,level=38,levelConsumeID=501001137},mt),
    ["239"]=setmetatable({id=239,quality=4,level=39,levelConsumeID=501001138},mt),
    ["240"]=setmetatable({id=240,quality=4,level=40,levelConsumeID=501001139},mt),
    ["241"]=setmetatable({id=241,quality=4,level=41,levelConsumeID=501001140},mt),
    ["242"]=setmetatable({id=242,quality=4,level=42,levelConsumeID=501001141},mt),
    ["243"]=setmetatable({id=243,quality=4,level=43,levelConsumeID=501001142},mt),
    ["244"]=setmetatable({id=244,quality=4,level=44,levelConsumeID=501001143},mt),
    ["245"]=setmetatable({id=245,quality=4,level=45,levelConsumeID=501001144},mt),
    ["246"]=setmetatable({id=246,quality=4,level=46,levelConsumeID=501001145},mt),
    ["247"]=setmetatable({id=247,quality=4,level=47,levelConsumeID=501001146},mt),
    ["248"]=setmetatable({id=248,quality=4,level=48,levelConsumeID=501001147},mt),
    ["249"]=setmetatable({id=249,quality=4,level=49,levelConsumeID=501001148},mt),
    ["250"]=setmetatable({id=250,quality=4,level=50,levelConsumeID=501001149},mt),
    ["251"]=setmetatable({id=251,quality=4,level=51,levelConsumeID=501001150},mt),
    ["252"]=setmetatable({id=252,quality=4,level=52,levelConsumeID=501001151},mt),
    ["253"]=setmetatable({id=253,quality=4,level=53,levelConsumeID=501001152},mt),
    ["254"]=setmetatable({id=254,quality=4,level=54,levelConsumeID=501001153},mt),
    ["255"]=setmetatable({id=255,quality=4,level=55,levelConsumeID=501001154},mt),
    ["256"]=setmetatable({id=256,quality=4,level=56,levelConsumeID=501001155},mt),
    ["257"]=setmetatable({id=257,quality=4,level=57,levelConsumeID=501001156},mt),
    ["258"]=setmetatable({id=258,quality=4,level=58,levelConsumeID=501001157},mt),
    ["259"]=setmetatable({id=259,quality=4,level=59,levelConsumeID=501001158},mt),
    ["260"]=setmetatable({id=260,quality=4,level=60,levelConsumeID=501001159},mt),
    ["261"]=setmetatable({id=261,quality=4,level=61,levelConsumeID=501001160},mt),
    ["262"]=setmetatable({id=262,quality=4,level=62,levelConsumeID=501001161},mt),
    ["263"]=setmetatable({id=263,quality=4,level=63,levelConsumeID=501001162},mt),
    ["264"]=setmetatable({id=264,quality=4,level=64,levelConsumeID=501001163},mt),
    ["265"]=setmetatable({id=265,quality=4,level=65,levelConsumeID=501001164},mt),
    ["266"]=setmetatable({id=266,quality=4,level=66,levelConsumeID=501001165},mt),
    ["267"]=setmetatable({id=267,quality=4,level=67,levelConsumeID=501001166},mt),
    ["268"]=setmetatable({id=268,quality=4,level=68,levelConsumeID=501001167},mt),
    ["269"]=setmetatable({id=269,quality=4,level=69,levelConsumeID=501001168},mt),
    ["270"]=setmetatable({id=270,quality=4,level=70,levelConsumeID=501001169},mt),
    ["271"]=setmetatable({id=271,quality=4,level=71,levelConsumeID=501001170},mt),
    ["272"]=setmetatable({id=272,quality=4,level=72,levelConsumeID=501001171},mt),
    ["273"]=setmetatable({id=273,quality=4,level=73,levelConsumeID=501001172},mt),
    ["274"]=setmetatable({id=274,quality=4,level=74,levelConsumeID=501001173},mt),
    ["275"]=setmetatable({id=275,quality=4,level=75,levelConsumeID=501001174},mt),
    ["276"]=setmetatable({id=276,quality=4,level=76,levelConsumeID=501001175},mt),
    ["277"]=setmetatable({id=277,quality=4,level=77,levelConsumeID=501001176},mt),
    ["278"]=setmetatable({id=278,quality=4,level=78,levelConsumeID=501001177},mt),
    ["279"]=setmetatable({id=279,quality=4,level=79,levelConsumeID=501001178},mt),
    ["280"]=setmetatable({id=280,quality=4,level=80},mt),
    ["301"]=setmetatable({id=301,quality=3,level=1,levelConsumeID=501001100},mt),
    ["302"]=setmetatable({id=302,quality=3,level=2,levelConsumeID=501001101},mt),
    ["303"]=setmetatable({id=303,quality=3,level=3,levelConsumeID=501001102},mt),
    ["304"]=setmetatable({id=304,quality=3,level=4,levelConsumeID=501001103},mt),
    ["305"]=setmetatable({id=305,quality=3,level=5,levelConsumeID=501001104},mt),
    ["306"]=setmetatable({id=306,quality=3,level=6,levelConsumeID=501001105},mt),
    ["307"]=setmetatable({id=307,quality=3,level=7,levelConsumeID=501001106},mt),
    ["308"]=setmetatable({id=308,quality=3,level=8,levelConsumeID=501001107},mt),
    ["309"]=setmetatable({id=309,quality=3,level=9,levelConsumeID=501001108},mt),
    ["310"]=setmetatable({id=310,quality=3,level=10,levelConsumeID=501001109},mt),
    ["311"]=setmetatable({id=311,quality=3,level=11,levelConsumeID=501001110},mt),
    ["312"]=setmetatable({id=312,quality=3,level=12,levelConsumeID=501001111},mt),
    ["313"]=setmetatable({id=313,quality=3,level=13,levelConsumeID=501001112},mt),
    ["314"]=setmetatable({id=314,quality=3,level=14,levelConsumeID=501001113},mt),
    ["315"]=setmetatable({id=315,quality=3,level=15,levelConsumeID=501001114},mt),
    ["316"]=setmetatable({id=316,quality=3,level=16,levelConsumeID=501001115},mt),
    ["317"]=setmetatable({id=317,quality=3,level=17,levelConsumeID=501001116},mt),
    ["318"]=setmetatable({id=318,quality=3,level=18,levelConsumeID=501001117},mt),
    ["319"]=setmetatable({id=319,quality=3,level=19,levelConsumeID=501001118},mt),
    ["320"]=setmetatable({id=320,quality=3,level=20,levelConsumeID=501001119},mt),
    ["321"]=setmetatable({id=321,quality=3,level=21,levelConsumeID=501001120},mt),
    ["322"]=setmetatable({id=322,quality=3,level=22,levelConsumeID=501001121},mt),
    ["323"]=setmetatable({id=323,quality=3,level=23,levelConsumeID=501001122},mt),
    ["324"]=setmetatable({id=324,quality=3,level=24,levelConsumeID=501001123},mt),
    ["325"]=setmetatable({id=325,quality=3,level=25,levelConsumeID=501001124},mt),
    ["326"]=setmetatable({id=326,quality=3,level=26,levelConsumeID=501001125},mt),
    ["327"]=setmetatable({id=327,quality=3,level=27,levelConsumeID=501001126},mt),
    ["328"]=setmetatable({id=328,quality=3,level=28,levelConsumeID=501001127},mt),
    ["329"]=setmetatable({id=329,quality=3,level=29,levelConsumeID=501001128},mt),
    ["330"]=setmetatable({id=330,quality=3,level=30,levelConsumeID=501001129},mt),
    ["331"]=setmetatable({id=331,quality=3,level=31,levelConsumeID=501001130},mt),
    ["332"]=setmetatable({id=332,quality=3,level=32,levelConsumeID=501001131},mt),
    ["333"]=setmetatable({id=333,quality=3,level=33,levelConsumeID=501001132},mt),
    ["334"]=setmetatable({id=334,quality=3,level=34,levelConsumeID=501001133},mt),
    ["335"]=setmetatable({id=335,quality=3,level=35,levelConsumeID=501001134},mt),
    ["336"]=setmetatable({id=336,quality=3,level=36,levelConsumeID=501001135},mt),
    ["337"]=setmetatable({id=337,quality=3,level=37,levelConsumeID=501001136},mt),
    ["338"]=setmetatable({id=338,quality=3,level=38,levelConsumeID=501001137},mt),
    ["339"]=setmetatable({id=339,quality=3,level=39,levelConsumeID=501001138},mt),
    ["340"]=setmetatable({id=340,quality=3,level=40,levelConsumeID=501001139},mt),
    ["341"]=setmetatable({id=341,quality=3,level=41,levelConsumeID=501001140},mt),
    ["342"]=setmetatable({id=342,quality=3,level=42,levelConsumeID=501001141},mt),
    ["343"]=setmetatable({id=343,quality=3,level=43,levelConsumeID=501001142},mt),
    ["344"]=setmetatable({id=344,quality=3,level=44,levelConsumeID=501001143},mt),
    ["345"]=setmetatable({id=345,quality=3,level=45,levelConsumeID=501001144},mt),
    ["346"]=setmetatable({id=346,quality=3,level=46,levelConsumeID=501001145},mt),
    ["347"]=setmetatable({id=347,quality=3,level=47,levelConsumeID=501001146},mt),
    ["348"]=setmetatable({id=348,quality=3,level=48,levelConsumeID=501001147},mt),
    ["349"]=setmetatable({id=349,quality=3,level=49,levelConsumeID=501001148},mt),
    ["350"]=setmetatable({id=350,quality=3,level=50,levelConsumeID=501001149},mt),
    ["351"]=setmetatable({id=351,quality=3,level=51,levelConsumeID=501001150},mt),
    ["352"]=setmetatable({id=352,quality=3,level=52,levelConsumeID=501001151},mt),
    ["353"]=setmetatable({id=353,quality=3,level=53,levelConsumeID=501001152},mt),
    ["354"]=setmetatable({id=354,quality=3,level=54,levelConsumeID=501001153},mt),
    ["355"]=setmetatable({id=355,quality=3,level=55,levelConsumeID=501001154},mt),
    ["356"]=setmetatable({id=356,quality=3,level=56,levelConsumeID=501001155},mt),
    ["357"]=setmetatable({id=357,quality=3,level=57,levelConsumeID=501001156},mt),
    ["358"]=setmetatable({id=358,quality=3,level=58,levelConsumeID=501001157},mt),
    ["359"]=setmetatable({id=359,quality=3,level=59,levelConsumeID=501001158},mt),
    ["360"]=setmetatable({id=360,quality=3,level=60,levelConsumeID=501001159},mt),
    ["361"]=setmetatable({id=361,quality=3,level=61,levelConsumeID=501001160},mt),
    ["362"]=setmetatable({id=362,quality=3,level=62,levelConsumeID=501001161},mt),
    ["363"]=setmetatable({id=363,quality=3,level=63,levelConsumeID=501001162},mt),
    ["364"]=setmetatable({id=364,quality=3,level=64,levelConsumeID=501001163},mt),
    ["365"]=setmetatable({id=365,quality=3,level=65,levelConsumeID=501001164},mt),
    ["366"]=setmetatable({id=366,quality=3,level=66,levelConsumeID=501001165},mt),
    ["367"]=setmetatable({id=367,quality=3,level=67,levelConsumeID=501001166},mt),
    ["368"]=setmetatable({id=368,quality=3,level=68,levelConsumeID=501001167},mt),
    ["369"]=setmetatable({id=369,quality=3,level=69,levelConsumeID=501001168},mt),
    ["370"]=setmetatable({id=370,quality=3,level=70,levelConsumeID=501001169},mt),
    ["371"]=setmetatable({id=371,quality=3,level=71,levelConsumeID=501001170},mt),
    ["372"]=setmetatable({id=372,quality=3,level=72,levelConsumeID=501001171},mt),
    ["373"]=setmetatable({id=373,quality=3,level=73,levelConsumeID=501001172},mt),
    ["374"]=setmetatable({id=374,quality=3,level=74,levelConsumeID=501001173},mt),
    ["375"]=setmetatable({id=375,quality=3,level=75,levelConsumeID=501001174},mt),
    ["376"]=setmetatable({id=376,quality=3,level=76,levelConsumeID=501001175},mt),
    ["377"]=setmetatable({id=377,quality=3,level=77,levelConsumeID=501001176},mt),
    ["378"]=setmetatable({id=378,quality=3,level=78,levelConsumeID=501001177},mt),
    ["379"]=setmetatable({id=379,quality=3,level=79,levelConsumeID=501001178},mt),
    ["380"]=setmetatable({id=380,quality=3,level=80},mt),
    ["401"]=setmetatable({id=401,quality=2,level=1,levelConsumeID=501001100},mt),
    ["402"]=setmetatable({id=402,quality=2,level=2,levelConsumeID=501001101},mt),
    ["403"]=setmetatable({id=403,quality=2,level=3,levelConsumeID=501001102},mt),
    ["404"]=setmetatable({id=404,quality=2,level=4,levelConsumeID=501001103},mt),
    ["405"]=setmetatable({id=405,quality=2,level=5,levelConsumeID=501001104},mt),
    ["406"]=setmetatable({id=406,quality=2,level=6,levelConsumeID=501001105},mt),
    ["407"]=setmetatable({id=407,quality=2,level=7,levelConsumeID=501001106},mt),
    ["408"]=setmetatable({id=408,quality=2,level=8,levelConsumeID=501001107},mt),
    ["409"]=setmetatable({id=409,quality=2,level=9,levelConsumeID=501001108},mt),
    ["410"]=setmetatable({id=410,quality=2,level=10,levelConsumeID=501001109},mt),
    ["411"]=setmetatable({id=411,quality=2,level=11,levelConsumeID=501001110},mt),
    ["412"]=setmetatable({id=412,quality=2,level=12,levelConsumeID=501001111},mt),
    ["413"]=setmetatable({id=413,quality=2,level=13,levelConsumeID=501001112},mt),
    ["414"]=setmetatable({id=414,quality=2,level=14,levelConsumeID=501001113},mt),
    ["415"]=setmetatable({id=415,quality=2,level=15,levelConsumeID=501001114},mt),
    ["416"]=setmetatable({id=416,quality=2,level=16,levelConsumeID=501001115},mt),
    ["417"]=setmetatable({id=417,quality=2,level=17,levelConsumeID=501001116},mt),
    ["418"]=setmetatable({id=418,quality=2,level=18,levelConsumeID=501001117},mt),
    ["419"]=setmetatable({id=419,quality=2,level=19,levelConsumeID=501001118},mt),
    ["420"]=setmetatable({id=420,quality=2,level=20,levelConsumeID=501001119},mt),
    ["421"]=setmetatable({id=421,quality=2,level=21,levelConsumeID=501001120},mt),
    ["422"]=setmetatable({id=422,quality=2,level=22,levelConsumeID=501001121},mt),
    ["423"]=setmetatable({id=423,quality=2,level=23,levelConsumeID=501001122},mt),
    ["424"]=setmetatable({id=424,quality=2,level=24,levelConsumeID=501001123},mt),
    ["425"]=setmetatable({id=425,quality=2,level=25,levelConsumeID=501001124},mt),
    ["426"]=setmetatable({id=426,quality=2,level=26,levelConsumeID=501001125},mt),
    ["427"]=setmetatable({id=427,quality=2,level=27,levelConsumeID=501001126},mt),
    ["428"]=setmetatable({id=428,quality=2,level=28,levelConsumeID=501001127},mt),
    ["429"]=setmetatable({id=429,quality=2,level=29,levelConsumeID=501001128},mt),
    ["430"]=setmetatable({id=430,quality=2,level=30,levelConsumeID=501001129},mt),
    ["431"]=setmetatable({id=431,quality=2,level=31,levelConsumeID=501001130},mt),
    ["432"]=setmetatable({id=432,quality=2,level=32,levelConsumeID=501001131},mt),
    ["433"]=setmetatable({id=433,quality=2,level=33,levelConsumeID=501001132},mt),
    ["434"]=setmetatable({id=434,quality=2,level=34,levelConsumeID=501001133},mt),
    ["435"]=setmetatable({id=435,quality=2,level=35,levelConsumeID=501001134},mt),
    ["436"]=setmetatable({id=436,quality=2,level=36,levelConsumeID=501001135},mt),
    ["437"]=setmetatable({id=437,quality=2,level=37,levelConsumeID=501001136},mt),
    ["438"]=setmetatable({id=438,quality=2,level=38,levelConsumeID=501001137},mt),
    ["439"]=setmetatable({id=439,quality=2,level=39,levelConsumeID=501001138},mt),
    ["440"]=setmetatable({id=440,quality=2,level=40,levelConsumeID=501001139},mt),
    ["441"]=setmetatable({id=441,quality=2,level=41,levelConsumeID=501001140},mt),
    ["442"]=setmetatable({id=442,quality=2,level=42,levelConsumeID=501001141},mt),
    ["443"]=setmetatable({id=443,quality=2,level=43,levelConsumeID=501001142},mt),
    ["444"]=setmetatable({id=444,quality=2,level=44,levelConsumeID=501001143},mt),
    ["445"]=setmetatable({id=445,quality=2,level=45,levelConsumeID=501001144},mt),
    ["446"]=setmetatable({id=446,quality=2,level=46,levelConsumeID=501001145},mt),
    ["447"]=setmetatable({id=447,quality=2,level=47,levelConsumeID=501001146},mt),
    ["448"]=setmetatable({id=448,quality=2,level=48,levelConsumeID=501001147},mt),
    ["449"]=setmetatable({id=449,quality=2,level=49,levelConsumeID=501001148},mt),
    ["450"]=setmetatable({id=450,quality=2,level=50,levelConsumeID=501001149},mt),
    ["451"]=setmetatable({id=451,quality=2,level=51,levelConsumeID=501001150},mt),
    ["452"]=setmetatable({id=452,quality=2,level=52,levelConsumeID=501001151},mt),
    ["453"]=setmetatable({id=453,quality=2,level=53,levelConsumeID=501001152},mt),
    ["454"]=setmetatable({id=454,quality=2,level=54,levelConsumeID=501001153},mt),
    ["455"]=setmetatable({id=455,quality=2,level=55,levelConsumeID=501001154},mt),
    ["456"]=setmetatable({id=456,quality=2,level=56,levelConsumeID=501001155},mt),
    ["457"]=setmetatable({id=457,quality=2,level=57,levelConsumeID=501001156},mt),
    ["458"]=setmetatable({id=458,quality=2,level=58,levelConsumeID=501001157},mt),
    ["459"]=setmetatable({id=459,quality=2,level=59,levelConsumeID=501001158},mt),
    ["460"]=setmetatable({id=460,quality=2,level=60,levelConsumeID=501001159},mt),
    ["461"]=setmetatable({id=461,quality=2,level=61,levelConsumeID=501001160},mt),
    ["462"]=setmetatable({id=462,quality=2,level=62,levelConsumeID=501001161},mt),
    ["463"]=setmetatable({id=463,quality=2,level=63,levelConsumeID=501001162},mt),
    ["464"]=setmetatable({id=464,quality=2,level=64,levelConsumeID=501001163},mt),
    ["465"]=setmetatable({id=465,quality=2,level=65,levelConsumeID=501001164},mt),
    ["466"]=setmetatable({id=466,quality=2,level=66,levelConsumeID=501001165},mt),
    ["467"]=setmetatable({id=467,quality=2,level=67,levelConsumeID=501001166},mt),
    ["468"]=setmetatable({id=468,quality=2,level=68,levelConsumeID=501001167},mt),
    ["469"]=setmetatable({id=469,quality=2,level=69,levelConsumeID=501001168},mt),
    ["470"]=setmetatable({id=470,quality=2,level=70,levelConsumeID=501001169},mt),
    ["471"]=setmetatable({id=471,quality=2,level=71,levelConsumeID=501001170},mt),
    ["472"]=setmetatable({id=472,quality=2,level=72,levelConsumeID=501001171},mt),
    ["473"]=setmetatable({id=473,quality=2,level=73,levelConsumeID=501001172},mt),
    ["474"]=setmetatable({id=474,quality=2,level=74,levelConsumeID=501001173},mt),
    ["475"]=setmetatable({id=475,quality=2,level=75,levelConsumeID=501001174},mt),
    ["476"]=setmetatable({id=476,quality=2,level=76,levelConsumeID=501001175},mt),
    ["477"]=setmetatable({id=477,quality=2,level=77,levelConsumeID=501001176},mt),
    ["478"]=setmetatable({id=478,quality=2,level=78,levelConsumeID=501001177},mt),
    ["479"]=setmetatable({id=479,quality=2,level=79,levelConsumeID=501001178},mt),
    ["480"]=setmetatable({id=480,quality=2,level=80},mt),
    ["501"]=setmetatable({id=501,quality=1,level=1,levelConsumeID=501001100},mt),
    ["502"]=setmetatable({id=502,quality=1,level=2,levelConsumeID=501001101},mt),
    ["503"]=setmetatable({id=503,quality=1,level=3,levelConsumeID=501001102},mt),
    ["504"]=setmetatable({id=504,quality=1,level=4,levelConsumeID=501001103},mt),
    ["505"]=setmetatable({id=505,quality=1,level=5,levelConsumeID=501001104},mt),
    ["506"]=setmetatable({id=506,quality=1,level=6,levelConsumeID=501001105},mt),
    ["507"]=setmetatable({id=507,quality=1,level=7,levelConsumeID=501001106},mt),
    ["508"]=setmetatable({id=508,quality=1,level=8,levelConsumeID=501001107},mt),
    ["509"]=setmetatable({id=509,quality=1,level=9,levelConsumeID=501001108},mt),
    ["510"]=setmetatable({id=510,quality=1,level=10,levelConsumeID=501001109},mt),
    ["511"]=setmetatable({id=511,quality=1,level=11,levelConsumeID=501001110},mt),
    ["512"]=setmetatable({id=512,quality=1,level=12,levelConsumeID=501001111},mt),
    ["513"]=setmetatable({id=513,quality=1,level=13,levelConsumeID=501001112},mt),
    ["514"]=setmetatable({id=514,quality=1,level=14,levelConsumeID=501001113},mt),
    ["515"]=setmetatable({id=515,quality=1,level=15,levelConsumeID=501001114},mt),
    ["516"]=setmetatable({id=516,quality=1,level=16,levelConsumeID=501001115},mt),
    ["517"]=setmetatable({id=517,quality=1,level=17,levelConsumeID=501001116},mt),
    ["518"]=setmetatable({id=518,quality=1,level=18,levelConsumeID=501001117},mt),
    ["519"]=setmetatable({id=519,quality=1,level=19,levelConsumeID=501001118},mt),
    ["520"]=setmetatable({id=520,quality=1,level=20,levelConsumeID=501001119},mt),
    ["521"]=setmetatable({id=521,quality=1,level=21,levelConsumeID=501001120},mt),
    ["522"]=setmetatable({id=522,quality=1,level=22,levelConsumeID=501001121},mt),
    ["523"]=setmetatable({id=523,quality=1,level=23,levelConsumeID=501001122},mt),
    ["524"]=setmetatable({id=524,quality=1,level=24,levelConsumeID=501001123},mt),
    ["525"]=setmetatable({id=525,quality=1,level=25,levelConsumeID=501001124},mt),
    ["526"]=setmetatable({id=526,quality=1,level=26,levelConsumeID=501001125},mt),
    ["527"]=setmetatable({id=527,quality=1,level=27,levelConsumeID=501001126},mt),
    ["528"]=setmetatable({id=528,quality=1,level=28,levelConsumeID=501001127},mt),
    ["529"]=setmetatable({id=529,quality=1,level=29,levelConsumeID=501001128},mt),
    ["530"]=setmetatable({id=530,quality=1,level=30,levelConsumeID=501001129},mt),
    ["531"]=setmetatable({id=531,quality=1,level=31,levelConsumeID=501001130},mt),
    ["532"]=setmetatable({id=532,quality=1,level=32,levelConsumeID=501001131},mt),
    ["533"]=setmetatable({id=533,quality=1,level=33,levelConsumeID=501001132},mt),
    ["534"]=setmetatable({id=534,quality=1,level=34,levelConsumeID=501001133},mt),
    ["535"]=setmetatable({id=535,quality=1,level=35,levelConsumeID=501001134},mt),
    ["536"]=setmetatable({id=536,quality=1,level=36,levelConsumeID=501001135},mt),
    ["537"]=setmetatable({id=537,quality=1,level=37,levelConsumeID=501001136},mt),
    ["538"]=setmetatable({id=538,quality=1,level=38,levelConsumeID=501001137},mt),
    ["539"]=setmetatable({id=539,quality=1,level=39,levelConsumeID=501001138},mt),
    ["540"]=setmetatable({id=540,quality=1,level=40,levelConsumeID=501001139},mt),
    ["541"]=setmetatable({id=541,quality=1,level=41,levelConsumeID=501001140},mt),
    ["542"]=setmetatable({id=542,quality=1,level=42,levelConsumeID=501001141},mt),
    ["543"]=setmetatable({id=543,quality=1,level=43,levelConsumeID=501001142},mt),
    ["544"]=setmetatable({id=544,quality=1,level=44,levelConsumeID=501001143},mt),
    ["545"]=setmetatable({id=545,quality=1,level=45,levelConsumeID=501001144},mt),
    ["546"]=setmetatable({id=546,quality=1,level=46,levelConsumeID=501001145},mt),
    ["547"]=setmetatable({id=547,quality=1,level=47,levelConsumeID=501001146},mt),
    ["548"]=setmetatable({id=548,quality=1,level=48,levelConsumeID=501001147},mt),
    ["549"]=setmetatable({id=549,quality=1,level=49,levelConsumeID=501001148},mt),
    ["550"]=setmetatable({id=550,quality=1,level=50,levelConsumeID=501001149},mt),
    ["551"]=setmetatable({id=551,quality=1,level=51,levelConsumeID=501001150},mt),
    ["552"]=setmetatable({id=552,quality=1,level=52,levelConsumeID=501001151},mt),
    ["553"]=setmetatable({id=553,quality=1,level=53,levelConsumeID=501001152},mt),
    ["554"]=setmetatable({id=554,quality=1,level=54,levelConsumeID=501001153},mt),
    ["555"]=setmetatable({id=555,quality=1,level=55,levelConsumeID=501001154},mt),
    ["556"]=setmetatable({id=556,quality=1,level=56,levelConsumeID=501001155},mt),
    ["557"]=setmetatable({id=557,quality=1,level=57,levelConsumeID=501001156},mt),
    ["558"]=setmetatable({id=558,quality=1,level=58,levelConsumeID=501001157},mt),
    ["559"]=setmetatable({id=559,quality=1,level=59,levelConsumeID=501001158},mt),
    ["560"]=setmetatable({id=560,quality=1,level=60,levelConsumeID=501001159},mt),
    ["561"]=setmetatable({id=561,quality=1,level=61,levelConsumeID=501001160},mt),
    ["562"]=setmetatable({id=562,quality=1,level=62,levelConsumeID=501001161},mt),
    ["563"]=setmetatable({id=563,quality=1,level=63,levelConsumeID=501001162},mt),
    ["564"]=setmetatable({id=564,quality=1,level=64,levelConsumeID=501001163},mt),
    ["565"]=setmetatable({id=565,quality=1,level=65,levelConsumeID=501001164},mt),
    ["566"]=setmetatable({id=566,quality=1,level=66,levelConsumeID=501001165},mt),
    ["567"]=setmetatable({id=567,quality=1,level=67,levelConsumeID=501001166},mt),
    ["568"]=setmetatable({id=568,quality=1,level=68,levelConsumeID=501001167},mt),
    ["569"]=setmetatable({id=569,quality=1,level=69,levelConsumeID=501001168},mt),
    ["570"]=setmetatable({id=570,quality=1,level=70,levelConsumeID=501001169},mt),
    ["571"]=setmetatable({id=571,quality=1,level=71,levelConsumeID=501001170},mt),
    ["572"]=setmetatable({id=572,quality=1,level=72,levelConsumeID=501001171},mt),
    ["573"]=setmetatable({id=573,quality=1,level=73,levelConsumeID=501001172},mt),
    ["574"]=setmetatable({id=574,quality=1,level=74,levelConsumeID=501001173},mt),
    ["575"]=setmetatable({id=575,quality=1,level=75,levelConsumeID=501001174},mt),
    ["576"]=setmetatable({id=576,quality=1,level=76,levelConsumeID=501001175},mt),
    ["577"]=setmetatable({id=577,quality=1,level=77,levelConsumeID=501001176},mt),
    ["578"]=setmetatable({id=578,quality=1,level=78,levelConsumeID=501001177},mt),
    ["579"]=setmetatable({id=579,quality=1,level=79,levelConsumeID=501001178},mt),
    ["580"]=setmetatable({id=580,quality=1,level=80},mt),
}
--生成获取数据的方法
---@return WeaponGrow
function GetWeaponGrowData(id)
    return WeaponGrow_Xls[tostring(id)]
end
--自动生成注释
---@class WeaponGrow : table 
---@field id number
---@field quality number
---@field level number
---@field levelConsumeID number
