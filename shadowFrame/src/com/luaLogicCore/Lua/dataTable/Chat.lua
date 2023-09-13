local default = {id=0,name="",isWord=0,textDelete=0,numLimit=0,timeLimit=0,frequency=xlsNilTable,textLimit=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class Chat_Xls : table 
Chat_Xls =
{
    ["1"]=setmetatable({id=1,name="私聊",isWord=1,textDelete=0,numLimit=20,timeLimit=172800,frequency={[1]=4,[2]=1},textLimit=20},mt),
    ["2"]=setmetatable({id=2,name="小队",isWord=1,textDelete=1,numLimit=30,timeLimit=172800,frequency={[1]=4,[2]=1},textLimit=20},mt),
    ["3"]=setmetatable({id=3,name="脉流巡检",isWord=1,textDelete=0,numLimit=40,timeLimit=172800,frequency={[1]=4,[2]=1},textLimit=20},mt),
    ["4"]=setmetatable({id=4,name="团本",isWord=1,textDelete=0,numLimit=40,timeLimit=172800,frequency={[1]=4,[2]=1},textLimit=20},mt),
}
--生成获取数据的方法
---@return Chat
function GetChatData(id)
    return Chat_Xls[tostring(id)]
end
--自动生成注释
---@class Chat : table 
---@field id number
---@field name string
---@field isWord number
---@field textDelete number
---@field numLimit number
---@field timeLimit number
---@field frequency table
---@field textLimit number
