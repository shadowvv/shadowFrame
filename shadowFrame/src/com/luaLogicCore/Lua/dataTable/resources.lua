---@class resources_Xls : table
resources_Xls={
["1"]={ID=1,resource="/assets/movie/hk_op.mp4",notes="片头动画"},
["2"]={ID=2,resource="audio/homepage",notes="主页面bgm"},
["3"]={ID=3,resource="audio/Chapter",notes="选关页面bgm"},
["4"]={ID=4,resource="audio/BOSSmusic_DEMO1",notes="boss1bgm"},
["5"]={ID=5,resource="audio/Scencemusic_DEMO1",notes="战斗内bgm1"},
["6"]={ID=6,resource="audio/victory",notes="胜利"},
["7"]={ID=7,resource="audio/defeat",notes="失败"},
["8"]={ID=8,resource="audio/check",notes="点击屏幕"},
["9"]={ID=9,resource="audio/getitem",notes="获得物品"},
["10"]={ID=10,resource="audio/levelup",notes="升级"},
["11"]={ID=11,resource="audio/stars",notes="星级"},
["12"]={ID=12,resource="audio/checkItem",notes="点击物品"},
}
---@return resources
function GetresourcesData(id)
	return resources_Xls[tostring(id)]
end
---@class resources : table
---@field ID number
---@field resource string
---@field notes string
