---@class SignActivity_Xls : table 
SignActivity_Xls =
{
    ["1"]={id=1,type=1,times=1,markType=0,fixedRewardID=9999},
    ["2"]={id=2,type=1,times=2,markType=0,fixedRewardID=9999},
    ["3"]={id=3,type=1,times=3,markType=0,fixedRewardID=9999},
    ["4"]={id=4,type=1,times=4,markType=0,fixedRewardID=9999},
    ["5"]={id=5,type=1,times=5,markType=1,fixedRewardID=9999},
    ["6"]={id=6,type=1,times=6,markType=0,fixedRewardID=9999},
    ["7"]={id=7,type=1,times=7,markType=1,fixedRewardID=9999},
}
--生成获取数据的方法
---@return SignActivity
function GetSignActivityData(id)
    return SignActivity_Xls[tostring(id)]
end
--自动生成注释
---@class SignActivity : table 
---@field id number
---@field type number
---@field times number
---@field markType number
---@field fixedRewardID number
