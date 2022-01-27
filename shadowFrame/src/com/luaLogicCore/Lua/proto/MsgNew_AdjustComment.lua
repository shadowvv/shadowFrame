local protoStr = { }
protoStr.str = "package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
message Test{}\
enum ActionEnum\
{\
//建造建筑冷却\
	CoolingTime_CreateBuild					=1;\
//升级建筑冷却\
	CoolingTime_UpgrageBuild				=2;\
//升级科技冷却\
	CoolingTime_UpgrageTech					=3;\
//升级天赋冷却\
	CoolingTime_UpgrageGift					=4;\
//建造建筑\
	CreateBuild 							=5;\
//升级建筑\
	UpgrageBuild 							=6;\
//升级科技\
	UpgrageTech 							=7;\
//升级天赋\
	UpgrageGift 							=8;\
//征收铜钱\
	Shop_Get 								=9;\
//征收粮食\
	Farm_Get 								=10;\
//建造建筑返回\
	CreateBuild_Return 						=11;\
//升级建筑返回\
	UpgrageBuild_Return 					=12;\
//攻打城市使用兵粮\
	AttackCity 								=13;\
//征战奖励\
	AttackCityReward 						=14;\
//城市征收\
	City_Get 								=15;\
//征战更换对手\
	CityOwnerChange 						=16;\
//解锁区域\
	Unlock_Area 							=17;\
//武将升级\
	Upgrage_Leader 							=18;\
//武将吞噬\
	Leader_EatLeader 						=19;	\
//装备强化\
	Upgrage_Equip 							=20;\
//装备重铸\
	Composition_Equip 						=21;\
\
//攻打关卡\
	Attack_PVE 								=22;\
//购买体力\
	BuyStrength 							=23;\
//扫荡关卡\
	SweepPve 								=24;	\
//领取章节奖励\
	ChaperReward							=25;\
//体力自动增长\
	AutoAddStrength							=26;\
//玩家升级\
	PlayerUpLevel							=27;\
//系统发放\
	SysSend									=28;\
\
//任务奖励\
	TaskReward								=29;\
\
//中午十二点体力奖励\
	get12StrengthReward						=30;\
//下午是吧点体力奖励\
	get18StrengthReward						=31;\
\
\
//充值\
	Recharge 								=32;\
//商城购买\
	MallBuy									=33;\
//武将抽卡\
	SwearLeader								=34;\
//系统邮件\
	SysSendMail								=35;\
\
//复仇\
	CityRevenge								=36;\
//签到奖励\
	SignReward 								=37;\
\
//武将进化\
	AdvanceLeader							=38;\
//武将合成\
	compositionLeader						=39;\
//材料合成\
	compositionMaterial						=40;\
//武将升星\
	upgradeLeaderStar						=41;\
//刷新积分商城\
	integralMallRefresh						=42;\
//购买积分商品\
	buyIntegralGoods				        =43;\
//挑战活动\
	challengeActivity				        =44;\
//系统初始化\
	defaultAdd								=45;\
//升级武将天赋\
	upgradeLeaderTalentSkill				=46;\
//竞技场挑战\
	tournamentChallenge						=47;\
//竞技场周奖励\
	tournamentWeekReward					=48;\
//竞技场赛季奖励\
	tournamentSeasonReward					=49;\
//竞技场对换\
	tournamentExchange						=50;\
//扫荡\
	sweepPve 								=51;\
//碎片转换\
	partConvert								=52;\
//重置科技\
	resetTech								=53;\
//vip月卡充值\
	vipMonthCard							=54;\
//购买VIP礼包\
	vipBuyReward							=55;\
//领取月卡礼包\
	getMonthCardReward 						=56;\
//重置精英副本\
	resetJYPVE 								=57;\
//当前重置活动副本次数\
	resetActivityPVECount					=58;	\
//购买征战次数\
	buyCityAttackNum						=59;	\
//购买竞技场次数\
	buyTournamentCount						=60;	\
//cdkey活动兑换\
	CDKeyExchange							=61;\
//首冲奖励金币\
	firstRechargeRewardMoney				=62;\
//补偿竞技场晋级奖励\
	compensatePromotionReward				=63;\
//奉行位置升级\
	BugyUpgrade 							=64;\
//装备升星\
	upgradeEquipStar						=65;\
//升级功能性建筑\
	upgradeFunctionsBuild					=66;\
//更换坑里的功能建筑\
	changeBlockFunctionsBuild				=67;\
//功能建筑征收武魂\
	functionsBuildHarvestWuHun				=68;\
//合战挑战\
	familyWarChallenge						=70;\
//开宝箱\
	swearEquip						        =71;\
//兑换装备\
	exchangeEquip						    =72;\
//武将重置\
	resetLeader						     	=73;\
//攻打战役\
	attackCampaignBattle					=74;\
//领取战役关卡宝箱\
	getCampaignBattleGiftbagReward			=75;\
//领取战役章节奖励\
	getCampaignBattleChapterReward			=76;\
//好友赠送\
	friendGive                              =77;\
//社团领取\
	guildTake                               =78;\
//活动领取或兑换\
	sysActivityTaken                        =79;\
//圣诞商城兑换\
	exchangeShop                            =80;\
//攻打远征\
	infinityCityFight                       =81;\
//跳过远征\
	infinityCityPassed                      =82;\
//远征开宝箱\
	infinityCityOpenBox                     =83;\
//远征刷新商城\
	infinityCityMallRefresh                 =84;\
//远征商城购买\
	infinityCityMallBuy                     =85;\
//武将觉醒\
	leaderAwaken		                    =86;\
//武将觉醒材料合成\
	leaderAeakenPreciousCompose				=87;\
//重置远程\
	resetFarWar								=89;\
//领取激活码\
	receiveInviteCode						=90;\
//解锁专宝\
	unlockCowry								=91;\
//洗练专宝\
	refreshCowry							=92;\
//神级抽卡兑换\
	kamikiCardExchange						=93;\
//英雄祈愿消耗\
	swearHero								=94;\
//创建联盟\
	createLeague							=95;\
//联盟改名\
	reNameLeague							=96;\
//联盟捐献\
	leagueDonation							=97;\
//联盟商城购买\
	leagueShopBuy							=98;\
//联盟沦陷的玩家反叛\
	playerUnOccupation						=7001;\
//购买辅助建筑坑\
	buyFunctionsBuildBlock					=99;\
//功能建筑征收战魂\
	functionsBuildHarvestZhanHun			=100;\
//点赞玩家\
	praisePlayer							=101;\
//开启联盟讨伐战\
	openLeagueWar							=102;\
//攻打联盟讨伐战\
	atkLeaguePve							=103;\
//领取Boss关卡奖励\
	takeLeagueWarBossReward					=104;\
//玩家改名\
	playerChangeName						=105;\
//清除联盟战boss时间\
	coolingLeagueWarBossTime				=106;\
//升级兵种技能\
	UpgrageTalent							=107;\
//无限城扫荡\
	sweepFarWar								=108;\
//无限城开宝箱\
	sweepFarWarOpenBox						=109;\
//无限城判金开宝箱\
	sweepFarWarOpenBox_Money				=110;\
//领取特殊任务首次奖励\
	takeSpecialTaskReward_first				=111;\
//领取特殊任务普通奖励\
	takeSpecialTaskReward_normal			=112;\
//领取排行活动奖励\
	takeActivityRankReward					=113;\
\
//自动增长\
	AutoAdd 								=114;\
//绑定推特帐号领奖\
	bindingTwitterRewardGet					=115;\
\
//出售装备\
	sellEquip								=116;\
// 立志传奖励领取\
	collectExchangeRewardGet				=117; \
// 七福神一键完成\
	sevenGodsMoneyFinish					=118; \
// 七福神奖励领取\
	sevenGodsRewardGet						=119; \
// 器魂章节奖励\
	CollectChapterRewardGet					=120; \
// 器魂积分奖励\
	CollectScoreRewardGet					=121; \
//升级联盟科技\
	LeagueScienceUpgrade					=122;\
//联盟弹劾\
	leagueImpeachment						=123;\
//织田武田上杉 兑换\
	kamikiBoxExchange						=124;\
//领取夜宴奖励\
	takeDinnerReward						=125;\
//领取成长礼包\
	takeGrwothReward						=126;\
//魂石升星\
	gemStoneUpStar							=127;\
//七福神商城购买\
	SevenGodsShopBuyItem					=128;\
//七福神商城刷新\
	SevenGodsShopRefresh					=129;\
//fackbook点击领奖\
	FacebookRewardGet						=130;\
\
//武将突破等级\
	LeaderBreakLevel						=131;\
\
//圣诞商场购买\
	ChristmasBuyMall						=132;\
//年玉活动领取\
	NewYearActivityTask						=133;\
//圣诞大合战活动\
	NewYearFamilyWar						=134;\
//功能建筑改名\
	FunctionsBuildChangeNickName			=135;\
//功能建筑征收\
	functionsBuildHavsetItem				=136;\
//购买幻舞商城物品(以后会有其他的)\
	buyShopItem								=137;\
//商城刷新\
	refreshShopItem							=138;\
//领取观看广告奖励\
	takeWatchAdsReward						=139;\
//武将升级到LG 第一阶段\
	leaderLgStep1							=140;\
//武将升级到LG 第二阶段\
	leaderLgStep2							=141;\
//无限城开启31层宝箱\
	infinityCityOpenBox31					=142;\
//卡牌配对\
	guessCardOpen							=143;\
//卡牌配对 购买次数\
	guessCardBuyTimes						=144;\
		//===============国战===========================\
//武将下阵\
	leaderOffFormation		=60001;\
//国战造兵\
	productSoldier			=60002;\
//国战出征\
	atkPoint				=60003;\
//国战征收\
	CountryHavset			=60004;\
//国战打BOSS\
	AtkCountryBoss			=60005;\
//国战升级科技\
	UpgradeScience			=60006;\
//击杀boss\
	KillBoss				=60007;\
//造城\
	createCity				=60008;\
//升级城池\
	upgradeCity				=60009;\
//国战资源点征收\
	countryPointHavset		=60010;\
//国战自然征收\
	countryBasicHavset		=60011;\
//国战建筑升级立即完成\
	countryWarCityUpgradeOrCreateCoolingTime	=60012;\
//国战立即撤军\
	countryWarFormationFastBack	=60013;\
//首次进入国战\
	firstEnterCountryWar	=60014;\
//领取天下大事奖励\
	takeSysEventReward		=60015;\
//领取武家奖励\
	takeHeroLevelReward		=60016;\
//升级武家\
	upgradeHeroLevel		=60017;\
//造城皮\
	createCitySide			=60018;\
//领取国战武勋排行奖励\
	getCountryWarFightScoreRankReward =	60019;\
//领取国战武勋联盟排行奖励\
	getCountryWarFightScoreLeagueRankReward =60020;\
//国战出征\
	stayPoint				=60021;\
//撤军\
	formationBack			=60022;\
	//=====================灵兽==============\
//灵兽升级\
	upgradeGhostMonster		=80001;\
//灵兽升星\
	upgradeGhostMonsterStar	=80002;\
//召唤灵兽\
	swearGhostMonster		=80003;\
//灵兽合成\
	compositionGhostMonster	=80004;\
//首次进入灵兽领取\
	firstTakeGhostMonsterId	=80005;\
	\
\
}\
\
//装备位置枚举\
enum EquipPosition\
{\
//武器\
	Weapon=1;\
//头盔\
	Helmet=2;\
//铠甲\
	Armour=3;\
//家宝\
	Talisman=4;\
//坐骑\
	Horse=5;\
}\
\
//错误返回\
message ErrorMsg_S2C\
{\
//错误码\
	optional int32 errorCode=1;\
}\
   \
  //客户端推送消息\
