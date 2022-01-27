---@class CommonPopupFrame_Xls : table 
CommonPopupFrame_Xls =
{
    ["1"]={id=1,describe="3s提示（中）",disableScene=xlsNilTable,layer=10,group=256,isParallel=0,priority=0,guideType=2},
    ["2"]={id=2,describe="3s提示（右）",disableScene={[1]=3,[2]=4},layer=11,group=128,isParallel=0,priority=0,guideType=2},
    ["3"]={id=3,describe="跑马灯（预占位）",disableScene={[1]=2},layer=12,group=64,isParallel=0,priority=0,guideType=2},
    ["4"]={id=4,describe="弱网重连",disableScene={[1]=3,[2]=4},layer=20,group=32,isParallel=0,priority=0,guideType=2},
    ["5"]={id=5,describe="成就获得",disableScene={[1]=3,[2]=4},layer=7,group=2,isParallel=1,priority=70,guideType=2},
    ["6"]={id=6,describe="功能解锁",disableScene={[1]=2,[2]=3,[3]=4},layer=8,group=2,isParallel=1,priority=80,guideType=2},
    ["7"]={id=7,describe="通用提示框",disableScene=xlsNilTable,layer=9,group=16,isParallel=0,priority=0,guideType=1},
    ["8"]={id=8,describe="公告",disableScene={[1]=1},layer=3,group=1,isParallel=1,priority=100,guideType=1},
    ["9"]={id=9,describe="签到",disableScene={[1]=1},layer=2,group=1,isParallel=1,priority=95,guideType=1},
    ["10"]={id=10,describe="奖励获得",disableScene={[1]=2},layer=4,group=4,isParallel=0,priority=0,guideType=2},
    ["11"]={id=11,describe="特殊道具展示",disableScene={[1]=3,[2]=4},layer=6,group=8,isParallel=0,priority=0,guideType=2},
    ["12"]={id=12,describe="导师升级",disableScene={[1]=2,[2]=3,[3]=4},layer=5,group=1,isParallel=1,priority=110,guideType=1},
    ["13"]={id=13,describe="初心者",disableScene={[1]=1},layer=2,group=1,isParallel=1,priority=90,guideType=1},
}
--生成获取数据的方法
---@return CommonPopupFrame
function GetCommonPopupFrameData(id)
    return CommonPopupFrame_Xls[tostring(id)]
end
--自动生成注释
---@class CommonPopupFrame : table 
---@field id number
---@field describe string
---@field disableScene table
---@field layer number
---@field group number
---@field isParallel number
---@field priority number
---@field guideType number
