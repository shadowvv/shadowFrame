local default = {id=0,battleParticleStuckDelayTime=0,battleParticleStuckSpeed=0,battleParticleStuckTime=0,battleBulletStuckSpeed=0,battleBulletStuckTime=0,battleAnimStuckSpeed=0,battleAnimStuckTime=0}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class FrameStuck_Xls : table 
FrameStuck_Xls =
{
    ["101"]=setmetatable({id=101,battleParticleStuckDelayTime=0.033,battleParticleStuckSpeed=0,battleParticleStuckTime=0.033},mt),
    ["102"]=setmetatable({id=102,battleParticleStuckDelayTime=0.033,battleParticleStuckSpeed=0,battleParticleStuckTime=0.066,battleBulletStuckSpeed=0,battleBulletStuckTime=0,battleAnimStuckSpeed=0,battleAnimStuckTime=0.033},mt),
    ["103"]=setmetatable({id=103,battleParticleStuckDelayTime=0.033,battleParticleStuckSpeed=0,battleParticleStuckTime=0.066,battleBulletStuckSpeed=0,battleBulletStuckTime=0,battleAnimStuckSpeed=0,battleAnimStuckTime=0.033},mt),
    ["104"]=setmetatable({id=104,battleParticleStuckDelayTime=0.033,battleParticleStuckSpeed=0,battleParticleStuckTime=0.099,battleBulletStuckSpeed=0.2,battleBulletStuckTime=0.08,battleAnimStuckSpeed=0,battleAnimStuckTime=0.066},mt),
    ["105"]=setmetatable({id=105,battleParticleStuckDelayTime=0.033,battleParticleStuckSpeed=0,battleParticleStuckTime=0.099,battleBulletStuckSpeed=0,battleBulletStuckTime=0.2,battleAnimStuckSpeed=0,battleAnimStuckTime=0.033},mt),
}
--生成获取数据的方法
---@return FrameStuck
function GetFrameStuckData(id)
    return FrameStuck_Xls[tostring(id)]
end
--自动生成注释
---@class FrameStuck : table 
---@field id number
---@field battleParticleStuckDelayTime number
---@field battleParticleStuckSpeed number
---@field battleParticleStuckTime number
---@field battleBulletStuckSpeed number
---@field battleBulletStuckTime number
---@field battleAnimStuckSpeed number
---@field battleAnimStuckTime number
