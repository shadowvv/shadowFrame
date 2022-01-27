---@class LeaderTypeDes_Xls : table
LeaderTypeDes_Xls={
["1"]={id=1,leaderTypeName="歌唱型",typeNameForWeapon="歌唱型",leaderTypeNameDes="法露莉专属（单浮游）",leaderTypeEnglishName="assault",leaderTypeIcon="WeaponType_1gechang",leaderTypeText="歌唱作为所有斯露德的普遍能力，歌唱型的武装的各项能力也最为均衡，同时具有着良好的适用性，使各项作战中的主力部队装备。"},
["2"]={id=2,leaderTypeName="舞蹈型",typeNameForWeapon="舞蹈型",leaderTypeNameDes="夏洛专属（无人机）",leaderTypeEnglishName="guide",leaderTypeIcon="WeaponType_2wudao",leaderTypeText="斯露德的歌声往往伴随着动作，这些动作对情感的诠释要更为具象与强烈，在长久的发展过程中渐渐融合了各地的舞蹈文化，形成相对独立的派别。"},
["3"]={id=3,leaderTypeName="祷告型",typeNameForWeapon="祷告型",leaderTypeNameDes="瓦希提专属（连发导弹）",leaderTypeEnglishName="heavy",leaderTypeIcon="WeaponType_3daogao",leaderTypeText="祷告型武装单位，具有良好的射程与精确度，同时基于祈祷所需要的高专注度与较长的念词时间，往往被布置在阵线后方，作为火力支援使用。"},
["4"]={id=4,leaderTypeName="礼拜型",typeNameForWeapon="礼拜型",leaderTypeNameDes="奈纳专属（球形aoe重型）",leaderTypeEnglishName="assault",leaderTypeIcon="WeaponType_4libai",leaderTypeText="礼拜型的装备使用更倾向于用较长的动作仪式来激活源能能量，虽然攻击有着较长的周期这一点与祷告型有所相似，但比起追求高穿透性的点攻击，礼拜型更倾向大规模的伤害"},
["5"]={id=5,leaderTypeName="祭祀型",typeNameForWeapon="祭祀型",leaderTypeNameDes="维拉专属（变形）",leaderTypeEnglishName="guide",leaderTypeIcon="WeaponType_5jisi",leaderTypeText="顾名思义，祭祀型的装备需要供奉媒介，往往为装配有源能石粉末的仓匣，或者以加工后的弹状源能石作为祭祀媒介。每一次打击都将带出一定的源能石碎屑，造成霰射的规模伤害。"},
}
---@return LeaderTypeDes
function GetLeaderTypeDesData(id)
	return LeaderTypeDes_Xls[tostring(id)]
end
---@class LeaderTypeDes : table
---@field id number
---@field leaderTypeName string
---@field typeNameForWeapon string
---@field leaderTypeNameDes string
---@field leaderTypeEnglishName string
---@field leaderTypeIcon string
---@field leaderTypeText string
