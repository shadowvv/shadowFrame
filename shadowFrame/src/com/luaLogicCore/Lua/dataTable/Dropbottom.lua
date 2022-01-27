---@class DropBottom_Xls : table 
DropBottom_Xls =
{
    ["1"]={dropBottomId=1,beiZhu="",happenNum=-1,type=1,targetDropId=2000,min=10,max=10,targetIssueDropId=2000,isused=1},
    ["2"]={dropBottomId=2,beiZhu="",happenNum=-1,type=2,targetDropId=200,min=2,max=2,targetIssueDropId=200,isused=1},
    ["3"]={dropBottomId=3,beiZhu="",happenNum=-1,type=3,targetDropId=20,min=2,max=2,targetIssueDropId=20,isused=1},
    ["100001"]={dropBottomId=100001,beiZhu="角色卡池保底A",happenNum=-1,type=2,targetDropId=111,min=10,max=10,targetIssueDropId=111,isused=1},
    ["100002"]={dropBottomId=100002,beiZhu="角色卡池保底S",happenNum=-1,type=2,targetDropId=121,min=80,max=80,targetIssueDropId=121,isused=1},
    ["100101"]={dropBottomId=100101,beiZhu="角色卡池1保底",happenNum=-1,type=2,targetDropId=111,min=10,max=10,targetIssueDropId=111,isused=1},
    ["100102"]={dropBottomId=100102,beiZhu="角色卡池1保底",happenNum=-1,type=2,targetDropId=10010,min=80,max=80,targetIssueDropId=10010,isused=1},
    ["300001"]={dropBottomId=300001,beiZhu="武装卡池保底",happenNum=-1,type=2,targetDropId=241,min=10,max=10,targetIssueDropId=241,isused=1},
    ["300002"]={dropBottomId=300002,beiZhu="武装卡池保底",happenNum=-1,type=2,targetDropId=251,min=30,max=30,targetIssueDropId=251,isused=1},
    ["300101"]={dropBottomId=300101,beiZhu="武装卡池1保底",happenNum=-1,type=2,targetDropId=241,min=10,max=10,targetIssueDropId=241,isused=1},
    ["300102"]={dropBottomId=300102,beiZhu="武装卡池1保底",happenNum=-1,type=2,targetDropId=30010,min=30,max=30,targetIssueDropId=30010,isused=1},
    ["300201"]={dropBottomId=300201,beiZhu="武装卡池2保底",happenNum=-1,type=2,targetDropId=241,min=10,max=10,targetIssueDropId=241,isused=1},
    ["300202"]={dropBottomId=300202,beiZhu="武装卡池2保底",happenNum=-1,type=2,targetDropId=30020,min=30,max=30,targetIssueDropId=30020,isused=1},
    ["300301"]={dropBottomId=300301,beiZhu="武装卡池3保底",happenNum=-1,type=2,targetDropId=241,min=10,max=10,targetIssueDropId=241,isused=1},
    ["300302"]={dropBottomId=300302,beiZhu="武装卡池3保底",happenNum=-1,type=2,targetDropId=30030,min=30,max=30,targetIssueDropId=30030,isused=1},
    ["300401"]={dropBottomId=300401,beiZhu="武装卡池4保底",happenNum=-1,type=2,targetDropId=241,min=10,max=10,targetIssueDropId=241,isused=1},
    ["300402"]={dropBottomId=300402,beiZhu="武装卡池4保底",happenNum=-1,type=2,targetDropId=30040,min=30,max=30,targetIssueDropId=30040,isused=1},
    ["300501"]={dropBottomId=300501,beiZhu="武装卡池5保底",happenNum=-1,type=2,targetDropId=241,min=10,max=10,targetIssueDropId=241,isused=1},
    ["300502"]={dropBottomId=300502,beiZhu="武装卡池5保底",happenNum=-1,type=2,targetDropId=30050,min=30,max=30,targetIssueDropId=30050,isused=1},
    ["400101"]={dropBottomId=400101,beiZhu="初入方舟保底",happenNum=-1,type=2,targetDropId=111,min=10,max=10,targetIssueDropId=111,isused=1},
    ["400102"]={dropBottomId=400102,beiZhu="初入方舟保底",happenNum=-1,type=2,targetDropId=121,min=20,max=20,targetIssueDropId=121,isused=1},
}
--生成获取数据的方法
---@return DropBottom
function GetDropBottomData(id)
    return DropBottom_Xls[tostring(id)]
end
--自动生成注释
---@class DropBottom : table 
---@field dropBottomId number
---@field beiZhu string
---@field happenNum number
---@field type number
---@field targetDropId number
---@field min number
---@field max number
---@field targetIssueDropId number
---@field isused number
