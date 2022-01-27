---@class CommonShake_Xls : table 
CommonShake_Xls =
{
    ["1"]={id=1,desc="",positionX=20.0,positionY=0.0,positionZ=0.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.08,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=10},
    ["2"]={id=2,desc="",positionX=25.0,positionY=0.0,positionZ=0.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.07,cycleCount=5,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=5},
    ["3"]={id=3,desc="",positionX=0.0,positionY=0.0,positionZ=0.0,angleShakeX=20.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.08,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=10},
    ["4"]={id=4,desc="",positionX=0.0,positionY=0.0,positionZ=0.0,angleShakeX=25.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.07,cycleCount=5,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=5},
    ["5"]={id=5,desc="",positionX=0.0,positionY=0.0,positionZ=20.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.07,cycleCount=2,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=2},
    ["6"]={id=6,desc="",positionX=0.0,positionY=0.0,positionZ=30.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.09,cycleCount=2,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=2},
    ["7"]={id=7,desc="",positionX=0.0,positionY=0.0,positionZ=20.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.07,cycleCount=30,fixShake=0,unscaleTime=0,bothDir=1,fCycleCount=30},
    ["8"]={id=8,desc="抽卡震动效果",positionX=0.002,positionY=0.003,positionZ=0.003,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.1,cycleCount=20,fixShake=1,unscaleTime=0,bothDir=1,fCycleCount=0},
    ["101"]={id=101,desc="【剧情对话-镜头】导师打了一个寒颤",positionX=8.0,positionY=0.0,positionZ=0.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.2,cycleCount=2,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},
    ["102"]={id=102,desc="【剧情对话-立绘】立绘震动",positionX=10.0,positionY=0.0,positionZ=0.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.1,cycleCount=10,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},
    ["103"]={id=103,desc="【剧情对话-文本框】文本框震动",positionX=10.0,positionY=0.0,positionZ=0.0,angleShakeX=0.0,angleShakeY=0.0,angleShakeZ=0.0,cycleTime=0.1,cycleCount=5,fixShake=0,unscaleTime=0,bothDir=0,fCycleCount=0},
}
--生成获取数据的方法
---@return CommonShake
function GetCommonShakeData(id)
    return CommonShake_Xls[tostring(id)]
end
--自动生成注释
---@class CommonShake : table 
---@field id number
---@field desc string
---@field positionX number
---@field positionY number
---@field positionZ number
---@field angleShakeX number
---@field angleShakeY number
---@field angleShakeZ number
---@field cycleTime number
---@field cycleCount number
---@field fixShake number
---@field unscaleTime number
---@field bothDir number
---@field fCycleCount number
