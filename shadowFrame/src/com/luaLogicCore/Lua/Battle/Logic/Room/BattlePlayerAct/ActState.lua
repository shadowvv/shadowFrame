---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/6/9 19:35

require "Lib/class"

---@class ActState : table
ActState = class(nil, 'ActState');

ActState = {
    ---@type ActState
    NOT_PLAY = 1,
    ---@type ActState
    PLAYING = 2,
    ---@type ActState
    FINISH = 3,
}

return ActState;