---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by hejincheng.
--- DateTime: 2022/2/28 18:38

require "Lib/class"

-- UI类型
PlayUiEnum = {
    -- 无
    NONE = 0,
    -- 关卡目标
    MISSION = 1,
    -- 倒计时
    TIME_COUNT_DOWN = 2
}

-- 演出类型
PlayActEnum = {
    -- 无
    NONE = 0,
    -- 角色出场
    ROLE_APPEAR = 1,
    -- 关卡演出
    LEVEL_SCENE = 2,
    -- 虚拟相机
    VIRTUAL_CAMERA = 3,
    -- 仅UI
    ONLY_UI = 4,
}

-- 剧情类型
---@type number
PlayPlotEnum = {
    -- 无
    NONE = 0,
    -- 角色出场
    AVG = 1,
    -- 关卡演出
    TIME_LINE = 2,
    -- 虚拟相机
    CG = 3,
}