local protoStr = { }
protoStr.str = "package msg;\
\
\
\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
enum LogTypeEnum\
{\
	activate				=1;//激活日志\
	register				=2;//注册日志\
	rolebuild				=3;//创建角色\
	login					=4;//登录日志\
	logout					=5;//退出日志\
	recharge				=6;//充值日志\
	money					=7;//货币获得\
	item					=8;//获得物品\
	task					=9;//完成任务\
	pve						=10;//关卡战斗\
	activity				=11;//活动\
	guide					=12;//新手引导\
	playerLevel 			=13;//玩家等级\
	online 					=14;//在线\
	newDevice				=15;//新设备\
	firstRecharge			=16;//首次充值\
	firstPVE				=17;//首次进入关卡\
	Strength				=18;//体力\
	Building 				=19;//建筑\
	tournamentBattle		=20;//竞技场战斗\
	tournamentWeekGrade		=21;//竞技场周段位\
    tournamentSeasonGrade	=22;//竞竞技场赛季段位\
    takeTournamentSeasonReward=23;//竞技场领取赛季段位奖励\
    takeTournamentWeekReward=24;//竞技场领取周段位奖励\
    LTV						=25;//用户价值日志\
    takeActivityReward		=27;//领取活动奖励\
    CDKExchange				=26;//cdk兑换\
    TournamentRank			=28;//竞技场排名\
    AppleRecharge       	=29;//苹果充值\
    CityAttack          	=30;//征战\
    FunctionsBuild      	=31;//功能建筑\
    GetMailRes 				=32;//领取邮件\
    BuyVIPReward        	=33;//购买VIP礼包\
    ItemChange        		=34;//物品属性变化\
    TalentSkillChange       =35;//天赋变化\
    BugyChange        		=36;//奉行变化\
    GhostAndStone     		=37;//魂石头变化\
    FamilyWarBattle   		=38;//合战战斗\
    FamilyWarRank     		=39;//合战排行\
    CampaignBattleAtk		=40;//战役攻打\
    CampaignBattleGiftReward=41;//战役攻打\
    CampaignBattleChapterReward=42;//战役领取章节奖励\
	YijieRecharge       	=43;//易接充值\
	FortDebrisChange       	=44;//炮台碎片\
	InfiniteCityRank       	=45;//远征排名\
	InfiniteCity       	    =46;//远征\
	SendMail       	        =47;//发邮件\
	FriendPoint       	    =48;//友情点\
	BoxKey                  =49;//宝箱钥匙\
	CowryChange				=50;//专宝变化\
\
	LeagueOpt				=51;//联盟操作 创建 解散 转让 改名 修改职位 退出 修改公告 修改宣言 踢出 激活旗帜 修改旗帜 群发消息\
	LeagueApplicant			=52;//联盟申请操作 申请和同意拒绝\
	LeagueInvite			=53;//联盟邀请操作 邀请和同意拒绝\
	LeagueDonation			=54;//联盟捐献\
	LeagueShopBuy			=55;//联盟商城购买\
	LeagueHonorChange		=56;//联盟荣誉值变化\
	PraisePlayer 			=57;//点赞其他玩家\
	LeagueCmdToken 			=58;//联盟令牌变化	\
	LeagueWarInfo 			=59;//联盟boss战信息变化	\
	LeagueWarAtk 			=60;//联盟boss战攻打记录	\
	LeagueWarReward			=61;//联盟boss战领奖记录\
	ChangeName				=62;//玩家改名	\
	InfiniteCitySweep		=63;//无限城扫荡\
	SwearLeaderRank			=64;//武将抽卡排行\
	PlayerFightingTime		=65;//玩家战斗时长log\
	TournamentMatch			=66;//竞技场匹配\
	FarWarMatch				=67;//远征匹配\
	CollectExchangeRewardGet=68;//收集兑换奖励领取\
	ShopItemBuy				=69;//商城物品购买\
	SavePlayerUseTime		=70;//保存玩家耗时统计\
	SwearHero				=71;//武将抽卡\
	PlayerExp				=72;//玩家经验\
	PlayerVIPExp			=73;//玩家VIP经验\
	PlayerGift				=74;//练兵场\
	ClearPlayerData			=75;//清理玩家数据\
	LoadPlayerData			=76;//加载玩家数据\
	Friend					=77;//好友申请删除\
	ResetInfiniteCity		=78; // 无限城重置\
	LeagueWarEnd			=79;//联盟战结束日志\
	SwearEquip				=80;//抽装备日志\
	SwearGhostMonster		=81;//抽装备日志\
	CheckLeaderFightProp	=82;//武将战斗数据检查日志\
	LeagueRank				=83;//联盟战力活动日志\
	ShopBuy					=84;//幻舞商城购买\
	GuessCardOpen           =85;//周年活动 抽卡\
	GuessCardRef            =86;//周年活动 抽卡刷新\
	GuessCardShop           =87;//周年活动 抽卡购买次数\
	AnniversaryTaskPro      =88;//周年活动 任务改变推送\
	AnniversaryTaskTurnOver =89;//周年活动 任务上缴物品\
	AnniversaryTaskAward    =90;//周年活动 任务领取奖励\
	AnniversaryJadeLuckDraw =91;//周年活动 玉石抽卡\
	AnniversaryJadeAward    =92;//周年活动 玉石领取奖励\
	AnniversaryJadeRecovery =93;//周年活动 玉石回收消耗道具（黄金票）\
	SavePlayer              =94;//保存玩家\
	printlnString           =95;//杂项字符串\
	DeleteMail       	    =96;//删除邮件\
	BinGoReWard             =97;//bingo活动领取奖励\
	BinGoChange             =98;//bingo活动改变任务进度\
	SoulCalibur             =99;//神魂日志\
	OldActivity             =100;//老玩家回归活动\
	MineActivity            =101;//幻武挖矿活动\
\
	\
\
	CountryWarCity			=6002;//国战城池\
	CountryWarFormation		=6003;//国战队伍\
	CountryWarMapPoint		=6004;//国战地图点\
	CountryWarPlayer		=6005;//国战玩家\
	CountryWarAction		=6007;//国战玩家动作\
	CountryWarFinance		=6008;//国战资源变化(积分 国战魂 行军令 人口)\
	CountryWarRankFight		=6010;//国战武勋排行\
	CountryWarRankPower		=6011;//国战势力值排行\
	CountryWarBattle		=6012;//国战战报\
	CountryWarFightScore	=6013;//武勋\
	CountryWarRefPoint      =6014;//国战刷新宝箱\
\
	//跨服战\
	CrossSignUp         	=7001;//跨服战报名\
	CrossBeginBattle        =7002;//跨服战开始战斗\
	CrossEndBattle      	=7003;//跨服战战斗结束\
	CrossOverLogger     	=7004;//跨服战活动结束\
	CrossReward          	=7005;//跨服战奖励相关\
	CrossResetFightNum     	=7006;//跨服战重置战斗次数\
\
	CrossSignUpServer      	=7011;//跨服战报名\
	CrossBeginBattleServer  =7012;//跨服战开始战斗\
	CrossEndBattleServer	=7013;//跨服战战斗结束\
	CrossOverLoggerServer	=7014;//跨服战活动结束\
	//跨服战\
\
}\
\
message NoneLogMsg\
{\
	optional int64 none=1;\
}\
"
return protoStr