message PushMsg2Client{\
//\
	repeated PushBody pushBodys=1;\
}\
//客户端推送消息体\
message PushBody\
{\
	required int32 header=1;\
	optional bytes bodyBytes=2;\
}\
\
//心跳包返回\
message HeartBeat_S2C\
{\
	optional int64 time=1;\
}\
//======================结构===================\
\
//玩家信息\
message PlayerInfo\
{\
//玩家ID\
	optional int32 uid=1;\
//玩家昵称\
    optional  string uName=2;\
//玩家经验\
    optional  int32 exp=3;\
//玩家等级\
    optional  int32 level=4;	\
\
//领取过的章节奖励\
	repeated int32 ChatperRewardList=7;\
\
//统领值\
	optional int32 commandValue=8;\
//新手引导步骤\
	optional int32 guide=9;\
//性别 0：女1：男\
	optional int32 sex=10;\
//头像ID\
	optional int32 headId=11;\
  \
//本月领取签到次数\
    optional int32 monthGetSignRewardTimes=13;\
//最后领取签到奖励时间\
    optional int64 lastGetSignRewardTime=14;\
    repeated int32 triggerGuideList=15;\
	\
//最后计算体力时间\
	required int64 lastCalcStrengthTime=18;\
//当前可征战次数\
	optional int32 canAttackCityNum=19;\
//最后计算可征战次数时间\
	optional int64 lastCalcCanAttackCityTime=20;\
//新手引导当前步骤\
	optional int32 guideStep=21;\
	//==============================VIP================================================\
//当前VIP等级\
	required int32 curVIPLevel=22;\
//当前VIP经验\
	required int32 curVIPExp=23;\
//月活卡ID 没有为0\
	optional int32 monthVipCardId=24;\
//月卡结束时间\
	optional int64 monthVipCardEndTime=25;\
//已经购买的VIP礼包的VIP等级\
	repeated int32 buyedVIPRewardLevel=26;\
\
//当前购买体力次数\
	optional int32 buyStrengthCount=27;\
//当前重置精英副本次数\
	optional int32 resetJYPVECount=28;\
//当前重置活动副本次数\
	optional int32 resetActivityPVECount=29;\
//当前购买征战次数\
	optional int32 buyAttackCityCount=30;\
//当前购买竞技场次数\
	optional int32 buyTournamentCount=31;\
//最后领取VIP月卡奖励时间\
	optional int64 lastGetVIPMonthCardRewardTime=32;\
//已经发放的充值双倍奖励\
	repeated int32  sendFirstRechargeRewardIds=33;	\
\
\
//==============================VIP结束================================================\
//==============================战斗相关================================================\
//初始攻击士气\
	optional float atcAngery=34;\
//初始竞技场士气\
	optional float tournamentAngery=35;\
//==============================战斗相关结束================================================\
\
//==============================圣诞节相关================================================\
//圣诞树ID\
	optional int32 christmasTreeId=36;\
//==============================圣诞节相关结束================================================\
//助战武将ID\
	optional int32 assistLeaderId=37;\
//最后计算城池资源时间\
	optional int64 lastCalcCityResTime=38;\
//今天赞的玩家UID\
	repeated int32 praise_UID=39;\
//赞数量\
	optional int32 praiseCount = 40;  \
//改名次数\
	optional int32 changeNameCounts=41;\
//注册时间\
	optional int64 regTime=42;\
//领取过的天下大事奖励\
	repeated int32 takedSysEventIds=43;\
\
//国战初始士气\
	optional float countryWarAngery=44;\
//竞技场阵型战力\
    optional int32 arenaFormationCapa=45;\
//攻击阵型战力\
    optional int32 atkFormationCapa=46;\
//查看过的活动大类ID\
    repeated int32 checkedSysActivityClassificationIds=47;\
//竞技场布阵技能释放方式(0:智能 1:顺序 )\
    optional int32 arenaFormationSkillFunction=48;\
//攻击布阵技能释放方式(0:智能 1:顺序 )\
    optional int32 atkFormationSkillFunction=60;\
// 服务器id\
	optional int32 serverId = 49; \
// 平台id\
	optional string platformId = 50; \
// 平台玩家Id\
	optional string platformUid = 51; \
\
//最后夜宴奖励领取时间\
	optional int64 lastTakeDinnerTime=52;\
//成长基金物品ID\
	optional int32 growthThingId=53;\
//领取过的成长基金等级\
	repeated int32 takedGrowthRewardLevel=54;\
//是否领取过首次进入国战奖励\
	optional bool isTakeFirstEnterCountryWarReward=55;\
\
	\
//免费领取的召唤兽ID\
	optional int32 firstTakeGhostMonsterId=58;\
\
	//==============================万圣节相关================================================\
//南瓜灯ID\
	optional int32 pumpkinLanternId=56;\
	//==============================万圣节相关结束================================================\
//屏蔽聊天的玩家ID\
	repeated int32 disChatUIDs=59;\
\
//领取观看广告奖励次数\
	optional int32 takeWatchAdsRewardTimes=61;\
}\
\
\
//玩家资源\
message PlayerRes{	\
//金币数\
    optional  int32 money=1;	\
//当前拥有劳力数\
    optional  int32 person=2;	\
//当前钱庄铜钱数量\
    optional  int32 coin=3;\
//当前粮仓粮食数量\
	optional  int32 food=4;\
//锤子\
	optional  int32 hammer=5;\
//体力\
	optional  int32 strength=6;\
//最多装备数量\
	optional int32 maxEquipNum=7;	\
//宝箱钥匙\
	optional int32 boxKey=11;\
//友情点\
	optional int32 friendPoint=12;\
}\
\
//建筑信息\
message BuildingInfo\
{\
//建筑类型\
	optional  int32 buildtype=1;\
//建筑等级\
    optional  int32 level=2;\
//当前状态 1:正常 2：升级中 3:建造中\
	optional  int32 state=3;\
//状态开始时间\
	optional  int64 stateTime=4;\
//最后征收铜钱时间\
	optional  int64 lastGetCoinTime=5;\
//最后征收粮食时间\
	optional  int64 lastGetFoodTime=6;\
//产出、小时（用于农田或钱庄）\
	optional int32 output=7;\
//最大产出值（用于农田或钱庄）\
	optional int32 capability=8;\
//当前经验（主城用）\
	optional int32 exp=9;\
//已经使用的劳力\
	optional int32 usedPerson=10;	\
//最后征收物品时间\
	optional int64 lastGetItemTime=11;\
}\
\
//武将阵型信息\
message Formation\
{\
//位置X\
	required float positionX=1;\
//位置Y\
	required float positionY=2;\
//技能出手顺序\
	required int32 	skillSort=3;\
//武将Id\
	required int32 leaderId=4;\
//是否是主将\
	required bool  isMainLeader=5;\
//武将AI\
	required int32 ai=6;\
//是否是炮 0：不是 1：是\
	optional int32 isPao=7;\
}\
\
\
//武将的攻击属性\
message LeaderAtkProp\
{\
//勇武\
	optional  int32 Force=1;    \
//统御\
    optional  int32 Guide=2;   \
//策略\
    optional  int32 Ploy=3; \
//兵力\
	required int32 Hp=4;    \
//攻击\
	required int32 ATK=5;    \
//防御\
	required int32 Defense=6;    \
//攻速\
	required float ATKSpeed=7;    \
//阵法\
	required int32 Spell=8;    \
//阵法防御\
	required int32 SpellDefense=9; \
//暴击\
    optional float Baoji=10;\
//闪避\
    optional float Shanbi=11;\
//移动速度\
    optional float MoveSpeed=12;\
//回血\
    optional float ReHp=13;\
//AI类型\
    optional int32 AI=14;\
//战力\
	optional  int32 capability=15;\
//战法暴击\
	optional float spellBaoji=16;\
//战法抵抗\
	optional float spellDiKang=17;\
//战法穿透\
	optional float spellChuanTou=18;\
//暴击伤害\
	optional float baojiShanghai=19;\
\
//命中\
	optional float hit_persent=20;\
//最终伤害增加\
	optional float hurtAdd_persent=21;\
//最终伤害减少\
	optional float hurtMinus_persent=22;\
//反弹伤害（物理）\
	optional float hurtBack_persent=23;\
//反弹伤害(战法）\
	optional float spellHurtBack_persent=24;\
\
//攻城值\
	optional int32 buildingAttack=25;\
//国战中的移动速度\
	optional float WarMove=26;\
}\
\
//武将觉醒后的觉醒属性\
message LeaderAwakeProp\
{\
//实例ID\
	required int32 id=1;\
//属性ID 被动表的effectId\
	required int32 propId=2;\
//属性值 与被动表呼应\
	required float propValue=3;\
//属性类型 1：固定属性 2：可变属性\
	required int32 propType=4;\
}\
\
//武将信息\
message LeaderInfo\
{\
//武将实例ID\
	optional int32 id=1;\
//武将等级\
    optional int32 leaderLevel=3;	\
//星级\
    optional int32 star=4;\
//进化等级\
    optional int32 advancedLv=5;\
//被动技能列表\
    repeated TalentSkill talentSkills=6;\
//攻击阵型属性\
	optional LeaderAtkProp atkFormationProp=7;\
//竞技场攻击属性\
    optional LeaderAtkProp arenaFormationProp=8;\
//防御阵型属性\
    optional LeaderAtkProp countryWarFormationProp=16;\
//身上的觉醒材料ID\
    repeated int32 awakeFunctionsItemIds=10;\
//觉醒后的武将ID\
    optional int32 awakeLeaderId=11;\
//武将觉醒后的觉醒属性\
    repeated LeaderAwakeProp awakeProps=12;\
//武将专宝ID\
	optional int32 cowryAtt=13;\
//武将专宝随机属性\
	repeated CowryInfo cowrys=14;\
//武将状态 1：正常 2：重伤不治（重伤的武将不能用于防守布阵）\
	optional int32 state=15;\
//状态开始时间(如果为0则为正常状态，如果开始时间+时间段小于当前时间则为正常状态)\
	optional int64 stateTime=17;\
//专宝刷新的最高品质\
	optional int32 maxCowryQuanlity=18;\
//国战行动力\
	optional int32 countrywarStrength=19;\
//武将当前突破的等级\
	optional int32 breakLevel=20;\
//转生到LG阶段  默认0 没有转生阶段 2:转生完成\
	optional int32 lgStep=21;\
}\
\
\
//简单武将信息\
message SimpleLeaderInfo\
{\
//武将实例ID\
	optional int32 id=1;\
//武将等级\
    optional int32 leaderLevel=3;	\
//星级\
    optional  int32 star=4;\
//进化等级\
    optional  int32 advancedLv=5;\
//战力\
    optional  int32 capability=6;\
//是否主将\
    optional  bool isMainLeader=7;\
//觉醒武将ID 0:未觉醒\
	optional  int32 awakeLeaderId=8;\
//该武将装备的魂石\
	repeated int32 gemStoneIds=9;\
//转生到LG阶段  默认0 没有转生阶段 2:转生完成\
	optional int32 lgStep=21;\
}\
\
//城市守兵武将\
message AILeader\
{\
//武将ID\
	required int32 leaderId=1;\
//武将等级\
	required int32 leaderLevel=2;\
//是否是主将\
    optional bool isMainLeader=3;\
//技能出手顺序\
    optional int32 skillSort=4;\
//星级\
    optional  int32 star=5;\
//进化等级\
    optional  int32 advancedLv=6;\
//属性\
    optional LeaderAtkProp prop=7;\
//位置\
    required float positionX=8;\
//位置\
	required float positionY=9;\
//被动技能列表\
	repeated TalentSkill talentSkills=10;\
//觉醒后的武将ID\
	optional int32 awakeLeaderId=11;\
//是否是炮\
	optional int32 isPao=12;\
//国战带兵数量\
	optional int32 soldierNum=13;\
//国战布阵位置\
	optional int32 countryWarPos=14;\
//武将专宝随机属性\
	repeated CowryInfo cowrys=16;\
//专宝刷新的最高品质\
	optional int32 maxCowryQuanlity=18;\
//lg阶段 >=2 为LG武将\
	optional int32 lgStep=19;\
\
}\
//科技信息\
message TechnologyInfo\
{\
//科技ID\
	optional int32 memberId=1;\
//科技等级分组1\
    optional int32 level1=2;\
//科技等级分组2\
    optional int32 level2=3;\
//科技等级分组3\
    optional int32 level3=4;\
}\
//天赋信息\
message GiftInfo\
{\
//ID\
	optional int32 id=1;\
//天赋等级\
    optional int32 level=2;\
//天赋ID\
    optional int32 giftId=3;\
//兵种ID\
    optional int32 memberId=4;\
//数据表配置主键ID\
    optional int32 dataId=5;\
\
}\
\
//技能信息\
message TalentInfo\
{\
//天赋等级\
    optional int32 level=1;\
//天赋ID\
    optional int32 giftId=2;\
//兵种ID\
    optional int32 memberId=3;\
//数据表配置主键ID\
    optional int32 layerId=4;\
\
}\
\
\
\
//其他玩家攻击信息\
message OtherPlayerAtkInfo\
{\
//玩家ID\
	required int32 UID=1;\
//玩家昵称\
	required string uName=2;\
//对应武将列表（可根据竞技场或者平时切换三个阵型）\
	repeated AILeader formation=3;\
//天守阁等级\
    optional int32 mainBuildLevel=4;\
//番所等级\
    optional int32 fansuoLevel=5;\
//对方士气\
    optional float anger=6;\
//玩家等级\
    optional int32 uLevel=7;\
//奉行建筑等级\
    optional int32 bugyBuildLevel=8;\
//圣诞树等级\
    optional int32 christmasTreeId=9;\
//战力\
	optional int32 capa=10;\
//辅助建筑列表\
	repeated FunctionsBuild functionsBuilds=11;\
//坑列表\
	repeated BlockFunctionsBuild blockfunctionsBuilds=12;\
//布阵ID\
	optional int32 formationId=13;\
//竞技场布阵技能释放方式(0:智能 1:顺序 )\
	optional int32 arenaFormationSkillFunction=14;\
//布阵的灵兽\
	optional GhostMonster formationGhostMonster=15;\
//灵佑的灵兽\
	repeated GhostMonster lingyouGhostMonsters=16;\
//通灵树等级\
	optional int32 ghostMonsterTreeLevel=17;\
}\
\
//装备信息\
message Equip{\
//装备实例ID\
	optional int32 id=1;\
//装备类型\
	optional int32 type=2;\
//当前等级\
	optional int32 level=3;\
//装备于哪个武将 0 为未装备\
	optional int32 leaderId=4;\
//经验\
	optional int32 exp=5;\
//装备星级\
	optional int32 star=6;\
//装备是否保护\
	optional bool isProtect=7;\
}\
\
//被动技能\
message TalentSkill\
{\
//技能ID\
	required int32 id=1;\
//技能等级\
	required int32 level=2;\
//状态 0：未解锁 1:解锁\
	required int32 state=3;\
}\
\
//PVE信息\
message PVE{\
//PVEID\
	required int32 id=1;\
//总攻打次数\
	required int32 attackNum=2;\
//今日攻打次数\
	required int32 todayAttNum=3;\
//最高评级\
	required int32 maxStar=4;\
//最后攻打时间\
	required int64 lastAttackTime=5;\
\
}\
\
//设备信息\
message DeviceInfo\
{\
//手机操作系统\
	optional string deviceOS=1;\
//手机分辨率\
	optional string resolution=2;	\
//手机识别码\
	optional string deviceId=3;\
//手机模型 如iphone ipad itouch\
	optional string deviceModel=4;\
}\
\
//功能建筑\
message FunctionsBuild\
{\
//建筑ID\
	required int32 buildId=1;\
//建筑等级\
	required int32 buildLevel=2;\
//最后征收时间\
	optional int64 lastHarvestTime=3;\
//别名 如果为空或空字符串则为本来名称\
	optional string nickName=4;\
//修改别名次数\
	required int32 changeNickNameTimes=5;\
}\
\
//当前已存储武魂数量\
message BlockFunctionsBuild\
{\
//底座ID\
	required int32 blockId=1;\
//功能建筑ID\
	required int32 functionsBuildId=2;\
}\
\
//魂石\
message GemStone\
{\
//实例ID\
	required int32 instId=1;\
//类型ID\
	required int32 gemStoneId=2;\
//星级\
	required int32 star=3;\
//装备的武将ID 没装备则为0\
	required int32 leaderId=4;\
}\
\
//召唤兽\
message GhostMonster\
{\
//id\
	required int32 id=1;\
//等级\
	required int32 level=2;\
//星级\
	required int32 star=3;\
//在哪个布阵位置上 0:无 1:布阵 201:灵佑左  202:灵佑右 其他:武将ID(>20000)\
	required int32 formationType=5; \
//战力\
	required int32 capa=6;\
}\
\
\
//玩家升级\
message PlayerUpLevel_S2C\
{\
//玩家当前等级\
	required int32 curLevel=1;\
//玩家当前经验\
	required int32 curExp=2;\
}\
\
\
//购买体力返回\
message BuyStrength_S2C\
{\
//错误号\
	required int32 errCode=1;\
//当前体力\
	required int32 curStrength=2;\
//今天购买体力次数\
	required int32 buyStrengthCount=3;\
//当前判金\
    required int64 curMoneyNum=4;\
\
}\
\
\
//公告\
message Announce_S2C\
{\
//是否是新公告\
	optional bool IsNew = 1; \
//公告告内容\
	optional string Announce = 2; \
}\
\
//客户端日志记录\
message ClientLog\
{\
//日志内容\
	required string content=1;\
}\
\
//抽卡信息\
message SwearInfo\
{\
//小吉免费抽卡次数\
	required int32 XJFreeNum=1;\
//小吉铜币抽卡次数\
	required int32 XJPriceNum=2;\
//小吉免费最后抽卡时间\
	required int64 XJFreeTime=3;\
//大吉最后抽卡免费时间\
	required int64 DJFreeTime=4;\
//小吉铜币最后抽卡时间\
	required int64 LastXJPriceTime=5;\
//大吉累计次数\
	required int32 DJTotalNum=6;\
//还有几次必出S武将\
	optional int32 lastTimesSLeader=7;\
//当前转盘库ID\
	optional int32 curZhuanPanStorageNum=8;\
//当前大吉抽卡幸运值\
	optional int32 curDJLuck=9;\
//武田抽卡活动信息\
	repeated KamikiBoxInfo wutianKamikiBoxInfos=10;\
//织田抽卡活动信息\
	repeated KamikiBoxInfo zhitianKamikiBoxInfos=11;\
//上杉抽卡活动信息\
	repeated KamikiBoxInfo shanshangKamikiBoxInfos=12;\
//织田 武田 上杉 祭类抽卡幸运值\
	required int32 kamikiLuck=13;\
//织田还有几次必出S武将\
	optional int32 lastTimesSLeaderZhiTian=14;\
//武田还有几次必出S武将\
	optional int32 lastTimesSLeaderWuTian=15;\
//上杉还有几次必出S武将\
	optional int32 lastTimesSLeaderShangshan=16;\
}\
\
//装备抽卡信息\
message SwearEquipInfo\
{\
//上次免费宝物抽卡时间\
	required int64 freeSwearTime=3;\
//宝物祭活动开启时间\
	required string swearEquip_Activity_BeginTime=4;\
//宝物祭活动结束时间\
	required string swearEquip_Activity_EndTime=5;\
//活动时间内累计抽卡次数\
	required int32 swearEquip_Activity_TotalTimes=6;\
//橙色装备数量\
	optional int32 swearEquip_Activity_GoodTimes=7;\
}\
\
//神兽召唤信息\
message SwearGhostMonsterInfo{\
//神兽召唤幸运值\
	required int32 ghostMonsterLuck=1;\
//神兽召唤当前双周ID\
	required int32 ghostMonsterDoubleWeekNum=2;\
//本轮灵兽抽卡已使用免费次数\
	optional int32 swearGhostMonsterFreeTime=3;\
}\
\
//武田上杉织田祭类活动\
message KamikiBoxInfo\
{\
//配置表主键ID\
	required int32 primaryKeyId=5;\
//最后领取时间\
	required int64 lastExchangeTime=2;\
//领取次数\
	required int32 ExchangeTimes=4;\
}\
\
//商城购买信息\
message StoreGoods\
{\
//物品ID\
	required int32 id=1;\
//已经购买次数\
	required int32 buyTimes=2;\
}\
\
\
//邮件中的资源\
message MailThings\
{\
//资源类型 1:铜钱 2:兵粮 3:判金 4:锤子 5:物品 6:征战积分\
	required int32 objType=1;\
//对应的资源ID\
	required int32 objId=2;\
//数量\
	required int32 num=3;\
}\
\
\
//邮件\
message Mail{\
	required int32 id=1;\
	//标题\
    required string title=2;\
    //内容\
    required string content=3;\
    //邮件类型 1：普通邮件 2：附件邮件 \
    required int32 type=4;\
    //附件\
    repeated MailThings thingses=5;    \
    //开始时间\
    required int64 beginTime=6;\
    //结束时间\
    required int64 endTime=7;\
    //状态 1：未读 2：已读 3:已领取\
    required int32 state=8; \
    // 分类 0 自动 1 手动\
    optional int32 classification=9;\
    	//标题\
    optional string title_tw=10;\
    optional string title_en=11;\
    optional string title_jp=12;\
    //内容\
    optional string content_tw=13;\
    optional string content_en=14;\
    optional string content_jp=15;\
//发件人\
    optional string senderName=16;\
//发件人\
    optional string senderName_tw=17;\
//发件人\
    optional string senderName_en=18;\
//发件人\
    optional string senderName_jp=19;\
}\
\
//系统消息\
message SysMessage\
{\
//消息ID\
	required int32 id=1;\
//消息类型  1:一次通知消息 2：轮播消息\
	required int32 type=2;\
//消息内容\
	required string content=3;\
//开始时间\
	optional int64 beginTime=4;\
//结束时间\
	optional int64 endTime=5;\
//展现时间间隔（秒）\
	optional int32 disInterval=6;\
//消息内容\
	optional string content_tw=7;\
//消息内容\
	optional string content_en=8;\
//消息内容\
	optional string content_jp=9;\
}\
//聊天消息实体类\
message ChatModel\
{\
//消息ID\
	required int64 id=1;\
//发送时间\
	required int64 sendTime=2;\
//聊天内容\
	required string content=3;\
//状态 0:未读 1:已读\
	required int32 state=4;\
//发送者ID\
	required int32 senderUID=5;\
//发送者昵称\
	required string senderName=6;\
//接受者ID\
	required int32 receiveUID=7;\
//接受者昵称\
	required string receiveUName=8;\
}\
//聊天消息实体类\
message LeagueChatModel\
{\
//消息ID\
	required int64 id=1;\
//发送时间\
	required int64 sendTime=2;\
//聊天内容\
	required string content=3;\
//发送者ID\
	required int32 senderUID=5;\
//发送者昵称\
	required string senderName=6;\
}\
\
//陌生人聊天信息\
message StrangerChatModel\
{\
//对方ID\
	required int32 targetUID=1;\
//聊几句了\
	required int32 chatNum=2;\
}\
\
//碎片\
message Part\
{\
//碎片ID\
	required int32 id=1;\
//碎片数量\
	required int32 num=2;\
//来源 0:正常添加 其他:武将ID/灵兽ID\
	optional int32 comeFromLeaderId=3;\
}\
\
//材料\
message Material\
{\
//碎片ID\
	required int32 id=1;\
//碎片数量\
	required int32 num=2;\
}\
\
//功能性道具\
message FunctionsItem\
{\
//碎片ID\
	required int32 id=1;\
//碎片数量\
	required int32 num=2;\
}\
\
//奖励\
message Reward\
{\
//当前经验\
	optional int32 exp=1;\
//当前铜钱\
	optional int32 coin=2;\
//当前军粮\
	optional int32 food=3;\
//当前锤子\
	optional int32 hammer=4;\
//当前金币\
	optional int32 money=5;\
//奖励的武将\
	repeated LeaderInfo rewardLeaders=6;\
//奖励的装备\
	repeated Equip rewardEquips=7;\
//奖励的碎片\
	repeated Part rewardParts=8;\
//奖励的材料\
	repeated Material rewardMaterials=9;\
//玩家等级\
	optional int32 playerLV=10;\
//征战积分\
	optional int32 positionsIntegral=11;\
//竞技场之石\
	optional int32 tournamentStone=12;\
//竞技场之魂\
	optional int32 tournamentGhost=13;\
//当前体力\
	optional int32 strength=14;\
//宝箱钥匙\
	optional int32 boxKey=15;\
//圣诞树ID\
	optional int32 christmasTreeId=16;\
//友情点\
	optional int32 friendPoint=18;\
//功能性道具\
	repeated FunctionsItem functionsItems=19; \
//国战预备役数量\
	optional int32 countrywarReservesNum=20;\
//国战铁矿数量\
	optional int32 countryWarOreNum=21;\
//国战木材数量\
	optional int32 countryWarWoodNum=22;\
//奖励的魂石\
	repeated GemStone rewardGemStones=23;\
//VIP经验\
	optional int32 vipExp=24;\
//VIP等级\
	optional int32 vipLevel=25;\
//南瓜灯ID\
	optional int32 pumpkinLanternId=26;\
//奖励的灵兽\
	repeated GhostMonster rewardGhostMonster=27;\
}\
\
//物品\
message Item\
{\
	required int32 itemId=1;\
	required int32 itemNum=7;\
	required int32 orgNum=8;\
//武将\
	optional LeaderInfo leader=2;\
//装备\
	repeated Equip equip=3;\
//碎片\
	optional Part part=4;\
//材料\
	optional Material material=5;\
//灵兽\
	optional GhostMonster ghostMonster=6;\
//灵石\
	repeated GemStone gemStones=9;\
}\
\
\
\
\
//武将还是碎片\
message LeaderOrPart\
{\
//是否是武将\
	required bool isLeader=1;\
//武将信息\
	optional LeaderInfo leader=2;\
//碎片信息\
	optional Part part=3;\
//如果是碎片 则表明碎片来源 1:已有武将拆解 2：策划配置\
	optional int32 partComeFrom=4;\
}\
\
//积分商品信息\
message ScoreGoods\
{\
//物品id\
	required int32 itemId=2;\
//物品数量\
	required int32 itemCount=3;\
//所需积分\
	required int32 needScore=4;\
//是否已经被购买\
	required bool sold=5;\
}\
//挑战活动\
message ChallengeActivity\
{\
//活动id\
	required int32 activityId=1;\
//今日挑战次数\
	required int32 todayChallengeNum=2;\
//最后挑战时间\
	required int64 lastChallengeTime=3;\
}\
\
\
\
\
//奉行\
message Bugy\
{\
	\
//奉行位置\
	required int32 position =1;\
//奉行等级\
	required int32 level =2;\
//武将id\
	required int32 leaderId =3;\
\
}\
\
//奉行\
enum FormationEnum \
{\
	\
//攻击阵型\
	  ATK  =0;\
//竞技场阵型\
	  ARENA =2;\
//全部\
	  ALL=3;\
//国战布阵\
	  CountryWar=4;\
\
}\
\
\
\
//好友申请\
message FriendApplicant\
{\
//申请玩家ID\
	required int32 applicantUID=1;\
//被申请玩家ID\
	required int32 targetUID=2;\
//对应的玩家信息 如果是被申请者看 则为申请者信息 反之为被申请者\
	required SimplePlayer simplePlayer=3;\
//申请时间\
    required int64 applyTime=4;\
    \
}\
//好友\
message Friend\
{\
//对方玩家ID\
	required int32 frientUID=1;\
//好友类型 1：好友 2：陌生人 3：黑名单\
	required int32 frientType=2;\
//是否在线\
	required bool  isOnline=3;\
//对方玩家信息\
	required SimplePlayer friendPlayerInfo=4;\
//添加好友时间\
	required int64 friendedTime=5;\
}\
//简单角色信息\
message SimplePlayer{ \
//角色id\
	required int32 uId=1;\
//角色名字\
	required string uName=3;\
//角色等级\
    required int32 uLevel=2;\
//角色战力\
    required int32 capability=4;\
//VIP\
    required int32 vipLevel=5;\
//0：女 1：男\
    required int32 sex=6;\
//是否在线\
	required bool isOnline=7;\
//离线时间\
	required int64 offlineTime=8;\
//所在联盟名称\
	optional string leagueName=9;\
//赞数量\
	required int32 praiseCount = 10;  \
//战力排名\
	required int32 capabilityRank = 11; \
//所在联盟ID\
	required int32 leagueId=12;\
//国战官位\
	optional int32 disTitle_WorldCityId=13;\
//布阵的灵兽\
	optional GhostMonster formationGhostMonster=15;\
//灵佑的灵兽\
	repeated GhostMonster lingyouGhostMonsters=16;\
//竞技场战力\
	optional int32 tournamentCapa=18;\
	\
}\
\
//体力赠送\
message GiveStrength\
{\
//赠送者UID\
	required int32 giveuid=1;\
//被赠送者UID\
	required int32 targetUID=2;\
	\
}\
\
\
//战役关卡\
message CampaignBattleLevel\
{\
//关卡ID\
	required int32 campaignBattleLevelId=1;\
//胜利次数\
	required int32 passNum=2;\
//已经领取的宝箱奖励次数\
	required int32 getedGiftBagRewardNum=3;\
//是否领取过大宝箱奖励\
	required bool isGetCampignChapterReward=4;\
//当日胜利次数\
	required int32 todayAttNum=5;\
}\
\
 //商城 如果刷新类型为0 不刷新,则没有这条\
 message Shop{\
//商城类型\
	required int32 shopType=1;\
//最后刷新时间\
	optional int64 lastRefreshTime=2;\
//物品列表\
	repeated ShopItem shopItems=3;\
//刷新次数\
	required int32 refreshTimes=4;\
//卡牌配对次数(卡牌配对专用)\
	optional int32 guessCardTimes=5;\
}\
//商城物品\
message ShopItem\
{\
//shop表主键ID\
	required int32 shopItemId=1;\
//购买次数\
	required int32 buyNum=2;\
}\
\
//卡牌配对\
message GuessCard{\
//卡牌配对的表主键ID(如果为0 则为可翻状态,其他为展示状态)\
	repeated int32 guessCardItemIds=1;\
//当日已购买配对次数\
	required int32 guessCardTimes=2;\
//当前是否可以卡牌配对\
	required bool canGuess=3;\
//上次配对索引(第一下),如果这个索引小于0 则可进行第二下\
	required int32 preOpenGuessCardIndex=4;\
//最后重置时间(用于第二日计算,客户端服务器毕竟有延迟 ,如果客户端判断这个时间跟当前时间不是同一天 ,则不让玩家进行操作 ,比如重新拉数据)\
	required int64 lastResetTime=5;\
//卡牌配对可以抽出的卡牌配对主键物品\
	repeated int32 canGuessCardItemIds=6;\
}\
\
//proto用的hash结构\
message ProtoHashInt2Int\
{\
//Key\
	required int32 key=1;\
//Value\
	required int32 value=2;\
}\
//proto用的hash结构\
message ProtoHashInt2String\
{\
//Key\
	required int32 key=1;\
//Value\
	required string value=2;\
}\
\
//圣诞活动\
message Christmas\
{\
	\
//领取圣诞活动大合战排名 -1 没有排名\
	required int32 familyWarRank=2;\
//大合战输赢 0:输 1:赢\
	required int32 familyWarWinOrFail=7;\
\
//是否领取圣诞活动大合战奖 1:领取0:未领取\
	required int32 IsGetFamilyWarRankReweard=3;\
//购买的圣诞活动商品 商品表主键ID:购买次数\
	repeated ProtoHashInt2Int buyChrimasMallGoods=4;\
//购年玉活动条件值 活动任务类型ID:条件值\
	repeated ProtoHashInt2Int newYearMallTaskProcess=5;\
//领取的年玉活动奖励\
	repeated int32 takedNewYearMallReeward=6;\
}\
//新年活动时间表(对应NewyearActivity2018数据表)\
message NewYearActivityTime\
{\
//活动ID\
	required int32 activityId=1;\
//开启时间\
	required string beginTime=2;\
//结算时间\
	required string cycleTime=3;\
//结束时间\
	required string endTime=4;\
}\
\
//玩家远征战斗武将信息\
message InfiniteCityBattleLeader\
{\
//武将id\
	optional int32 leaderId=1;\
//剩余血量\
	optional int32 blood=2;\
}\
\
//玩家武将id\
message InfiniteCityLeaderId\
{\
//武将id\
	optional int32 leaderId=1;\
}\
\
//远征排行榜数据\
message InfiniteCityRankInfo\
{\
//排行\
	required int32 rank=1;\
//名字\
	required string name=2;\
//积分\
	required int32 score=3;\
//所在联盟名称\
	optional string leagueName=4;\
}\
\
//使用我的邀请码玩家信息\
message InviteCodePlayerInfo\
{\
//玩家ID\
	required int32 uid=1;\
//服务器名字\
	required string servername=2;\
//对方玩家信息\
	required SimplePlayer friendPlayerInfo=3;\
}\
\
//我的邀请码任务完成\
message InviteCodeStateInfo\
{\
	required int32 id=1;\
//状态,0未完成,1完成,-1已领奖\
	required int32 state=2;\
}\
\
//专宝\
message CowryInfo\
{\
	required int32 id=1;\
//增加数值\
	required float count=2;\
//是否锁定\
	required int32 isLock=3;\
}\
\
//城池资源\
message CityRes{\
//物品ID\
	required int32 itemId=1;\
//物品数量\
	required int32 itemNum=2;\
}\
//特殊任务\
message SpecialTaskState{\
//数据表ID\
	required int32 id=1;\
//首次任务是否完成\
	required bool firstFinished=2;\
//首次任务领取次数\
	required int32 takedFirstRewardTimes=3;\
//还有多少次普通任务待领取\
	required int32 haveNormalTakeTimes=4;\
//最后领取首次完成奖励时间\
	optional int64 lastTakeFirstRewardTime=5;\
}\
\
//排行Model\
message Rank{\
//玩家ID\
	required int32 uid=1;\
//玩家昵称\
	required string uName=2;\
//积分\
	required int32 score=3;\
//排行\
	required int32 playerRank=4;\
}\
\
//联盟排行\
message LeagueRank{\
//联盟ID\
	required int32 leagueId=1;\
//联盟昵称\
	required string leagueName=2;\
//联盟分数\
	required int32 score=3;\
//联盟排名\
	required int32 rank=4;\
//占领的城池ID列表\
	repeated int32 ownerCityIds=5;\
}\
\
//天下大事\
message SysEvent\
{\
//事件ID\
	required int32 eventId=1;\
//事件类型\
	required int32 eventType=2;\
//事件状态 0:未完成 1:已完成 2:已超时\
	required int32 state=3;\
//事件进度\
	repeated int32 taskProgresses=4;\
//完成的联盟 或者 联盟排行 用\
	repeated LeagueRank finishedLeagues=5;\
//完成时间\
	required int64 finishTime=6;\
//开始时间\
	optional int64 beginTime=7;\
}\
\
//武将战斗属性校验\
message LeaderFightCheckProp\
{ \
//武将ID\
	optional float leaderId=1;\
//兵力\
	optional float Hp=4;    \
//攻击\
	optional float ATK=5;    \
//防御\
	optional float Defense=6;    \
//攻速\
	optional float ATKSpeed=7;    \
//阵法\
	optional float Spell=8;    \
//阵法防御\
	optional float SpellDefense=9; \
//暴击\
    optional float Baoji=10;\
//闪避\
    optional float Shanbi=11;\
//移动速度\
    optional float MoveSpeed=12;\
//回血\
    optional float ReHp=13;\
//战法暴击\
	optional float spellBaoji=16;\
//战法抵抗\
	optional float spellDiKang=17;\
//战法穿透\
	optional float spellChuanTou=18;\
//暴击伤害\
	optional float baojiShanghai=19;\
//命中\
	optional float hit_persent=20;\
//最终伤害增加\
	optional float hurtAdd_persent=21;\
//最终伤害减少\
	optional float hurtMinus_persent=22;\
//反弹伤害（物理）\
	optional float hurtBack_persent=23;\
//反弹伤害(战法）\
	optional float spellHurtBack_persent=24;\
}\
\
// 每日获取友情点 推送\
message DailyFriendPointChange_S2C_Push {\
// 当日友情点数量\
	required int32 nowDailyFriendPoint = 1; \
}\
\
// 我助战过的好友次数 推送\
message MeAssistedFriendTimesChange_S2C_Push {\
// 我助战过的好友次数\
	required int32 meAssistedFriendTimesChange = 1; \
}\
\
// 收集兑换任务条目\
message CollectExchangeItem {\
// ID\
	required int32 id = 1; \
// 已经收集到的物品\
	repeated int32 collectIds = 2; \
}\
\
// 收集兑换信息 返回\
message CollectExchangeInfo_S2C_Push {\
// 收集兑换已经领取过的奖励1表示1/n 2表示2/n 一直到n/n 10000表示全部完成时领取的\
	repeated int32 getRewardIds = 1; \
// 任务条目\
	repeated CollectExchangeItem collectExchangeItem = 2; \
}\
\
// 收集兑换兑换奖励\
message CollectExchangeRewardGet {\
// 兑换id\
	required int32 exchangeIds = 1; \
}\
\
// 收集兑换兑换奖励 返回\
message CollectExchangeRewardGet_S2C {\
// 错误码\
	required int32 errorCode = 1; \
// 奖励\
	optional Reward reward = 2; \
// 兑换id\
	optional int32 exchangeIds = 3; \
}\
\
// 七福神活动信息\
message SeverGodsInfo_S2C_Push {\
// 1-31号开启的福神\
	repeated int32 sevenGodsId = 1; \
// 当前完成进度\
	optional int32 schedule = 2; \
// 是否已经领取\
	optional bool isRewardGet = 5; \
}\
\
// 七福神一键完成\
message SevenGodsMoneyFinish {\
// 福神ID\
	required int32 sevenGodsId = 1; \
}\
\
// 七福神一键完成\
message SevenGodsMoneyFinish_S2C {\
// 错误信息\
	required int32 errCode = 1; \
// 玩家剩余判金\
	required int32 lastMoney = 2; \
}\
\
// 七福神奖励领取\
message SevenGodsRewardGet {\
// 福神ID\
	required int32 sevenGodsId = 1; \
}\
\
// 七福神奖励领取\
message SevenGodsRewardGet_S2C {\
// 错误信息\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 2; \
}\
// 七福神活动变化推送\
message SeverGodsActivity_S2C_Push {\
// 1-31号开启的福神\
	repeated int32 sevenGodsId = 1; \
}\
\
// 装备保护\
message EquipProtect {\
// 装备id\
	required int32 equipId = 1; \
// 1. 添加保护 2.解除保护\
	required int32 type = 2; \
}\
\
// 装备保护\
message EquipProtect_S2C {\
// 错误信息\
	required int32 errCode = 1; \
// 装备\
	required Equip equip = 2; \
}\
\
// 领取战国器魂章节奖励\
message SoulOfChapter {\
// 章节ID\
	required int32 chapterId = 1; \
}\
\
// 领取战国器魂章节奖励\
message SoulOfChapter_S2C {\
	required int32 errorCode = 1;\
// 奖励内容\
	optional Reward reward = 2; \
// 收集章节详情\
	optional SoulChapter soulChapter = 3; \
}\
\
// 领取战国器魂收集奖励\
message SoulOfScore {\
// id\
	required int32 score = 1; \
// 第几个(1, 2, 3)\
	required int32 index = 2; \
}\
\
// 领取战国器魂收集奖励\
message SoulOfScore_S2C {\
	required int32 errorCode = 1;\
// 奖励内容\
	optional Reward reward = 2; \
// 奖励内容\
	optional SoulReward soulReward = 3; \
}\
\
// 收集章节详情\
message SoulChapter {\
// id\
	required int32 chapterId = 1; \
// 已经收集到的物品ID\
	repeated int32 itemIds = 2; \
// 是否已经领取过奖励\
	required bool isRewardGet = 3; \
}\
\
// 器魂收集奖励\
message SoulReward {\
// id\
	required int32 soulId = 1; \
// 第几个(1, 2, 3)\
	required int32 rewardId = 2; \
}\
\
// 器魂收集详情\
message SoulEquipCollect_S2C_Push {\
// 章节信息\
	repeated SoulChapter soulChapter = 1; \
// 收集器魂数量领奖信息\
	repeated SoulReward soulReward = 2; \
// 当前的战魂积分\
	required int32 collectNum = 3; \
}\
\
//好友竞技场切磋结果\
message TryAtkTournamentResult\
{\
//目标好友ID\
	required int32 targetUID=1;\
//目标好友昵称\
	required string targetUName=2;\
//切磋时间\
	required int64 atkTime=3;\
//攻击方ID\
	required int32 atkUID=4;\
//攻击结果\
	required bool result=5;\
//攻击方昵称\
	required string atkUName=6;\
}\
\
//好友竞技场切磋结果推送\
message TryAtkTournamentResult_S2C_Push\
{\
//切磋结果\
	required TryAtkTournamentResult tryAtkTournamentResults=118;\
}\
\
//扣除物品\
message Cost\
{	\
//错误号(前端不用)\
	required int32 errCode=1;\
//扣除的物品列表 里面都是终值\
	repeated CostItem items=8;\
\
}\
//物品\
message CostItem {\
//物品ID(同Item表ItemId)\
	required int32 itemId=1;\
//物品数量\
	required int32 itemNum=2;\
//原始数量\
	optional int32 orgNum=3;\
}\
\
//扣除信息推送\
message Cost_S2C_Push\
{\
//扣除信息\
	required Cost cost=1;\
}import 'Msg.proto';\
import 'TournamentAndFamilyWarAndActivity.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
\
//攻打关卡\
message AttackPVE\
{\
//关卡ID\
	required int32 pveId=1;\
//评级\
	required int32 star=2;\
//攻打结果\
	required bool result=3;\
//攻打时长(秒)\
	optional int32 attackTime=4;\
//助战好友\
	optional int32 assistFriendUID=5;\
// 1，2，3星任务目标达成情况\
	repeated bool isReached = 6; \
//武将战斗属性校验\
	repeated LeaderFightCheckProp leaderFightCheckProp=7;\
}\
//攻打关卡返回\
message AttackPVE_S2C\
{\
//错误号\
	required int32 errCode=1;\
//今日攻打的次数\
	optional int32 todayAttNum=2;\
//最新评级\
	optional int32 newStar=3;\
//奖励\
	optional Reward reward=4;\
//关卡ID\
	required int32 pveId=5;\
//最后攻打时间\
	optional int64 lastAttackTime=6;\
//攻打结果\
	optional bool result=7;\
\
}\
\
\
\
//扫荡关卡\
message SweepPVE\
{\
//关卡ID\
	required int32 pveId=1;\
//扫荡次数\
	required int32 num=2;\
}\
\
//扫荡关卡\
message SweepPVE_S2C\
{\
//错误号\
	required int32 errCode=1;\
	\
//扫荡结果\
	repeated Reward rewards=2;\
//最后攻打时间\
	optional int64 lastAttackTime=3;\
//关卡ID\
	required int32 pveId=4;\
}\
\
//领取章节奖励\
message GetChaperReward\
{\
//章节奖励ID\
	required int32 charperRewardId=1;\
}\
//领取章节奖励返回\
message GetChaperReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//奖励\
	optional Reward reward=2;\
