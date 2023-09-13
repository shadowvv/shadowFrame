local default = {id=0,value=xlsNilTable,groupid=0,soundeff=xlsNilTable,bpm=0,beginnote=0,timedomain=0,perfectrange=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class BeatMode_Xls : table 
BeatMode_Xls =
{
    ["1"]=setmetatable({id=1,value={[1]=1,[2]=17},groupid=1,soundeff={[1]=2018001,[2]=2018002}},mt),
    ["2"]=setmetatable({id=2,value={[1]=1,[2]=9,[3]=25},groupid=2,soundeff={[1]=2018001,[2]=2018003,[3]=2018002}},mt),
    ["3"]=setmetatable({id=3,value={[1]=1,[2]=17},groupid=3,soundeff={[1]=2018001,[2]=2018003}},mt),
    ["4"]=setmetatable({id=4,value={[1]=1},groupid=1,soundeff={[1]=2018001}},mt),
    ["5"]=setmetatable({id=5,value={[1]=1,[2]=12,[3]=21},groupid=2,soundeff={[1]=2018001,[2]=2018003,[3]=2018004}},mt),
    ["6"]=setmetatable({id=6,value={[1]=1,[2]=9,[3]=17,[4]=25},groupid=4,soundeff={[1]=2018001,[2]=2018002,[3]=2018001,[4]=2018003}},mt),
    ["7"]=setmetatable({id=7,value={[1]=9,[2]=25},groupid=5,soundeff={[1]=2018002,[2]=2018004}},mt),
    ["8"]=setmetatable({id=8,value={[1]=1,[2]=17,[3]=25},groupid=6,soundeff={[1]=2018001,[2]=2018001,[3]=2018003}},mt),
    ["1001"]=setmetatable({id=1001,value={[1]=1,[2]=1,[3]=1,[4]=5,[5]=3,[6]=3,[7]=3,[8]=6,[9]=2,[10]=2,[11]=2,[12]=4},groupid=0,soundeff=xlsNilTable,bpm=170,beginnote=96,timedomain=32,perfectrange=2},mt),
}
--生成获取数据的方法
---@return BeatMode
function GetBeatModeData(id)
    return BeatMode_Xls[tostring(id)]
end
--自动生成注释
---@class BeatMode : table 
---@field id number
---@field value table
---@field groupid number
---@field soundeff table
---@field bpm number
---@field beginnote number
---@field timedomain number
---@field perfectrange number
