local default = {story=0,openTime=0,open=0,inbornId=xlsNilTable,index="",icon1="",icon2="",storyShow=0,des="",name="",season=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class CompetitionSeasonStory_Xls : table 
CompetitionSeasonStory_Xls =
{
    ["10001"]=setmetatable({story=10001,openTime=90001,open=101,inbornId={[1]=10001,[2]=10002,[3]=10003,[4]=10004,[5]=10005},index="01",icon1="img_season_story_xq_cg01",icon2="img_season_story_cg01",storyShow=4011010,des="什么是梦境，什么是异空。伴随着新伙伴的登场，一些我们未曾关注的隐秘即将浮出水面。我们触及到的，是真相，亦或是深渊……",name="Chapter01",season=1},mt),
    ["10002"]=setmetatable({story=10002,openTime=90002,open=7203117,inbornId={[1]=10006,[2]=10007,[3]=10008,[4]=10009,[5]=10010},index="02",icon1="img_season_story_xq_cg02",icon2="img_season_story_cg02",storyShow=4011040,des="敬请期待",name="Chapter02",season=1},mt),
    ["10003"]=setmetatable({story=10003,openTime=90003,open=7203118,inbornId={[1]=10011,[2]=10012,[3]=10013,[4]=10014,[5]=10015},index="03",icon1="img_season_story_xq_cg03",icon2="img_season_story_cg03",storyShow=4011040,des="敬请期待",name="Chapter03",season=1},mt),
    ["10004"]=setmetatable({story=10004,openTime=90004,open=7203119,inbornId={[1]=10016,[2]=10017,[3]=10018,[4]=10019,[5]=10020},index="04",icon1="img_season_story_xq_cg04",icon2="img_season_story_cg04",storyShow=4011040,des="敬请期待",name="Chapter04",season=1},mt),
    ["10005"]=setmetatable({story=10005,openTime=90005,open=7203120,inbornId={[1]=10021,[2]=10022,[3]=10023,[4]=10024,[5]=10025},index="05",icon1="img_season_story_xq_cg05",icon2="img_season_story_cg05",storyShow=4011040,des="敬请期待",name="Chapter05",season=1},mt),
    ["10006"]=setmetatable({story=10006,openTime=90006,open=7203121,inbornId=xlsNilTable,index="06",icon1="img_season_story_xq_cg06",icon2="img_season_story_cg06",storyShow=4011040,des="敬请期待",name="Chapter06",season=1},mt),
    ["20001"]=setmetatable({story=20001,openTime=90001,open=101,inbornId={[1]=10001,[2]=10002,[3]=10003,[4]=10004,[5]=10005},index="01",icon1="img_season_story_xq_cg01",icon2="img_season_story_cg01",storyShow=4011040,des="剧情1描述",name="Chapter01",season=2},mt),
    ["20002"]=setmetatable({story=20002,openTime=90002,open=7203117,inbornId={[1]=10006,[2]=10007,[3]=10008,[4]=10009,[5]=10010},index="02",icon1="img_season_story_xq_cg02",icon2="img_season_story_cg02",storyShow=4011040,des="剧情2描述",name="Chapter02",season=2},mt),
    ["20003"]=setmetatable({story=20003,openTime=90003,open=7203118,inbornId={[1]=10011,[2]=10012,[3]=10013,[4]=10014,[5]=10015},index="03",icon1="img_season_story_xq_cg03",icon2="img_season_story_cg03",storyShow=4011040,des="剧情3描述",name="Chapter03",season=2},mt),
    ["20004"]=setmetatable({story=20004,openTime=90004,open=7203119,inbornId={[1]=10016,[2]=10017,[3]=10018,[4]=10019,[5]=10020},index="04",icon1="img_season_story_xq_cg04",icon2="img_season_story_cg04",storyShow=4011040,des="剧情4描述",name="Chapter04",season=2},mt),
    ["20005"]=setmetatable({story=20005,openTime=90005,open=7203120,inbornId={[1]=10021,[2]=10022,[3]=10023,[4]=10024,[5]=10025},index="05",icon1="img_season_story_xq_cg05",icon2="img_season_story_cg05",storyShow=4011040,des="剧情5描述",name="Chapter05",season=2},mt),
    ["30001"]=setmetatable({story=30001,openTime=90001,open=101,inbornId={[1]=10001,[2]=10002,[3]=10003,[4]=10004,[5]=10005},index="01",icon1="img_season_story_xq_cg01",icon2="img_season_story_cg01",storyShow=4011040,des="剧情1描述",name="Chapter01",season=3},mt),
    ["30002"]=setmetatable({story=30002,openTime=90002,open=7203117,inbornId={[1]=10006,[2]=10007,[3]=10008,[4]=10009,[5]=10010},index="02",icon1="img_season_story_xq_cg02",icon2="img_season_story_cg02",storyShow=4011040,des="剧情2描述",name="Chapter02",season=3},mt),
    ["30003"]=setmetatable({story=30003,openTime=90003,open=7203118,inbornId={[1]=10011,[2]=10012,[3]=10013,[4]=10014,[5]=10015},index="03",icon1="img_season_story_xq_cg03",icon2="img_season_story_cg03",storyShow=4011040,des="剧情3描述",name="Chapter03",season=3},mt),
    ["30004"]=setmetatable({story=30004,openTime=90004,open=7203119,inbornId={[1]=10016,[2]=10017,[3]=10018,[4]=10019,[5]=10020},index="04",icon1="img_season_story_xq_cg04",icon2="img_season_story_cg04",storyShow=4011040,des="剧情4描述",name="Chapter04",season=3},mt),
    ["30005"]=setmetatable({story=30005,openTime=90005,open=7203120,inbornId={[1]=10021,[2]=10022,[3]=10023,[4]=10024,[5]=10025},index="05",icon1="img_season_story_xq_cg05",icon2="img_season_story_cg05",storyShow=4011040,des="剧情5描述",name="Chapter05",season=3},mt),
}
--生成获取数据的方法
---@return CompetitionSeasonStory
function GetCompetitionSeasonStoryData(id)
    return CompetitionSeasonStory_Xls[tostring(id)]
end
--自动生成注释
---@class CompetitionSeasonStory : table 
---@field story number
---@field openTime number
---@field open number
---@field inbornId table
---@field index string
---@field icon1 string
---@field icon2 string
---@field storyShow number
---@field des string
---@field name string
---@field season number