//领取过的章节奖励\
	repeated int32 ChatperRewardList=3;\
}\
\
\
\
//提交任务\
message CommitTask\
{\
//任务ID\
	required int32 taskId=1;\
}\
//提交任务返回\
message CommitTask_S2C\
{\
//错误号\
	required int32 errCode=1;\
//奖励\
	optional Reward reward=2;\
//任务ID\
	required int32 taskId=3;\
\
}\
\
//任务状态数据变更推送\
message TaskStateChange_S2C\
{\
//攻打普通副本次数				(日常任务）\
	required int32  atkPveNum=1;					\
//攻打精英副本次数				(日常任务）\
	required int32 atkJYPveNum=2;					\
//升级武将次数					(日常任务）\
	required int32 upgrageLeaderNum=3;				\
//强化装备次数					(日常任务）\
	required int32 upgrageEquipNum=4;				\
//征战次数						(日常任务）\
	required int32 atkCityNum=5;					\
//最高重铸品阶					(普通任务）\
	required int32 compositionEquipMaxQuality=6;	\
//是否领取12点体力奖励			(日常任务)\
	required bool get12StrengthReward=7;			\
//是否领取18点体力奖励			(日常任务)\
	required bool get18StrengthReward=8;			\
//装备最大强化等级				(普通任务）\
	required int32 upgradeEquipMaxLv=9;				\
//今日武将进阶吞噬武将次数		(日常任务)\
	required int32 todayLeaderEatLeaderNum=10;		\
//今日是否领取签到奖励			(日常任务)\
	required bool getSignReward=11;					\
//今日消耗体力					(日常任务)\
	required int32 todayUseStrengthNum=12;			\
//今日消耗铜钱数量				(日常任务)\
	required int32 todayUseCoinNum=13;				\
//今日完成日常任务数量			(日常任务)\
	required int32 todayEndDayTaskNum=14;			\
//今日抽卡次数					(日常任务)\
	required int32 todaySwearLeaderNum=15;			\
//今日升级建筑次数				(日常任务)\
	required int32 todayUpgradeBuildingNum=16;		\
//累计充值金额					(成就任务)\
	required int32 totalRechargeNum=17;				\
//累计消费铜钱					(成就任务)\
	required int32 totalUseCoinNum=18;				\
//累计判金消费					(成就任务)\
	required int32 totalUseMoneyNum=19;				\
//累计军粮消费					(成就任务)\
	required int32 totalUseFoodNum=20;				\
//累计锤子消费					(成就任务)\
	required int32 totalUseHammerNum=21;			\
//今日完成竞技场挑战次数		(日常任务)\
    required int32 todayTournamentNum=22;			\
//今日完成某个次数的演武挑战	(日常任务)\
    required int32 todayChallengeActivityNum=23;	\
//今日使用判金数量				(日常任务)\
    required int32 todayUseMoneyNum=24;				\
//今日消耗粮食数量				(日常任务)\
    required int32 todayUseFoodNum=25;				\
//今日联盟捐献次数				(日常任务)\
    required int32 todayLeagueDonationNum=26;		\
//累计联盟捐献次数				(成就任务)\
    required int32 totalLeagueDonationNum=27;		\
//累计获取联盟贡献币数量				(成就任务)\
    required int32 totalGetedLeagueContributionCoinNum=28;	    \
//今日国战出征次数(日常任务)\
    required int32 todayCountryWarAtkNum=29;		\
//国战累计杀死的士兵数量(成就任务)\
	required int32 totalKilledSoldierNum=30;		\
//今日武将进阶次数(日常任务)\
	required int32 todayLeaderAdvanceNum=31;		\
//通关的联盟战boss关卡\
	repeated int32 passdLeagueWarBossPveId=32;		\
//今日完成某个次数的灵兽演武挑战\
	required int32 todayGhostMonsterChallengeActivityNum	=33;	\
\
}\
//特殊任务进度变化\
message SpecialTaskStateChange_S2C\
{\
	required SpecialTaskState SpecialTaskState=1;\
}\
//领取特殊任务奖励\
message TakeSpecialTaskReward\
{\
//首次奖励还是普通奖励 1:首次 2:普通\
	required int32 firstOrNormal=1;\
//数据表ID\
	required int32 id=2;\
}\
//领取特殊任务奖励\
message TakeSpecialTaskReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//奖励\
	optional Reward reward=2;\
	required SpecialTaskState SpecialTaskState=3;\
}\
\
//领取12点或者18点体力奖励（体力和是否领取均不走推送）\
message MiddleTimeGetStrength_S2C\
{\
	required int32 errorCode=1;\
//当前体力\
	required int32 strength=2;\
}\
\
//活动挑战\
message ActivityChallenge\
{\
//活动ID\
	required int32 activityId=1;\
//攻打结果\
	required bool result=2;\
//攻打时长(秒)\
	optional int32 attackTime=3;\
//关卡序列\
	optional int32 LevelMap=4;\
//攻打本阵奖励索引\
	repeated int32 rewardIndex=5;\
//杀敌人数\
	optional int32 kill=6;\
//助战好友\
	optional int32 assistFriendUID=7;\
//镇压次数\
	optional int32 repressives=8;\
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=9;\
}\
//活动挑战返回\
message ActivityChallenge_S2C\
{\
//错误号\
	required int32 errCode=1;\
//今日挑战的次数\
	optional int32 todayChallengeNum=2;\
//奖励\
	optional Reward reward=3;\
//活动ID\
	required int32 activityId=4;\
//最后挑战时间\
	optional int64 lastChallengeTime=5;\
//活动分组ID\
	required int32 activityHomeId=6;\
//结果\
	required bool result=7;\
//关卡ID\
	optional int32 levelId=8;\
//当前判金\
	required int32 curMoney=9;\
//变化的材料\
	repeated Material changeMaterial=10;\
//镇压次数\
	optional int32 repressives=11;\
}   \
\
//竞技场匹配对手\
message TournamentMatch_S2C\
{	\
//错误号\
	required int32 errCode=1;\
	\
//对方段位\
	optional int32 tournamentGrade=2;\
	\
//竞技场双倍收益次数\
	optional int32 tournamentDoubleNum=3;\
//竞技场挑战次数\
	optional int32 tournamentRemainNum=4;\
//竞技场次数恢复时间\
	optional int64 tournamentRefnewTime=5;\
\
	optional OtherPlayerAtkInfo OtherPlayerAtkInfo=6;\
}\
\
\
//竞技场挑战\
message TournamentChallenge\
{\
//攻打结果\
	required bool result=1;\
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;	 \
}\
//竞技场挑战返回\
message TournamentChallenge_S2C\
{\
//错误号\
	required int32 errCode=1; \
//竞技场段位\
	optional int32 tournamentGrade=6;\
//竞技场当前积分\
	optional int32 tournamentScore=4;\
//竞技场晋级赛结果 true 赢 false 输\
    repeated bool tournamentPromotionResult=5;\
//奖励\
	optional Reward reward=3;\
//攻打结果\
	required bool result=10;\
}\
\
//竞技场奖励\
message TournamentReward\
{\
\
//1 周奖励 2 赛季奖励\
	required int32 type=1;\
	 \
}\
//竞技场奖励返回\
message TournamentReward_S2C\
{\
//错误号\
	required int32 errorCode=4;\
//1 周奖励 2 赛季奖励\
	optional int32 type=1;\
//奖励\
	optional Reward reward=3;\
//周段位\
	optional int32 weekGrade=7;\
//赛季段位\
	optional int32 seasonGrade=5;\
//赛季排名\
	optional int32 seasonRankNo=6;\
\
} \
\
//竞技场排行榜返回\
message TournamentRank_S2C\
{\
//排行时间\
	required int64 rankTime=1;\
//排行榜信息\
	repeated TournamentRankElement  rankElement=2;\
\
}\
//购买竞技场商品\
 message BuyTournamentGoods     \
 {\
//1 竞技之石 2 竞技之魂\
 		required int32 type=1;\
//商品索引\
 		required int32 goodsIndex=2;\
 }\
\
 //购买竞技场商品返回结果\
 message BuyTournamentGoods_S2C     \
 {\
//错误号\
 	required int32 errorCode=1;\
//1 竞技之石 2 竞技之魂\
 	required int32 type=3;\
//物品索引\
	required int32 goodsIndex=2;\
//奖励\
	optional Reward reward=4;\
 }\
 //更改竞技场头像\
 message ChangeTournamentAvatar     \
 {\
//头像id\
 		required int32 avatarId=1;\
 }\
\
 //更改竞技场头像返回结果\
 message ChangeTournamentAvatar_S2C     \
 {\
//错误号\
 	required int32 errorCode=1;\
\
 \
 }\
 //刷新竞技场商城\
message RefreshTournamentMall_S2C     \
 {\
//错误号\
 	required int32 errorCode=1;\
//刷新时间\
 	optional int64 refreshTims=12;\
//竞技之石商品\
	repeated TournamentGoods  stoneGoods=33;\
//竞技之魂商品\
 	repeated TournamentGoods  ghostGoods=34;\
 \
}\
\
//竞技场奖励返回\
message TournamentHistoryGradeChange_S2C\
{\
//周段位\
	optional int32 weekGrade=4;\
//赛季段位\
	optional int32 seasonGrade=5;\
//是否可以领取周奖励\
	optional bool canTakeweekReward=7;\
//是否可以领取赛季奖励\
	optional bool canTakeSeasonReward=6;\
//上一赛季排行\
	optional int32 histoRankNo=8;\
//竞技场段位\
	optional int32 tournamentGrade=24;\
//竞技场当前积分\
	optional int32 tournamentScore=25;\
\
\
} \
\
\
//竞技场挑战次数返回\
message TournamentChallengeNum_S2C\
{\
//竞技场双倍收益次数\
	optional int32 tournamentDoubleNum=28;\
//竞技场挑战次数\
	optional int32 tournamentChallengeNum=29;\
//竞技场次数恢复时间\
	optional int64 tournamentRefnewTime=30;\
}\
\
//重置精英副本攻打次数\
message ResetJYPVEAttackNum\
{\
//副本ID\
	required int32 pveId=1;\
}\
//重置精英副本攻打次数\
message ResetJYPVEAttackNum_S2c\
{\
//错误号\
	required int32 errorCode=1;\
//副本\
	required PVE pve=2;\
//当前判金\
	required int32 curMoney=3;\
//当前重置精英副本次数\
	optional int32 resetAJYPVECount=29;\
}\
\
//重置活动副本次数\
message ResetActivityPVECount\
{\
//副本ID\
	required int32 activieyId=1;\
}\
//重置活动副本次数\
message ResetActivityPVECount_S2c\
{\
//错误号\
	required int32 errorCode=1;\
//副本\
	required ChallengeActivity activity=2;\
//当前判金\
	required int32 curMoney=3;\
//当前重置活动副本次数\
	optional int32 resetActivityPVECount=29;\
}\
 	\
//购买竞技场次数\
message BuyTournamentCount_S2c\
{\
//错误号\
	required int32 errorCode=1;\
//当前次数\
	required int32 tournamentChallengeNum=2;\
//当前判金\
	required int32 curMoney=3;\
\
}\
\
\
\
\
//活动信息变化\
message ActivityChange_S2c\
{\
//1 增加 2 删除 3 更新\
	required int32 type=3;\
//活动\
	repeated Activity activity=1;\
//活动类型\
	optional ActivityClassification classification=2;\
}\
\
\
\
//领取活动奖励\
message TakeActivityReward\
{\
//活动Id\
	required int32 activityId=1;\
}\
//领取活动奖励\
message TakeActivityReward_S2c\
{\
//错误号\
	required int32 errorCode=1;\
//活动Id\
	optional int32 activityId=2;\
//奖励\
	optional Reward reward=3;\
}\
\
//活动进度变化\
message ActivityProgressChange_S2c\
{\
//当前进度\
	repeated ActivityProgress progress =4;\
\
}\
\
//攻打战役关卡\
message AttackCampaignBattleLevel\
{\
//战役关卡ID\
	required int32 levelId=1;\
//战斗结果\
	required bool attackResult=2;\
//攻打时长（秒）\
	required int32 attackTimeLong=3;\
//助战好友\
	optional int32 assistFriendUID=4;\
//镇压次数\
	optional int32 repressives=5;\
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;\
}\
//攻打战役关卡\
message AttackCampaignBattleLevel_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//奖励\
	optional Reward reward=2;\
//战役关卡实例\
	optional CampaignBattleLevel campaignBattleLevel=3;\
//战役关卡ID\
	optional int32 levelId=4;\
//当前判金\
	required int32 curMoney=5;\
//变化的材料\
	repeated Material changeMaterial=6;\
//镇压次数\
	optional int32 repressives=7;\
}\
\
//领取战役关卡宝箱奖励\
message GetCampaignBattleGiftBagReward\
{\
//战役关卡ID\
	required int32 levelId=1;\
}\
\
//领取战役关卡宝箱奖励\
message GetCampaignBattleGiftBagReward_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//奖励\
	optional Reward reward=2;\
//战役关卡实例\
	optional CampaignBattleLevel campaignBattleLevel=3;\
}\
\
//领取战役章节奖励\
message GetCampaignBattleChapterReward\
{\
//战役关卡ID\
	required int32 levelId=1;\
}\
\
//领取战役章节奖励\
message GetCampaignBattleChapterReward_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//奖励\
	optional Reward reward=2;\
//战役关卡实例\
	optional CampaignBattleLevel campaignBattleLevel=3;\
}\
\
\
\
//进入演武挑战\
message EnterYanwuChallenge\
{\
//活动ID\
	required int32 activityId=1;\
\
}\
//进入演武挑战\
message EnterYanwuChallenge_S2C\
{\
//错误号\
    required int32 errCode=1;\
//杀敌\
    repeated int32 kill=2;\
//宝箱类型  0 无宝箱 1 铜宝箱 2 银宝箱 3 金宝箱\
	repeated int32 boxType=3;\
\
\
}\
\
//领取活动奖励\
message TakeActivityClassificationReward\
{\
//活动Id\
	required int32 activityClassificationId=1;\
//武将索引\
	optional int32 param1=2;\
}\
//领取活动奖励\
message TakeActivityClassificationReward_S2c\
{\
//错误号\
	required int32 errorCode=1;\
//活动Id\
	optional int32 activityClassificationId=2;\
//奖励\
	optional Reward reward=3;\
}\
\
//获取排行活动排行\
message GetRankActivity_Rank\
{\
//活动大类实例ID\
	required int32 classificationId=1;\
}\
//获取排行活动排行\
message GetRankActivity_Rank_S2C\
{\
//活动大类实例ID\
	required int32 classificationId=1;\
//排行信息\
	repeated Rank ranks=2;\
}\
\
\
import 'Msg.proto';\
import 'PveAndTask.proto';\
import 'FriendAndInfiniteCity.proto';\
import 'League.proto';\
import 'TournamentAndFamilyWarAndActivity.proto';\
import 'CountryWar.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo\
{\
//设备信息\
	optional DeviceInfo deviceInfo=1;\
//游戏版本号\
	optional string		version=2;\
//签名\
	optional string appSign=7;\
//类库MD5签名\
	optional string dllMd5=8;\
}\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo_S2C\
{\
//玩家信息\
	optional PlayerInfo playerInfo=1;\
//玩家资源表\
	optional PlayerRes playerRes=2;\
//建筑信息\
	repeated BuildingInfo buildings=3; 	\
//武将信息\
	repeated LeaderInfo leaders=4;\
//科技信息\
	repeated TechnologyInfo technologyInfos=5;\
//科技信息\
	repeated GiftInfo giftInfos=6;\
//玩家的装备列表\
	repeated Equip equipInfos=9;\
//玩家攻打的PVE信息\
	repeated PVE pveInfos=10;\
//已经完成的目标任务\
	repeated int32 passedTargetTask=11;\
//已经完成的日常任务\
	repeated int32 passedDayTask=12;\
//已经完成的成就任务\
	repeated int32 passedAchievementsTask=13;\
//任务的状态数据\
	optional TaskStateChange_S2C taskState=14;\
			\
//攻击阵型\
	repeated Formation atkFormation=15;\
//竞技场阵型\
	repeated Formation tournamentFormation=132;\
//商城当日购买信息\
	repeated StoreGoods mallBuyInfo=17;\
//抽卡心想\
	optional SwearInfo swearHeroInfo=18;\
\
//邮件列表\
	repeated Mail mails=20;\
//系统消息（轮播）\
	repeated SysMessage sysMsgs=21;\
//碎片\
	repeated Part parts=22;\
//材料\
	repeated Material materials=23;\
\
//挑战活动列表\
	repeated ChallengeActivity challengeActivity=26;\
//玩家竞技场信息\
	optional PlayerTournamentInfo TournamentInfo =27;\
//活动分类\
	repeated ActivityClassification classification=28;\
//活动\
	repeated Activity      activity=29;\
//玩家活动信息\
	optional  PlayerActivity playerActivity=30;\
//攻击奉行\
	repeated Bugy      attackBugy=31;\
//竞技场奉行\
	repeated Bugy      tournamentBugy=32;\
//功能建筑列表\
	repeated FunctionsBuild functionsBuilds=33;\
//坑里的功能建筑\
	repeated BlockFunctionsBuild blockFunctionsBuild=34;\
//通关的挑战活动/演武\
	repeated int32 clearChalengeActivity=35;\
//合战信息\
	optional FamilyWar familyWar=36;\
//宝物抽卡信息\
	optional SwearEquipInfo swearEquipInfo=7;\
\
//好友申请列表\
	repeated FriendApplicant friendApplicant=38;\
//好友列表\
	repeated Friend friend=39;\
//体力赠送\
	repeated GiveStrength giveStrength =40;\
// 本次战役章节ID\
	required int32 campaignBattleChapterId=41;\
//攻打过的战役关卡\
	repeated CampaignBattleLevel campaignBattleLevels=42;\
\
//申请别人的列表\
	repeated int32 applicant=43;\
\
//客户端连接军团url\
	optional string clientCorpsUrl=48;\
//无限城当前关卡\
	optional int32 infiniteCityLevel=49;\
//无限城重置次数\
	optional int32 infiniteCityResetCount=50;\
//无限城跳过关卡次数\
	optional int32 infiniteCityPassLevelCount=51;\
//无限城总积分\
	optional int32 infiniteCityScore=52;\
//无限城信息\
	optional InfiniteCity infiniteCitys=53;\
//无限城总评星\
	optional int32 infiniteCityStar=54;\
//无限城武将剩余血量\
	repeated InfiniteCityBattleLeader leadersBlood=55;\
//商品列表\
	repeated ScoreGoods infiniteCityScoreGoods=56;\
//无限城buffid\
	optional int32 infiniteCitySkillId=57;\
//无限城武将上阵信息\
	repeated InfiniteCityLeaderId leadersOnBattle=58;\
//功能性道具\
	repeated FunctionsItem functionsItems=59; \
//有情点购买信息\
	repeated StoreGoods friendPointBuyInfo=60;\
//无限城商城下次刷新时间\
	optional int64 infiniteCityRefreshTime=61;\
//关闭模块id\
	repeated int32 closeFunctionId=62;\
//无限城好友助战信息\
	optional string infiniteCityFriends=63;\
//无限城开启时间\
	optional int64 infiniteCityOpenTime=64;\
//邀请码\
	optional string inviteCode=65;\
//使用我的邀请码玩家列表\
	repeated InviteCodePlayerInfo inviteCodePlayers=66;\
//使用我的邀请任务完成情况,0往上表示步骤,-2表示已完成-1已领奖\
	repeated InviteCodeStateInfo inviteCodeStates=67;\
//是否绑定,1有0无\
	optional int32 isInvited=68;\
//邀请码开启时间\
	optional int64 inviteCodeOpenTime=69;\
//神级抽卡开始时间\
	optional int64 kamikiCardExchangeOpenTime=70;\
//神级抽卡结束时间\
	optional int64 kamikiCardExchangeEndTime=71;\
//玩家的联盟信息\
	optional PlayerLeagueInfo playerleagueInfo=72;\
//联盟信息(可能没有)\
	optional LeagueInfo leagueInfo=73;\
//联盟开启时间\
	optional int64 LeagueOpenTime=74;\
//联盟开启时间\
	optional int64 LeagueWarOpenTime=75;\
//兵种被动信息\
	repeated TalentInfo talentInfos=76;\
//待开的宝箱\
	repeated SweepFarWarBoxModel sweepFarWarBoxLevels=77;\
//特殊成就任务状态\
	repeated SpecialTaskState specialTaskTates=78;\
//特殊成就任务开启时间\
	optional int64 specialTaskOpenTime=79;\
//无限城最高层数\
	optional int32 infiniteMaxLevel=82;\
//国战开启时间\
	optional int64 countryWarOpenTime=83;\
//国战结束时间\
	optional int64 countryWarEndTime=60084;\
//当前国战赛季\
	optional int32 countryWarSeasonNo=60085;\
//天下大事\
	repeated SysEvent sysEvents=84;\
//国战战报\
	repeated CountryWarBattle countryWarBattles=85;\
//时区小时偏差\
	optional int32 timeZoneHours=86;\
//绑定推特帐号领奖次数\
	optional int32 bindingTwitterRewardGetTimes=87;\
// 每日获取友情点\
	optional int32 dailyFriendPoint = 88; \
// 我助战过的好友次数\
	optional int32 meAssistedFriendTimes = 89; \
// 七福神活动开启情况 0.未开启\
	optional SeverGodsInfo_S2C_Push sevenGodsInfo = 90; \
// 立志传信息\
	optional CollectExchangeInfo_S2C_Push collectExchangeInfo = 91; \
// 累计充值\
	optional float recharge = 93; \
// 器魂收集详情\
	optional SoulEquipCollect_S2C_Push soulEquipCollect= 94; \
\
// 武家等级\
	optional int32 powerLevel = 96; \
// 每日俸禄是否已经领取\
	optional bool heroLevelDayRewardGet = 97; \
//织田抽卡开启时间\
	optional string zhitianKamikiOpenTime=98;\
//织田抽卡结束时间\
	optional string zhitianKamikiEndTime=99;\
//武田抽卡开启时间\
	optional string wutianKamikiOpenTime=100;\
//武田抽卡结束时间\
	optional string wutianKamikiEndTime=101;\
//上杉抽卡开启时间\
	optional string shangshanKamikiOpenTime=102;\
//上杉抽卡结束时间\
	optional string shangshanKamikiEndTime=103;\
//陌生人聊天信息\
	repeated StrangerChatModel strangetChatModels=104;\
//读取过的联盟消息\
	repeated int64 readedLeagueChatId=105;\
//魂石列表\
	repeated GemStone gemStones=106;\
// facebook是否可领奖\
	optional bool facebookRewardCanGet=107; \
//facebook领奖次数\
	optional int32 facebookRewardGetTimes=108;\
//月卡首冲奖励是否可以领取\
	optional bool isFirstMonthCardRewardCanGet=109;\
//月卡首冲奖励是否已领取\
	optional bool isFirstMonthCardRewardGet=110;\
//玩家渠道\
	optional string channel=111;\
//灵兽信息\
	repeated GhostMonster ghostMonsters=112;\
//神兽召唤信息\
	optional SwearGhostMonsterInfo swearGhostMonsterInfo=114; \
//圣诞活动信息\
	optional Christmas ChristmasInfo=115;\
//圣诞活动开始时间\
	repeated NewYearActivityTime newYearActivityTime=116;\
//全服最高战力 战力:玩家昵称\
	optional ProtoHashInt2String ServerMaxCapa=117;\
//切磋结果列表\
	repeated TryAtkTournamentResult tryAtkTournamentResults=118;\
//商城\
	repeated Shop shops=119;\
//梦幻商城的刷新时间VALUE4，时间(开始小时，结束小时），刷新日期1日期2日期3\
	repeated int32 huanwuShopDefaultValue4=120;\
}\
\
\
//============================通用接口===========================\
//消除冷却时间\
message ClearCoolingTime\
{\
//操作类型 对应 ActionEnum中类型\
	optional int32 actionID=1;\
//操作对象ID\
	optional int32 objId=2;\
// 消耗金钱(客户端计算)\
	optional int32 costMoney = 3; \
}\
\
//消除冷却时间\
message ClearCoolingTime_s2c\
{\
//操作类型 对应 ActionEnum中类型\
	optional int32 errorCode=1;\
}\
\
//=============================玩家==============================\
\
//玩家登陆返回\
message KickPlayer_S2C\
{\
//1：有玩家登录顶掉 2：服务器主动踢出\
	optional int32 errCode=1;\
}\
\
//设备第一次启动客户端时记录一条\
message Activate\
{\
//平台ID(渠道ID)\
	required string platformId=1;\
//设备唯一标识\
	required string deviceId=2;\
//渠道号\
	required string channelId=3;\
}\
\
//玩家登陆\
message PlayerLogin\
{\
	\
//平台ID\
	required string platformId=1;\
//平台玩家ID\
	required string platformUserId=2;\
//设备信息\
	required DeviceInfo deviceInfo=3;\
//游戏版本号\
	required string		version=4;\
//渠道号\
	required string channelId=5;\
//登录的服务器ID\
	required int32 serverId=6;\
//签名\
	optional string appSign=7;\
//类库MD5签名\
	optional string dllMd5=8;\
}\
//玩家登陆返回\
message PlayerLogin_S2C\
{\
//返回结果 0:玩家存在 1:玩家不存在 2:服务器维护中 3:黑名单中\
	optional int32 result=1; \
//玩家ID\
	optional int32 uid=2; \
//服务端字典数据版本号\
	optional string serverDataVersion=3;\
//新的Token\
	optional string token=4;\
//当前时间\
	required int64 now=5;\
}\
//玩家登陆返回\
message OtherDayAdvice_S2C\
{\
	optional int32 errCode=1;\
}\
\
\
\
//玩家注册\
message PlayerRegist\
{	\
//平台ID\
	required string platformId=1;\
//平台玩家ID\
	required string platformUserId=2;\
//玩家昵称\
	required string uName=3;\
//设备信息\
	required DeviceInfo deviceInfo=4;	\
//性别 0：女1：男\
	required int32 sex=5;\
//头像ID\
	required int32 headId=6;\
//渠道号\
	required string channelId=7;\
//登录的服务器ID\
	required int32 serverId=8;\
}\
//玩家注册\
message PlayerRegist_S2C\
{\
//返回结果 0:玩家存在 1:玩家不存在\
	optional int32 errorCode=1; \
//如果成功返回的玩家ID\
	optional int32 uid=2;\
//新的Token\
	optional string token=3;\
}\
\
\
\
//获取玩家基础信息\
message GetPlayerInfo_S2C\
{\
//返回的玩家信息\
	optional PlayerInfo playerInfo=1;\
}\
\
\
\
\
//开始充值\
message StartRecharge{\
//充值ID\
	required int32 rechargeId=1;\
}\
//开始充值\
message StartRecharge_S2C{\
\
//充值ID\
	optional int32 rechargeId=1;\
//游戏订单ID\
	optional int32 cpOrderId=2;\
//错误号\
	required int32 errCode=3;\
}\
\
//Otaku充值\
message Recharge_Otaku{\
//游戏订单号\
	required string orderId=1;	\
//平台订单号\
	required string platOrderId=2;\
}\
\
//OTAKU充值返回\
message Recharge_Otaku_S2C\
{\
//错误码\
	required int32 errorCode=1;\
//充值ID\
	required int32 rechargeId=2;\
//玩家当前金币\
	required int32 money=3;\
//当前VIP等级\
	required int32 curVIPLevel=4;\
//当前VIP经验\
	required int32 curVIPExp=5;\
//月卡即时奖励\
	optional Reward reward=6;\
//月活卡ID 没有为0\
	optional int32 monthVipCardId=7;\
//月卡开始时间\
	optional int64 monthVipCardEndTime=8;\
//已经发放的充值双倍奖励\
	repeated int32 sendFirstRechargeRewardIds=9;	\
//最后领取VIP月卡奖励时间\
	optional int64 lastGetVIPMonthCardRewardTime=32;\
// 累计充值\
	optional float totalRecharge = 93; \
}\
\
//商城购买\
message BuyMallGoods{\
//商城物品ID\
	required int32 goodsId=1;\
//物品数量\
	required int32 num=2;\
}\
\
//商城购买\
message BuyMallGoods_S2C{\
//错误号\
	required int32 errorCode=1;\
//商城物品ID\
	required int32 goodsId=2;\
//奖励\
	optional Reward reward=5;\
}\
\
//祈愿\
message SwearHero{\
	//祈愿1:小吉抽卡 2：大吉 3 ：大吉十连抽 4:神级抽卡5：神级十连抽 6:转盘抽卡 7：转盘十连抽 8:织田 9:织田十连 10:武田 11:武田十连 12:上杉 13:上杉十连\
	required int32 type=1;\
\
}\
\
\
//祈愿\
message SwearHero_S2C{\
//错误码\
	required int32 errorCode=1;\
	//祈愿1:小吉抽卡 2：大吉 3 ：大吉十连抽 4:神级抽卡5：神级十连抽 6:转盘抽卡 7：转盘十连抽 8:织田 9:织田十连 10:武田 11:武田十连 12:上杉 13:上杉十连\
	required int32 type=2;\
//增加的武将或碎片\
	repeated Item item=3;\
//抽卡信息\
	required SwearInfo swearInfo=4;\
//返回的武魂\
	optional Material addedWuHun=5;\
//当前铜钱\
	required int32 curCoin=6;\
//当前判金\
	required int32 curMoney=7;\
//消耗的道具(终值)\
	repeated Material costMaterials=8;\
}\
\
//更新新手引导步骤\
message ChangeGuide\
{\
//步骤\
	required int32 guideNum=1;\
}\
\
\
//更新新手引导步骤\
message ChangeGuide_S2C\
{\
//步骤\
	required int32 guideNum=1;\
}\
\
//新邮件\
message SysMail\
{\
//邮件内容\
	required Mail mail=1;\
}\
//邮件已读\
message ReadSysMail\
{\
//邮件ID\
	required int32 mailId=1;\
}\
\
//领取邮件附件\
message GetMailRes\
{\
//邮件ID\
	required int32 mailId=1;\
}\
\
//领取邮件附件\
message GetMailRes_S2C\
{\
//返回结果\
	required int32 errCode=1;\
//奖励的物品\
	optional Reward reward=2;\
//邮件ID\
	required int32 mailId=3;\
}\
\
//签到\
message GetSignReward_S2C\
{\
//返回结果\
	required int32 errCode=1;\
//本月领取签到次数\
	optional int32 monthGetSignRewardTimes=2;\
//最后领取签到奖励时间\
    optional int64 lastGetSignRewardTime=3;\
//奖励\
	optional Reward reward=4;\
\
}\
\
//玩家完成触发引导步骤\
message TriggerGuideChange\
{\
//步骤\
	required int32 stepNum=1;\
}\
\
//系统消息\
message SysMsg_S2C\
{\
//消息内容\
	required SysMessage msgModel=1;\
}\
\
//系统消息\
message SysMsg_Del_S2C\
{\
//要删除的消息ID\
	required int32 msgId=1;\
}\
\
//世界聊天\
message WorldChat\
{\
//消息内容\
	required string content=1;\
}\
\
//世界聊天\
message WorldChat_S2C\
{\
//玩家ID\
	required int32 uid=1;\
//消息内容\
	required string content=2;\
//玩家昵称\
	required string uName=3;\
//国战官位\
	optional int32 disTitle_WorldCityId=4;\
}\
\
\
//私聊\
message PlayerChat\
{\
//好友ID\
	required int32 targetUid=1;\
//消息内容\
	required string content=2;\
}\
\
//私聊\
message PlayerChat_S2C\
{\
	required int32 errCode=1;\
}\
\
//私聊 推送\
message PlayerChat_S2C_Push\
{\
	required ChatModel chatModel=1;\
}\
\
\
\
//材料合成\
message CompositionMaterial\
{\
//要合成的材料ID\
	required int32 materialId=1;\
}\
//材料合成\
message CompositionMaterial_S2C\
{\
//错误号\
	required int32 errCode=1; \
//合成的材料ID\
	required int32 materialId=2;\
//变化后的材料，包括之前的材料\
	repeated Material material=3;\
//玩家当前铜币\
	optional int32 curCoin=4;\
\
}\
\
//获取玩家当前体力并计算体力\
message GetPlayerStrength_S2C\
{\
//当前体力\
	required int32 curStrength=1;\
//最后计算体力时间\
	required int64 lastCalcStrengthTime=2;\
}\
\
\
//新手引导步骤\
message ChangeStep\
{\
//步骤\
	required int32 step=1;\
}\
\
 //碎片转换\
message PartConvert\
{\
//要合成的碎片ID\
	optional int32 targetPartId=1;\
//使用的碎片ID\
	optional int32 usePartId=2;\
//合成次数\
	optional int32 convertTimes=3;\
}\
\
 //碎片转换返回\
message PartConvert_S2C\
{\
//错误号\
	optional int32 errCode=1;\
//转换后的目标碎片\
	optional Part targetPart=2;\
//使用的碎片\
	optional Part usedPart=3;\
\
}\
\
\
\
//一次性消息\
message Notice_S2C\
{\
//消息id\
	required int32 id=1;\
//消息参数\
	repeated string param=2;\
\
}\
\
//cdKey 领奖\
message CDKeyReward\
{\
//cdkey\
	required string cdKey=1;\
}\
\
//cdKey 领奖\
message CDKeyReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//奖励\
	optional Reward reward=2;\
}\
\
//购买VIP礼包\
message BuyVIPReward\
{\
//要购买的礼包对应的等级\
	required int32 vipLevel=1;\
}\
//购买VIP礼包\
message BuyVIPReward_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//已经购买的VIP礼包的VIP等级\
	repeated int32 buyedVIPRewardLevel=2;\
//购买的奖励\
	optional Reward reward=3;\
}\
\
//领取月卡奖励\
message GetMonthCardReward_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//最后领取VIP月卡奖励时间\
	required int64 lastGetVIPMonthCardRewardTime=2;\
//领取的奖励\
	optional Reward reward=3;\
}\
\
//苹果支付验证\
message AppleRecharge\
{\
//充值ID\
	required int32 rechargeId=1;\
//游戏订单号\
	required int32 cpOrderId=2;\
//验证字符串\
	required string validStr=3;\
//设备号\
	optional string deviceId=4;\
}\
//苹果支付验证\
message AppleRecharge_S2C\
{\
//错误号\
	required int32 errorCode=1;\
}\
\
//玩家切出游戏\
message ClientGameOut_S2C\
{\
//错误号\
	required int32 errorCode=1;\
}\
//玩家切回游戏\
message ClientGameIn_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//缓存的未发送的消息\
	repeated bytes cachedMessages=2; \
}\
\
//神级抽卡兑换\
message KamikiCardExchange\
{\
//礼包ID\
	required int32 giftBagId=1;\
}\
\
//神级抽卡兑换\
message KamikiCardExchange_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//礼包ID\
	required int32 giftBagId=2;\
//变化的材料\
	repeated Material changeMaterial=3;\
//领取的奖励\
	optional Reward reward=4; \
}\
\
//获取战力前100\
message GetPlayerAtkCapaTop100_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//前100\
	repeated SimplePlayer simplePlayers=2;\
//我自己的排名\
	optional int32 meRank=3;\
}\
\
//点赞\
message PraisePlayer\
{\
//点赞的人的ID\
	required int32 uid=1;\
}\
//点赞\
message PraisePlayer_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//点赞的人的ID\
	repeated int32 uid=2;\
//点赞的奖励\
	optional Reward reward=3;\
}\
//点赞（推送给被赞玩家）\
message PraisePlayer_S2C_Push\
{\
//错误号\
	required int32 errorCode=1;\
//总点赞次数\
	required int32 praiseCount=2;\
}\
\
//玩家改名\
message ChangePlayerName\
{\
//玩家昵称\
	required string uName=1;\
}\
//玩家改名\
message ChangePlayerName_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//玩家昵称\
	required string uName=2;\
//当前判金数\
	optional int32 curMoney=3;\
//玩家改名次数\
	optional int32 changeNameCounts=4;\
}\
\
//玩家开始战斗 加速器用\
message PlayerStartFighting_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
//玩家结束战斗 加速器用\
message PlayerFinishFighting\
{\
//模块\
	required string model=1;\
//攻打时长(秒)\
	required int32 atkTimeSecond=2;\
}\
//玩家结束战斗 加速器用\
message PlayerFinishFighting_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
\
// 绑定推特帐号领奖\
message BindingTwitterRewardGet_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 2; \
// 奖励领取次数\
	optional int32 rewardGetTimes = 3; \
}\
\
// 玩家战力变化推送\
message PlayerCapcChange_S2C_Push {\
//竞技场阵型战力\
	optional int32 arenaFormationCapa=45;\
//攻击阵型战力\
    optional int32 atkFormationCapa=46;\
}\
\
//查看活动大类\
message CheckSysActivityClassification{\
//活动大类ID\
	required int32 sysActivityClassificationId=47;\
}\
\
//查看活动大类\
message CheckSysActivityClassification_S2C{\
//查看过的活动大类ID\
	repeated int32 checkedSysActivityClassificationIds=47;\
}\
\
//武田上杉织田祭类活动 变化 推送到客户端\
message  KamikiBoxInfoChange_S2C_Push\
{\
	required KamikiBoxInfo kamikiBoxInfo=1;\
}\
\
//武田织田上杉祭 抽卡子项活动兑换\
message KamikiBoxExchange\
{\
//活动表主键ID\
	required int32 id=2; \
}\
\
\
//武田织田上杉祭 抽卡子项活动兑换\
message KamikiBoxExchange_S2C\
{\
// 错误号\
	required int32 errCode = 1; \
//武田上杉织田祭类活动\
	optional KamikiBoxInfo kamikiBoxInfio=2;\
//当前判金\
	required int32 curMoney=3;\
//奖励信息\
	optional Reward reward=4;\
//当前武田上杉织田祭类活动幸运值\
	optional int32 curLuck=5;\
}\
\
//领取夜宴奖励\
message TakeDinnerReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最后夜宴奖励领取时间\
	optional int64 lastTakeDinnerTime=2;\
