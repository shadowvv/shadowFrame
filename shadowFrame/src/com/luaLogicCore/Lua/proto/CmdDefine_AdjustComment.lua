local protoStr = { }
protoStr.str = "package msg;\
\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
//协议定义\
enum CmdEnum\
{\
//踢出玩家\
	KickPlayer				=9000;\
//玩家退出游戏\
	ExitGame				=9994;\
//玩家重新连接获取信息\
	ReConnectGetInfo		=9995;\
//设备第一次启动客户端时记录一条\
	Activate				=9996;\
//客户端日志消息\
	ClientLog				=9997;	\
//错误消息\
	Error					=9998;\
//心跳\
	HeartBeat				=9999;\
//玩家登陆\
	PlayerLogin 			=10000;\
//玩家注册\
	PlayerRegist			=10001;\
//玩家获取信息\
	PlayerLoginGetInfo		=10002;\
//建造建筑\
	Building_Create			=10003;\
//升级建筑\
	Building_Upgrade		=10004;\
//商铺收割 铜钱不走推送消息\
	HarvestCoin				=10005;\
//农田收割 粮食不走推送消息\
	HarvestFood				=10006;\
//消除冷却时间\
	ClearCoolingTime		=10007;\
//玩家资源推送（推送）\
	PlayerRes_S2C			=10008;\
//获取单个建筑信息\
	GetBuildingInfo			=10009;\
//获取玩家基础信息\
	GetPlayerInfo			=10010;\
//建筑建造或升级完成客户端调用\
	BuildCreateOrUpgradeEnd	=10011;\
//科技升级\
	Tech_Upgrade 			=10012;\
//天赋升级\
	Gift_Upgrage 			=10013;\
\
//武将布阵信息改变\
	LeaderFormationChanged	=10016;\
	\
\
\
//武将升级\
	UpgradeLeader			=10022;\
//武将升星\
	UpgradeLeaderStar		=10023;\
\
//装备强化\
	UpgrageEquip			=10024;\
//装备重铸\
	CompositionEquip		=10025;\
//换装\
	WearEquip				=10026;\
\
////武将信息发生变化 服务器推送 （推送）\
	LeaderAttrChanged		=10027;\
\
\
//攻打关卡\
	AttackPVE				=10028;\
//扫荡关卡\
	SweepPVE				=10029;\
//领取章节奖励\
	GetChaperReward			=10030;\
\
//购买体力\
	BuyStrength				=10031;\
\
//玩家升级\
	PlayerUpLevel			=10032;\
//公告\
	Announce			 	=10033;\
\
//完成任务\
	CommitTask			 	=10034;	\
//任务数据变化（服务器推送）\
	TaskStateChange		 	=10035;\
\
//每日12点和18点领取50体力\
	MiddleTimeGetStrength	=10036;	\
\
\
//OTAKU客户端充值验证\
	Recharge_Otaku			=10037;\
\
\
//商城购买\
	BuyMallGoods			=10038;\
\
//祈愿\
	SwearHero				=10039;\
\
//开始充值\
	StartRecharge			=10040;\
\
//晚上十二点通知所有玩家重新load数据 （推送）\
	OtherDayAdvice			=10041;\
\
\
//更新新手引导步骤\
	ChangeGuide				=10046;\
\
//新邮件(推送)\
	SysMail					=10047;\
\
//邮件已读\
	ReadSysMail				=10048;\
\
//领取邮件附件\
	GetMailRes				=10049;\
\
//领取签到奖励\
	GetSignReward			=10051;\
\
//触发式新手引导步骤\
	TriggerGuideChange		=10052;\
\
//系统消息\
	SysMsg					=10053;\
//世界聊天\
	WorldChat				=10054;\
//删除系统轮播消息\
	SysMsg_Del				=10055;\
//武将进化\
	AdvancedLeader			=10058;\
//升级武将天赋\
	UpgradeLeaderTalentSkill=10059;	\
//武将合成\
	CompositionLeader		=10060;\
//升级主城\
	UpgradeMainBuild		=10061;	\
//材料合成\
	CompositionMaterial		=10062;\
	\
\
//获取玩家当前体力\
	GetPlayerStrength		=10069;\
	\
//活动挑战\
	ActivityChallenge		=10070;\
\
//新手引导步骤\
	ChangeStep             =10073;\
\
//竞技场匹配\
	TournamentMatch        =10074;\
//竞技场挑战\
	TournamentChallenge    =10075;\
// 竞技场奖励\
 	TournamentReward       =10076;\
//竞技场排行榜\
 	TournamentRank         =10077;\
//购买竞技场商品\
 	BuyTournamentGoods     =10078;\
//更改竞技场头像\
 	ChangeTournamentAvatar =10079;\
//刷新竞技场商城\
 	RefreshTournamentMall  =10080;\
//竞技场历史段位变化\
 	TournamentHistoryGradeChange   =10081;\
//竞技场挑战次数\
 	TournamentChallengeNum  =10082;\
//碎片转换\
 	PartConvert				=10083;\
//重置科技\
 	Tech_Reset				=10084;\
//一次性消息\
 	Notice					=10085;\
//cdkey领奖\
 	CDKeyReward				=10086;\
//购买VIP礼包\
 	BuyVIPReward			=10087;\
//领取月卡奖励\
 	GetMonthCardReward		=10088;\
//重置精英关卡\
 	ResetJYPVEAttackNum		=10089;\
//重置活动副本攻打次数\
 	ResetActivityPVECount	=10090;\
//购买征战次数\
 	BuyAttackCityCount		=10091;\
//购买竞技场次数\
 	BuyTournamentCount		=10092;\
\
//领取活动奖励\
 	TakeActivityReward  	=10093;\
//活动信息变化\
 	ActivityChange          =10094;\
//活动进度变化\
 	ActivityProgressChange  =10095;\
\
//保存奉行\
 	SaveBugy				=10097;\
//升级奉行\
 	UpgradeBugy				=10098;\
//苹果支付\
 	AppleRecharge			=10099;\
//装备升星\
 	UpgradeEquipStar		=10100;\
//装备降星到0\
 	DegradeEquipStar		=10101;\
//升级功能建筑\
 	UpgradeFunctionsBuild	=10102;\
//更换功能建筑\
 	ChangeBlockFunctionsBuild=10103;\
//功能建筑征收武魂\
 	FunctionsBuildHarvestWuHun=10104;\
//选择家族\
 	SelectFamily          	 =10105;\
//合战匹配\
 	FamilyWarMatch         	=10106;\
//合战挑战结果\
 	FamilyWarChallenge     	=10107;\
//玩家切出游戏\
 	ClientGameOut			=10108;\
//玩家切回游戏\
 	ClientGameIn			=10109;\
//合战排行榜\
 	GetFamilyWarRank		=10110;\
//合战人数变化\
 	FamilyWarMember      	=10111;\
//合战人数变化\
 	FamilyWarScore       	=10112;\
//开宝箱\
 	OpenBox                 =10113;\
//兑换装备\
 	ExchangeEquip           =10114;\
//申请好友\
 	ApplyFriend             =10115;\
//申请好友处理\
    OperApplyFriend        =10117;\
//删除好友\
    DelFriend               =10119;\
//赠送体力好友\
    GiveStrengh             =10121; \
//赠送体力好友推送\
    GiveStrengthPush   		=10122; \
//推荐好友\
    RecommendFriend         =10124;\
\
//获取攻击阵型武将信息\
    GetAtkLeaderInfo        =10125;\
//获取好友信息\
    GetFriends              =10126;\
\
//武将重置\
	ResetLeader         	=10127;\
//领取体力\
	FriendTakeStrength  	=10128;\
//攻打战役\
	AttackCampignBattleLevel=10129;\
//领取战役关卡宝箱奖励\
	GetCampignBattleGiftBagReward=10130;\
//领取战役章节奖励\
	GetCampignBattleChapterReward=10131;\
//搜索好友\
	GetSimplePlayer         =10132;\
//私聊\
	PlayerChat				=10134;\
//进入远征战斗\
	InfiniteCityBattleEnter =10135;\
//远征战斗结束\
	InfiniteCityBattleOver  =10136;\
//跳过远征\
	InfiniteCityBattlePass  =10137;\
//进入演武挑战\
	EnterYanwuChallenge     =10138;\
//远征开启宝箱\
	InfiniteCityOpenBox     =10139;\
//远征购买buff\
	InfiniteCityBuyBuff     =10140;\
//获取可助攻的好友\
	GetAssistFriends		=10141;\
//获取指定玩家指定武将详细\
	GetLeaderInfo 			=10142;\
\
//远征刷新积分商城\
	InfiniteCityRefreshMall	=10143;\
//远征积分商城购买\
	InfiniteCityMallBuy		=10144;\
//远征开启付费宝箱\
	InfiniteCityOpenMoneyBox=10145;\
//远征开启\
	InfiniteCityOpen		=10146;\
//远征重置\
	InfiniteCityReset		=10147;\
//远征本日排行\
	InfiniteCityDayRanks	=10148;\
//远征昨日排行\
	InfiniteCityYesterdayRanks=10149;\
\
//设置助战好友\
	SetAssistLeader			=10150;\
//好友在线状态\
	FriendOnlienState       =10151;\
//添加武将觉醒普通家宝ID\
	AddLeaderAeakenPrecious	=10152;\
//武将觉醒\
	AwakeLeader				=10153;\
//友情点购买\
	BuyFriendPointGoods     =10154;\
//远征到点刷新积分商城\
	InfiniteCityRefresh		=10155;\
//武将觉醒材料合成\
	LeaderAeakenPreciousCompose=10156;\
//领取活动大类信息\
	TakeActivityClassificationReward =10157;\
\
//绑定激活码\
	InviteCodeBind 			=10158;\
//领取激活码奖励\
	InviteCodeReceive 		=10159;\
//查询激活码\
	InviteCodeSearch 		=10160;\
//开启专宝\
	CowryOpen 				=10161;\
//锁定/解锁专宝\
	CowryLock 				=10162;\
//洗练专宝\
	CowryRefresh 			=10163;\
\
//神级抽卡兑换\
	KamikiCardExchange		=10164;\
//放置或撤出防守武将\
	ChangeCityDefenseLeader	=10165;\
//城池信息发生变化（推送）\
	CityChanged				=10166;\
	\
//获取联盟列表\
	LeagueList				=10167;\
//创建联盟\
	LeagueCreate			=10168;\
//获取自己的联盟\
	League 					=10169;\
//获取联盟成员\
	LeagueMemberList		=10170;\
//退出联盟\
	ExitLeague				=10171;\
//解散联盟（推送至各个成员）\
	DissolvedLeague			=10172;\
//转让联盟\
	MadeLeague				=10173;\
//个人联盟信息变化 （推送）到被转让者 发邮件\
	PlayerLeagueInfoChanged	=10174;\
//修改联盟公告\
	ChangeLeagueNotice		=10175;\
//修改联盟宣言\
	ChangeLeagueDeclaration	=10176;\
//踢出联盟成员\
	KickLeaguePlayer		=10177;\
//踢出联盟成员（推送）\
	KickLeaguePlayer_S2C_Push	=10178;\
//申请联盟\
	ApplicantLeague			=10179;\
//申请联盟推送（推送给盟主副盟主）\
	ApplicantLeague_S2C_Push	=10180;\
//处理联盟申请消息\
	ApplicantLeagueOpt		=10181;\
//处理联盟申请消息(推送)给被同意的成员\
	ApplicantLeagueOpt_S2C_Push	=10182;\
//联盟邀请\
	LeagueInvitePlayer		=10183;\
//联盟邀请推送(推送给玩家)\
	LeagueInvitePlayer_S2C_Push	=10184;\
//处理联盟邀请消息\
	LeagueInvitePlayerOpt	=10185;\
//联盟捐献\
	LeagueDonation			=10186;\
//获取联盟捐献信息\
	LeagueDonationInfo		=10187;\
//联盟激活旗帜\
	LeagueActiveFlag		=10188;\
//联盟选择旗帜\
	ChangeCurFlag			=10189;\
//联盟群发信息\
	LeaguePublicMsg			=10190;\
//联盟商店购买\
	LeagueShopBuy			=10191;\
//修改联盟名称\
	ChangeLeagueName		=10192;\
//修改成员职位\
	ChangePlayerLeagueTitle	=10193;\
//获取联盟申请列表\
	ApplicantLeagueList		=10194;\
	\
	\
//联盟关系变化\
	ChangeLeagueRelation				=70197;\
//联盟关系变化(推送)\
	LeagueRelationChange_S2C_Push		=70198;\
//联盟沦陷的其他联盟或玩家数据变化推送\
	LeagueControldInfoChange_S2C_Push	=70199;\
//联盟荣誉值变化(推送)\
	LeagueHonorChange_S2C_Push			=70200;\
//获取联盟当前在线人数\
	LeagueOnlinePlayerNum	=70201;\
//联盟参加人数变化推送\
	LeagueWarJoinedMemberNumChange_S2C_Push	=70202;\
\
//功能建筑征收战魂\
	FunctionsBuildHarvestZhanHun=10195;\
//功能建筑征收预备役\
	FunctionsBuildHarvestReserves	=11196;\
//购买辅助建筑坑\
	BuyFunctionsBuildBlock	=10196;\
//玩家战力排名前100\
	GetPlayerAtkCapaTop100	=10197;\
//战力点赞\
	PraisePlayer			=10198;\
//点赞（推送给被赞玩家）\
	PraisePlayer_S2C_Push	=10199;\
//开启联盟Boss战\
	LeagueWarOpen			=10200;\
//结算联盟Boss战\
	LeagueWarEnd			=10201;\
//开始攻打关卡\
	AtkLeagueWar_Begin		=10202;\
//攻打完Boss关卡\
	AtkLeagueWar_End		=10203;\
//联盟Boss开启\
	LeagueWarBossOpen_S2C_Push	=10204;\
//联盟BOSS血量更新\
	LeagueWarBossHPChange_S2C_Push	=10205;\
//联盟讨伐战结束\
	LeagueWarBossFinished_S2C_Push	=10206;\
//联盟boss战 BOSS点变化\
	LeagueWarBossPointChange_S2C_Push	=10207;\
//领取boss关卡奖励\
	TakeLeagueWarBossReward =10208;\
//获取boss战排行\
	GetLeagueWarBossRank	=10209;\
//获取联盟PVe单个关卡排行\
	GetLeagueWarPveRank		=10210;\
//获取联盟PVeBOSS点数排行\
	GetLeagueWarBossPointRank	=10211;\
//玩家改名\
	ChangePlayerName		=10212;\
//清除联盟战boss时间\
	CoolingLeagueWarBossTime=10213;\
//工会聊天\
	LeagueChat				=10214;\
//升级兵种技能\
	Talent_Upgrade			=10215;\
//无限城扫荡\
	SweepFarWar				=10216;\
//无限城扫荡开宝箱\
	SweepFarWarOpenBox		=10217;\
//特殊任务进度变化\
	SpecialTaskStateChange	=10218;\
//领取特殊任务奖励\
	TakeSpecialTaskReward	=10219;\
//获取排行活动排行\
	GetRankActivity_Rank	=10220;\
//玩家开始攻打\
	PlayerStartFighting		=10221;\
//玩家结束攻打\
	PlayerFinishFighting	=10222;\
//绑定推特帐号领奖\
	BindingTwitterRewardGet	=10223;\
//计算武将对应等级数据\
	GetLeaderNextInfo		=10224;\
//出售装备\
	SellEquip				=10225;\
//玩家战力变化推送\
	PlayerCapcChange_S2C_Push	=10226;\
//查看活动大类\
	CheckSysActivityClassification	=10227;\
//每日获取友情点变化推送\
	DailyFriendPointChange_S2C_Push	=10228;\
//我助战过的好友次数变化推送\
	MeAssistedFriendTimesChange_S2C_Push	=10229;\
// 收集兑换信息\
	CollectExchangeInfo_S2C_Push=10230; \
// 收集兑换兑换奖励\
	CollectExchangeRewardGet=10231; \
// 七福神活动信息\
	SevenGodsInfo			=10232; \
// 七福神一键完成\
	SevenGodsMoneyFinish	=10233; \
// 七福神奖励领取\
	SevenGodsRewardGet		=10234; \
// 七福神完成推送\
	SeverGodsInfo_S2C_Push	=10235; \
//七福神活动变化推送\
	SeverGodsActivity_S2C_Push	=10236;\
// 装备保护\
	EquipProtect			=10237; \
// 领取战国器魂章节奖励\
	SoulOfChapter			=10238; \
// 领取战国器魂收集奖励\
	SoulOfScore				=10239; \
// 器魂收集详情 推送\
	SoulEquipCollect_S2C_Push=10240; \
//武田上杉织田祭类活动 变化 推送到客户端\
	KamikiBoxInfoChange_S2C_Push	=10241;\
//武田织田上杉祭 抽卡子项活动兑换\
	KamikiBoxExchange		=10242;\
//陌生人聊天信息变化推送\
	StrangerChatModelChange_S2C_Push	=10243;\
//聊天推送\
	PlayerChat_S2C_Push		=10244;\
//获取联盟聊天信息\
	GetLeagueChats			=10245;\
//已读联盟聊天\
	LeagueChatReaded		=10246;\
//获取玩家私聊信息\
	GetPlayerChats			=10247;\
//已读私聊聊天\
	PlayerChatReaded		=10248;\
//领取夜宴奖励\
	TakeDinnerReward		=10249;\
\
//成长基金信息变化推送\
	GrowthRewardInfoChange_S2C_Push		=10250;\
//领取成长基金\
	TakeGrowthReward		=10251;\
//魂石升星\
	GemStoneUpgradeStar		=10252;\
//魂石镶嵌\
	WearGemStone			=10253;\
//七福神商城信息\
	SevenGodsShopInfo		=10254;\
//七福神商城物品购买\
	SevenGodsShopBuy		=10255;\
//七福神商城商品刷新\
	SevenGodsShopReflush	=10256;\
//点击facebook领奖\
	FacebookRewardGet		=10257;\
//月卡首充奖励\
	FirstMonthCardRewardGet	=10258;\
//记录玩家点击过fackbook按钮\
	FacebookButtonClick		=10259;\
//武将行动力变化推送\
	LeaderStrength_S2C_Push	=10261;\
//Reward推送\
	Reward_S2C_Push			=10262;\
\
//武将等级突破\
	LeaderLevelBreak		=10263;\
//建筑征收物品\
	BuildHarvestItem		=10264;\
//屏蔽聊天的玩家信息\
	GetDisChatPlayers		=10265;\
//屏蔽聊天玩家\
	DisChatPlayer			=10266;\
//获取联盟最高战力\
	GetServerMaxCapa		=10267;\
//获取活动的联盟排行\
	GetActivityLeagueRank	=10268;\
//获取玩家信息\
	GetSimplePlayerByUId	=10269;\
//修改辅助建筑别名\
	ChangeFUnctionsBuildNickName	=10270;\
//功能建筑征收物品\
	FunctionsBuildHarvestItem	=10271;\
//获取其他玩家攻击信息\
	GetOtherPlayerFormationAtkInfo	=10272;\
//好友竞技场切磋结果推送\
	TryAtkTournamentResult_S2C_Push	=10273;\
//好友切磋结果\
	TryAtkOtherPlayerTournamentResult	=10274;\
//商城变化推送\
	ShopDataChange_S2C_Push	=10275;\
//扣除信息变化推送\
	Cost_S2C_Push			=10276;\
//商城刷新\
	ShopRefresh				=10277;\
//购买商城物品\
	BuyShopItem				=10278;\
//领取观看广告奖励\
	TakeWatchAdsReward		=10279;\
//武将转生LG\
	LeaderUpgradeLG			=10280;\
//玩家开启最后一层无限城宝箱\
	InfiniteCityOpenBox31Level	=10281;\
//玩家取消领取最后一层无限城宝箱\
	CancleTake31LevelBox	=10282;\
//卡牌配对 开牌\
	GuessCardOpen			=10283;\
//获取卡牌配对信息\
	GuessCardInfo			=10284;\
//卡牌配对 购买次数\
	GuessCardBuyTimes		=10285;\
	//=====================联盟  70000========================\
//升级联盟科技\
	UpgradeLeagueScience		=70050;\
//升级联盟科技推送给成员\
	UpgradeLeagueScience_S2C_Push	=70150;\
//获取联盟日志列表\
	GetLeagueScienceLog			=70051;\
//联盟弹劾\
	LeagueImpeachment			=70052;\
//联盟弹劾变化 推送\
	LeagueImpeachment_S2C_push	=70053;\
//联盟弹劾投票\
	LeagueImpeachmentVolting	=70054;\
//兑换联盟战次数\
	BuyLeagueWarAtkTimes	=70055;\
	\
	//====================国战  60000 =====================================\
//国战玩家数据变化推送\
	CountryWarPlayerDataChange_S2C_Push=61000;\
//国战地块数据变化推送(可能是被人攻打)\
	CountryWarPointDataChange_S2C_Push=61001;\
//国战玩家数据变化推送(可能是被人攻打)\
	CountryWarFormationDataChange_S2C_Push=61002;\
//国战资源点数据变化推送(可能是被人攻打)\
	CountryWarResDataChange_S2C_Push=61003;\
//国战玩家数城池据变化推送\
	CountryWarCityDataChange_S2C_Push=61004;\
//国战boss数据变化推送到客户端(刷新和被干死)\
	CountryWarBossDataChange_S2C_Push=61005;\
//拖屏查看地块信息\
	GetMapAreaInfo			=60001;\
//进入国战获取自己的国战信息 只会返回 调用无参数\
	GetCountryWarPlayerInfo	=60002;\
//进入国战,选取 随机玩家位置\
	FirstEnterCountryWar	=60003;\
//国战布阵\
	CountryWarFormationChanged	=60004;\
//国战布阵征兵\
	CountryWarFormationFormationProductSoldier	=60005;\
//国战出征\
	CountryWarAttack		=60006;\
//国战出征开始攻打前获取当前信息\
	CountryWarBeginAttack	=60007;	\
//国战返回\
	CountryWarFormation_Back=60008;	\
//国战攻打结果\
	CountryWarAtkResult		=60009;\
//攻打我的玩家列表\
	CountryWarAtkMeInfo_S2C_Push=60010;\
//获取布阵简单信息\
	GetCountryWarSimpleFormation=60011;\
//获取地块守军信息\
	GetCountryWarPointStayFormation	=60012;\
//筑城\
	CreateCity				=60014;\
//城池升级\
	UpgradeCity				=60015;\
//城池改名\
	ReNameCity				=60016;\
//国战驻守\
	CountryWarStayFormation	=60017;\
//国战调度\
	CountryWarScheduleFormation	=60018;\
//国战放弃地块\
	GiveUpTile				=60019;\
//收藏地块\
	CollectCountryWarPoint	=60020;\
//获取国战势力值排行\
	GetCountryWarRank_Power	=60021;\
//获取国战武勋排行\
	GetCountryWarRank_Fight	=60022;\
//获取国战BOSS\
	GetCountryWarBoss		=60023;\
//获取国战BOSS排行\
	GetCountryWarBossRank	=60024;\
//国战战报推送\
	CountryWarBattle_S2C_Push	=60025;\
//国战战报已读\
	CountryWarBattle_Read	=60026;\
//造城皮\
	CreateCitySide			=60027;\
//国战预备役变化推送到客户端\
	CountryWarResChange_S2C_Push	=60028;\
//获取获取地块AI守军数量\
	GetMapPointAIFormationNum	=60029;\
//获取城池首次攻打排行\
	GetWorldCityRanks		=60030;\
//部队投降\
	CountryWarFormationSurrenderAtk	=60031;\
//城池完成建造或升级\
	CountryWarCityUpgradeOrCreateCoolingTime	=60032;\
//部队立即回城\
	CountryWarFormationFastBack	=60033;\
//取消放弃地块\
	CalcleGiveUpTile			=60034;\
//部队武将调换\
	CountryWarFormationSwap		=60035;\
//修改中立城池展示的玩家\
	ChangeCountryWarWorldCityDisUser	=60036;	\
//获取中立城池列表\
	GetCountrywarWorldCitys		=60037;\
//沦陷玩家交罚金赎身\
	UnOccupation			=60038;\
//获取天下大事\
	GetSysEvents			=60039;\
//天下大事完成推送\
	SysEvent_S2C_Push		=60040;\
//领取天下大事奖励\
	TakeSysEventReward		=60041;\
//获取国战玩家产出\
	GetPlayerOutPut			=60042;\
//获取国战玩家产出\
	PlayerMarchingNumNext_S2C	=60043;\
//武家每日俸禄领取\
	HeroLevelDayRewardGet	=60044;\
//武家升级\
	HeroLevelUpgrade		=60045;\
//逃亡\
	EscapeCountry			=60050;\
//获取国战大区人数信息\
	GetCountryWarAreaGroup	=60051;\
//领取首次进入国战奖励\
	TakeFirstEnterCountryWarReward	=60052;\
//获取联盟战报\
	GetLeagueBattles		=60053;\
//有新的联盟战报\
	NewLeagueBattleNotice_S2C_Push	=60054;\
//国战宝箱贼兵变化推送\
	CountryWarMapPointStandObjChange_S2C_Push	=60055;\
//联盟收藏地块\
	AddLeagueCollectCountryWarPoint	=60056;\
//获取联盟收藏地块列表\
	GetLeagueCollectCountryWarPoint	=60057;\
//获取国战联盟排行\
	GetCountryWarLeagueRank			=60058;\
//领取国战武勋排行奖励\
	GetCountryWarFightScoreRankReward	=60059;\
//领取国战武勋联盟排行奖励\
	GetCountryWarFightScoreLeagueRankReward		=60060;\
//周武勋排行信息推送\
	CountryWarPlayerFightScoreRankInfo_S2C_Push	=60061;\
//武勋变化推送\
	CountryWarPlayerFightScoreChange_S2C_Push	=60062;\
	//====================国战结束 =====================================\
\
\
	//====================灵兽==========================================\
//灵兽变化推送\
	GhostMonsterChange_S2C_Push=80101;\
\
\
//灵兽升级\
	GhostMonsterUpgrade			=80001;\
//灵兽升星\
	GhostMonsterUpgradeStar		=80002;\
//上阵召唤兽(相关武将和下阵的召唤兽通过推送  如果有UI展示就找我改一下)\
	GhostMonsterFormationChange	=80003;\
//灵兽召唤\
	SwearGhostMonster			=80005;\
//灵兽合成\
	CompositionGhostMonster		=80006;\
//第一次免费领取灵兽\
	TakeGhostMonster			=80007;\
	//====================灵兽结束=======================================\
	//==================圣诞活动===============================================\
//购买圣诞活动物品\
	BuyChristMasMall_2018		=81001;\
//年玉活动条件变化推送\
	NewYearMallTaskProcessChange_S2C_Push	=81002;\
//领取年玉活动任务奖励\
	TakeNewYearMallTaskReward	=81003;\
//领取圣诞节大合战活动奖励\
	TakeNewYearFamilyWarReward	=81004;\
//圣诞大合战活动大合战排名推送\
	NewYearFamilyWarRankChange_S2C_Push	=81005;\
	//==================圣诞活动结束============================================\
}\
\
\
message NoneCmdMsg\
{\
	optional int64 none=1;\
}\
\
"
return protoStr