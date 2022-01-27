local protoStr = { }
protoStr.str = "package msg;\
\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
//错误定义\
enum ErrorEnum\
{\
//操作过于频繁\
	Frequentoperation		=998;\
//不兼容的客户端版本号\
	GameVersionError		=999;\
//Token错误\
	TokenError				=1000;\
//服务器错误\
	SysError				=1001;\
//相同账号登录\
	KickPlayer				=1002;\
//Token超时\
	TokenTimeOut			=1003;\
//请完成上一次操作\
	PreIng					=1004;\
//服务器状态错误\
	ServerStateError		=1005;\
//锁定中\
	Locked					=1006;\
//服务器版本号变化 请重新登录\
	ServerVersionChange		=1007;\
\
//操作成功\
	Success 				=0;\
//没有这个玩家\
	NoPlayer 				=10000;\
//玩家已存在\
	PlayerExists 			=10001;\
//服务器错误\
	ServerError 			=10002; \
//玩家昵称已经存在\
	PlayerNameExists 		=10003;\
//主城等级不足\
	MainBuildLevelLow 		=10004;\
//铜钱不足\
	NoCoin 					=10005;\
//劳力不足\
	NoPerson 				=10006;\
//没有这个建筑\
	NoBuild 				=10007;\
//建筑数量已达到上限\
	BuildMax				=10008;\
//玩家等级不足\
	PlayerLevelLow			=10009;\
//玩家资源不足\
	NoRes 					=10010;\
//商铺现铜钱数过少\
	NoShopCoin				=10011;\
//农田现粮食数过少\
	NoFarmFood				=10012;\
//对应建筑等级不符\
	BuildLevelLow 			=10013;\
//金币不足\
	NoMoney					=10014;	\
//武将等级已满\
	LeaderHasMaxLevel		=10015;\
//武将等级不能高于玩家等级\
	LeaderLvThanPlayerLv	=10016; \
\
//装备等级已经最高\
	EquipLvMax				=10017; \
//装备等级不足\
	EquipLvLess				=10018;\
\
//体力不足\
	NoneStrength			=10019;\
//攻打次数已达上限\
	NoneAttackTime			=10020;\
//关卡未解锁\
	PVELocked				=10021;\
\
//关卡未达到解锁条件\
	PVESweepLock			=10022;\
\
//章节为通关\
	NotAllPVEAttacked		=10023;\
\
//任务已经完成\
	TaskEnded				=10024;\
//前置任务未完成\
	TaskPreNoneEnd			=10025;\
//任务条件不足\
	TaskEnough				=10026;\
\
//武将不存在\
	LeaderNotExists			=10027;\
//统领值不足\
	CostLittle				=10028;\
//超时\
	TimeOut					=10029;\
\
//该充值已经处理\
	Recharged				=10030;\
//无效的单号\
	RechargNotExit			=10031;\
\
//今天购买次数已经用完\
	TodayBuyTimeFull		=10032;\
\
//装备数量已达上限\
	EquipMaxNum				=10033;\
//武将数量已达上限\
	LeaderMaxNum			=10034;\
\
//订单已经处理\
	OrderProcessed			=10035;\
\
//该消息已经处理\
	MsgOpted				=10036;\
\
//邮件类型不对\
	MailTypeError			=10037;\
\
//邮件状态不对\
	MailStateError			=10038;\
\
//征收时间不足\
	GetCityResTimeOut		=10039;\
\
//购买体力次数已达上限\
	BuyStrengthMaxCount		=10040;\
\
//今天已经领取签到奖励\
	GetSignRewarded			=10041;\
\
//武将已经布阵\
	LeaderHasFormationed	=10042;\
\
//武将品质不符\
	LeaderQualityLess		=10043;\
\
//材料不足\
	MaterialLess			=10044;\
\
//武将已经存在\
	LeaderExists 			=10045;\
// 积分不够\
	NotEnoughIntegral       =10046;\
	\
//挑战次数已达上限\
	NoneChallegeNum			=10047;\
//挑战日期错误\
	ChallegeDateWrong		=10048;\
//玩家等级低于挑战活动解锁等级\
	LevelLimit			    =10049;\
//征战次数达到上限\
	NoneAttackCityNum		=10050;\
//装备不存在\
	NoneEquip				=10051;\
//要吃的装备不存在\
	NoneEatEquips			=10052;\
//装备已经装备在武将身上\
	EquipAlreadyInLeader	=10053;\
//城市状态不对\
	CityStateError			=10054;\
//昵称中含有敏感字符\
	NameHasBlackWord		=10055;\
//奖励已经领取\
	RewardTaken		        =10056;\
//勇气石不足\
	NotEnoughStone	        =10057;\
//勇气魂不足\
	NotEnoughGhost		    =10058;\
//无竞技场奖励\
	NoTournamentReward		=10059;\
//碎片不足\
	PartLess				=10060;\
//时间不对\
	NotCorrectTime          =10061;\
//cdkey已经被使用\
	CDKeyAlreadyUsed		=10062;\
//cdkey无效\
	CDKeyNotExists			=10063;\
//已经参加过该活动\
	ActivityAlreadyFinished	=10064;\
//VIP等级不足\
	VIPLevelLess			=10065;\
//已经购买过该VIP奖励\
	VIPRewardBuyed			=10066;\
//没有购买月卡\
	VipMonthCardNone		=10067;\
//已经领取过月卡奖励\
	VipMonthCardRewardGeted	=10068;\
//已经没有购买次数\
	NoneBuyTimes			=10069;\
//没有对应的cdkey活动\
	NoCDKeyActivity			=10071;\
//cdkey活动未开启或者过期\
	CDKeyActivityWrongTime	=10072;\
//活动不存在\
	ActivityNotExist		=10073;\
//活动未开启或者过期\
	ActivityWrongTime		=10074;\
//活动未达成\
	ActivityNotReach		=10075;\
//同类礼包无法重复领取\
	TakenDuplicateCdkActivity=10076;\
//武将在阵型中\
	LeaderInFormation		=10077;\
//武将在奉行中\
	LeaderInBugy			=10078;\
//武将重复\
	LeaderDuplicate			=10079;\
//奉行位置未解锁\
	BugyPositionLocked		=10080;\
//武将不匹配\
	LeaderNotMatch			=10081;\
//奉行已达最大等级\
	BugyMaxLevel			=10082;\
//苹果充值验证错误\
	AppleVerfyError			=10083;\
//不能升星\
	CantUpgradeStar			=10084;\
//升星失败\
	UpgradeStarFail			=10085;\
//建筑已经达到最大等级或建筑不存在\
	LevelMaxed				=10086;\
//竞技场段位过低\
	TournamentGradeLow		=10087;\
//官职过低\
	PositionsIntegralLow	=10089;\
//家族武将不足\
	FamilyLeaderNumLow		=10090;\
//功能建筑不存在\
	FunctionsBuildNotExists	=10091;\
//功能建筑坑不存在\
	blockLocked				=10092;\
//未通关前一关卡\
	NotClearPreChallegeActivity	=10093;\
//合战家族已经选择过了\
	FamilySelected			=10095;\
//最高等级\
	MaxLevel 				=10094;\
//合战家族ID错误\
	FamilyIdIncorrect		=10096;\
//没有选择合战家族\
	NotSelectFamily			=10097;\
//合战没开放\
	FamilyWarNotOpen		=10098;\
//没有这个商品\
	NoMallGood				=10099;\
//等级太高\
	HigherLevel             =10100;\
//战役活动不符\
	CampaignChapterError	=10101;\
//战役前一关卡未通过\
	CampaignPreLevelNoAttack=10102;\
//并没有奖励可以领取\
	NoReward 				=10103;\
//已经领取过\
	AlreadyGeted			=10104;\
//已经申请过此朋友\
	FriendApplied           =10105;\
//已经是朋友\
	Friended                =10106;\
//玩家申请列表已达上限\
    FriendAppliyNumLimit   	=10108;\
//玩家好友列表已达上限\
    FriendNumLimit         	=10109;\
//玩家申请超时\
    FriendAppliyTimeout    	=10110;\
//不存在的朋友\
    NoFriend              	=10111;\
//已经给过体力\
    GivenStrength          	=10112;\
//没有给过体力\
    NoGiveStrength         	=10113;\
//已经领取过体力\
    TakenGiveStrength      	=10114;\
//商城无此兑换id\
	ShopNoExchangeId      	=10115;\
//不在商城兑换时间内\
	NotInChristmasTime      =10116;\
//炮台碎片不足\
	NoEnoughFortDebris      =10117;\
//购买次数已用完\
	NoMoreBuyTimes      	=10118;\
//玩家不在线\
	PlayerOffline			=10119;\
//远征关卡已打完\
	InfiniteCityIsFull      =10120;\
//不是远征战斗关卡\
	NotInfiniteCityLevel    =10121;\
//远征武将血量为0\
	InfiniteCityLeaderDead  =10122;\
//远征宝箱已全部开启\
	InfiniteCityBoxAllOpened=10123;\
//远征星星不够\
	InfiniteCityStarNotEnough=10124;\
//远征结算武将不在上阵列表\
	InfiniteCityLeaderWrong =10125;\
//聊天信息不能为空\
	ChatMsgNotNull			=10126;\
//远征积分不足\
	InfiniteCityScoreNotEnough=10127;\
//远征重置次数已用完\
	InfiniteCityResetNotEnough=10128;\
//该好友已经打过远征\
	InfiniteCityFriendHasUsed=10129;\
//好友助战远征次数已满\
	InfiniteCityFriendHasFull=10130;\
//武将不能觉醒\
	LeaderCanNotAwaken		=10131;\
//该物品已经放置\
	ItemExists				=10132;\
//武将等级不足\
	LeaderLevelNotEnough	=10133;\
//武将星级不足\
	LeaderStarNotEnough		=10134;\
//远征跳过次数已用完\
	InfiniteCityPassNotEnough=10135;\
//远征商城刷新时间未到\
	InfiniteCityRefreshTimeWrong =10136;\
//合战人数差据大\
	MemberGap               =10137;\
//没有此邀请码\
	NoInviteCode            =10138;\
//玩家已绑定过邀请码\
	AlreadyInvited          =10139;\
//此邀请码奖励已领取\
	InviteCodeHasReceiced   =10140;\
//此邀请码奖励未完成\
	InviteCodeNotComplete   =10141;\
//不能使用自己的邀请码\
	InviteCodeNotMyself     =10142;\
//专宝已解锁\
	CowryHasUnLocked        =10143;\
//专宝未解锁\
	CowryHasLocked          =10144;\
//武将重伤中\
	LeaderHurting			=10145;\
//武将已经驻守在其他城池\
	LeaderInCitying			=10146;\
//联盟名称重复\
	LeagueNameExists		=10147;\
//玩家已经参加联盟\
	PlayerHasLeague			=10148;\
//退出联盟时间不足，不能加入联盟\
	JoinLeagueTimeError		=10149;\
//玩家没有加入联盟\
	PlayerNotHasLeague		=10150;\
//所有者不能退出联盟\
	OwnerCanNotExitLeague	=10151;\
//权限不足\
	PermissionDeny			=10152;\
//联盟成员已满\
	LeagueMemberMax			=10153;\
//已经申请过该联盟\
	LeagueAlreadyApplicant	=10154;\
//并没有申请过这个联盟\
	LeagueNoneApplicant		=10155;\
//已经邀请过该玩家\
	LeagueInvited			=10156;\
//并没有邀请过这个联盟\
	LeagueNoneInvited		=10157;\
//今日贡献已达上限\
	LeagueDonateTimesMax	=10158;\
//联盟等级不足\
	LeagueLevelLow			=10159;\
//联盟没有激活这个旗帜\
	LeagueNotHasFlag		=10160;\
//联盟群发消息次数已达最大值\
	LeaguePublicMsgMaxTimes	=10161;\
//已经购买过这个物品\
	LeagueMallAlreadyBuyed	=10162;\
//商城暂时不出售这个物品\
	LeagueMallNotExistsThing	=10163;\
//联盟不存在\
	LeagueNotExixts			=10164;\
//这个坑已经存在\
	BlockExists				=10165;\
//这个坑不需要花钱或者没有这个坑\
	BlockNotNeedMoeny		=10166;\
//进盟当天不能捐献\
	TodayCantDonation		=10167;\
//今天已经赞过\
	AlReadyPraised			=10168;\
//该玩家今天被点赞次数已满\
	PraisedFull				=10169;	\
//联盟讨伐战已经开启\
	LeagueWarOpened			=10170;\
//联盟讨伐战已经结束\
	LeagueWarFinished		=10171;\
//令牌数量不足\
	CmdTokenNumLess			=10172;\
//联盟讨伐战CD中\
	LeagueWarCD				=10173;\
//联盟讨伐战超时\
	LeagueWarTimeOut		=10174;\
//已经打过\
	Attacked 				=10175;\
//boss已被击杀或者未开启\
	LeagueWarBossStateError	=10176;\
//今天不能干这个\
	TodayCantDoThis			=10177;\
//相同层级已经学习了\
	TalentSameLayerExists	=10178;\
//必须从1层开始\
	FarWarMust1Floor		=10179;\
//最高层数为1层不能扫荡\
	FarWarNoAttack			=10180;\
//时间不对\
	TimeError 				=10181;\
//没有排名未入围\
	NoneRank				=10182;\
\
//不能这么做\
	CanNotDoThis			=10183;\
//联盟名称不能为空\
	LeagueNameNull			=10184;\
//武将已达最大星级\
	LeaderStarMax			=10185;\
//判金完成时间已过\
	MoneyFinishTimeOver		=10186;\
//您已经被禁言\
	PlayerGag				=10187;\
//装备已经被保护\
	EquipIsProtect			=10188;\
//无限城重置CD中\
	FarWarResetCD			=10189;\
//不存在的兑换项\
	NoExchangeItem			=10190;\
//器魂数量不足\
	CollectNumNoLess		=10191;\
//势力值不足\
	LeaguePowerLess			=10192;\
//物品不足\
	ItemLess				=10193;\
//已经充值过该项目\
	AlReadyRecharged		=10195;\
//七福神商城商品已经过期\
	SevenGodsShopOverdue	=10196;\
//已达最大刷新次数\
	SevenGodsShopReflashMax	=10197;\
//没有没有国战数据不能购买\
	NoCountryWarCannotBuy	=10198;\
//该武家等级没有每日奖励\
	ThisHeroLevelNoReward	=10200;\
//武将等级未解锁\
	LeaderLevelLocked		=10202;\
//武将等级不足\
	LeaderLevelLow			=10203;\
//没有这个商城\
	ShopNotExists			=10204;\
//商城没有这个物品\
	ShopItemNotExists		=10205;\
\
	//=========================联盟=========================\
//已经有弹劾了\
	AlReadyHasLeagueImpeachment	=10194;\
//联盟战已开启，请等待联盟站结算完成\
	WaitingForLeagueWarEnd	=10199;\
//联盟战开启CD时间未到\
	LeagueWarOpenEarly		=10201;\
//无法添加被自己联盟沦陷的玩家\
	LeagueControledPlayer	=10206;\
//无法加入沦陷自己的联盟\
	LeagueControledMe		=10207;\
\
	\
	//===========================国战========================\
//此区域玩家已满\
	PlayerFull				=60001;\
//不存在的城池 或城池已沦陷\
	WarCityNotExists		=60002;\
//布阵已满\
	WarCityFormationsFull	=60003;\
//没有这个阵型\
	WarFormationNotExists	=60004;\
//该武将已在镇上\
	WarLeaderFormationed	=60005;\
//有武将正在征兵,不能下阵\
	WarLeaderProducting		=60006;\
//出征令数量不足\
	MarchingNumLess			=60007;\
//该出征队伍正在出征\
	FormationStateError		=60008;\
//太他妈远了,臣妾去不了啊\
	TooFar					=60009;\
//必须带兵才能出征\
	MustHaveSoldier			=60010;		\
//必须是相邻地块才能出征\
	MustSidePoint			=60011;\
//队伍状态错误\
	WarFormationStateError	=60012;\
//武将重伤不能操作\
	WarLeaderBadly			=60013;\
//Boss不在这\
	WarBossNotHere			=60014;\
//地块超出上限\
	PointMax				=60015;\
//你的城池被撸了 ,本次攻击无效\
	WarCityDeled			=60016;\
//超出最大带兵数量\
	SoldierMax				=60017;\
//国战等级不足\
	CountryWarLevelLow		=60018;\
//城池已达上限\
	CountryCityMax			=60019;\
//地块状态不对\
	PointStateError			=60020;\
//国战积分不足\
	CountryWarScoreLess		=60021;\
//国战魂不足\
	CountryWarGhostLess		=60022;\
//已经是自己的了\
	Ownered					=60023;\
//该城池布阵已满\
	WorldCitySchudeFull		=60024;\
//武将行动力不足\
	WarLeaderStrengthLess	=60025;\
//城池状态不对\
	WarCityStateError		=60026;\
//地块处于保护期\
	WarMapPointProtect		=60027;\
//自己或同联盟的地块\
	SelfWarMapPoint			=60028;\
//玩家沦陷免战\
	FreeWarMapPoint			=60029;\
//已达最大地块数量\
	WarMaxMapPoint			=60030;\
//主城没有加入联盟不能打\
	MainCityNoLeague		=60031;\
//过战攻打战斗超时\
	CountryWarAtkTimeOut	=60032;\
//已经收藏过这个坐标\
	CollectExists			=60033;\
//收藏点数超过100\
	CollectMax				=60034;\
//国战还未开启\
	CountryWarNotOpen		=60035;\
//并未进入排行\
	NotRanked				=60036;\
//分数低\
	ScoreLow				=60037;\
	//====================灵兽======================\
//你没有这个灵兽\
	GhostMonsterNotExists	=80001;\
//这个灵兽未配置\
	GhostMonsterNotConfig	=80002;\
//这个灵兽等级未配置\
	GhostMonsterLevelNotConfig	=80003;\
//灵兽已存在\
	GhostMonsterExists		=80004;\
}\
\
\
message NoneErrorMsg\
{\
	optional int64 none=1;\
}\
\
\
\
"
return protoStr