//奖励信息\
	optional Reward reward=3;\
}\
\
//成长基金信息变化推送\
message GrowthRewardInfoChange_S2C_Push\
{\
//成长基金物品ID\
	optional int32 growthThingId=53;\
//领取过的成长基金等级\
	repeated int32 takedGrowthRewardLevel=54;\
}\
\
//领取成长基金\
message TakeGrowthReward\
{\
//要领取的等级\
	required int32 takedLevel=1;\
}\
\
//领取成长基金\
message TakeGrowthReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//奖励信息\
	optional Reward reward=2;\
//成长基金物品ID\
	optional int32 growthThingId=53;\
//领取过的成长基金等级\
	repeated int32 takedGrowthRewardLevel=54;\
}\
\
// 七福神商城商品信息\
message SevenGodsShopItemInfo {\
// 商品ID\
	required int32 itemId = 1; \
// 商品数量\
	required int32 itemNum = 2; \
// 是否已经够买过 true已经购买 false 未购买\
	required bool isBuyed = 3; \
}\
\
// 商城信息\
message SevenGodsShopInfo {\
// 随机数字 每次商城物品变化随机数字也会变化\
	required int32 randomNum = 1; \
// 刷新商城需要判金 没有刷新次数传-1\
	optional int32 randomItemNeedMoney = 2; \
// 所有商品信息\
	repeated SevenGodsShopItemInfo itemsInfo = 3; \
}\
\
// 七福神商城信息\
message SevenGodsShopInfo_S2C {\
// 商城信息\
	required SevenGodsShopInfo info = 1; \
}\
\
// 七福神商城物品购买\
message SevenGodsShopBuy {\
// 随机数\
	required int32 randomNum = 1; \
// 商品ID\
	required int32 itemId = 2; \
}\
\
// 返回 七福神商城物品购买\
message SevenGodsShopBuy_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 商品ID\
	optional int32 itemId = 2; \
// 奖励信息\
	optional Reward reward = 3; \
// 剩余判金数量\
	optional int32 lastMoney = 4; \
// 剩余锤子数量\
	optional int32 lastHammer = 5; \
}\
\
// 七福神商城商品刷新\
message SevenGodsShopReflush {\
// 随机数\
	required int32 randomNum = 1; \
}\
\
// 返回 七福神商城商品刷新\
message SevenGodsShopReflush_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 商城信息\
	optional SevenGodsShopInfo info = 2; \
// 剩余判金数量\
	optional int32 lastMoney = 3; \
}\
\
// 绑定推特帐号领奖\
message FacebookRewardGet_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 2; \
// 奖励领取次数\
	optional int32 rewardGetTimes = 3; \
}\
\
// 月卡首充奖励领取\
message FirstMonthCardRewardGet_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 2; \
}\
\
// fackbook点击返回\
message FacebookButtonClick_S2C {\
// 错误号\
	required bool facebookRewardCanGet = 1; \
}\
\
//Reward推送\
message Reward_S2C_Push{\
//奖励信息\
	required Reward reward=1;\
}\
\
//购买圣诞活动物品\
message BuyChristMasMall_2018\
{\
//ChristmasBuy2017表 主键ID\
	required int32 mallId=1;\
}\
///购买圣诞活动物品\
message BuyChristMasMall_2018_S2C\
{\
// 错误号\
	required int32 errCode = 1; \
//当前判金\
	optional int32 curMoney=2;\
//扣除的材料(糖果)\
	optional Material costMaterial=3;\
// 奖励\
	optional Reward reward = 4; \
//购买的圣诞活动商品 商品表主键ID:购买次数\
	repeated ProtoHashInt2Int buyChrimasMallGoods=5;\
	\
}\
//年玉活动条件变化推送\
message NewYearMallTaskProcessChange_S2C_Push\
{\
//购年玉活动条件值 活动任务类型ID:条件值\
	repeated ProtoHashInt2Int newYearMallTaskProcess=5;\
}\
\
//圣诞大合战活动大合战排名推送\
message NewYearFamilyWarRankChange_S2C_Push\
{\
//领取圣诞活动大合战排名 -1 没有排名\
	required int32 familyWarRank=2;\
//大合战输赢 0:输 1:赢\
	required int32 familyWarWinOrFail=7;\
\
//是否领取圣诞活动大合战奖 1:领取0:未领取\
	required int32 IsGetFamilyWarRankReweard=3;\
}\
\
\
//领取年玉活动任务奖励\
message TakeNewYearMallTaskReward\
{\
//年玉活动ID\
	required int32 mallId=1;\
}\
\
//领取年玉活动任务奖励\
message TakeNewYearMallTaskReward_S2C\
{\
// 错误号\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 4; \
//领取的年玉活动奖励\
	repeated int32 takedNewYearMallReeward=6;	\
}\
\
\
//领取圣诞节大合战活动奖励\
message TakeNewYearFamilyWarReward_S2C\
{\
// 错误号\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 4; \
//是否领取圣诞活动大合战奖 1:领取0:未领取\
	optional int32 IsGetFamilyWarRankReweard=3;	\
}\
\
//屏蔽聊天的玩家信息\
message GetDisChatPlayers_S2C\
{\
//屏蔽聊天的玩家信息\
	repeated SimplePlayer simplePlayers=1;\
}\
\
//屏蔽聊天玩家\
message DisChatPlayer{\
//屏蔽玩家ID\
	required int32 targetUID=1;\
//0:移除 1:新增\
	required int32 type=2;\
}\
//屏蔽聊天玩家\
message DisChatPlayer_S2C{\
//屏蔽聊天的玩家ID\
	repeated int32 disChatUIDs=1;\
}\
\
//获取全服最高战力\
message GetServerMaxCapa_S2C{\
	optional ProtoHashInt2String serverMaxCapa=1;\
}\
\
\
//获取其他玩家攻击信息\
message GetOtherPlayerFormationAtkInfo\
{\
//目标id\
	required int32 targetUid=1;\
//布阵类型\
	required FormationEnum formationEnum=2;\
}\
\
//获取其他玩家攻击信息\
message GetOtherPlayerFormationAtkInfo_S2C\
{\
//目标id\
	required int32 targetUid=1;\
//布阵类型\
	required FormationEnum formationEnum=2;\
//该玩家攻击信息\
	optional OtherPlayerAtkInfo otherPlayerAtkInfo=3;\
}\
\
\
//购买商城物品\
message BuyShopItem\
{\
//shop表主键ID\
	required int32 shopItemId=1;\
//数量\
	required int32 num=2;\
}\
\
//购买商城物品\
message BuyShopItem_S2C\
{\
//错误号\
	required int32 errCode=1;\
//购买到的Item\
	optional Reward reward=2;\
//购买的商场物品\
	optional ShopItem shopItem=3;\
//扣除的物品\
	optional Cost cost=4;\
}\
\
//商城信息变化推送\
message ShopDataChange_S2C_Push\
{\
//商城\
	required Shop shops=9;\
}\
//商城刷新\
message ShopRefresh\
{\
//商城类型\
	required int32 shopType=1;\
}\
\
//商城刷新\
message ShopRefresh_S2C\
{\
//错误号\
	required int32 errCode=1;\
//商城\
	optional Shop shops=9;\
//扣除的物品\
	optional Cost cost=4;\
}\
\
//领取观看广告奖励\
message TakeWatchAdsReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//领奖次数\
	required int32 takeWatchAdsRewardTimes=2;\
//奖励信息\
	optional Reward reward=3;\
}\
\
\
//获取卡牌配对信息\
message GuessCardInfo_S2C\
{\
//卡牌配对信息\
	optional GuessCard guessCard=1;\
}\
//卡牌配对 开牌\
message GuessCardOpen\
{\
//开启的索引\
	required int32 cardIndex=1;\
}\
//卡牌配对 开牌\
message GuessCardOpen_S2C\
{\
//错误号\
	required int32 errCode=1;\
//卡牌配对信息\
	optional GuessCard guessCard=2;\
//奖励信息\
	optional Reward reward=3;\
//配对是否成功\
	optional bool isSuccess=4;\
//开启的索引\
	optional int32 cardIndex=5;\
}\
\
//卡牌配对 购买次数\
message GuessCardBuyTimes_S2C\
{\
//错误号\
	required int32 errCode=1;\
//卡牌配对信息\
	optional GuessCard guessCard=2;\
//奖励信息\
	optional Cost cost=3;\
}\
\
\
import 'Msg.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
\
\
\
//=====================武将===========================\
//武将阵型变化\
message LeaderFormationChanged\
{\
//0 攻击 1 防守 2 竞技场\
	required int32 type=1;\
//阵容信息\
	repeated Formation formation=2;\
//竞技场布阵技能释放方式(0:智能 1:顺序 )\
	optional int32 arenaFormationSkillFunction=3;\
}\
\
//武将阵型变化\
message LeaderFormationChanged_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//0 攻击 1 防守 2 竞技场\
	optional int32 type=2;\
//阵容信息\
	repeated Formation formation=3;\
}\
\
\
//武将升级\
message UpgradeLeader\
{\
//武将ID\
	required int32 leaderId=1;\
// 升级类型 1.升级1级 10.升级10级\
	required int32 upgradeType = 2; \
}\
//武将升级\
message UpgradeLeader_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的武将\
	required LeaderInfo leader=2;\
//玩家当前铜币\
	optional int32 curCoin=3;\
//使用后剩余的材料\
	optional Material material=4;\
\
}\
\
//武将升星\
message UpgradeLeaderStar\
{\
//武将ID\
	required int32 leaderId=1;\
}\
\
//武将升星\
message UpgradeLeaderStar_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最新的吞噬后的武将信息\
	required LeaderInfo leader=2;\
//使用后剩余的碎片\
	repeated Part parts=3;\
//使用后剩余的材料\
	repeated Material materials=4;\
//玩家当前铜币\
	optional int32 curCoin=5;\
}\
\
//武将进化\
message AdvancedLeader\
{\
//武将ID\
	required int32 leaderId=1;\
}\
\
\
//武将进化\
message AdvancedLeader_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最新的吞噬后的武将信息\
	required LeaderInfo leader=2;\
//使用后剩余的材料\
	repeated Material materials=3;\
//玩家当前铜币\
	optional int32 curCoin=4;\
}\
\
\
\
//升级武将天赋\
message UpgradeLeaderTalentSkill\
{\
//武将ID\
	required int32 leaderId=1;\
//天赋ID\
	required int32 skillId=2;\
}\
\
//升级武将天赋\
message UpgradeLeaderTalentSkill_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最新的吞噬后的武将信息\
	required LeaderInfo leader=2;\
//使用后剩余的材料\
	optional Material material=3;\
}\
\
//武将合成\
message CompositionLeader\
{\
//武将类型ID\
	required int32 leaderTypeId=1;\
}\
//武将合成\
message CompositionLeader_S2C\
{\
//错误号\
	required int32 errCode=1;\
//武将信息\
	optional LeaderInfo leader=2;\
//使用后剩余的碎片\
	optional Part part=3;\
//玩家当前铜币\
	optional int32 curCoin=4;\
}\
\
\
//装备强化\
message UpgrageEquip\
{\
//装备ID\
	required int32 id=1;\
//吃的装备ID\
	repeated int32 eatEquipIds=2;\
//\
	required bool isMoney=3;\
}\
\
\
//装备强化返回\
message UpgrageEquip_S2C\
{\
\
//错误号\
	required int32 errCode=1;\
//装备信息\
	optional Equip equipInfo=2;\
//吃的装备ID,客户端自行删除相应对象\
	repeated int32 eatEquipIds=3;\
}\
\
//装备重铸\
message CompositionEquip\
{\
//要重铸的装备ID\
	required int32 id=1;\
//吃的装备ID\
	repeated int32 eatEquipIds=2;\
	required bool isMoney=3;\
}\
//装备重铸\
message CompositionEquip_S2C\
{\
//错误号\
	required int32 errCode=1;\
//成功还是失败\
	required bool isSuccess=2;\
//新增的装备信息 如果失败则该属性为null\
	optional Equip equipInfo=3;\
//吃的装备ID,客户端自行删除相应对象\
	repeated int32 eatEquipIds=4;\
//吃掉的材料，返回终值\
	repeated Material eatMaterials=5;\
}\
\
//换装\
message WearEquip\
{\
//武将ID\
	required int32 leaderId=1;\
//装备ID 如果当前装备已经装备到这个武将，则为卸下\
	required int32 equipId=2;\
}\
//换装\
message WearEquip_S2C\
{\
//错误号\
	required int32 errCode=1; \
//装备后的武将信息\
	optional LeaderInfo leaderInfo=2;\
//变化的装备信息\
	repeated Equip changedEquipInfo=3;\
\
}\
\
//出售装备\
message SellEquip{\
//装备ID\
	required int32 id=1;\
}\
//出售装备\
message SellEquip_S2C{\
//错误号\
	required int32 errCode=1; \
//装备ID\
	required int32 id=2;\
//当前铜钱\
	optional int32 curCoin=5;\
} \
\
//武将信息发生变化 服务器推送\
message LeaderAttrChanged_S2C\
{\
//武将信息\
	repeated LeaderInfo leaderInfo=1;\
}\
\
//保存奉行\
message SaveBugy\
{\
//奉行对应阵型类型\
	required int32   bugyType=1;\
//奉行\
	repeated  Bugy   bugy =2;\
\
}\
//保存奉行\
message SaveBugy_S2C\
{	\
//错误号\
	required int32 			errCode 		=1; \
//奉行对应阵型类型\
	optional int32   		bugyType		=2;\
//武将信息\
	repeated LeaderInfo 	LeaderInfo 		=3;\
//士气\
	optional float   		angery			=4;\
//奉行\
	repeated  Bugy   bugy =5;\
}\
\
\
//升级奉行\
message UpgradeBugy\
{\
//奉行对应阵型类型\
	required int32   bugyType=1;\
//奉行位置\
	required int32   position =2;\
}\
\
//升级奉行\
message UpgradeBugy_S2C\
{	\
//错误号\
	required int32 errCode=3; \
//奉行对应阵型类型\
	optional int32   bugyType=1;\
//武将信息\
	repeated LeaderInfo leaderInfo=2;\
//士气\
	optional float   angery=4;\
//奉行\
	optional  Bugy   bugy =5;\
//当前铜币\
	optional int32 coin=6;\
//当前兵粮\
	optional int32 food=7;\
//使用后的材料\
	optional Material curMaterial=8;\
\
}\
\
//装备升星\
message UpgradeEquipStar\
{\
//装备实例ID\
	required int32 equipInstId=1;\
}\
//装备升星返回\
message UpgradeEquipStar_S2C\
{\
//错误号\
	required int32 errCode=1; \
//是否成功\
	optional bool isSuccess=2;\
//变化的装备\
	optional Equip equip=3;\
//使用后的材料\
	optional Material curMaterial=4;\
//当前铜钱\
	optional int32 curCoin=5;\
//变化的武将信息\
	optional LeaderInfo leaderInfo=6;\
}\
\
//装备降星\
message DegradeEquipStar\
{\
//装备实例ID\
	required int32 equipInstId=1;\
}\
//装备降星返回\
message DegradeEquipStar_S2C\
{\
//错误号\
	required int32 errCode=1; \
//变化的装备\
	optional Equip equip=2;\
//返回的材料\
	optional Material curMaterial=3;\
//变化的武将信息\
	optional LeaderInfo leaderInfo=4;\
}\
\
//开宝箱\
message OpenBox\
{\
//1 一次， 2 十次\
	required int32 type=1; \
}\
\
//开宝箱\
message OpenBox_S2C\
{\
//错误号\
 	required int32 errorCode=1;\
//抽装备信息\
 	optional SwearEquipInfo swearEquipInfo=6;\
//奖励\
    repeated Reward reward=3;\
//当前判金\
    optional int32 curMoney=4;\
//当前钥匙\
	optional int32 diffBoxKey=5;\
}\
\
\
//兑换装备\
message ExchangeEquip\
{\
//主键id\
	required int32 mainId=1;\
}\
\
//兑换装备\
message ExchangeEquip_S2C\
{\
//错误号\
	required int32 errorCode=1;\
\
//碎片\
	optional Part part=3;\
//合成后的东西\
	optional Reward reward=4;\
\
}\
\
//武将重置\
message ResetLeader\
{\
//武将ID\
	required int32 leaderId=1;\
}\
//武将重置\
message ResetLeader_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的武将\
	required LeaderInfo leader=2;\
//玩家当前铜币\
	optional int32 curCoin=3;\
//当前判金\
	optional int32 curMoney=4;\
//返还的材料（终值）\
	repeated Material material=5;\
\
}\
\
//添加武将觉醒普通家宝ID\
message AddLeaderAeakenPrecious\
{\
//武将ID\
	required int32 leaderId=1;\
//普通家宝ID\
	required int32 preciousId=2;\
}\
\
//添加武将觉醒普通家宝ID\
message AddLeaderAeakenPrecious_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的武将\
	optional LeaderInfo leader=2;\
//变化的普通家宝\
	optional FunctionsItem functionsItem=3;\
}\
//武将觉醒\
message AwakeLeader\
{\
//武将ID\
	required int32 leaderId=1;\
}\
//武将觉醒返回\
message AwakeLeader_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的武将\
	optional LeaderInfo leader=2;	\
}\
\
//武将觉醒材料合成\
message LeaderAeakenPreciousCompose\
{\
//材料ID\
	required int32 itemId=1;\
}\
\
//武将觉醒材料合成返回\
message LeaderAeakenPreciousCompose_S2C\
{\
//错误号\
	required int32 errCode=1;\
//合成的材料ID\
	required int32 composeItemId=2;\
//当前铜钱\
	required int32 curCoin=3;\
//变化的功能道具\
	repeated FunctionsItem functionsItem=4;\
}\
\
\
//解锁专宝\
message UnlockCowry\
{\
//武将ID\
	required int32 leaderId=1;\
}\
\
//解锁专宝\
message UnlockCowry_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的武将\
	required LeaderInfo leader=2;\
//当前判金\
	optional int32 curMoney=3;\
//变化的材料\
	repeated Material changedMaterial=4;\
}\
\
//解锁/锁定专宝随机属性\
message LockCowryRandomAtt\
{\
//武将ID\
	required int32 leaderId=1;\
//随机属性ID\
	required int32 randomAttId=2;\
}\
\
//解锁/锁定专宝随机属性\
message LockCowryRandomAtt_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的专宝随机属性\
	required CowryInfo cowry=2;\
