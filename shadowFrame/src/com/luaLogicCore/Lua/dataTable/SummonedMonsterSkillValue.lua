local default = {id="",skillId=0,skillLevel=0,value=xlsNilTable,skillIdChange=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SummonedMonsterSkillValue_Xls : table 
SummonedMonsterSkillValue_Xls =
{
    ["999001"]=setmetatable({id="999001",skillId=999,skillLevel=1,value={[1]=999.0},skillIdChange=999},mt),
    ["200801301001"]=setmetatable({id="200801301001",skillId=200801301,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301002"]=setmetatable({id="200801301002",skillId=200801301,skillLevel=2,value={[1]=1.8341,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301003"]=setmetatable({id="200801301003",skillId=200801301,skillLevel=3,value={[1]=1.9258,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301004"]=setmetatable({id="200801301004",skillId=200801301,skillLevel=4,value={[1]=2.0175,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301005"]=setmetatable({id="200801301005",skillId=200801301,skillLevel=5,value={[1]=2.1092,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301006"]=setmetatable({id="200801301006",skillId=200801301,skillLevel=6,value={[1]=2.2009,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301007"]=setmetatable({id="200801301007",skillId=200801301,skillLevel=7,value={[1]=2.2926,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301008"]=setmetatable({id="200801301008",skillId=200801301,skillLevel=8,value={[1]=2.3843,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301009"]=setmetatable({id="200801301009",skillId=200801301,skillLevel=9,value={[1]=2.476,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301010"]=setmetatable({id="200801301010",skillId=200801301,skillLevel=10,value={[1]=2.5677,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301011"]=setmetatable({id="200801301011",skillId=200801301,skillLevel=11,value={[1]=2.6594,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301012"]=setmetatable({id="200801301012",skillId=200801301,skillLevel=12,value={[1]=2.7511,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301013"]=setmetatable({id="200801301013",skillId=200801301,skillLevel=13,value={[1]=2.8428,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301014"]=setmetatable({id="200801301014",skillId=200801301,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301015"]=setmetatable({id="200801301015",skillId=200801301,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301016"]=setmetatable({id="200801301016",skillId=200801301,skillLevel=16,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301017"]=setmetatable({id="200801301017",skillId=200801301,skillLevel=17,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301018"]=setmetatable({id="200801301018",skillId=200801301,skillLevel=18,value={[1]=3.3013,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301019"]=setmetatable({id="200801301019",skillId=200801301,skillLevel=19,value={[1]=3.393,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301020"]=setmetatable({id="200801301020",skillId=200801301,skillLevel=20,value={[1]=3.4847,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801301021"]=setmetatable({id="200801301021",skillId=200801301,skillLevel=21,value={[1]=3.393,[2]=135.0,[3]=19.0},skillIdChange=20080130},mt),
    ["200801301022"]=setmetatable({id="200801301022",skillId=200801301,skillLevel=22,value={[1]=3.4847,[2]=135.0,[3]=19.0},skillIdChange=20080130},mt),
    ["200801301023"]=setmetatable({id="200801301023",skillId=200801301,skillLevel=23,value={[1]=3.393,[2]=135.0,[3]=20.0},skillIdChange=20080130},mt),
    ["200801302001"]=setmetatable({id="200801302001",skillId=200801302,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302002"]=setmetatable({id="200801302002",skillId=200801302,skillLevel=2,value={[1]=1.8341,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302003"]=setmetatable({id="200801302003",skillId=200801302,skillLevel=3,value={[1]=1.9258,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302004"]=setmetatable({id="200801302004",skillId=200801302,skillLevel=4,value={[1]=2.0175,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302005"]=setmetatable({id="200801302005",skillId=200801302,skillLevel=5,value={[1]=2.1092,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302006"]=setmetatable({id="200801302006",skillId=200801302,skillLevel=6,value={[1]=2.2009,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302007"]=setmetatable({id="200801302007",skillId=200801302,skillLevel=7,value={[1]=2.2926,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302008"]=setmetatable({id="200801302008",skillId=200801302,skillLevel=8,value={[1]=2.3843,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302009"]=setmetatable({id="200801302009",skillId=200801302,skillLevel=9,value={[1]=2.476,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302010"]=setmetatable({id="200801302010",skillId=200801302,skillLevel=10,value={[1]=2.5677,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302011"]=setmetatable({id="200801302011",skillId=200801302,skillLevel=11,value={[1]=2.6594,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302012"]=setmetatable({id="200801302012",skillId=200801302,skillLevel=12,value={[1]=2.7511,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302013"]=setmetatable({id="200801302013",skillId=200801302,skillLevel=13,value={[1]=2.8428,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302014"]=setmetatable({id="200801302014",skillId=200801302,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302015"]=setmetatable({id="200801302015",skillId=200801302,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302016"]=setmetatable({id="200801302016",skillId=200801302,skillLevel=16,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302017"]=setmetatable({id="200801302017",skillId=200801302,skillLevel=17,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302018"]=setmetatable({id="200801302018",skillId=200801302,skillLevel=18,value={[1]=3.3013,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302019"]=setmetatable({id="200801302019",skillId=200801302,skillLevel=19,value={[1]=3.393,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302020"]=setmetatable({id="200801302020",skillId=200801302,skillLevel=20,value={[1]=3.4847,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801302021"]=setmetatable({id="200801302021",skillId=200801302,skillLevel=21,value={[1]=3.393,[2]=135.0,[3]=19.0},skillIdChange=20080130},mt),
    ["200801302022"]=setmetatable({id="200801302022",skillId=200801302,skillLevel=22,value={[1]=3.4847,[2]=135.0,[3]=19.0},skillIdChange=20080130},mt),
    ["200801302023"]=setmetatable({id="200801302023",skillId=200801302,skillLevel=23,value={[1]=3.393,[2]=135.0,[3]=20.0},skillIdChange=20080130},mt),
    ["3201001"]=setmetatable({id="3201001",skillId=3201,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0}},mt),
    ["3301001"]=setmetatable({id="3301001",skillId=3301,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0}},mt),
    ["3401001"]=setmetatable({id="3401001",skillId=3401,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0}},mt),
    ["3501001"]=setmetatable({id="3501001",skillId=3501,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0}},mt),
    ["110101001"]=setmetatable({id="110101001",skillId=110101,skillLevel=1,value={[1]=0.3}},mt),
    ["110102001"]=setmetatable({id="110102001",skillId=110102,skillLevel=1,value={[1]=0.3}},mt),
    ["110103001"]=setmetatable({id="110103001",skillId=110103,skillLevel=1,value={[1]=0.3}},mt),
    ["110104001"]=setmetatable({id="110104001",skillId=110104,skillLevel=1,value={[1]=0.3}},mt),
    ["200801303001"]=setmetatable({id="200801303001",skillId=200801303,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303002"]=setmetatable({id="200801303002",skillId=200801303,skillLevel=2,value={[1]=1.8341,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303003"]=setmetatable({id="200801303003",skillId=200801303,skillLevel=3,value={[1]=1.9258,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303004"]=setmetatable({id="200801303004",skillId=200801303,skillLevel=4,value={[1]=2.0175,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303005"]=setmetatable({id="200801303005",skillId=200801303,skillLevel=5,value={[1]=2.1092,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303006"]=setmetatable({id="200801303006",skillId=200801303,skillLevel=6,value={[1]=2.2009,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303007"]=setmetatable({id="200801303007",skillId=200801303,skillLevel=7,value={[1]=2.2926,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303008"]=setmetatable({id="200801303008",skillId=200801303,skillLevel=8,value={[1]=2.3843,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303009"]=setmetatable({id="200801303009",skillId=200801303,skillLevel=9,value={[1]=2.476,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303010"]=setmetatable({id="200801303010",skillId=200801303,skillLevel=10,value={[1]=2.5677,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303011"]=setmetatable({id="200801303011",skillId=200801303,skillLevel=11,value={[1]=2.6594,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303012"]=setmetatable({id="200801303012",skillId=200801303,skillLevel=12,value={[1]=2.7511,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303013"]=setmetatable({id="200801303013",skillId=200801303,skillLevel=13,value={[1]=2.8428,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303014"]=setmetatable({id="200801303014",skillId=200801303,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["200801303015"]=setmetatable({id="200801303015",skillId=200801303,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["3202016"]=setmetatable({id="3202016",skillId=3202,skillLevel=16,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["3302017"]=setmetatable({id="3302017",skillId=3302,skillLevel=17,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["3402018"]=setmetatable({id="3402018",skillId=3402,skillLevel=18,value={[1]=3.3013,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["3502019"]=setmetatable({id="3502019",skillId=3502,skillLevel=19,value={[1]=3.393,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["110102020"]=setmetatable({id="110102020",skillId=110102,skillLevel=20,value={[1]=3.4847,[2]=135.0,[3]=18.0},skillIdChange=20080130},mt),
    ["110103021"]=setmetatable({id="110103021",skillId=110103,skillLevel=21,value={[1]=3.393,[2]=135.0,[3]=19.0},skillIdChange=20080130},mt),
    ["110104022"]=setmetatable({id="110104022",skillId=110104,skillLevel=22,value={[1]=3.4847,[2]=135.0,[3]=19.0},skillIdChange=20080130},mt),
    ["110105023"]=setmetatable({id="110105023",skillId=110105,skillLevel=23,value={[1]=3.393,[2]=135.0,[3]=20.0},skillIdChange=20080130},mt),
    ["200901201001"]=setmetatable({id="200901201001",skillId=200901201,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901202002"]=setmetatable({id="200901202002",skillId=200901202,skillLevel=2,value={[1]=1.8341,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901203003"]=setmetatable({id="200901203003",skillId=200901203,skillLevel=3,value={[1]=1.9258,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901204004"]=setmetatable({id="200901204004",skillId=200901204,skillLevel=4,value={[1]=2.0175,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901205005"]=setmetatable({id="200901205005",skillId=200901205,skillLevel=5,value={[1]=2.1092,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901206006"]=setmetatable({id="200901206006",skillId=200901206,skillLevel=6,value={[1]=2.2009,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901207007"]=setmetatable({id="200901207007",skillId=200901207,skillLevel=7,value={[1]=2.2926,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901208008"]=setmetatable({id="200901208008",skillId=200901208,skillLevel=8,value={[1]=2.3843,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901209009"]=setmetatable({id="200901209009",skillId=200901209,skillLevel=9,value={[1]=2.476,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901210010"]=setmetatable({id="200901210010",skillId=200901210,skillLevel=10,value={[1]=2.5677,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901211011"]=setmetatable({id="200901211011",skillId=200901211,skillLevel=11,value={[1]=2.6594,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901212012"]=setmetatable({id="200901212012",skillId=200901212,skillLevel=12,value={[1]=2.7511,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901213013"]=setmetatable({id="200901213013",skillId=200901213,skillLevel=13,value={[1]=2.8428,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901214014"]=setmetatable({id="200901214014",skillId=200901214,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901215015"]=setmetatable({id="200901215015",skillId=200901215,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901216016"]=setmetatable({id="200901216016",skillId=200901216,skillLevel=16,value={[1]=2.5677,[2]=135.0,[3]=19.0},skillIdChange=20090120},mt),
    ["200901217017"]=setmetatable({id="200901217017",skillId=200901217,skillLevel=17,value={[1]=2.6594,[2]=135.0,[3]=19.0},skillIdChange=20090120},mt),
    ["200901218018"]=setmetatable({id="200901218018",skillId=200901218,skillLevel=18,value={[1]=2.7511,[2]=135.0,[3]=19.0},skillIdChange=20090120},mt),
    ["200901219019"]=setmetatable({id="200901219019",skillId=200901219,skillLevel=19,value={[1]=2.8428,[2]=135.0,[3]=19.0},skillIdChange=20090120},mt),
    ["200901220020"]=setmetatable({id="200901220020",skillId=200901220,skillLevel=20,value={[1]=2.9345,[2]=135.0,[3]=19.0},skillIdChange=20090120},mt),
    ["200901221021"]=setmetatable({id="200901221021",skillId=200901221,skillLevel=21,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901222022"]=setmetatable({id="200901222022",skillId=200901222,skillLevel=22,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["200901223023"]=setmetatable({id="200901223023",skillId=200901223,skillLevel=23,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20090120},mt),
    ["202601301001"]=setmetatable({id="202601301001",skillId=202601301,skillLevel=1,value={[1]=0.095,[2]=0.35,[3]=0.25,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601302002"]=setmetatable({id="202601302002",skillId=202601302,skillLevel=2,value={[1]=0.1056,[2]=0.3889,[3]=0.2778,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601303003"]=setmetatable({id="202601303003",skillId=202601303,skillLevel=3,value={[1]=0.1161,[2]=0.4278,[3]=0.3056,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601304004"]=setmetatable({id="202601304004",skillId=202601304,skillLevel=4,value={[1]=0.1267,[2]=0.4667,[3]=0.3333,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601305005"]=setmetatable({id="202601305005",skillId=202601305,skillLevel=5,value={[1]=0.1372,[2]=0.5056,[3]=0.3611,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601306006"]=setmetatable({id="202601306006",skillId=202601306,skillLevel=6,value={[1]=0.1478,[2]=0.5444,[3]=0.3889,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601307007"]=setmetatable({id="202601307007",skillId=202601307,skillLevel=7,value={[1]=0.1583,[2]=0.5833,[3]=0.4167,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601308008"]=setmetatable({id="202601308008",skillId=202601308,skillLevel=8,value={[1]=0.1689,[2]=0.6222,[3]=0.4444,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601309009"]=setmetatable({id="202601309009",skillId=202601309,skillLevel=9,value={[1]=0.1794,[2]=0.6611,[3]=0.4722,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601310010"]=setmetatable({id="202601310010",skillId=202601310,skillLevel=10,value={[1]=0.19,[2]=0.7,[3]=0.5,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601311011"]=setmetatable({id="202601311011",skillId=202601311,skillLevel=11,value={[1]=0.2006,[2]=0.7389,[3]=0.5278,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601312012"]=setmetatable({id="202601312012",skillId=202601312,skillLevel=12,value={[1]=0.2111,[2]=0.7778,[3]=0.5556,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601313013"]=setmetatable({id="202601313013",skillId=202601313,skillLevel=13,value={[1]=0.2217,[2]=0.8167,[3]=0.5833,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601314014"]=setmetatable({id="202601314014",skillId=202601314,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601315015"]=setmetatable({id="202601315015",skillId=202601315,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601316016"]=setmetatable({id="202601316016",skillId=202601316,skillLevel=16,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601317017"]=setmetatable({id="202601317017",skillId=202601317,skillLevel=17,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601318018"]=setmetatable({id="202601318018",skillId=202601318,skillLevel=18,value={[1]=3.3013,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601319019"]=setmetatable({id="202601319019",skillId=202601319,skillLevel=19,value={[1]=3.393,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601320020"]=setmetatable({id="202601320020",skillId=202601320,skillLevel=20,value={[1]=3.4847,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601321021"]=setmetatable({id="202601321021",skillId=202601321,skillLevel=21,value={[1]=3.393,[2]=135.0,[3]=19.0},skillIdChange=20260130},mt),
    ["202601322022"]=setmetatable({id="202601322022",skillId=202601322,skillLevel=22,value={[1]=3.4847,[2]=135.0,[3]=19.0},skillIdChange=20260130},mt),
    ["202601323023"]=setmetatable({id="202601323023",skillId=202601323,skillLevel=23,value={[1]=3.393,[2]=135.0,[3]=20.0},skillIdChange=20260130},mt),
    ["202601201001"]=setmetatable({id="202601201001",skillId=202601201,skillLevel=1,value={[1]=0.095,[2]=0.35,[3]=0.25,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601202002"]=setmetatable({id="202601202002",skillId=202601202,skillLevel=2,value={[1]=0.1056,[2]=0.3889,[3]=0.2778,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601203003"]=setmetatable({id="202601203003",skillId=202601203,skillLevel=3,value={[1]=0.1161,[2]=0.4278,[3]=0.3056,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601204004"]=setmetatable({id="202601204004",skillId=202601204,skillLevel=4,value={[1]=0.1267,[2]=0.4667,[3]=0.3333,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601205005"]=setmetatable({id="202601205005",skillId=202601205,skillLevel=5,value={[1]=0.1372,[2]=0.5056,[3]=0.3611,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601206006"]=setmetatable({id="202601206006",skillId=202601206,skillLevel=6,value={[1]=0.1478,[2]=0.5444,[3]=0.3889,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601207007"]=setmetatable({id="202601207007",skillId=202601207,skillLevel=7,value={[1]=0.1583,[2]=0.5833,[3]=0.4167,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601208008"]=setmetatable({id="202601208008",skillId=202601208,skillLevel=8,value={[1]=0.1689,[2]=0.6222,[3]=0.4444,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601209009"]=setmetatable({id="202601209009",skillId=202601209,skillLevel=9,value={[1]=0.1794,[2]=0.6611,[3]=0.4722,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601210010"]=setmetatable({id="202601210010",skillId=202601210,skillLevel=10,value={[1]=0.19,[2]=0.7,[3]=0.5,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601211011"]=setmetatable({id="202601211011",skillId=202601211,skillLevel=11,value={[1]=0.2006,[2]=0.7389,[3]=0.5278,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601212012"]=setmetatable({id="202601212012",skillId=202601212,skillLevel=12,value={[1]=0.2111,[2]=0.7778,[3]=0.5556,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601213013"]=setmetatable({id="202601213013",skillId=202601213,skillLevel=13,value={[1]=0.2217,[2]=0.8167,[3]=0.5833,[4]=0.3,[5]=14.0,[6]=105.0,[7]=14.0},skillIdChange=20260130},mt),
    ["202601214014"]=setmetatable({id="202601214014",skillId=202601214,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601215015"]=setmetatable({id="202601215015",skillId=202601215,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601216016"]=setmetatable({id="202601216016",skillId=202601216,skillLevel=16,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601217017"]=setmetatable({id="202601217017",skillId=202601217,skillLevel=17,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601218018"]=setmetatable({id="202601218018",skillId=202601218,skillLevel=18,value={[1]=3.3013,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601219019"]=setmetatable({id="202601219019",skillId=202601219,skillLevel=19,value={[1]=3.393,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601220020"]=setmetatable({id="202601220020",skillId=202601220,skillLevel=20,value={[1]=3.4847,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202601221021"]=setmetatable({id="202601221021",skillId=202601221,skillLevel=21,value={[1]=3.393,[2]=135.0,[3]=19.0},skillIdChange=20260130},mt),
    ["202601222022"]=setmetatable({id="202601222022",skillId=202601222,skillLevel=22,value={[1]=3.4847,[2]=135.0,[3]=19.0},skillIdChange=20260130},mt),
    ["202601223023"]=setmetatable({id="202601223023",skillId=202601223,skillLevel=23,value={[1]=3.393,[2]=135.0,[3]=20.0},skillIdChange=20260130},mt),
    ["202901301001"]=setmetatable({id="202901301001",skillId=202901301,skillLevel=1,value={[1]=1.7424,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901302002"]=setmetatable({id="202901302002",skillId=202901302,skillLevel=2,value={[1]=1.8341,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901303003"]=setmetatable({id="202901303003",skillId=202901303,skillLevel=3,value={[1]=1.9258,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901304004"]=setmetatable({id="202901304004",skillId=202901304,skillLevel=4,value={[1]=2.0175,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901305005"]=setmetatable({id="202901305005",skillId=202901305,skillLevel=5,value={[1]=2.1092,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901306006"]=setmetatable({id="202901306006",skillId=202901306,skillLevel=6,value={[1]=2.2009,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901307007"]=setmetatable({id="202901307007",skillId=202901307,skillLevel=7,value={[1]=2.2926,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901308008"]=setmetatable({id="202901308008",skillId=202901308,skillLevel=8,value={[1]=2.3843,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901309009"]=setmetatable({id="202901309009",skillId=202901309,skillLevel=9,value={[1]=2.476,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901310010"]=setmetatable({id="202901310010",skillId=202901310,skillLevel=10,value={[1]=2.5677,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901311011"]=setmetatable({id="202901311011",skillId=202901311,skillLevel=11,value={[1]=2.6594,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901312012"]=setmetatable({id="202901312012",skillId=202901312,skillLevel=12,value={[1]=2.7511,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901313013"]=setmetatable({id="202901313013",skillId=202901313,skillLevel=13,value={[1]=2.8428,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901314014"]=setmetatable({id="202901314014",skillId=202901314,skillLevel=14,value={[1]=2.9345,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901315015"]=setmetatable({id="202901315015",skillId=202901315,skillLevel=15,value={[1]=3.0262,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901316016"]=setmetatable({id="202901316016",skillId=202901316,skillLevel=16,value={[1]=3.1179,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901317017"]=setmetatable({id="202901317017",skillId=202901317,skillLevel=17,value={[1]=3.2096,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901318018"]=setmetatable({id="202901318018",skillId=202901318,skillLevel=18,value={[1]=3.3013,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901319019"]=setmetatable({id="202901319019",skillId=202901319,skillLevel=19,value={[1]=3.393,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901320020"]=setmetatable({id="202901320020",skillId=202901320,skillLevel=20,value={[1]=3.4847,[2]=135.0,[3]=18.0},skillIdChange=20260130},mt),
    ["202901321021"]=setmetatable({id="202901321021",skillId=202901321,skillLevel=21,value={[1]=3.393,[2]=135.0,[3]=19.0},skillIdChange=20260130},mt),
    ["202901322022"]=setmetatable({id="202901322022",skillId=202901322,skillLevel=22,value={[1]=3.4847,[2]=135.0,[3]=19.0},skillIdChange=20260130},mt),
    ["202901323023"]=setmetatable({id="202901323023",skillId=202901323,skillLevel=23,value={[1]=3.393,[2]=135.0,[3]=20.0},skillIdChange=20260130},mt),
}
--生成获取数据的方法
---@return SummonedMonsterSkillValue
function GetSummonedMonsterSkillValueData(id)
    return SummonedMonsterSkillValue_Xls[tostring(id)]
end
--自动生成注释
---@class SummonedMonsterSkillValue : table 
---@field id string
---@field skillId number
---@field skillLevel number
---@field value table
---@field skillIdChange number