//当前判金数\
	optional int32 curMoney=3;\
}\
\
//洗练专宝\
message RefreshCowry\
{\
//武将ID\
	required int32 leaderId=1;\
//消耗类型,1普通,2判金\
	required int32 costType=2;\
}\
\
//洗练专宝\
message RefreshCowry_S2C\
{\
//错误号\
	required int32 errCode=1;\
//返回的武将\
	required LeaderInfo leader=2;\
//当前判金\
	optional int32 curMoney=3;\
//变化的材料\
	repeated Material changedMaterial=4;\
}\
//计算武将对应等级数据\
message GetLeaderNextInfo{\
//武将ID\
	required int32 leaderId=1;\
//武将等级\
	required int32 level=2;\
//武将星级\
	required int32 star=3;\
//进阶等级\
	required int32 advanceLv=4;\
}\
//计算武将对应等级数据\
message GetLeaderNextInfo_S2C{\
//错误号\
	required int32 errCode=1;\
//武将ID\
	required int32 leaderId=2;\
//武将等级\
	required int32 level=3;\
//武将星级\
	required int32 star=4;\
//进阶等级\
	required int32 advanceLv=5;\
//武将属性信息\
	optional LeaderAtkProp prop=6;\
}\
\
//魂石升星\
message GemStoneUpgradeStar\
{\
//魂石实例ID列表\
	repeated int32 instId=1;\
	\
}\
\
//魂石升星\
message GemStoneUpgradeStar_S2C\
{\
//错误号\
	required int32 errCode=1;\
//当前铜钱\
	optional int32 curCoin=2;\
//消失的魂石列表\
	repeated int32 delInstId=3;	\
//升星成功的魂石\
	optional GemStone upgradeStarGemStone=4;\
//变化的武将\
	repeated LeaderInfo changedLeaders=5;\
}\
\
//魂石镶嵌\
message WearGemStone\
{\
//魂石实例ID\
	required int32 instId=1;\
//镶嵌的武将ID\
	required int32 leaderId=2;\
//镶嵌还是卸下\
	optional bool isWear=6;\
}\
\
//魂石镶嵌\
message WearGemStone_S2C\
{\
//错误号\
	required int32 errCode=1;\
//变化的魂石信息\
	repeated GemStone changedGemStone=4;\
//变化的武将\
	repeated LeaderInfo changedLeaders=5;\
//镶嵌还是卸下\
	optional bool isWear=6;\
}\
\
//武将体力推送Pojo\
message LeaderStrengthPojo{\
//武将ID\
	required int32 leaderId=1;\
//行动力\
	required int32 strength=2;\
}\
\
//武将行动力变化推送\
message LeaderStrength_S2C_Push\
{\
//变化的武将列表\
	repeated LeaderStrengthPojo leaderStrengthPojos=1;\
}\
\
\
//======================灵兽=============================================\
\
//灵兽变化推送\
message GhostMonsterChange_S2C_Push\
{\
//灵兽信息\
	required GhostMonster ghostMonster=4;\
}\
\
\
//灵兽升级\
message GhostMonsterUpgrade{\
//灵兽\
	required int32 ghostMonsterId=1;\
//升级次数\
	required int32 upgradeTimes=2;\
}\
\
//灵兽升级\
message GhostMonsterUpgrade_S2C{\
//错误号\
	required int32 errCode=1;\
//灵兽\
	required int32 ghostMonsterId=2;\
//升级次数\
	required int32 upgradeTimes=3;\
//灵兽信息\
	optional GhostMonster ghostMonster=4;\
//当前铜钱\
	required int32 curCoin=5;\
//消耗后的材料\
	repeated Material costMaterial=6;\
}\
\
\
//灵兽升星\
message GhostMonsterUpgradeStar{\
//灵兽\
	required int32 ghostMonsterId=1;\
}\
\
//灵兽升星\
message GhostMonsterUpgradeStar_S2C{\
//错误号\
	required int32 errCode=1;\
//灵兽\
	required int32 ghostMonsterId=2;\
//灵兽信息\
	optional GhostMonster ghostMonster=4;\
//当前铜钱\
	required int32 curCoin=5;\
//消耗后的材料\
	optional Material costMaterial=6;\
//消耗后的碎片\
	optional Part costPart=7;\
}\
\
//上阵召唤兽\
message GhostMonsterFormationChange\
{\
//灵兽\
	required int32 ghostMonsterId=1;\
//哪个布阵位置上 0:无 1:布阵 201:灵佑左  202:灵佑右\
	required int32 formationType=2;\
}\
\
//上阵召唤兽(相关武将和下阵的召唤兽通过推送  如果有UI展示就找我改一下)\
message GhostMonsterFormationChange_S2C\
{\
//错误号\
	required int32 errCode=1;\
//灵兽\
	required int32 ghostMonsterId=2;\
////在哪个布阵位置上 0:无 1:布阵 201:灵佑左  202:灵佑右 其他:武将ID(>20000)\
	required int32 formationType=3;\
//灵兽信息\
	optional GhostMonster ghostMonster=4;\
}\
\
\
//灵兽召唤\
message SwearGhostMonster{\
//召唤次数\
	required int32 swearTimes=1;\
}\
\
\
//灵兽召唤\
message SwearGhostMonster_S2C{\
//错误码\
	required int32 errCode=1;\
//召唤次数\
	required int32 swearTimes=2;\
//增加的物品\
	repeated Item item=3;\
//神兽召唤信息\
	optional SwearGhostMonsterInfo swearInfo=4;\
//当前判金\
	required int32 curMoney=7;\
//消耗的道具(终值)\
	optional Material costMaterial=8;\
//本轮灵兽抽卡已使用免费次数\
	optional int32 swearGhostMonsterFreeTime=9;\
}\
\
//灵兽合成\
message CompositionGhostMonster\
{\
//灵兽ID\
	required int32 ghostMonsterId=1;\
}\
//灵兽合成\
message CompositionGhostMonster_S2C\
{\
//错误号\
	required int32 errCode=1;\
//灵兽信息\
	optional GhostMonster ghostMonster=2;\
//使用后剩余的碎片\
	optional Part part=3;\
//玩家当前铜币\
	optional int32 curCoin=4;\
}\
\
//第一次免费领取灵兽\
message TakeGhostMonster\
{\
//灵兽ID\
	required int32 ghostMonsterId=1;\
}\
\
//第一次免费领取灵兽\
message TakeGhostMonster_S2C\
{\
//错误号\
	required int32 errCode=1;\
//灵兽信息\
	optional GhostMonster ghostMonster=2;\
//玩家免费领取的召唤兽ID\
	optional int32 fristTakeGhostMonsterId=4;\
//如果灵兽存在了就给对应的碎片\
	optional Part part=5;\
}\
\
\
//武将等级突破\
message LeaderLevelBreak\
{\
//武将ID\
	required int32 leaderId=2;\
}\
//武将等级突破\
message LeaderLevelBreak_S2C\
{\
//错误号\
	required int32 errCode=1;\
//武将\
	optional LeaderInfo leader=2;\
//扣除后的碎片\
	repeated Part costPart=3;\
}\
\
//武将转生到LG\
message LeaderUpgradeLG{\
//武将ID\
	required int32 leaderId=1;\
//转生目标阶段(网不好能防止过多花费)\
	required int32 lgStep=2;\
}\
\
//武将转生到LG\
message LeaderUpgradeLG_S2C{\
//错误号\
	required int32 errCode=1;\
//武将\
	optional LeaderInfo leader=2;\
//扣除的Item\
	optional Cost cost=3;\
}\
\
\
\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
//========================战斗录像用============================\
\
//message RemoveActiveSkillDuringBufferCommand\
//{\
//	optional int32 bufferId = 1;\
//}\
\
//message OneHurtCommand\
//{\
//	optional int32 srcTeamId = 1;\
//	optional int32 desTeamId = 2;\
//	optional bool isArmyFeature = 3;\
//}\
\
//message UnitMoveCommand\
//{\
//	optional int32 srcTeamId = 1;\
//	optional int32 moveType = 2;\
//	optional int32 desTeamId = 3;\
//	optional Vector3 pos = 4;\
//}\
\
//message UnitAttackCommand\
//{\
//	optional int32 unitId = 1;\
//	optional int32 desUnitId = 2;\
//}\
\
//message UnitIdleCommand\
//{\
//	optional int32 unitId = 1;\
//}\
\
//message UnitPushIdleCommand\
//{\
//	optional int32 unitId = 1;\
//}\
\
//message BattleLeader\
//{\
//	optional int32 side = 1;\
//	optional Vector3 pos = 2;\
//	optional int32 aiId = 3;\
//	optional int32 skillAiId = 4;\
//	optional LeaderInfo leaderInfo = 5;\
//	optional bool isMainLeader = 6;\
//	optional int32 skillSort = 7;\
//	optional bool isBigHome = 8;\
//}\
\
//message RecordBattle\
//{\
//	optional int32 version = 1;// 版本\
//	repeated BattleLeader leaderList = 2;\
//	repeated CommandBase commandList = 3; // 命令列表\
//	optional bool isFromPve = 4; // 是否来自pve\
//	optional int32 levelId = 5; // 关卡id\
//	optional int32 randomSeed = 6; // 随机种\
//	optional int32 mainBuildLevel = 7;\
//}\
\
//========================网络对战用============================\
message PvpBattleBegin\
{\
	optional int32 noUse = 1; \
}\
\
message PvpBattleBeginS2c\
{\
	optional int32 noUse = 1; \
}\
\
message Vector3\
{\
	optional float x = 1;\
	optional float y = 2;\
	optional float z = 3;\
}\
\
message CommandBase\
{\
// 逻辑命令类型\
	optional int32 type = 1;\
	//optional int32 seq = 2;// 时间序号\
	//optional int32 idx = 3;// 包序号\
// 数据\
	optional bytes data = 4;\
}\
\
message MoveCommand\
{\
	optional int32 srcTeamId = 1;\
	optional Vector3 pos = 2;\
}\
\
message AttackCommand\
{\
	optional int32 srcTeamId = 1;\
	optional int32 desTeamId = 2;\
}\
\
message SkillCommand\
{\
	optional int32 srcTeamId = 1;\
	optional Vector3 skillDirEuler = 2;\
	repeated int32 targetList = 3;\
}\
\
message GhostMonsterCommand\
{\
	optional int32 unitId = 1;\
}\
\
message PvpServerCollectionCommand\
{\
// 命令列表\
	repeated CommandBase commandList = 1; \
	//required int32 seq = 2;\
}\
\
//enum LeaderFamily\
//{ \
//	 enNone = 0;\
//	 enZhiTian = 1;\
//	 enWuTian = 2;\
//	 enDechuan = 3;\
//	 enFengchen =4;\
//	 enMaoLi = 5;\
//	 enShangShan = 6;\
//	 enDongDao = 7;\
//	 enXiDao = 8;\
//}\
\
//message BattleLeaderInfo\
//{\
//	required int32 Id = 1;\
//	required int32 Gender = 2;\
//	required int32 LeaderType = 3;\
//	required int32 LeaderLevel = 4;\
//	required int32 Hp = 5;\
//	required int32 ATK = 6;\
//	required int32 Defense = 7;\
//	required int32 Spell = 8;\
//	required int32 SpellDefense = 9;\
//	required LeaderFamily leaderFType = 10;\
//	required int32 aiId = 11;\
//	required int32 skillOrder = 12;\
//	required int32 force = 13;\
//	required int32 guide = 14;\
//	required int32 poly = 15;\
//	repeated TalentSkill talentSkill = 16;\
//	required float ciriticalRate = 17;\
//	required float dodgeRate = 18;\
//	required float hitRate = 19;\
//	required float atkSpeed = 20;\
//	required float moveSpeed = 21;\
//	required float reHpSpeed = 22;\
//	required bool isBigHome = 23;\
//	required Vector3 initPos = 24;\
//	required int32 advanceLevel = 25;\
//	required int32 star = 26;\
//	optional int32 curHp = 27;\
//	optional float spellCriticalRate = 28;\
//	optional float spellResistRate = 29;\
//	optional float spellPenetrateRate = 30;\
//}\
\
message PvpBattleReady\
{\
	repeated string leaderList = 1;\
}\
\
message PvpBattleReadyS2C\
{\
	repeated PvpBattleReady player = 1;\
	optional int32 mySideId = 2;\
	//optional int32 randomSeed = 3;\
}\
\
message UDPPacket\
{\
// 1 为消息包 2 为ack包\
	optional int32 type = 1; \
	optional bytes data = 2;\
}\
\
message UDPDataPacket\
{\
// 序号\
	optional int32 index = 1; \
// 实际消息 包含消息号和消息体\
	optional bytes data = 2; \
}\
\
message UDPAckPacket\
{\
// 序号\
	optional int32 index = 1; \
}\
\
message UDPClientServerPacket\
{\
// 1 为client发起连接 2 为server响应连接 3 为client确认连接 4 为消息体 5 为关闭消息 6 为响应关闭消息\
	optional int32 type = 1; \
	optional bytes data = 2;\
}\
\
//========================反作弊录像用============================\
//message RecordCommandBase\
//{\
//	optional int32 type = 1;// 逻辑命令类型\
//	optional float time = 2;// 时间\
//	optional bytes data = 3;// 数据\
//}\
\
message RecordAddUnit\
{\
	optional bool isBuilding = 1;\
	optional int32 buildOrLeaderType = 2;\
	optional int32 unitId = 3;\
	optional float unitHp = 4;\
	optional int32 sideId = 5;\
}\
\
message RecordHpChange\
{\
	optional int32 srcUnit = 1;\
	optional int32 desUnit = 2;\
	optional float desHp = 3;\
	optional int32 hpChangeReason = 4;\
}\
\
message RecordCastSkill\
{\
	optional int32 srcUnit = 1;\
	repeated int32 targetList = 2;\
	optional int32 skillId = 3;\
}\
\
message RecordPassiveSkill\
{\
	optional int32 srcUnit = 1;\
	optional int32 talentId = 2;\
	optional bool active = 3;\
	optional int32 desUnit = 4;\
}\
\
//message RecordIntoBattleParam\
//{\
//	optional int32 battleType = 1;\
//	optional int32 randomSeed = 2;\
//	optional int32 levelId = 3;\
//	optional int32 activityId = 4;\
//	optional EnterYanwuChallenge_S2C boxData = 5;\
//	optional int32 enterBattleCityId = 6;\
//	optional int32 enterBattleAreaId = 7;\
//	optional bool isRevenge = 8;\
//	repeated AILeader revengeLeaderList = 9;\
//	optional int32 revengeOtherMainCityLevel = 10;\
//	optional int32 revengeBanShoLevel = 11;\
//	optional int32 revengeBugyBuildLevel = 12;\
//	optional int32 revengeMsgId = 13;\
//	optional TournamentMatch_S2C rankData = 14;\
//	optional int32 arenaScroe = 15;\
//	optional bool isPromotion = 16;\
//	optional FamilyWarMatch_S2C familyWarData = 17;\
//	optional OtherPlayerAtkInfo infiniteCityOtherPlayerinfo = 18;\
//	repeated Formation ourTeamFormation = 19;\
//	optional float friendPositionX = 20;\
//	optional float friendPositionY = 21;\
//	optional LeaderInfo friendLeaderInfo = 22;\
//	optional int32 friendId = 23;\
//	optional BattleInitInfo netpvpInitInfo = 24;\
//}\
\
//message RecordBattleLeaderInfo\
//{\
//	optional int32 id = 1;\
//	optional int32 gender = 2;\
//	optional int32 leaderType = 3;\
//	optional int32 leaderLevel = 4;\
//	optional int32 hp = 5;\
//	optional int32 curHp = 6;\
//	optional int32 atk = 7;\
//	optional int32 def = 8;\
//	optional int32 spell = 9;\
//	optional int32 spellDef = 10;\
//	optional int32 leaderFamilyType = 11;\
//	optional int32 aiId = 12;\
//	optional int32 skillOrder = 13;\
//	optional int32 force = 14;\
//	optional int32 guide = 15;\
//	optional int32 poly = 16;\
//	repeated TalentSkill talentSkillList = 17;\
//	optional float ciriticalRate = 18;\
//	optional float dodgeRate = 19;\
//	optional float hitRate = 20;\
//	optional float spellCriticalRate = 21;\
//	optional float spellResistRate = 22;\
//	optional float spellPenetrateRate = 23;\
//	optional float atkSpeed = 24;\
//	optional float moveSpeed = 25;\
//	optional float reHpSpeed = 26;\
//	optional bool isBigHome = 27;\
//	optional Vector3 initPos = 28;\
//	optional int32 advanceLevel = 29;\
//	optional int32 star = 30;\
//}\
\
//message RecordBattleComputerTeamData\
//{\
//	optional bool isMainLeader = 1;\
//	optional BattleLeaderInfo leaderInfo = 2;\
//	optional int32 birthPoint = 3;\
//	optional bool isBoss = 4;\
//}\
\
//message RecordOneWaveTeamData\
//{\
//	repeated RecordBattleComputerTeamData oneWaveTeamList = 1;\
//}\
\
//message RecordSideBattleInfo\
//{\
//	repeated BattleLeaderInfo teamList = 1;\
//	repeated RecordOneWaveTeamData computerTeamList = 2;\
//	optional int32 donjonLevel = 3;\
//	optional int32 banshoLevel = 4;\
//	optional int32 budyBuildLevel = 5;\
//	optional float angryNum = 6;\
//}\
\
//message BattleCheckRecord\
//{\
//	optional int64 battleTime = 1;\
//	optional string serverName = 2;\
//	optional string usrName = 3;\
//	optional RecordIntoBattleParam intoBattleMsg = 4;\
//	optional RecordSideBattleInfo player1Info = 5;\
//	optional RecordSideBattleInfo player2Info = 6;\
//	repeated RecordCommandBase recordCommandList = 7;\
//}\
\
message DebugCommand\
{\
    //optional string command = 1;\
    optional string ret = 2;\
    optional bytes data = 3;\
}\
\
message DebugPullCommand\
{\
    optional string fileName = 1;\
    optional bytes data = 2;\
}import 'Msg.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
//=====================建筑==============================\
\
//获取建筑信息\
message GetBuildingInfo\
{\
//建筑ID\
	optional int32 buildID=1;\
}\
//获取建筑信息返回\
message GetBuildingInfo_S2C\
{\
//返回的建筑信息\
	optional BuildingInfo buildingInfo=1;\
}\
\
//建造建筑\
message Building_Create\
{\
//建筑类型\
	optional int32 buildType=1; \
//材料不够是否使用金币\
	optional bool isMoney=2;\
}\
//建造建筑返回\
message Building_Create_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional  int32 errCode=1;\
//建筑\
	optional BuildingInfo buildingInfo=2;\
//主程当前经验\
	optional int32 mainBuildExp=3;\
}\
//升级建筑\
message Building_Upgrade\
{\
//建筑类型\
	optional int32 buildType=1; \
//材料不够是否使用金币\
	optional bool isMoney=2;\
}\
//升级建筑返回\
message Building_Upgrade_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional  int32 errCode=1;\
//建筑\
	optional BuildingInfo buildingInfo=2;\
//主程当前经验\
	optional int32 mainBuildExp=3;\
}\
\
//升级天守阁返回\
message UpgradeMainBuild_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional  int32 errCode=1;\
//建筑\
	optional BuildingInfo buildingInfo=2;\
}\
\
\
\
//建筑建造或升级完成客户端调用返回\
message BuildCreateOrUpgradeEnd\
{\
//建筑ID\
	optional int32 buildId=1; \
}\
\
//建筑建造或升级完成客户端调用返回\
message BuildCreateOrUpgradeEnd_S2C\
{\
//建筑信息\
	optional BuildingInfo buildings=1; \
}\
//=====================建筑功能===========================\
\
//征收铜钱\
message HarvestCoin\
{\
//建筑iD\
	required int32 buildId=1;\
}\
\
//征收铜钱返回，铜钱数量不走推送消息\
message HarvestCoin_S2C\
{\
//当前铜钱数量\
	optional int32 curCoinNum=1;\
//最后征收时间\
	optional int64 lastGetTime=2;\
//建筑ID\
	required int32 buildId=3;\
}\
\
message HarvestFood\
{\
//建筑ID\
	required int32 buildId=1;\
}\
//征收铜钱返回，粮食数量不走推送消息\
message HarvestFood_S2C\
{\
//当前粮食数量\
	optional int32 curFarmNum=1;\
//最后征收时间\
	optional int64 lastGetTime=2;\
//建筑ID\
	required int32 buildId=3;\
}\
\
//建筑征收物品\
message BuildHarvestItem\
{\
//建筑ID\
	required int32 buildId=1;\
}\
//建筑征收物品\
message BuildHarvestItem_S2C\
{\
//征收信息\
	optional Reward reward=1;\
//最后征收时间\
	optional int64 lastGetTime=2;\
//建筑ID\
	required int32 buildId=3;\
}\
\
\
\
//科技升级\
message Tech_Upgrade\
{\
//兵种ID\
	required int32 memberId=1;\
//升级分组ID\
	required int32 groupId=3;\
}\
//科技升级返回\
message Tech_Upgrade_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional  int32 errCode=1;\
//科技\
	optional TechnologyInfo technologyInfo=2;\
//当前铜币\
	optional int32 curCoin=3;\
//当前锤子\
	optional int32 curHammer=4;\
}\
\
//天赋升级\
message Gift_Upgrage\
{\
//兵种ID\
	required int32 giftInstId=1;\
}\
//天赋升级返回\
message Gift_Upgrage_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional  int32 errCode=1;\
//天赋\
	optional GiftInfo giftInfo=2;\
//当前铜钱\
	optional int32 curCoin=3;\
//当前锤子\
	optional int32 curHammer=4;\
}\
\
//科技重置\
message Tech_Reset\
{\
//兵种ID\
	required int32 memberId=1;\
}\
\
//科技重置返回\
message Tech_Reset_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional  int32 errCode=1;\
//科技\
	optional TechnologyInfo technologyInfo=2;\
//当前铜币\
	optional int32 curCoin=3;\
//当前锤子\
	optional int32 curHammer=4;\
//当前判金\
	optional int32 curMoney=5;\
//重置的练兵场天赋\
	repeated GiftInfo resetdGiftInfos=6;\
//重置的练兵场技能\
	repeated TalentInfo resetdTalentInfos=7;\
}\
\
//兵种技能升级\
message Talent_Upgrage\
{\
//兵种ID\
	required int32 memberId=1;\
//天赋ID\
	required int32 giftType=2;	\
}\
//兵种技能升级\
message Talent_Upgrage_S2C\
{\
//操作结果 0：成功 其他：错误码\
	optional int32 errCode=1;\
//技能\
	optional TalentInfo talentInfo=2;\
//当前铜钱\
	optional int32 curCoin=3;\
//当前锤子\
	optional int32 curHammer=4;\
}\
\
\
\
\
\
\
\
//升级功能建筑\
message UpgradeFunctionsBuild\
{\
//功能建筑ID\
	required int32 buildId=1;\
}\
\
//升级功能建筑返回\
message UpgradeFunctionsBuild_S2C\
{\
//错误号\
	required int32 errCode=1;\
//更新后的建筑\
	optional FunctionsBuild functionsBuild=2;\
//当前判金\
	required int32 curMoney=3;\
//当前铜币\
	required int32 curCoin=4;\
//当前粮食\
	required int32 curFood=5;\
//受影响的建筑\
	repeated BuildingInfo buildings=6;\
//当前攻击初始士气\
	optional float curAtcAngery=7;\
//当前竞技场初始士气\
	optional float curTournamentAngery=8;\
//COST值\
	optional int32 cost=9;\
//使用的材料\
	repeated Material usedMaterials=10;\
\
//国战初始士气\
	optional float countryWarAngery=44;\
//国战预备役上限\
	optional int32 countrywarMaxReservesNum=45;\
\
}\
\
//更换坑里的功能建筑\
message ChangeBlockFunctionsBuild\
{\
//坑ID\
	required int32 blockId=1;\
//功能建筑ID\
	required int32 functionsBuildId=2;\
}\
\
//更换坑里的功能建筑\
message ChangeBlockFunctionsBuild_S2C\
{\
//错误号\
	required int32 errCode=1;\
//更新后的坑\
	optional BlockFunctionsBuild blockFunctionsBuild=2;\
//当前判金\
	required int32 curMoney=3;\
//受影响的建筑\
	repeated BuildingInfo buildings=4;\
//当前攻击初始士气\
	optional float curAtcAngery=5;\
//当前竞技场初始士气\
	optional float curTournamentAngery=6;\
//COST值\
	optional int32 cost=7;\
//更新后的建筑\
	optional FunctionsBuild functionsBuild=8;\
\
//国战初始士气\
	optional float countryWarAngery=44;\
//国战预备役上限\
	optional int32 countrywarMaxReservesNum=45;\
}\
\
//功能建筑征收武魂\
message FunctionsBuildHarvestWuHun\
{\
//坑ID\
	required int32 blockId=1;\
//功能建筑ID\
	required int32 functionsBuildId=2;\
}\
\
\
//功能建筑征收武魂\
message FunctionsBuildHarvestWuHun_S2C\
{\
//错误号\
	required int32 errCode=1;\
//征收的建筑\
	optional FunctionsBuild functionsBuild=2;\
//当前武魂数量\
	optional Material curWuHun=3;\
}\
\
\
//功能建筑征收物品\
message FunctionsBuildHarvestItem\
{\
//坑ID\
	required int32 blockId=1;\
//功能建筑ID\
	required int32 functionsBuildId=2;\
}\
\
\
//功能建筑征收物品\
message FunctionsBuildHarvestItem_S2C\
{\
//错误号\
	required int32 errCode=1;\
//征收的建筑\
	optional FunctionsBuild functionsBuild=2;\
//收货的物品\
	optional Reward reward=3;\
}\
\
//购买辅助建筑坑\
message BuyFunctionsBuildBlock\
{\
//坑ID\
	required int32 blockId=1;\
}\
//购买辅助建筑坑\
message BuyFunctionsBuildBlock_S2C\
{\
//错误号\
	required int32 errCode=1;\
//坑ID\
	required int32 blockId=2;\
//当前判金\
	required int32 curMoney=3;\
//更新后的坑\
	optional BlockFunctionsBuild blockFunctionsBuild=4;\
	\
}\
\
//功能建筑征收战魂\
message FunctionsBuildHarvestZhanHun\
{\
//坑ID\
	required int32 blockId=1;\
//功能建筑ID\
	required int32 functionsBuildId=2;\
}\
\
\
//功能建筑征收战魂\
message FunctionsBuildHarvestZhanHun_S2C\
{\
//错误号\
	required int32 errCode=1;\
//征收的建筑\
	optional FunctionsBuild functionsBuild=2;\
//当前战魂数量\
	optional Material curZhanHun=3;\
}\
\
//功能建筑征收预备役\
message FunctionsBuildHarvestReserves\
{\
//坑ID\
	required int32 blockId=1;\
//功能建筑ID\
	required int32 functionsBuildId=2;\
}\
\
\
//功能建筑征收预备役\
message FunctionsBuildHarvestReserves_S2C\
{\
//错误号\
	required int32 errCode=1;\
//征收的建筑\
	optional FunctionsBuild functionsBuild=2;\
//当前预备役数量\
	optional int32 curReservesNum=3;\
}\
\
//修改辅助建筑别名\
message ChangeFUnctionsBuildNickName\
{\
//建筑ID\
	required int32 buildId=1;\
//建筑别名\
	required string nickName=2;\
}\
\
//修改辅助建筑别名\
message ChangeFUnctionsBuildNickName_S2C\
{\
//错误号\
	required int32 errCode=1;\
//更新后的建筑\
	optional FunctionsBuild functionsBuild=8;\
//当前判金数\
	required int32 curMoney=9;\
}\
\
\
\
import 'Msg.proto';\
import 'TournamentAndFamilyWarAndActivity.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
//选择势力\
message SelectFamily\
{\
	\
//势力id\
	optional int32  familyId=1;\
}\
//选择势力\
message SelectFamily_S2C\
{\
//错误码\
		required int32  errorCode=1;\
//势力id\
		optional int32  familyId=2;\
//选择势力时间\
		optional int64 selectFamilyTime =3;\
\
}\
\
//合战匹配对手\
message FamilyWarMatch_S2C\
{	\
//错误号\
	required int32 errCode=1;\
//对方积分\
	optional int32 score=2;\
//挑战次数\
	optional int32 challengeNum=4;\
	optional  OtherPlayerAtkInfo otherPlayerAtkInfo=5;\
//自己粮食\
	optional int32 food=3;\
//自己判金\
	optional int32 money=6;\
}\
\
//合战挑战\
message FamilyWarChallenge\
{\
//攻打结果\
	required bool result=1;\
//攻打时长秒\
	optional int32 atkSecond=3;\
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;	 \
}\
//合战挑战返回\
message FamilyWarChallenge_S2C\
{\
//错误号\
	required int32 errCode=1; \
//合战当前积分\
	optional int32 score=4;\
//攻打结果\
	required bool result=2;\
//奖励信息\
	optional Reward reward=3;\
\
\
}\
\
message GetFamilyWarRank_S2C{\
//自己排名\
    required int32 selfRankNo=3;\
//势力A排行榜\
   repeated FamilyWarRank familyARank=1;\
//势力B排行榜\
   repeated FamilyWarRank familyBRank=2;\
}\
\
message FamilyWarMember_S2C{\
//势力A人数\
   required int32 familyAMemberNum =1;\
//势力B人数\
   required int32 familyBMemberNum =2;\
   \
}\
\
message FamilyWarScore_S2C{\
//势力A积分\
   required int32 familyAScore =1;\
//势力B积分\
   required int32 familyBScore =3;\
\
}\
\
\
import 'Msg.proto';\
import 'League.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
//申请好友\
message ApplyFriend\
{\
//目标id\
	required int32 targetUid=1;\
}\
\
//申请好友--返回自己和推送对方\
message ApplyFriend_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//申请信息\
	optional FriendApplicant applicantInfo=2;\
}  \
\
\
//申请好友操作\
message OperApplyFriend\
{\
//目标id\
	required int32 targetUid=1;\
//1 同意 2 拒绝\
	required int32 type=2;\
}\
\
//好友申请处理--返回自己和推送对方,不管是否同意客户端都要自行删除\
message OperpplyFriend_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//目标id\
	required int32 type=4;\
//申请信息\
	optional FriendApplicant friendApplicant=2;\
//朋友\
    optional Friend friend=3;\
} \
\
\
//删除好友\
message DelFriend\
{\
//目标id\
	required int32 targetUid=1;\
}\
\
//删除好友--返回\
message DelFriend_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//目标id\
    optional int32 targetUid=2;\
} \
\
 \
\
//赠送体力好友\
message FriendGiveStrength\
{\
//目标id\
	required int32 targetUid=1;\
}\
\
//赠送体力好友 \
message FriendGiveStrength_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//赠送信息\
	repeated GiveStrength giveStrength=2;\
//目标id\
	optional int32 targetUid=3;\
//友情点\
	optional int32 friendPoint=4;\
\
    \
} \
\
\
\
//一键赠送体力好友推送\
message FriendGiveStrengthPush_S2C\
{\
//赠送信息\
   required GiveStrength giveStrength=1;\
  \
}\
\
//领取体力好友\
message FriendTakeStrength\
{\
//目标id\
	required int32 targetUid=1;\
}\
//领取体力好友\
message FriendTakeStrength_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//赠送信息\
    repeated GiveStrength giveStrength=3;\
//当前体力\
	optional int32 strength=2;\
}\
\
\
 \
//推荐好友\
message RecommendFriend_S2C\
{\
//错误号\
	required int32 errorCode=2;\
//推荐的玩家\
    repeated SimplePlayer simplePlayer =1;\
	 \
}\
\
\
\
//获取阵型武将信息\
message GetAtkLeaderInfo\
{\
//目标id\
	required int32 targetUid=1;\
//布阵类型\
	required FormationEnum formationEnum=2;\
}\
\
// 获取阵型武将信息\
message GetAtkLeaderInfo_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//武将信息\
	repeated SimpleLeaderInfo simpleLeaderInfo=2;\
//玩家\
	required SimplePlayer simplePlayer =3;\
//布阵类型\
	required FormationEnum formationEnum=4;    \
} \
\
//好友切磋结果\
message TryAtkOtherPlayerTournamentResult\
{\
//对方玩家ID\
	required int32 targetUid=1;\
//结果\
	required bool result=2;\
}\
//好友切磋结果\
message TryAtkOtherPlayerTournamentResult_S2C\
{\
//对方玩家ID\
	required int32 targetUid=1;\
//结果\
	required bool result=2;\
//切磋结果\
	optional TryAtkTournamentResult tryAtkTournamentResults=118;\
}\
\
\
\
//获取指定武将详细\
message GetLeaderInfo\
{\
//玩家ID\
	required int32 uid=1;\
//武将ID\
	required int32 leaderId=2;\
}\
//获取指定武将详细返回\
message GetLeaderInfo_S2C\
{\
//武将信息\
	optional LeaderInfo leader=1;\
//装备列表\
	repeated Equip equips=2;\
//魂石列表\
	repeated GemStone gemStones=3;\
}\
\
//获取玩家信息\
message GetSimplePlayerByUId \
{\
//玩家ID\
    required int32 uid=1;\
   \
	 \
}\
//获取玩家信息\
message GetSimplePlayerByUId_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//玩家\
    optional SimplePlayer simplePlayer =2;\
	 \
}\
\
\
//搜索玩家信息\
message GetSimplePlayer \
{\
//名字\
    required string targetUName=1;\
   \
	 \
}\
//搜索玩家信息\
message GetSimplePlayer_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//玩家\
    optional SimplePlayer simplePlayer =2;\
	 \
}\
\
//搜索玩家信息\
message GetFriend_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//好友申请列表\
  	repeated FriendApplicant friendApplicant=2;\
//好友列表\
	repeated Friend friend=3;\
	 \
}\
\
//好友助战类型\
message AssistFriendModel\
{\
//玩家ID\
	required int32 uid=1;\
//玩家昵称\
	required string uName=2;\
//助战武将\
	required LeaderInfo leader=3; \
}\
//获取助战好友列表\
message GetAssistFriends_S2C\
{\
    required int32 errCode=3;\
//助战玩家列表\
	repeated AssistFriendModel assistFriends =1;\
//助战过的好友ID\
	repeated int32 assistedFriendUID=2;   \
}\
//设置助战武将\
message SetAssistLeader\
{\
//武将ID\
	required int32 leaderId=1;\
}\
\
//设置助战武将\
message SetAssistLeader_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
\
//远征每层信息\
message InfiniteCity\
{	\
//错误号\
	required int32 errCode=1;\
//当前层数\
	optional int32 level=2;\
	optional OtherPlayerAtkInfo OtherPlayerAtkInfo=3;\
//对手武将剩余血量列表\
	repeated InfiniteCityBattleLeader enemyLeadersBlood=4; \
//领取的31层奖励的索引 0 1 2 其它层无此字段\
	repeated int32 taked31LevelBoxIndex=5;\
//是否放弃31层奖励 true:是 false :否\
	optional bool cancleTake31LevelBox=6;\
\
}\
\
\
\
//玩家远征战斗前请求\
message InfiniteCityBattleEnter\
{\
//错误号\
    required int32 errorCode=1;\
//当前层数\
  	optional int32 level=2;\
//武将上阵列表\
	repeated InfiniteCityLeaderId leaders=3; \
}\
\
\
//玩家远征战斗前请求\
message InfiniteCityBattleEnter_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前层数\
  	optional int32 level=2;\
//当前体力\
	optional int32 strength=3;\
}\
\
\
//玩家远征战斗结束\
message InfiniteCityBattleOver\
{\
//错误号\
    required int32 errorCode=1;\
//当前层数\
  	optional int32 level=2;\
//武将剩余血量列表\
	repeated InfiniteCityBattleLeader leadersBlood=3; \
//获得星数量\
	optional int32 star=4;\
//战斗耗时(秒)\
	optional int32 time=5;\
//是否获胜\
	optional int32 isWin=6;\
//助战好友id\
	optional int32 friendId=7;\
//对手武将剩余血量列表\
	repeated InfiniteCityBattleLeader enemyLeadersBlood=8; \
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=9;\
}\
\
\
//玩家远征战斗结束\
message InfiniteCityBattleOver_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前层数\
  	optional int32 level=2;\
//当前星数量\
	optional int32 star=3;\
//当前积分数量\
	optional int32 score=4;\
//当前buffid\
	optional int32 skillId=5;\
//下一关武将信息\
	optional InfiniteCity nextInfiniteCity=6;\
//武将上阵列表\
	repeated InfiniteCityLeaderId leaders=7; \
//奖励\
	optional Reward reward=8;\
//助战信息\
	optional string friends=9;\
//无限城武将剩余血量\
	repeated InfiniteCityBattleLeader leadersBlood=10;\
}\
\
//玩家跳过远征\
message InfiniteCityBattlePass_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前判金\
	optional int32 money=2;\
//本日跳过次数\
	optional int32 passCount=3;\
//下一关武将信息\
	optional InfiniteCity nextInfiniteCity=4;\
}\
\
//玩家开启宝箱\
message InfiniteCityOpenBox_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前判金\
	optional int32 money=2;\
//宝箱步骤\
	optional int32 boxStep=3;\
//下一关武将信息\
	optional InfiniteCity nextInfiniteCity=4;\
//奖励\
	optional Reward reward=5;\
}\
\
//玩家远征购买buff\
message InfiniteCityBuyBuff\
{\
//错误号\
    required int32 errorCode=1;\
//购买的buff下标\
  	optional int32 index=2;\
}\
\
\
//玩家远征购买buff\
message InfiniteCityBuyBuff_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前星数量\
	optional int32 star=2;\
//购买的技能id\
	optional int32 skillId=3;\
//下一关武将信息\
	optional InfiniteCity nextInfiniteCity=4;\
}\
\
//花钱刷新远征积分商城 \
message RefreshInfiniteCityMall_S2C\
{\
//商品列表\
	repeated ScoreGoods scoreGoods=1;\
//当前玩家判金\
	optional int32 curMoney=2;\
//错误号\
	required int32 errCode=3;\
//下次刷新时间\
	optional int64 nextRefreshTime=4;\
}\
\
//远征购买积分商品\
message InfiniteCityBuyScoreGoods\
{\
	 required int32 errCode=1;\
//商品索引\
	 required int32 goodsIndex=2;\
}\
\
//远征购买积分商品\
message InfiniteCityBuyScoreGoods_S2C\
{\
	required int32 errCode=1;	\
//购买的商品\
	optional Reward item=2;	\
//积分数量\
	optional int32 score=3;\
//购买的索引\
	required int32 goodIndex=4;\
//变化的材料\
	repeated Material changedMaterial=5;\
}\
\
//远征重置\
message InfiniteCityReset_S2C\
{\
	required int32 errCode=1;	\
//无限城当前关卡\
	optional int32 infiniteCityLevel=2;\
//无限城重置次数\
	optional int32 infiniteCityResetCount=3;\
//无限城buffid\
	optional int32 infiniteCitySkillId=4;\
//无限城信息\
	optional InfiniteCity infiniteCity=5;\
//无限城武将剩余血量\
	repeated InfiniteCityBattleLeader leadersBlood=6;\
//武将上阵列表\
	repeated InfiniteCityLeaderId leaders=7; \
//当前判金\
	required int32 curMoney=8;\
}\
\
//远征排行榜返回\
message InfiniteCityRank_S2C\
{\
	optional int32 errCode=1;\
//自己排行\
	optional int32 rankOwn=2;\
//排行榜信息\
	repeated InfiniteCityRankInfo  ranks=3;\
	\
\
}\
\
//远征扫荡宝箱Model\
message SweepFarWarBoxModel{\
//宝箱关卡ID\
	required int32 boxLevel=1;\
//宝箱步骤\
	required int32 boxStep=2;	\
}\
\
//远征扫荡\
message SweepFarWar_S2C\
{\
	optional int32 errCode=1;\
//奖励列表\
	repeated Reward rewards=2;\
//无限城当前关卡\
	optional int32 curLevel=3;\
//待开的宝箱\
	repeated SweepFarWarBoxModel boxLevels=4;\
//下一关武将信息\
	optional InfiniteCity nextInfiniteCity=5;\
//当前判金\
	optional int32 money=6;\
//当前总星星\
	optional int32 star=7;\
}\
//远征扫荡开宝箱\
message SweepFarWarOpenBox\
{	\
//宝箱关卡\
	optional int32 level=1;\
}\
//远征扫荡开宝箱\
message SweepFarWarOpenBox_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前判金\
	optional int32 money=2;\
//待开的宝箱（可能包含上一次开的宝箱，用来确定购买宝箱）\
	repeated SweepFarWarBoxModel boxLevels=3;	\
//奖励\
	optional Reward reward=4;\
}\
\
//玩家开启最后一层无限城宝箱\
message InfiniteCityOpenBox31Level\
{\
//宝箱步骤\
	optional int32 boxStep=3;\
}\
\
//玩家开启最后一层无限城宝箱\
message InfiniteCityOpenBox31Level_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//当前判金\
	optional int32 money=2;\
//宝关卡信息\
	optional InfiniteCity infiniteCity=3;\
//奖励\
	optional Reward reward=5;\
}\
\
//玩家取消领取最后一层无限城宝箱\
message CancleTake31LevelBox_S2C\
{\
//错误号\
    required int32 errorCode=1;\
//宝关卡信息\
	optional InfiniteCity infiniteCity=3;\
}\
\
\
//好友在线状态\
message FriendOnlienState_S2C\
{\
	required int32 errCode=1;\
//好友uid\
  	repeated int32 friendUId=2;\
//是否在线\
	repeated bool online=3;\
}\
\
\
\
//友情点购买\
message BuyFriendPointGoods{\
//商城物品ID\
	required int32 goodsId=1;\
}\
\
//友情点购买\
message BuyFriendPointGoods_S2C{\
//错误号\
	required int32 errorCode=1;\
//商城物品ID\
	required int32 goodsId=2;\
//奖励\
	optional Reward reward=5;\
}\
\
//查询邀请码\
message SearchInviteCode{\
//邀请码\
	required string inviteCode=1;\
}\
\
//查询邀请码\
message SearchInviteCode_S2C{\
//错误号\
	required int32 errorCode=1;\
//信息\
	optional InviteCodePlayerInfo info=2;\
}\
\
//绑定邀请码\
message BindInviteCode{\
//邀请码\
	required string inviteCode=1;\
}\
\
//绑定邀请码\
message BindInviteCode_S2C{\
//错误号\
	required int32 errorCode=1;\
}\
\
//领取邀请码奖励\
message ReceiveInviteCode{\
//邀请码奖励id\
	required int32 id=1;\
}\
\
//领取邀请码奖励\
message ReceiveInviteCode_S2C{\
//错误号\
	required int32 errorCode=1;\
//奖励\
	optional Reward reward=2;\
}\
\
//获取联盟列表\
message LeagueList_S2C\
{\
	required int32 errCode=1;\
//联盟列表\
	repeated SimpleLeagueInfo leagues=2;\
}\
\
//创建联盟\
message LeagueCreate\
{\
//联盟名称\
	required string leagueName=1;\
}\
//创建联盟返回\
message LeagueCreate_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//联盟信息\
	optional LeagueInfo leagueInfo=2;\
//玩家联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=3;\
//当前判金\
	optional int32 curMoney=4;\
}\
\
//获取自己的联盟\
message League_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//联盟信息\
	optional LeagueInfo league=2;\
}\
\
//获取联盟成员\
message LeagueMemberList\
{\
//联盟ID\
	required int32 leagueId=1;\
}\
//获取联盟成员\
message LeagueMemberList_S2C\
{\
//联盟成员\
	repeated SimplePlayerLeagueInfo leagueMembers=1;\
}\
\
//退出联盟\
message ExitLeague_S2C\
{\
//错误号\
	required int32 errCode=1;\
//个人联盟信息\
	required PlayerLeagueInfo playerLeagueInfo=2;\
}\
\
//解散联盟（推送至各个成员）\
message DissolvedLeague_S2C\
{\
//错误号\
	required int32 errCode=1;\
//个人联盟信息\
	required PlayerLeagueInfo playerLeagueInfo=2;\
}\
\
//转让联盟\
message MadeLeague\
{\
//要转让的成员\
	required int32 madeUID=1;\
}\
//转让联盟\
message MadeLeague_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最新联盟信息\
	optional LeagueInfo leagueInfo=2;\
//最新的自己的个人联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=3;\
//要转让的成员\
	required int32 madeUID=4;\
}\
\
//个人联盟信息变化 （推送）到被转让者 发邮件\
message PlayerLeagueInfoChanged_S2C\
{\
//最新联盟信息\
	optional LeagueInfo leagueInfo=1;\
//最新的自己的个人联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=2;\
//联盟其他人信息\
	repeated SimplePlayerLeagueInfo otherPlayerLeagueInfos=3;\
}\
\
//修改联盟公告\
message ChangeLeagueNotice\
{\
//公告内容\
	required string notice=1;\
}\
//修改联盟公告\
message ChangeLeagueNotice_S2C\
{\
//错误号\
	required int32 errCode=1;\
//公告内容\
	required string notice=2;\
}\
//修改联盟宣言\
message ChangeLeagueDeclaration\
{\
//宣言内容\
	required string declaration=1;\
}\
//修改联盟宣言\
message ChangeLeagueDeclaration_S2C\
{\
//错误号\
	required int32 errCode=1;\
//宣言内容\
	required string declaration=2;\
}\
\
//踢出联盟成员\
message KickLeaguePlayer\
{\
//踢出的成员ID\
	required int32 uid=1;	\
}\
//踢出联盟成员\
message KickLeaguePlayer_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//踢出的成员ID\
	required int32 uid=2;\
}\
//踢出联盟成员（推送）\
message KickLeaguePlayer_S2C_Push\
{\
//踢出的成员信息\
	required PlayerLeagueInfo playerLeagueInfo=2;\
}\
//申请联盟\
message ApplicantLeague\
{\
//联盟ID\
	required int32 leagueId=1;\
//申请留言\
	required string applicantNotice=2;\
}\
\
//申请联盟返回\
message ApplicantLeague_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//联盟ID\
	required int32 leagueId=2;\
}\
//申请联盟推送（推送给盟主副盟主）\
message ApplicantLeague_S2C_Push\
{\
//申请信息\
	required LeagueApplicant applicantInfo=1;\
\
}\
//获取联盟申请列表\
message ApplicantLeagueList_S2C\
{\
//\
	required int32 errCode=1;\
//申请信息\
	repeated LeagueApplicant applicantInfo=2;\
}\
//处理联盟申请消息\
message ApplicantLeagueOpt\
{\
//玩家ID\
	repeated int32 uid=1;\
//是否同意\
	required bool isAgree=2;\
}\
//处理联盟申请消息\
message ApplicantLeagueOpt_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//同意的成员联盟信息\
	optional SimplePlayerLeagueInfo playerLeagueInfo=2;\
//是否同意\
	required bool isAgree=3;\
//玩家ID\
	repeated int32 uids=4;\
}\
//处理联盟申请消息(推送)给被同意的成员\
message ApplicantLeagueOpt_S2C_Push\
{\
//最新联盟信息\
	optional LeagueInfo leagueInfo=1;\
//最新的自己的个人联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=2;\
}\
\
//联盟邀请\
message LeagueInvitePlayer\
{\
//玩家ID\
	required int32 uid=1;\
}\
//联盟邀请返回\
message LeagueInvitePlayer_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//玩家ID\
	required int32 uid=2;\
}\
\
\
//联盟邀请推送(推送给玩家)\
message LeagueInvitePlayer_S2C_Push\
{\
//邀请信息\
	required LeagueInvite LeagueInviteInfo=1;\
}\
\
//处理联盟邀请消息\
message LeagueInvitePlayerOpt\
{\
//联盟ID\
	repeated int32 leagueId=1;\
//是否同意\
	required bool isAgree=2;\
}\
//处理联盟邀请消息\
message LeagueInvitePlayerOpt_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//同意的成员联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=2;\
//联盟信息\
	optional LeagueInfo leagueInfo=3;\
//是否同意\
	required bool isAgree=4;\
\
}\
\
\
\
//联盟改名\
message ChangeLeagueName\
{\
//联盟名称\
	required string leagueName=1;\
}\
//联盟改名返回\
message ChangeLeagueName_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//联盟名称\
	required string leagueName=2;\
//当前判金\
	required int32 curMoney=3;\
}\
\
//联盟捐献\
message LeagueDonation\
{\
//捐献项ID\
	required int32 donationId=1;\
}\
//联盟捐献\
message LeagueDonation_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//捐献项ID\
	required int32 donationId=2;\
//当前判金\
	required int32 curMoney=3;\
//当前铜钱\
	required int32 curCoin=4;\
//个人联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=5;\
//联盟信息\
	optional LeagueInfo leagueInfo=6;\
\
}\
\
//获取联盟捐献信息\
message LeagueDonationInfo_S2C\
{\
//捐献日志\
	repeated LeagueDonationInfo leagueDonationInfos=1;\
\
}\
\
//联盟激活旗帜\
message LeagueActiveFlag\
{\
//战棋ID\
	required int32 flagId=1;\
}\
//联盟激活旗帜\
message LeagueActiveFlag_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//旗帜列表\
	repeated int32 flags=2;	\
}\
\
//联盟选择旗帜\
message ChangeCurFlag\
{\
//战棋ID\
	required int32 flagId=1;\
}\
//联盟选择旗帜\
message ChangeCurFlag_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//当前旗帜\
	optional int32 curFlag=2;	\
}\
\
//联盟群发信息\
message LeaguePublicMsg\
{\
//消息内容\
	required string content=1;\
}\
\
//联盟群发信息\
message LeaguePublicMsg_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//今日群发消息次数\
	required int32 todayPublicMsgTimes=2;\
//最后群发消息时间\
	required int64 lastLeaguePublicMsgTime=3;\
}\
\
//联盟商店购买\
message LeagueShopBuy\
{\
//物品ID\
	required int32 itemId=1;\
}\
//联盟商店购买\
message LeagueShopBuy_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//物品ID\
	required int32 itemId=2;\
//奖励\
	optional Reward reward=3;\
//今日已购买的商城物品\
	repeated int32 todayBuyMallThingIds=4;\
//最后购买商城物品时间\
	optional int64 lastBuyMallThingTime=5;\
//当前贡献币\
	optional int32 curPlayerContributionCoin=6;\
}\
//修改成员职位\
message ChangePlayerLeagueTitle\
{\
//盟员玩家ID\
	required int32 uid=1;\
//职位\
	required LeagueTitleEnum leagueTieleEnum=2;\
}\
//修改成员职位\
message ChangePlayerLeagueTitle_S2C\
{\
//错误号\
	required int32 errorCode=1;\
//盟员玩家ID\
	required int32 uid=2;\
//职位\
	required LeagueTitleEnum leagueTieleEnum=3;\
}\
\
//陌生人聊天信息变化推送\
message StrangerChatModelChange_S2C_Push\
{\
//聊天信息\
	required StrangerChatModel strangerChatModel=1;\
}\
\
//获取玩家私聊信息\
message GetPlayerChats_S2C\
{\
//私聊信息\
	repeated ChatModel chatModels=1;\
}\
\
//已读私聊聊天\
message PlayerChatReaded\
{\
//发送者ID\
	required int32 senderUID=1;\
}\
\
//已读私聊聊天\
message PlayerChatReaded_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
package msg;\
import 'Msg.proto';\
\
\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
//联盟关系\
message LeagueRelation\
{\
//联盟ID\
	required int32 targetLeagueId=1;\
//关系类型:  1:友好 2:敌对 3:和平\
	required int32 relationType=2; \
//说明\
	required string des=3;\
//修改关系时间\
	optional int64 relationTime=4;\
}\
\
//联盟科技\
message LeagueScience\
{\
//科技ID\
	required int32 scienceId=1;\
//科技等级\
	required int32 scienceLevel=2;\
}\
//联盟科技记录\
message LeagueScienceLog\
{\
//科技ID\
	required int32 scienceId=1;\
//科技等级\
	required int32 scienceLevel=2;\
//升级玩家ID\
	required int32 upgradeUID=3;\
//升级时间\
	required int64 upgradeTime=4;\
//升级的玩家昵称\
	required string upgradeUName=5;\
}\
\
//联盟弹劾信息\
message LeagueImpeachmentInfo\
{\
//发起人\
	optional int32 impeachmentUID=22;\
//弹劾开始时间\
	optional int64 impeachmentTime=24;\
//同意弹劾人\
	repeated int32 impeachmentAgreeUIDs=25;\
//拒绝弹劾的人\
	repeated int32 impeachmentRefuseUIDs=26;\
//可以投票的人\
	repeated int32 canImpeachmentUIDs=27;\
}\
\
//联盟信息\
message LeagueInfo\
{\
//联盟ID\
	required int32 leagueId=1;\
//联盟名称\
	required string leagueName=2;\
//联盟等级\
	required int32 leagueLevel=3;\
//荣誉值\
	required int32 honor=4;\
//展示旗帜\
	required int32 curFlag=5;\
//旗帜列表\
	repeated int32 flags=6;\
//盟主ID\
	required int32 ownerUID=7;\
//盟主昵称\
	required string ownerName=8;\
//令牌数\
	required int32 cmdTokenNum=9;\
//当前人数\
	required int32 curMemberNum=10;\
//创建时间\
	required int64 createTime=11;\
//联盟公告\
	required string leagueNotice=12;\
//联盟宣言\
	required string leagueDeclaration=13;\
//申请列表\
	repeated LeagueApplicant leagueApplicants=14;\
//联盟战斗力\
	required int64 leaguePower=15;\
//联盟Boss信息\
	optional LeagueWar leagueWarInfo=16;\
//联盟关系列表\
	repeated LeagueRelation leagueRelations=17;\
//沦陷的玩家列表\
	repeated int32 controldUids=21;\
//联盟科技\
	repeated LeagueScience sciences=22;\
//联盟弹劾信息\
	optional LeagueImpeachmentInfo leagueImpeachment=23;\
//最后联盟战报时间\
	optional int64 leagueLastBattleTime=24;\
//排行\
	optional int32 rank=25;\
//国战排行\
	optional int32 rank_CountryWar=26;\
//国战排行\
	optional int64 rank_CountryWar_Time=27;\
//上一赛季国战排行\
	optional int32 rank_CountryWar_preSeason=28;\
//国战上一赛季排行时间\
	optional int64 rank_CountryWar_Time_preSeason=29;\
\
}\
//简单联盟信息（给其他人看的）\
message SimpleLeagueInfo\
{\
//联盟ID\
	required int32 leagueId=1;\
//联盟名称\
	required string leagueName=2;\
//联盟等级\
	required int32 leagueLevel=3;\
//荣誉值\
	required int32 honor=4;\
//展示旗帜\
	required int32 curFlag=5;\
//盟主ID\
	required int32 ownerUID=6;\
//盟主昵称\
	required string ownerName=7;\
//当前人数\
	required int32 curMemberNum=8;\
//创建时间\
	required int64 createTime=9;\
//联盟宣言\
	required string leagueDeclaration=10;\
	  \
//盟主国战主城中心点\
	optional int32 ownerMainCityCenterPosId=12;\
//联盟势力值\
	required int64 leaguePowerScore=14;\
//联盟战斗力\
	required int64 leagueCapa=15;\
}\
\
//当天贡献信息\
message LeagueDonationInfo\
{\
//\
	required string uName=1;\
//今日贡献值（前端用）\
	required int32 todayDonationValue=2;\
//本周贡献值（前端用）\
	required int32 weekDonationValue=3;	\
}\
\
\
//联盟申请信息\
message LeagueApplicant\
{\
//玩家ID\
	required int32 uid=1;\
//申请留言\
	required string applicantNotice=2;\
//玩家简单信息\
	optional SimplePlayer simplePlayer=3;\
}\
//联盟邀请信息\
message LeagueInvite\
{\
//联盟ID\
	required int32 leagueId=1;\
//联盟简单信息\
	optional SimpleLeagueInfo simpleLeagueInfo=2;\
}\
//玩家联盟信息\
message PlayerLeagueInfo\
{\
//玩家ID\
	required int32 uid=1;\
//玩家昵称\
	required string uName=2;\
//所属联盟ID\
	required int32 leagueId=3;	\
//所属联盟官职\
	required LeagueTitleEnum leagueTitle=4;\
//联盟贡献值（离开联盟则清零）\
	required int32 leagueContribution=5;\
//玩家贡献币(一直跟随玩家，可以商城购买)\
	required int32 playerContributionCoin=6;\
//今日已购买的商城物品\
	repeated int32 todayBuyMallThingIds=7;\
//联盟邀请列表\
	repeated LeagueInvite leagueInvites=8;\
//最后退出联盟时间\
	required int64 lastExitLeagueTime=9;\
//今日贡献次数\
	required int32 todayDonationCount=10;\
//今日贡献值（前端用）\
	required int32 todayDonationValue=11;\
//本周贡献值（前端用）\
	required int32 weekDonationValue=12;\
//最后贡献时间\
	required int64 lastDonationTime=13;\
//今日群发信息次数\
	required int32 todayLeaguePublicMsgTimes=14;\
//最后群发消息时间\
	required int64 lastLeaguePublicMsgTime=15;\
//最后购买商城物品时间\
	required int64 lastbuyMallThingsTime=16;\
//进盟时间\
	required int64 inLeagueTime=17;\
//展示的国战中立城池官位\
	optional int32 disTitle_WorldCityId=18;\
//最后查看联盟战报时间\
	optional int64 lastCheckLeagueBattleTime=19;\
\
}\
//简单联盟成员信息（给其他人看的）\
message SimplePlayerLeagueInfo\
{\
//玩家ID\
	required int32 uid=1;\
//玩家昵称\
	required string uName=2;\
//所属联盟ID\
	required int32 leagueId=3;	\
//所属联盟官职\
	required LeagueTitleEnum leagueTitle=4;\
//玩家简单信息\
	optional SimplePlayer SimplePlayer=5;\
//本周贡献值（前端用）\
	required int32 weekDonationValue=6;\
//联盟贡献值（离开联盟则清零）\
	required int32 leagueContribution=7;\
//势力值\
	optional int32 countryWarPowerScore=8;\
//国战主程所在中心点ID\
	optional int32 countryWarMainCityCenterPointId=9;\
//展示的国战中立城池官位\
	optional int32 disTitle_WorldCityId=10;\
}\
\
enum LeagueTitleEnum\
{\
//无帮派人士\
	none=0;\
//盟主\
	owner=1;\
//公卿\
	deputy=2;\
//大臣\
	elite=3;\
//群众\
	member=4;\
//军师\
	strategist=5;\
}\
\
\
\
//玩家攻打的联盟PVE信息\
message LeaguePve\
{\
//boss关卡ID\
	required int32 pveId=1;\
//获得的boss点数\
	required int32 getedBossPoint=2;\
//打掉的boss血量\
	required int32 attatkedBossHp=3;\
}\
\
//联盟PVe单个关卡排行\
message LeagueWarPveRank\
{\
//玩家简单信息\
	required SimplePlayer simplePlayer=1;\
//攻打情况\
	required LeaguePve LeaguePve=2;\
//所属联盟官职\
	required LeagueTitleEnum leagueTitle=3;\
}\
\
//联盟PVe Boss排行\
message LeagueWarBossRank\
{\
//玩家简单信息\
	required SimplePlayer simplePlayer=1;\
//所属联盟官职\
	required LeagueTitleEnum leagueTitle=3;\
//打掉的总boss血量\
	optional int32 attatkedBossHp=4;\
}\
//联盟PVe Boss点排行\
message LeagueWarBossPointRank\
{\
//玩家简单信息\
	required SimplePlayer simplePlayer=1;\
//攻打点数\
	required int32 bossPoint=2;\
//所属联盟官职\
	required LeagueTitleEnum leagueTitle=3;\
}\
\
//联盟讨伐战boss\
message LeagueWarBoss\
{\
//当前boss关卡ID\
	required int32 bossPveId=1;\
//当前boss血量\
	required int32 bossCurHp=2;	\
//boss血量\
	required int32 bossMaxHp=3;\
//boss开启时间\
	required int64 bossOpenTime=4;\
//当前Boss状态 0：未开启 1：已开启 2：已击毙\
	required int32 bossState=5;\
}\
//玩家联盟讨伐战信息\
message PlayerLeagueWar\
{\
//我打过的关卡信息\
	repeated LeaguePve meAtkedLeagueWarPveList=1;\
//上次进入关卡时间\
	required int64 lastAtkPveTime=2;\
//我领取过的boss奖励\
	repeated int32 meGetedBossRewardPveId=3;\
//最后攻打boss时间\
	required int64 lastAtkBossTime=4;\
//最后进入的关卡ID\
	required int32 lastInPveId=5;\
//剩余攻打联盟战次数\
	optional int32 atkTimes=6;\
//累计攻打联盟战次数\
	optional int32 totalAtkTimes=7;\
}\
//联盟讨伐战\
message LeagueWar\
{\
//Boss点数\
	required int32 bossPoint=1;\
//本次讨伐战开启时间\
	required int64 startTime=2;\
//当前联盟讨伐战状态 0:已结束 1：开启中\
	required int32 state=3;\
//已经打过的boss关卡\
	repeated int32 atkedBosseIds=4;\
//当前boss关卡ID\
	optional LeagueWarBoss curBoss=5;\
//玩家联盟讨伐战信息\
	optional PlayerLeagueWar playerLeagueWar=6;\
//最后一次开启讨伐战时间\
	optional int64 lastOpenTime=7;\
//本周开启讨伐战次数\
	optional int32 weekOpenTimes=8;\
//参加联盟战的人数\
	optional int32 joinedMemberNum=9;\
}\
\
\
message GetLeagueRank_S2C{\
	\
}\
\
\
//开启联盟讨伐战返回或推送\
message OpenLeagueWar_S2C\
{\
//错误号\
	required int32 errCode=1;\
//联盟讨伐战\
	optional LeagueWar leagueWarInfo=2;\
//令牌数\
	optional int32 cmdTokenNum=3;\
}\
\
//获取联盟PVe单个关卡排行\
message GetLeagueWarPveRank\
{\
//联盟讨伐战关卡ID\
	required int32 leagueWarPveId=1;\
}\
//获取联盟PVe单个关卡排行\
message GetLeagueWarPveRank_S2C\
{\
//联盟讨伐战关卡ID\
	required int32 errCode=1;\
//排行\
	repeated LeagueWarPveRank ranks=2;\
//boss最高血量\
	required int32 bossMaxHp=3;\
}\
//获取联盟BOSS点数排行\
message GetLeagueWarBossPointRank_S2C\
{\
//联盟讨伐战关卡ID\
	required int32 errCode=1;\
//排行\
	repeated LeagueWarBossPointRank ranks=2;\
	\
}\
//攻打讨伐战开始\
message AtkLeagueWar_Begin\
{\
//关卡ID\
	required int32 pveId=1;\
}\
//攻打讨伐战开始\
message AtkLeagueWar_Begin_S2C\
{\
//联盟讨伐战关卡ID\
	required int32 errCode=1;\
//最后攻打boss时间\
	optional int64 lastAtkBossTime=2;\
//最后进入的关卡ID\
	optional int32 lastInPveId=3;\
}\
//攻打讨伐战结束\
message AtkLeagueWar_End\
{\
//关卡ID\
	required int32 pveId=1;\
//打掉的血量\
	optional int32 atkedHp=2;\
//攻打时长\
	required int32 atkTime=3;\
//攻打结果\
	required bool result=4;\
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;\
}\
//攻打讨伐战结束\
message AtkLeagueWar_End_S2C\
{\
	required int32 errCode=1;\
//关卡ID\
	required int32 pveId=2;\
//奖励\
	optional Reward reward=3;\
//玩家当前贡献币\
	optional int32 rewardContribution=4;\
//玩家攻打的联盟PVE信息\
	optional LeaguePve leaguePveInfo=5;\
//剩余攻打联盟战次数\
	optional int32 atkTimes=6;\
//累计攻打次数\
	optional int32 totalAtkTimes=7;\
}\
\
\
//联盟Boss点数变化推送\
message LeagueWarBossPointChange_S2C_Push\
{\
//Boss点数\
	required int32 bossPoint=1;\
}\
//联盟参加人数变化推送\
message LeagueWarJoinedMemberNumChange_S2C_Push\
{\
//参加联盟战的人数\
	optional int32 joinedMemberNum=9;\
}\
\
//联盟Boss开启\
message LeagueWarBossOpen_S2C_Push\
{\
//联盟讨伐战boss\
	required LeagueWarBoss leagueWarBossInfo=1;\
}\
//联盟Boss血量更新\
message LeagueWarBossHPChange_S2C_Push\
{\
//当前boss血量\
	required int32 bossCurHp=1;	\
}\
\
//联盟讨伐战Boss死掉\
message LeagueWarBossFinished_S2C_Push\
{\
//被击毙的boss\
	required LeagueWarBoss finishedLeagueWarBoss=1;	\
//被击毙的boss\
	optional LeagueWarBoss newLeagueWarBoss=2;\
}\
//领取boss关卡奖励\
message TakeLeagueWarBossReward\
{\
//关卡ID\
	required int32 pveId=1;\
}\
//领取boss关卡奖励\
message TakeLeagueWarBossReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//Boss关卡ID\
	required int32 pveId=2;\
//奖励\
	optional Reward reward=3;\
//玩家当前贡献币\
	optional int32 rewardContribution=4;\
}\
\
//获取boss战排行\
message GetLeagueWarBossRank_S2C\
{\
//错误号\
	required int32 errCode=1;\
//攻打情况\
	repeated LeagueWarBossRank ranks=2;\
}\
\
//联盟讨伐战结束\
message LeagueWar_End_S2C{\
//错误号\
	required int32 errCode=1;\
//联盟讨伐战\
	required LeagueWar leagueWar=2;\
}\
//清除联盟战boss时间\
message CoolingLeagueWarBossTime_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最后攻打boss时间\
	optional int64 lastAtkBossTime=2;\
//当前判金\
	optional int32 curMoney=3;\
}\
\
//兑换联盟战次数\
message BuyLeagueWarAtkTimes_S2C\
{\
//错误号\
	required int32 errCode=1;\
//剩余攻打联盟战次数\
	optional int32 atkTimes=6;\
//扣除的材料信息\
	optional Material costMaterial=7;\
}\
\
\
//联盟聊天\
message LeagueChat\
{\
//聊天内容\
	required string content=1;\
}\
//联盟聊天\
message LeagueChat_S2C\
{\
//错误号\
	required int32 errCode=1;\
//聊天信息\
	optional LeagueChatModel chatModels=2;\
}\
//联盟关系变化\
message ChangeLeagueRelation\
{\
//联盟ID\
	required int32 leagueId=1;\
//关系类型  1:友好 2:敌对 3:和平\
	required int32 relationType=2; \
//备注(如果是删除不需要传)\
	required string des=3;\
//是否是删除\
	required bool isDel=4;\
}\
\
//联盟关系变化\
message ChangeLeagueRelation_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
//联盟关系变化(推送)\
message LeagueRelationChange_S2C_Push\
{\
//关系\
	required LeagueRelation leagueRelation=1;\
}\
\
//联盟沦陷的其他联盟或玩家数据变化推送\
message LeagueControldInfoChange_S2C_Push\
{\
//当前联盟等级\
	required int32 curLeagueLevel=2;\
//当前荣誉值\
	required int32 curHonor=1;\
//联盟玩家沦陷的其他玩家列表\
	repeated int32 controldUids=25;\
}\
\
//联盟荣誉值变化(推送)\
message LeagueHonorChange_S2C_Push\
{\
//当前联盟等级\
	required int32 curLeagueLevel=2;\
//当前荣誉值\
	required int32 curHonor=1;\
}\
\
//获取联盟当前在线人数\
message LeagueOnlinePlayerNum_S2C\
{\
//人数\
	required int32 num=1;\
}\
\
//升级联盟科技\
message UpgradeLeagueScience\
{\
//科技ID\
	required int32 scienceId=1;\
//要升级到几级(连续点击用)\
	required int32 targetLevel=2;\
}\
\
//升级联盟科技\
message UpgradeLeagueScience_S2C\
{\
//错误号\
	required int32 errCode=1;\
//联盟科技\
	optional LeagueScience leagueScience=2;\
//当前联盟钥匙数\
	optional int32 cmdTokenNum=3;\
}\
//升级联盟科技推送给成员\
message UpgradeLeagueScience_S2C_Push\
{\
//联盟科技\
	required LeagueScience leagueScience=2;\
//当前联盟钥匙数\
	required int32 cmdTokenNum=3;\
}\
\
//获取联盟日志列表\
message GetLeagueScienceLog_S2C\
{\
//联盟日志列表\
	repeated LeagueScienceLog leagueScienceLogs=1;\
}\
\
//联盟弹劾\
message LeagueImpeachment_S2C\
{\
//错误号\
	required int32 errCode=1;\
//联盟弹劾信息\
	optional LeagueImpeachmentInfo impeachmentInfo=2;\
}\
\
//联盟弹劾变化 推送\
message LeagueImpeachment_S2C_push\
{\
//联盟弹劾信息\
	optional LeagueImpeachmentInfo impeachmentInfo=2;\
//是否删除\
	optional bool isDel=3;\
}\
\
//联盟弹劾投票\
message LeagueImpeachmentVolting\
{\
//是否同意\
	required bool isAgree=1;\
}\
\
//联盟弹劾投票\
message LeagueImpeachmentVolting_S2C\
{\
//错误号\
	required int32 errCode=1;\
//联盟弹劾信息\
	optional LeagueImpeachmentInfo impeachmentInfo=2;\
//本次操作是否有结果\
	optional bool isResult=3;\
}\
\
//获取联盟聊天信息\
message GetLeagueChats_S2C\
{\
//私聊信息\
	repeated LeagueChatModel chatModels=1;\
}\
\
//已读联盟聊天\
message LeagueChatReaded_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
\
//获取活动的联盟排行\
message GetActivityLeagueRank_S2C{\
//联盟排行列表\
	repeated LeagueRank leagueRanks=1;\
}\
\
//获取国战的联盟排行\
message GetCountryWarLeagueRank_S2C{\
//联盟排行列表\
	repeated LeagueRank leagueRanks=1;\
//联盟信息\
	repeated SimpleLeagueInfo simpleLeagueInfos=2;\
}\
import 'Msg.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
\
\
//竞技场排行玩家信息\
message TournamentRankElement\
{\
//排名\
	required int32 rankNo=9;\
//头像id\
	required int32 avatarId=1;\
//角色id\
	required int32 uId=2;\
//角色名字\
	required string uName=3;\
//角色登记\
	required int32 uLevel=4;\
//竞技场段位\
	required int32 tournamentGrade=5;\
//竞技场积分\
	required int32 tournamentScore=6;\
//武将信息\
	repeated  LeaderInfo leaderInfo=7;\
//竞技场阵型\
	repeated Formation formation=8;\
}\
\
\
//竞技场商品信息\
message TournamentGoods\
{\
//商品品id\
	required int32 goodsId=1;\
//购买次数\
	required int32 buyNum=2;\
//物品数量\
	required int32 itemNum=3;\
}\
\
\
//竞技场信息\
message PlayerTournamentInfo\
{\
//竞技场段位\
	optional int32 tournamentGrade=1;\
//竞技场当前积分\
	optional int32 tournamentScore=2;\
//竞技场之石\
	optional int32 tournamentStone=3;\
//竞技场之魂\
	optional int32 tournamentGhost=4;\
//竞技场双倍收益次数\
	optional int32 tournamentDoubleNum=5;\
//竞技场挑战次数\
	optional int32 tournamentChallengeNum=6;\
//竞技场次数恢复时间\
	optional int64 tournamentRefnewTime=30;\
//竞技场晋级赛结果 true 赢 false 输\
	repeated bool tournamentPromotionResult=7;\
//竞技之石商品\
	repeated TournamentGoods  stoneGoods=8;\
//竞技之魂商品\
 	repeated TournamentGoods  ghostGoods=9;\
 	\
//排行时间\
 	required int64 rankTime=10;\
//头像id\
 	optional int32 avatarId=11;\
//赛季\
 	optional int32 season=12;\
//周段位\
 	optional int32 weekGrade=13;\
//赛季段位\
	optional int32 seasonGrade=14;\
//是否可以领取周奖励\
	optional bool canTakeweekReward=15;\
//是否可以领取赛季奖励\
	optional bool canTakeSeasonReward=16;\
//上一赛季排行\
	optional int32 histoRankNo=17;\
//刷新兑换时间\
	optional int64 refreshMallTime=18;\
\
}\
\
//合战信息\
message FamilyWar\
{\
//服务器战斗场次ID\
  required int32 serverWarId =1;\
//玩家势力Id\
   required int32 familyId =2;\
//玩家势力积分\
   required int32 score =3;\
//玩家挑战次数\
   required int32 challengeNum=4;\
//选择势力时间\
    required int64 selectFamilyTime=6;\
//胜利势力id\
    required int32 winFamilyId=7;\
//  国战开启时间\
    required int64 familyWarOpenTime=8;\
\
}\
\
\
\
//合战排行榜信息\
message FamilyWarRank\
{\
//排名\
	required int32 rankNo=9;\
//角色id\
	required int32 uId=2;\
//角色名字\
	required string uName=3;\
//积分\
	required int32 score=6;\
//击杀\
	required int32 kill=7;\
\
}\
\
\
\
//活动大类\
message ActivityClassification\
{\
//活动类型\
	required int32 id=1;\
//开始时间\
	required int64 begin=2;\
//结束时间\
	required int64 end=3;\
//模板id\
	required int32 templateId=4;\
//图片url\
	required string imageUrl=5;\
//小标题\
	required string smallTitle=6;\
//大标题\
	required string bigTitle=7;\
//活动描述\
	required string desc=12;\
//排序\
	optional int32 sort=13;\
//参数 领取物品 如果是排行活动或者转盘活动则为 排行类型\
	optional string parm1=14;\
	\
\
//小标题\
	optional string smallTitle_tw=16;\
//小标题\
	optional string smallTitle_en=17;\
//小标题\
	optional string smallTitle_jp=18;\
//大标题\
	optional string bigTitle_tw=19;\
//大标题\
	optional string bigTitle_en=20;\
//大标题\
	optional string bigTitle_jp=21;\
//活动描述\
	optional string desc_tw=22;\
//活动描述\
	optional string desc_en=23;\
//活动描述\
	optional string desc_jp=24;\
//最小可见等级\
	optional int32 minLevel=25;\
//最大可见等级\
	optional int64 maxLevel=26;\
//排行活动结算时间\
	optional int64 cycleTime=27;\
//是否是开服活动 0:不是 1:是\
	optional int32 isNewServerActivity=28;\
}\
\
\
//活动\
message Activity\
{\
//活动id\
	required int32 id=1;\
	\
//条件类型\
	required int32 conditionType =3;\
//条件达成值\
	required int32 conditionValue =4;\
//活动大类id\
	required int32 acId=5;\
//奖励物品\
	repeated ItemSimple item=6;\
//参数1\
	optional string parm1=17;\
//参数2\
	optional string parm2=18;\
//参数3\
	optional string parm3=19;\
//参数4\
	optional string parm4=20;\
//参数1\
	optional string parm1_tw=21;\
//参数1\
	optional string parm1_en=22;\
//参数1\
	optional string parm1_jp=23;	\
}\
\
//活动\
message ItemSimple\
{\
//道具id\
	required int32 id=1;\
//道具数量\
	required int32 count =3;\
}\
//活动进度\
message ActivityProgress\
{\
//活动id\
	optional int32 activityId=11;\
//条件类型\
	optional int32 conditionType=1;\
//当前达成值\
	optional int32 currentValue =3;\
//时间\
	optional int64 time =13;\
}\
//活动\
message PlayerActivity\
{\
	\
//当前进度\
	repeated ActivityProgress progress =1;\
//已经领取\
	repeated int32 takenId =2;\
//领取过的大类奖励\
	repeated int32 takenClassificationIds=3;\
//已经领取过的排行活动奖励\
	repeated int32 takenRankActivityIds=4;\
}\
\
\
\
import 'Msg.proto';\
package msg;\
// (生成Java类时包名；C#类的命名空间)\
option java_package = 'com.server.logic.socket.netmsg';\
\
//地块类型枚举\
enum CountryWarObjTypeEnum\
{\
//普通地块\
    tile=1;\
//玩家城池\
    playerCity=2;\
//中立城池\
    worldCity=3;\
//资源点\
    res=4;\
//玩家城池城皮\
    playerCitySide=5;\
//中立城池城皮\
    worldCitySide=6;\
//树\
    tree		=7;\
}\
//地块类型枚举\
enum CountryWarCityTypeEnum\
{\
//主城\
    mainCity=1;\
//分城\
    branchCity=2;\
//要塞\
    fort=3;\
}\
\
//部队出征类型枚举\
enum CountryWarAtkTypeEnum\
{\
//正常攻击\
	NormalPointAtk		=1;\
	//NormalPointSweep	=2;//普通扫荡\
//宝箱扫荡\
	RewardBoxSweep		=3;\
	//OwnerPointMonsterAtk=4;//自己地块贼兵攻击\
	//WorldMonsterAtk		=5;//山贼攻击\
}\
\
//玩家收藏的地块\
message CountryWarPlayerCollectPoint\
{\
//地块ID\
	required int32 pointId=1;\
//收藏说明\
	required string des=2;\
//地块等级\
	required int32 pointLv=4;\
}\
\
//国战玩家数据\
message CountryWarPlayer\
{\
//玩家ID\
	required int32 uid=1;\
//出征令数量\
	required int32 marchingNum=2;\
//最后计算出征令时间\
	required int64 lastCalcMarchingTime=5;\
//沦陷我的联盟ID\
	required int32 controlMeLeagueId=6;\
//矿石\
	required int32 ore=8;\
//木材\
	required int32 wood=9;\
//收藏的地块\
	repeated CountryWarPlayerCollectPoint countrywarPlayerCollectPoints=10;\
//武勋值\
	required int32 countryWarFightScore=11;\
//势力值\
	required int32 countryWarPowerScore=12;\
//国战玩家状态 0:已沦陷 1:正常\
	required int32 state=14;\
//玩家状态开始时间\
	required int64 stateTime=15;\
//自己的地块信息\
	repeated CountryWarMapPoint ownerPoints=16;\
//城池信息\
    repeated CountryWarCity ownerCitys=17;\
//反叛需要判金\
    required int32 unOccupationNeedMoney=18;\
//当前反叛赎身判金\
	required int32 curOccupationMoney=19;\
//预备役数量\
	required int32 reservesNum=20;\
//沦陷我的联盟ID\
	optional string controlMeLeagueName=21;\
//周武勋排行信息\
	optional CountryWarPlayerFightScoreRankInfo countryWarPlayerFightScoreRankInfo=22;\
//最后逃亡时间\
	optional int64 lastEscapeCountryWarTime=23;\
//逃亡次数\
	optional int32 escapeCountryWarTimes=24;\
\
}\
//周武勋排行信息\
message CountryWarPlayerFightScoreRankInfo\
{\
//上周武勋分数\
	required int32 preWeekFightScore=1;\
//周武勋排行\
	required int32 weekFightScoreRank=2;\
//周武勋联盟最高排行\
	required int32 weekFightScoreLeagueRank=3;\
//是否领取周武勋排行个人奖励\
	required bool isTakeFightScoreRankReward=4;\
//是否领取周武勋排行联盟奖励\
	required bool isTakeFightScoreRankLeagueReward=5;\
}\
//周武勋排行信息推送\
message CountryWarPlayerFightScoreRankInfo_S2C_Push\
{\
//周武勋排行信息\
	optional CountryWarPlayerFightScoreRankInfo countryWarPlayerFightScoreRankInfo=22;\
//玩家当前武勋值\
	required int32 countryWarFightScore=11;\
}\
//武勋变化推送\
message CountryWarPlayerFightScoreChange_S2C_Push\
{\
//玩家当前武勋值\
	required int32 countryWarFightScore=11;\
}\
//简单国战玩家数据\
message SimpleCountryWarPlayer\
{\
//玩家ID\
	required int32 uid=1;	\
//玩家简单信息\
	optional SimplePlayer SimplePlayer=3;\
//占领我的玩家\
	required int32 controlMeLeagueId=4;\
//该玩家的地块\
	repeated CountryWarMapPoint ownerPoints=5;\
//该玩家的城池\
	repeated SimpleCountryWarCity ownerCitys=6;\
//沦陷开始时间(沦陷用)\
	optional int64 controlMeBeginTime=7;\
\
}\
\
//国战联盟信息\
message CountryWarLeague{\
//联盟ID\
	required int32 leagueId=1;\
//联盟拥有的城池\
	repeated int32 ownerWorldCityIds=2;\
}\
\
\
//地块信息\
message CountryWarMapPoint\
{\
//地块ID,可与坐标互换\
	required int32 id=1;\
//地块类型 1:地块 2:玩家城池 3:中立城池 4:资源点\
	required CountryWarObjTypeEnum objType=2; \
//玩家ID,如果是空地则出生时为0 如果为玩家资源则为玩家ID\
	required int32 uid=6;\
//地块难度\
	required int32 npcHardValue=7;\
//耐久度\
	required int32 durability=8;\
//城池ID\
	required int64 playerCityId=3;\
//中立城池ID\
	required int32 worldCityId=4;\
//资源ID(资源点用)\
	required int32 resId=11;\
//最后征收时间\
	required int64 lastHavsetTime=13;\
//满耐久\
	required int32 maxDurability=14;\
//占领时间\
	required int64 ownerTime=15;\
//是否有守军\
	required bool hasStayFormation=16;\
//地块状态 0:放弃 1:正常\
	required int32 state=17; \
//状态开始时间\
	required int64 stateTime=18;\
\
}\
\
//地块上的宝箱\
message CountryWarMapPointStandObj\
{\
//地块ID\
	required int32 pointId=1;\
//宝箱或贼兵结束时间 用于计算持续时间\
	required int64 endTime=4;\
//0:未领取 1:已领取\
	required int32 state=5;\
// 宝箱或贼兵id\
	required int32 sweepId = 6; \
}\
\
//国战中立城池驻守或调度的部队信息\
message CountryWarWorldCityFormation\
{\
//玩家ID\
	required int32 uid=1;\
//布阵ID\
	required int32 formationId=2;\
}\
//国战中立城池\
message CountryWarWorldCity\
{\
//中立城池ID\
	required int32 Id=1;\
//对应的所有者ID(玩家或者城池ID ,根据表判断)\
	required int32 ownerId=2;\
//当前耐久\
	required int32 curDurability=3;\
//驻守的队伍\
	repeated CountryWarWorldCityFormation stayFormation=4;\
//调度的部队\
	repeated CountryWarWorldCityFormation scheduleFormation=5;\
//所有者名称\
	optional string ownerName=6;\
//占领时间\
	required int64 ownerTime=7;\
//展示玩家ID\
	optional int32 disUserId=8;\
//展示玩家昵称\
	optional string disUName=9;\
\
}\
\
//简单国战中立城池\
message SimpleCountryWarWorldCity\
{\
//中立城池ID\
	required int32 Id=1;\
//对应的所有者ID(玩家或者城池ID ,根据WorldCastle Type判断 2:玩家 其他:联盟)\
	required int32 ownerId=2;\
//当前耐久\
	required int32 curDurability=3;\
//所有者名称\
	optional string ownerName=4;\
//占领时间\
	required int64 ownerTime=5;\
//展示玩家ID\
	optional int32 disUserId=8;\
//展示玩家昵称\
	optional string disUName=9;\
}\
\
//简单玩家城池信息\
message SimpleCountryWarCity\
{\
//对象ID\
	required int64 objId=1;\
//城池类型\
	required CountryWarCityTypeEnum cityType=2;	\
//耐久度\
	required int32 durability=3;\
//耐久度\
	required int32 maxDurability=4;\
//城池等级\
    required int32 cityLevel=5;\
//中心点ID\
	required int32 centerPointId=6;\
//玩家定义的\
	required string cityName=7; \
//占领时间\
	required int64 ownerTime=9;\
//地块状态 0:放弃 1:正常 2:建造 3:升级\
	required int32 state=17;\
//状态开始时间\
	required int64 stateTime=18;\
//所属玩家ID\
	optional int32 uid=19;\
}\
\
//玩家城池\
message CountryWarCity\
{\
//对象ID\
	required int64 objId=1;\
//城池类型\
	required CountryWarCityTypeEnum cityType=2;	\
//耐久度\
	required int32 durability=3;\
//耐久度\
	required int32 maxDurability=4;\
//城池等级\
    required int32 cityLevel=5;\
//中心点ID\
	required int32 centerPointId=6;\
//玩家定义的\
	required string cityName=7; \
//占领时间\
	required int64 ownerTime=9;\
//地块状态 0:放弃 1:正常 2:建造 3:升级\
	required int32 state=17;\
//状态开始时间\
	required int64 stateTime=18;\
\
}\
\
\
//国战武将\
message CountryWarLeader\
{\
//武将ID\
	required int32 leaderId=1;\
//当前兵力\
	required int32 soldierNum=2;\
//本次征兵数量\
	required int32 productSoldierNum=3;\
//开始征兵时间\
	required int64 beginProductSoldierTime=4;\
//武将显示位置\
	required int32 position=5;\
//出手顺序\
	required int32 skillSort=6;\
//武将状态 0:重伤 1:正常\
	required int32 state=7;\
//武将状态开始时间\
	required int64 stateTime=8;\
//是否是主将\
	required bool isMainLeader=9;\
	\
}\
\
\
\
//国战布阵信息\
message CountryWarFormation\
{\
//布阵ID\
	required int32 formationId=1;\
//布阵武将Id列表\
	repeated CountryWarLeader leaders=2;\
//玩家ID\
	required int32 uid=3;\
//所在城池ID\
	required int64 cityObjId=4;\
//状态0:闲置 1:驻守 3:出征 4:返回 5:调度 (驻守 调度 走过去的时间 都读 beginTime)\
	required int32 state=5;\
//驻守类型 1:地块 2:中立城池\
	required int32 defendType=7;\
//对应驻守的对象ID 如果是地块则为地块ID 如果是中立城池则为中立城池ID\
	required int32 defendObjId=12;\
//当前所在地块Id  状态为0用\
	required int32 curPointId=8;\
//开始行军地块ID  状态为3/4用\
	required int32 beginPointId=9;\
//攻击地块ID 状态为3/4用\
	required int32 endPointId=10;\
//出征时间	 状态为3/4用\
	required int64 stateTime=11;\
//布阵排序(显示用)\
	required int32 seqeuence=13;\
//调度类型 1:玩家城池   2:中立城池\
	required int32 scheduleType=16;\
//调度的城池ID\
	required int64 scheduleCityId=14;\
//行军速度\
	required float speed=15;\
//部队出征类型枚举 只状态为3-出征时使用\
	required CountryWarAtkTypeEnum atkType=17; \
//布阵技能释放方式(0:智能 1:顺序 )\
	optional int32 skillFunction=18;\
//行军速度\
	required float basicSpeed=19;\
//状态结束时间\
	required int64 endTime=20;\
\
}\
\
//国战布阵信息(用于地图展示)\
message CountryWarSimpleFormation\
{\
//布阵ID\
	required int32 formationId=1;\
//显示的武将ID\
	repeated int32 disLeaderId=2;\
//玩家ID\
	required int32 uid=3;	\
//当前所在地块Id\
	required int32 curPointId=4;\
//开始行军地块ID\
	required int32 beginPointId=5;\
//攻击地块ID\
	required int32 endPointId=6;\
//出征时间\
	required int64 beginTime=7;\
//行军速度\
	required float speed=8;\
//状态0:闲置 1:驻守 3:出征 4:返回 5:调度 (驻守 调度 走过去的时间 都读 beginTime)\
	required int32 state=9;\
//本镇武将IW\
	optional int32 mainLeaderId=10;\
//部队出征类型枚举 只状态为3-出征时使用\
	required CountryWarAtkTypeEnum atkType=17; \
//联盟ID\
	optional int32 leagueId=18;\
}\
//战报武将\
message CountryWarBattleLeader{\
//武将ID\
	required int32 leaderId=1;\
//武将等级\
	required int32 leaderLevel=2;\
//武将星级\
	required int32 leaderStar=3;\
//初始兵力\
	required int32 orgSoldierNum=4;\
//最终兵力\
	required int32 lastSoldierNum=5;\
//恢复兵力\
	required int32 returnSoldierNum=6;\
//造成伤害\
	required int32 atkHp=7;\
//承受伤\
	required int32 loseHp=8;\
//治疗伤害\
	required int32 reHp=9;\
//是否重伤\
	optional bool isBadly=10;\
	\
}\
//国战战报玩家\
message CountryWarBattlePlayer\
{\
//玩家ID\
	required int32 UID=2;\
//玩家昵称\
	required string UName=4;\
//显示武将ID 为0:无队伍信息 直接显示无队伍\
	required int32 DisLeaderId=6;\
//武将详情\
	repeated CountryWarBattleLeader BattleLeaders=12;\
//联盟ID\
	optional int32 leagueId=7;\
//联盟名称\
	optional string leagueName=8;\
//增加的武勋数量\
	optional int32 addFightScore=9;	\
}\
\
//战报\
message CountryWarBattle\
{\
//战报ID\
	required int32 battleId=1;	\
//胜利方玩家ID\
	required int32 winUID=2;\
//进攻地块ID\
	required int32 targetPointId=3;\
//防守方损失类型 0:无损失 1:耐久度 2:被拆除 3:被占领 4:被沦陷\
	required int32 targetLoseType=4; \
//防守方损失耐久\
	required int32 targetLoseDurabilityOrHP=5;\
//进攻方信息\
	required CountryWarBattlePlayer atkPlayer=6;\
//防守方信息\
	optional CountryWarBattlePlayer targetPlayer=7;\
//战报状态 0:未读 1:已读\
	required int32 state=8;\
//战报时间\
	required int64 battleTime=9;\
//地块类型枚举\
	required CountryWarObjTypeEnum targetPointType=10;\
//如果地块类型枚举为 中立城池:中立城池ID  玩家城皮:城皮ID 资源点:资源ID resourcePoint 主键ID 如果为BOSS则为bossId warBossRefresh主键ID ,如果为地块则直接读default表\
	required int32 targetPointObjId=11;\
//如果为城池 则为城池名称\
	optional string targetCityName=12;\
//目标地块拥有者Id\
	optional int32 targetOwnerId=14;\
//目标地块拥有者名称\
	optional string targetOwnerName=15;\
//战报所属玩家ID\
	optional int32 battleOwnerId=16;\
//是否是兵力不足攻打\
	optional bool isSolderLessBattle=17;\
}\
\
\
//国战大区人数\
message AreaGroup\
{\
//大区ID\
	required int32 groupId=1;\
//可进入玩家数量\
	required int32 playerNum=2;\
}\
\
\
\
//联盟收藏的地块\
message LeagueCollectCountryWarPoint\
{\
//地块ID\
	required int32 pointId=1;\
	required string collectName=2;\
//说明\
	required string collectDes=3;\
//收藏的玩家ID\
	required int32 optUID=4;\
//收藏的玩家昵称\
	required string optUName=5;\
//收藏时间\
	required int64 collectTime=6;\
}\
\
\
\
//国战地块数据变化推送(可能是被人攻打)\
message CountryWarPointDataChange_S2C_Push\
{\
//地块信息\
	required CountryWarMapPoint point=1;\
}\
\
//地块地表数据变化推送\
message CountryWarMapPointStandObjChange_S2C_Push\
{\
//地表对象\
	repeated CountryWarMapPointStandObj objs=3;\
}\
\
\
\
//国战玩家数据变化推送\
message CountryWarPlayerDataChange_S2C_Push\
{\
//同进入国战获取自己的国战信息\
	required CountryWarPlayer countryWarPlayerInfo=1;\
}\
//国战玩家数城池据变化推送\
message CountryWarCityDataChange_S2C_Push\
{\
//城池数据\
	required CountryWarCity warCity=1;\
//是否是删除\
	required bool isDel=2;\
}\
//国战玩家布阵数据变化推送(可能是被人攻打)\
message CountryWarFormationDataChange_S2C_Push\
{\
//布阵信息\
	required CountryWarFormation formation=1;\
//是否是删除\
	required bool isDel=2;\
}\
\
\
//拖屏查看地块信息\
message GetMapAreaInfo\
{\
//要查看的地块信息\
    repeated int32 tileIds=1;   \
}\
//拖屏查看地块信息\
message GetMapAreaInfo_S2C\
{\
    required int32 errCode=1;\
//玩家信息\
    repeated SimpleCountryWarPlayer players=2;\
//中立城池信息\
    repeated SimpleCountryWarWorldCity worldCitys=3;\
//区域内出征的兵\
	repeated CountryWarSimpleFormation atkFormations=4;\
//被摸过的地块\
	repeated CountryWarMapPoint atkedNoneUserPoints=5;\
}\
\
\
\
//进入国战获取自己的国战信息 只会返回 调用无参数\
message GetCountryWarPlayerInfo_S2C{\
	required int32 errCode=1;\
//自己的国战信息\
	optional CountryWarPlayer countryWarPlayer=4;\
//国战大区人数(只有玩家没参加国战才会有这条记录)\
	repeated AreaGroup groupPlayers=5;\
//自己的布阵信息\
	repeated CountryWarFormation formations=6;\
//攻打我的人\
	repeated CountryWarAtkMeInfo_Pojo atkMeInfo=7;	\
//自己的国战联盟信息\
	optional CountryWarLeague countryWarLeague=8;\
//中立城池列表\
	repeated SimpleCountryWarWorldCity simpleCountryWarWorldCitys=9;\
//地表对象 (宝箱)\
	repeated CountryWarMapPointStandObj stanObjs=11;\
}\
//进入国战,选取 随机玩家位置\
message FirstEnterCountryWar\
{\
//大区ID\
	required int32 areaGroupId=1;\
}\
\
//进入国战,选取 随机玩家位置\
message FirstEnterCountryWar_S2C\
{\
//如果errCode为0 则重新拉  GetCountryWarPlayerInfo_S2C\
	required int32 errCode=1;  \
//当前判金\
	required int32 curMoney=2;\
}\
\
message CountryWarFormation_Pojo\
{\
//武将ID\
	required int32 leaderId=1;\
//显示的位置\
	required int32 position=2;\
//出手顺序\
	required int32 skillSort=3;\
//是否是主将\
	required bool isMainLeader=4;\
}\
\
//国战布阵\
message CountryWarFormationChanged\
{\
//布阵ID(如果是新布阵则为0)\
	required int32 formationId=1;\
//武将列表\
	repeated CountryWarFormation_Pojo leaders=2;\
//城池ID\
	required int64 cityId=3;\
//布阵排序 (显示用,新布阵用)\
	required int32 seqeuence=6;\
//布阵技能释放方式(0:智能 1:顺序 )\
	optional int32 skillFunction=7;\
}\
//国战布阵\
message CountryWarFormationChanged_S2C\
{\
	required int32 errCode=1;\
//布阵\
	optional CountryWarFormation countryWarFormation=2;	\
//当前铜币\
	required int32 curCoin=3;\
//当前粮食\
	required int32 curFood=4;\
//当前木材\
	required int32 curWood=5;\
//当前铁矿\
	required int32 curOre=6;\
//是否删除布阵\
	required bool isDel=7;\
	\
}\
\
//部队武将调换\
message CountryWarFormationSwap\
{\
	required int32 formationId1=1;\
	required int32 leaderId1=2;\
	required int32 formationId2=3;\
	required int32 leaderId2=4;\
}\
\
//部队武将调换\
message CountryWarFormationSwap_S2C\
{\
//错误号;\
	required int32 errCode=1;\
//最新部队1信息\
	optional CountryWarFormation formation1=2;\
//最新部队2信息\
	optional CountryWarFormation formation2=3;\
}\
\
//国战布阵征兵是实体类\
message CountryWarFormationFormationProductSoldier_Pojo\
{\
//武将ID\
	required int32 leaderId=1;\
//征兵数量\
	required int32 productNum=2;\
}\
//国战布阵征兵\
message CountryWarFormationFormationProductSoldier\
{\
//布阵ID\
	required int32 formationId=1;	\
//国战布阵征兵是实体类\
	repeated CountryWarFormationFormationProductSoldier_Pojo soldierPojo=2;\
//是否使用预备役\
	required bool isUseReserves=3;\
}\
//国战布阵征兵\
message CountryWarFormationFormationProductSoldier_S2C\
{\
	required int32 errCode=1;\
//布阵\
	required CountryWarFormation countryWarFormation=2;	\
//当前铜币\
	required int32 curCoin=3;\
//当前粮食\
	required int32 curFood=4;\
//当前木材\
	required int32 curWood=5;\
//当前铁矿\
	required int32 curOre=6;\
//当前预备役数量\
	required int32 curReservesNum=7;\
}\
\
\
\
//国战出征\
message CountryWarAttack{\
//攻击的地块ID(如果是boss则必须为boss中心点)\
	required int32 atkPointId=1;\
//布阵ID\
	required int32 formationId=2;\
//攻击类型\
	required CountryWarAtkTypeEnum atkEnum=4;	\
}\
//国战出征\
message CountryWarAttack_S2C{\
	required int32 errCode=1;\
//攻击的地块ID\
	required int32 atkPointId=2;\
//攻击的布阵\
	optional CountryWarFormation formation=3;\
//攻击状态\
	optional int32 atkState=4;\
\
}\
//国战撤军\
message CountryWarFormation_Back{\
//布阵ID\
	required int32 formationId=1;\
}\
//国战撤军\
message CountryWarFormation_Back_S2C{\
	required int32 errCode=1;\
//攻击的布阵\
	optional CountryWarFormation formation=2;\
}\
\
\
//国战出征开始攻打前获取当前信息\
message CountryWarBeginAttack\
{\
//出征队伍ID\
	required int32 formationId=1;	\
}\
//国战出征开始攻打前获取当前信息\
message CountryWarBeginAttack_S2C\
{\
	required int32 errCode=1;\
	//攻打状态 0:对方免战 直接返回 1:已属于自己 直接返回 2:可攻打  4:(排队)等待 5:地块已超出上限 等待 6:直接赢 7:没有加入联盟 不可攻打 直接返回 8:地块已处于保护期 等待\
	required int32 atkState=2;\
//国战攻打对象布阵\
	optional OtherPlayerAtkInfo formation=3; \
//自己的出征的布阵(如果不可打则直接返回)\
	optional CountryWarFormation atkformation=5;	\
//最后被攻打时间\
	optional int64 lastAttackTime=6;\
\
//直接赢结果\
	optional CountryWarAtkResult_S2C atkResult=8;\
//当前出征令数量\
	required int32 curMarchingNum=9;\
}\
\
\
\
//国战出征攻打结果打掉的武将兵力实体类\
message CountryWarAtkLeader_Pojo\
{\
//武将ID\
	required int32 leaderId=1;\
//死兵数\
	required int32 deadSoldierNum=2;\
//造成伤害\
	optional int32 atkHp=7;\
//承受伤\
	optional int32 loseHp=8;\
//治疗伤害\
	optional int32 reHp=9;\
}\
//国战攻打结果\
message CountryWarAtkResult\
{\
//出征队伍ID\
	required int32 formationId=1;\
//攻打布阵ID\
	required int32 targetFormationId=2;\
//输赢\
	required bool atkResult=3;\
//攻打时间(秒)\
	required int32 atkTimeLong=4;\
//打掉的武将兵力信息\
	repeated CountryWarAtkLeader_Pojo atkLeaderPojo_target=6;\
//打掉的自己的武将兵力信息\
	repeated CountryWarAtkLeader_Pojo atkLeaderPojo_atker=7;\
//武将战斗属性校验\
	repeated LeaderFightCheckProp LeaderFightCheckProp=8;\
\
}\
//国战攻打结果\
message CountryWarAtkResult_S2C\
{\
	required int32 errCode=1;\
//出征队伍ID\
	required int32 formationId=2;\
//输赢\
	required bool atkResult=3;\
//自己的出征的布阵\
	optional CountryWarFormation atkformation=4;\
//攻打状态 0:对方免战 直接返回 1:已属于自己 直接返回  7:没有加入联盟 不可攻打 直接返回  8:地块已处于保护期 直接返回\
	required int32 atkState=5;\
//打下来的地块信息\
	optional CountryWarMapPoint point=6;\
//摧毁的城池信息\
    optional int64 destoryCityId=8;\
//自己的国战信息\
	optional CountryWarPlayer countryWarPlayer=9;\
//奖励信息\
	optional Reward reward=10;\
//打掉的耐久\
	optional int32 atkDurability=14;\
//是否是兵力不足攻打\
	optional bool isSolderLessBattle=17;\
	\
}\
\
//攻打我的玩家信息通信类\
message CountryWarAtkMeInfo_Pojo\
{\
//布阵简单信息\
	required CountryWarSimpleFormation simplerFormation=1;	\
//玩家昵称\
	required string uName=2;\
	\
}\
//攻打我的玩家信息\
message CountryWarAtkMeInfo_S2C_Push\
{\
//\
	required CountryWarAtkMeInfo_Pojo atkMeInfo=1;\
//是否撤退\
	required bool isDel=2;\
}\
\
//获取布阵简单信息\
message GetCountryWarSimpleFormation{\
//玩家ID\
	required int32 uid=1;\
//布阵ID\
	required int32 formationId=2;\
}\
\
//获取布阵简单信息\
message GetCountryWarSimpleFormation_S2C{\
//\
	optional CountryWarSimpleFormation simplerFormation=1;\
}\
\
//获取地块守军信息\
message GetCountryWarPointStayFormation\
{\
//地块ID\
	required int32 tileId=2;\
}\
//获取地块守军信息\
message GetCountryWarPointStayFormation_S2C\
{\
//地块ID\
	required int32 errCode=1;\
//国战攻打对象布阵\
	optional OtherPlayerAtkInfo formation=2; \
}\
\
//筑城\
message CreateCity\
{\
//中心点ID\
	required int32 centerPointId=1;\
//城池类型\
	required CountryWarCityTypeEnum cityType=2;\
//城池名称\
	required string cityName=3;\
}\
//筑城\
message CreateCity_S2C\
{\
//错误号\
	required int32 errCode=1;\
//城\
	optional CountryWarCity city=2;\
//当前铜钱\
	required int32 curCoin=3;\
//当前粮食\
	required int32 curFood=4;\
//当前铁矿\
	required int32 curOre=5;\
//当前铁矿\
	required int32 curWood=6;\
//当前行军令\
	required int32 curMarchingNum=7;\
//最新的地块信息\
	repeated CountryWarMapPoint point=8;\
}\
//城池升级\
message UpgradeCity\
{\
//城池ID\
	required int64 cityId=1;\
	\
}\
//城池升级\
message UpgradeCity_S2C\
{\
//错误号\
	required int32 errCode=1;\
//城\
	optional CountryWarCity city=2;\
//当前铜钱\
	required int32 curCoin=3;\
//当前粮食\
	required int32 curFood=4;\
//当前铁矿\
	required int32 curOre=5;\
//当前铁矿\
	required int32 curWood=6;\
//当前行军令\
	required int32 curMarchingNum=7;\
//最新的地块信息\
	repeated CountryWarMapPoint point=8;\
}\
\
//造城皮\
message CreateCitySide\
{\
//城池ID\
	required int64 cityObjId=1;\
//城皮地块ID\
	required int32 pointId=2;\
}\
//造城皮\
message CreateCitySide_S2C\
{\
//错误号\
	required int32 errCode=1;\
//最新的地块信息\
	optional CountryWarMapPoint point=2;\
//当前铜钱\
	required int32 curCoin=3;\
//当前粮食\
	required int32 curFood=4;\
//当前铁矿\
	required int32 curOre=5;\
//当前铁矿\
	required int32 curWood=6;\
}\
\
\
\
\
//国战驻守\
message CountryWarStayFormation\
{\
//布阵ID\
	required int32 formationId=1;\
//地块ID\
	required int32 tileId=2;\
}\
//国战驻守\
message CountryWarStayFormation_S2C\
{\
//错误号\
	required int32 errCode=1;\
//布阵ID\
	required int32 formationId=2;\
//地块ID\
	required int32 tileId=3;\
//最新的布阵消息\
	required CountryWarFormation countryWarFormation=4;\
}\
\
//国战调度\
message CountryWarScheduleFormation\
{\
//布阵ID\
	required int32 formationId=1;\
//1:玩家城池 2:中立城池\
	required int32 cityType=2;\
//对应的调度的城池ID\
	required int64 cityId=3;\
}\
//国战调度\
message CountryWarScheduleFormation_S2C\
{\
//错误号\
	required int32 errCode=1;\
//布阵ID\
	required int32 formationId=2;\
//1:玩家城池 2:中立城池\
	required int32 cityType=3;\
//对应的调度的城池ID\
	required int64 cityId=4;\
//最新的布阵消息\
	required CountryWarFormation countryWarFormation=5;\
}\
\
\
//放弃地块\
message GiveUpTile\
{\
//地块ID\
	required int32 tileId=1;\
}\
\
//放弃地块 如果是城池则只有哨岗才能放弃\
message GiveUpTile_S2C\
{\
//错误号\
	required int32 errCode=1;\
//放弃的自己的地块信息\
	repeated CountryWarMapPoint points=2;\
//放弃的城池信息\
    optional CountryWarCity city=5;\
	\
}\
\
//收藏地块\
message CollectCountryWarPoint\
{\
//地块ID\
	required int32 pointId=1;\
//说明\
	required string des=2;\
//是否是删除\
	required bool isDel=3;\
//地块等级\
	required int32 pointLv=4;\
}\
//收藏地块\
message CollectCountryWarPoint_S2C\
{\
//错误号\
	required int32 errCode=1;\
}\
\
\
//联盟收藏地块\
message AddLeagueCollectCountryWarPoint\
{\
//地块ID\
	required int32 pointId=1;\
//收藏名称\
	optional string collectName=2;\
//说明\
	optional string collectDes=3;\
//是否是删除\
	required bool isDel=4;\
}\
//联盟收藏地块\
message AddLeagueCollectCountryWarPoint_S2C\
{\
//错误号\
	required int32 errCode=1;\
//地块ID\
	required int32 pointId=2;\
//是否是删除\
	required bool isDel=4;\
}\
\
//获取联盟收藏地块列表\
message GetLeagueCollectCountryWarPoint_S2C\
{\
//收藏的地块列表\
	repeated LeagueCollectCountryWarPoint leagueCollectCountryWarPoints=1;\
}\
\
\
//国战势力值排行\
message CountryWarRank_Power\
{\
	required Rank rank=1;\
//分成数量\
	required int32 BranchCityNum=2;\
//要塞数量\
	required int32 forbCityNum=3;\
//总地块数量\
	required int32 totalTileNum=4;\
}\
\
//国战武勋值排行\
message CountryWarRank_FightScore\
{\
	required Rank rank=1;\
//对方玩家信息\
	required SimplePlayer simplePlayer=4;\
}\
\
//获取国战武勋排行\
message GetCountryWarRank_Fight_S2C\
{\
	repeated CountryWarRank_FightScore ranks=2;\
//上周排行\
	repeated CountryWarRank_FightScore ranks_pre_week=3;\
}\
\
//获取国战势力值排行\
message GetCountryWarRank_Power_S2C\
{\
	repeated CountryWarRank_Power ranks=2;\
}\
\
\
\
//国战战报推送\
message CountryWarBattle_S2C_Push\
{\
//战报\
	required CountryWarBattle countryWarBattle=1;\
}\
\
//国战战报已读\
message CountryWarBattle_Read\
{\
//战报ID 如果length为0 则全部\
	repeated int32 battleId=1;\
}\
\
//国战战报已读\
message CountryWarBattle_Read_S2C\
{\
//战报ID\
	repeated int32 battleId=1;\
}\
\
//国战预备役变化推送到客户端\
message CountryWarResChange_S2C_Push\
{\
//当前铁矿\
	optional int32 ore=1;\
//当前木材\
	optional int32 wood=2;\
//当前行军令\
	optional int32 marching=3;\
//当前武勋\
	optional int32 fightScore=4;\
//当前预备役数量\
	optional int32 reservesNum=5;\
}\
\
//获取地块AI守军数量\
message GetMapPointAIFormationNum\
{\
	required int32 pointId=1;\
}\
\
//领取国战武勋排行奖励\
message GetCountryWarFightScoreRankReward_S2C\
{\
//错误号\
	required int32 errCode=5;\
//奖励信息\
	optional Reward reward=1;\
//武勋领奖信息\
	optional CountryWarPlayerFightScoreRankInfo CountryWarPlayerFightScoreRankInfo=2;\
}\
\
//领取国战武勋联盟排行奖励\
message GetCountryWarFightScoreLeagueRankReward_S2C\
{\
//错误号\
	required int32 errCode=5;\
//奖励信息\
	optional Reward reward=1;\
//武勋领奖信息\
	optional CountryWarPlayerFightScoreRankInfo CountryWarPlayerFightScoreRankInfo=2;\
}\
\
\
//获取地块AI守军数量\
message GetMapPointAIFormationNum_S2C\
{\
	required int32 pointId=1;\
//最高守军数量\
	required int32 maxFormationNum=2;\
//当前AI守军数量\
	required int32 curFormationNum=3;\
}\
\
//获取城池首次攻打排行\
message GetWorldCityRanks\
{\
	required int32 worldCityId=1;\
}\
\
//获取城池首次攻打排行\
message GetWorldCityRanks_S2C\
{\
//错误号\
	required int32 errCode=5;\
//杀兵排行\
	repeated Rank soldierRanks=1;\
//耐久排行\
	repeated Rank durabilityRanks=2;\
//盟主名称\
	optional string leagueOwnerName=3;\
//盟主ID\
	optional int32 leagueOwnerId=4;\
//首战联盟名称\
	optional string firstOwnerName=6;\
//首战联盟ID\
	optional int32 firstOwnerId=7;\
}\
\
\
//部队投降\
message CountryWarFormationSurrenderAtk\
{\
//部队ID\
	required int32 formationId=1;\
}\
\
//部队投降\
message CountryWarFormationSurrenderAtk_S2C\
{\
//错误号\
	required int32 errCode=1;\
//部队ID\
	required int32 formationId=2;\
//最新部队信息\
	optional CountryWarFormation countryWarFormation=3;\
}\
\
//城池完成建造或升级\
message CountryWarCityUpgradeOrCreateCoolingTime\
{\
//城池ID\
	required int64 cityObjId=1;\
// 消耗判金(客户端计算值)\
	optional int32 costMoney = 2; \
}\
\
//城池完成建造或升级\
message CountryWarCityUpgradeOrCreateCoolingTime_S2C\
{\
//错误号\
	required int32 errCode=1;\
//城池ID\
	required int64 cityObjId=2;\
//当前判金\
	required int32 curMoney=3;\
//当前城池信息\
	optional CountryWarCity countryWarCity=4;\
}\
\
//部队立即回城\
message CountryWarFormationFastBack\
{\
//部队ID\
	required int32 formationId=1;\
}\
\
//部队立即回城\
message CountryWarFormationFastBack_S2C\
{\
//错误号\
	required int32 errCode=1;\
//部队ID\
	required int32 formationId=2;\
//最新部队信息\
	optional CountryWarFormation countryWarFormation=3;\
//当前判金数\
	required int32 curMoney=4;\
}\
\
//取消放弃地块\
message CalcleGiveUpTile\
{\
//地块ID\
	required int32 tileId=1;\
}\
\
//取消放弃地块\
message CalcleGiveUpTile_S2C\
{\
//错误号\
	required int32 errCode=1;\
//放弃的自己的地块信息\
	repeated CountryWarMapPoint points=2;\
//放弃的城池信息\
    optional CountryWarCity city=5;	\
}\
\
//修改中立城池展示的玩家\
message ChangeCountryWarWorldCityDisUser\
{\
//中立城池ID\
	required int32 worldCityId=2;\
//展示的玩家ID\
	required int32 disUserId=3;\
}\
\
//修改中立城池展示的玩家\
message ChangeCountryWarWorldCityDisUser_S2C\
{\
//错误号\
	required int32 errCode=1;\
//中立城池ID\
	required int32 worldCityId=2;\
//改变后的中立城池\
	optional SimpleCountryWarWorldCity countryWarWorldCity=3;\
}\
\
//获取中立城池列表\
message GetCountrywarWorldCitys_S2C\
{\
//中立城池列表(有主)\
	repeated SimpleCountryWarWorldCity simpleCountryWarWorldCitys=9;\
}\
\
//沦陷玩家交罚金赎身\
message UnOccupation\
{\
// 反叛类型 1. 资源反叛 2.直接反叛扣道具\
	required int32 type = 1; \
// 资源反叛 上缴 粮食\
	optional int32 food = 2; \
// 资源反叛 上缴 铜钱\
	optional int32 coin = 3; \
// 资源反叛 上缴 矿石\
	optional int32 ore = 4; \
// 资源反叛 上缴 木材\
	optional int32 wood = 5; \
}\
\
//沦陷玩家交罚金赎身\
message UnOccupation_S2C\
{\
//错误号\
	required int32 errCode=1;\
//是否叛变成功\
	required bool isUnOccupation=2;\
// 玩家当前粮食\
	optional int32 food = 3; \
// 玩家当前铜钱\
	optional int32 coin = 4; \
// 玩家当前矿石\
	optional int32 ore = 5; \
// 玩家当前木材\
	optional int32 wood = 6; \
//最新的国战玩家数据\
	optional CountryWarPlayer countryWarPlayer=7;\
}\
\
//获取天下大事\
message GetSysEvents_S2C\
{\
//天下大事\
	repeated SysEvent sysEvents=1;\
}\
\
//天下大事完成推送\
message SysEvent_S2C_Push\
{\
//天下大事\
	required SysEvent sysEvent=1;\
}\
\
//领取天下大事奖励\
message TakeSysEventReward\
{\
//事件ID\
	required int32 sysEventId=1;\
}\
\
//领取天下大事奖励\
message TakeSysEventReward_S2C\
{\
//错误号\
	required int32 errCode=1;\
//事件ID(错误号为0 则客户端自行增加已领取过的奖励ID)\
	required int32 sysEventId=2;\
//奖励信息\
	optional Reward reward=3;\
}\
\
//国战产出\
message CountryWarOutPut\
{\
//铜钱产出\
	required int32 coinOutPut=1;\
//粮食产出\
	required int32 foodOutPut=2;\
//铁矿产出\
	required int32 oreOutPut=3;\
//木材产出\
	required int32 woodOutPut=4;\
}\
\
//获取国战玩家产出\
message GetPlayerOutPut_S2C\
{\
//领地产出\
	optional CountryWarOutPut pointOutput=10;\
//科技产出\
	optional CountryWarOutPut playerCitySideOutput=20;\
//中立城池产出\
	optional CountryWarOutPut worldCityOutput=30;	\
//联盟科技产出\
	optional CountryWarOutPut leagueScienceOutPut=31;	\
}\
\
// 行军令下次回复时间推送(推送)\
message PlayerMarchingNumNext_S2C\
{\
//下次恢复时间\
	required int64 nextTime=1;\
//上次恢复时间\
	required int64 lastTime=2;\
}\
\
// 武家每日俸禄领取\
message HeroLevelDayRewardGet_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 奖励\
	optional Reward reward = 2; \
}\
\
// 武家升级\
message HeroLevelUpgrade_S2C {\
// 错误号\
	required int32 errCode = 1; \
// 官职\
	optional int32 powerLevel = 2; \
// 剩余物品id\
	optional int32 itemId = 3; \
// 剩余数量\
	optional int32 itemNum = 4; \
}\
\
//逃亡\
message EscapeCountry{\
//大区ID\
	required int32 areaGroupId=1;\
}\
//逃亡\
message EscapeCountry_S2C{\
//如果errCode为0 则重新拉  GetCountryWarPlayerInfo_S2C\
	required int32 errCode=1; \
}\
\
//获取国战大区人数信息\
message GetCountryWarAreaGroup_S2C{\
//大区信息\
	repeated AreaGroup areaGroup=1;\
}\
\
//领取首次进入国战奖励\
message TakeFirstEnterCountryWarReward_S2C\
{\
// 错误号\
	required int32 errCode = 1; \
//当前判金\
	optional int32 curMoney=2;\
//是否领取过首次进入国战奖励\
	optional bool isTakeFirstEnterCountryWarReward=3;\
}\
\
//获取联盟战报\
message GetLeagueBattles_S2C\
{\
//战报列表\
	repeated CountryWarBattle countryWarBattles=1;\
//最后查看联盟战报时间\
	optional int64 lastCheckLeagueBattleTime=19;\
}\
//有新的联盟战报\
message NewLeagueBattleNotice_S2C_Push\
{\
//最后联盟战报时间\
	required int64 leagueLastBattleTime=1;\
}\
\
\
"
return protoStr