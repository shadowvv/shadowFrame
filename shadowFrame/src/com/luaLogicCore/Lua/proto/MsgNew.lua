local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
message Test{}\
enum ActionEnum\
{\
	CoolingTime_CreateBuild					=1;//建造建筑冷却\
	CoolingTime_UpgrageBuild				=2;//升级建筑冷却\
	CoolingTime_UpgrageTech					=3;//升级科技冷却\
	CoolingTime_UpgrageGift					=4;//升级天赋冷却\
	CreateBuild 							=5;//建造建筑\
	UpgrageBuild 							=6;//升级建筑\
	UpgrageTech 							=7;//升级科技\
	UpgrageGift 							=8;//升级天赋\
	Shop_Get 								=9;//征收铜钱\
	Farm_Get 								=10;//征收粮食\
	CreateBuild_Return 						=11;//建造建筑返回\
	UpgrageBuild_Return 					=12;//升级建筑返回\
	AttackCity 								=13;//攻打城市使用兵粮\
	AttackCityReward 						=14;//征战奖励\
	City_Get 								=15;//城市征收\
	CityOwnerChange 						=16;//征战更换对手\
	Unlock_Area 							=17;//解锁区域\
	Upgrage_Leader 							=18;//武将升级\
	Leader_EatLeader 						=19;//武将吞噬	\
	Upgrage_Equip 							=20;//装备强化\
	Composition_Equip 						=21;//装备重铸\
\
	Attack_PVE 								=22;//攻打关卡\
	BuyStrength 							=23;//购买体力\
	SweepPve 								=24;//扫荡关卡	\
	ChaperReward							=25;//领取章节奖励\
	AutoAddStrength							=26;//体力自动增长\
	PlayerUpLevel							=27;//玩家升级\
	SysSend									=28;//系统发放\
\
	TaskReward								=29;//任务奖励\
\
	get12StrengthReward						=30;//中午十二点体力奖励\
	get18StrengthReward						=31;//下午是吧点体力奖励\
\
\
	Recharge 								=32;//充值\
	MallBuy									=33;//商城购买\
	SwearLeader								=34;//武将抽卡\
	SysSendMail								=35;//系统邮件\
\
	CityRevenge								=36;//复仇\
	SignReward 								=37;//签到奖励\
\
	AdvanceLeader							=38;//武将进化\
	compositionLeader						=39;//武将合成\
	compositionMaterial						=40;//材料合成\
	upgradeLeaderStar						=41;//武将升星\
	integralMallRefresh						=42;//刷新积分商城\
	buyIntegralGoods				        =43;//购买积分商品\
	challengeActivity				        =44;//挑战活动\
	defaultAdd								=45;//系统初始化\
	upgradeLeaderTalentSkill				=46;//升级武将天赋\
	tournamentChallenge						=47;//竞技场挑战\
	tournamentWeekReward					=48;//竞技场周奖励\
	tournamentSeasonReward					=49;//竞技场赛季奖励\
	tournamentExchange						=50;//竞技场对换\
	sweepPve 								=51;//扫荡\
	partConvert								=52;//碎片转换\
	resetTech								=53;//重置科技\
	vipMonthCard							=54;//vip月卡充值\
	vipBuyReward							=55;//购买VIP礼包\
	getMonthCardReward 						=56;//领取月卡礼包\
	resetJYPVE 								=57;//重置精英副本\
	resetActivityPVECount					=58;//当前重置活动副本次数	\
	buyCityAttackNum						=59;//购买征战次数	\
	buyTournamentCount						=60;//购买竞技场次数	\
	CDKeyExchange							=61;//cdkey活动兑换\
	firstRechargeRewardMoney				=62;//首冲奖励金币\
	compensatePromotionReward				=63;//补偿竞技场晋级奖励\
	BugyUpgrade 							=64;//奉行位置升级\
	upgradeEquipStar						=65;//装备升星\
	upgradeFunctionsBuild					=66;//升级功能性建筑\
	changeBlockFunctionsBuild				=67;//更换坑里的功能建筑\
	functionsBuildHarvestWuHun				=68;//功能建筑征收武魂\
	familyWarChallenge						=70;//合战挑战\
	swearEquip						        =71;//开宝箱\
	exchangeEquip						    =72;//兑换装备\
	resetLeader						     	=73;//武将重置\
	attackCampaignBattle					=74;//攻打战役\
	getCampaignBattleGiftbagReward			=75;//领取战役关卡宝箱\
	getCampaignBattleChapterReward			=76;//领取战役章节奖励\
	friendGive                              =77;//好友赠送\
	guildTake                               =78;//社团领取\
	sysActivityTaken                        =79;//活动领取或兑换\
	exchangeShop                            =80;//圣诞商城兑换\
	infinityCityFight                       =81;//攻打远征\
	infinityCityPassed                      =82;//跳过远征\
	infinityCityOpenBox                     =83;//远征开宝箱\
	infinityCityMallRefresh                 =84;//远征刷新商城\
	infinityCityMallBuy                     =85;//远征商城购买\
	leaderAwaken		                    =86;//武将觉醒\
	leaderAeakenPreciousCompose				=87;//武将觉醒材料合成\
	resetFarWar								=89;//重置远程\
	receiveInviteCode						=90;//领取激活码\
	unlockCowry								=91;//解锁专宝\
	refreshCowry							=92;//洗练专宝\
	kamikiCardExchange						=93;//神级抽卡兑换\
	swearHero								=94;//英雄祈愿消耗\
	createLeague							=95;//创建联盟\
	reNameLeague							=96;//联盟改名\
	leagueDonation							=97;//联盟捐献\
	leagueShopBuy							=98;//联盟商城购买\
	playerUnOccupation						=7001;//联盟沦陷的玩家反叛\
	buyFunctionsBuildBlock					=99;//购买辅助建筑坑\
	functionsBuildHarvestZhanHun			=100;//功能建筑征收战魂\
	praisePlayer							=101;//点赞玩家\
	openLeagueWar							=102;//开启联盟讨伐战\
	atkLeaguePve							=103;//攻打联盟讨伐战\
	takeLeagueWarBossReward					=104;//领取Boss关卡奖励\
	playerChangeName						=105;//玩家改名\
	coolingLeagueWarBossTime				=106;//清除联盟战boss时间\
	UpgrageTalent							=107;//升级兵种技能\
	sweepFarWar								=108;//无限城扫荡\
	sweepFarWarOpenBox						=109;//无限城开宝箱\
	sweepFarWarOpenBox_Money				=110;//无限城判金开宝箱\
	takeSpecialTaskReward_first				=111;//领取特殊任务首次奖励\
	takeSpecialTaskReward_normal			=112;//领取特殊任务普通奖励\
	takeActivityRankReward					=113;//领取排行活动奖励\
\
	AutoAdd 								=114;//自动增长\
	bindingTwitterRewardGet					=115;//绑定推特帐号领奖\
\
	sellEquip								=116;//出售装备\
	collectExchangeRewardGet				=117; // 立志传奖励领取\
	sevenGodsMoneyFinish					=118; // 七福神一键完成\
	sevenGodsRewardGet						=119; // 七福神奖励领取\
	CollectChapterRewardGet					=120; // 器魂章节奖励\
	CollectScoreRewardGet					=121; // 器魂积分奖励\
	LeagueScienceUpgrade					=122;//升级联盟科技\
	leagueImpeachment						=123;//联盟弹劾\
	kamikiBoxExchange						=124;//织田武田上杉 兑换\
	takeDinnerReward						=125;//领取夜宴奖励\
	takeGrwothReward						=126;//领取成长礼包\
	gemStoneUpStar							=127;//魂石升星\
	SevenGodsShopBuyItem					=128;//七福神商城购买\
	SevenGodsShopRefresh					=129;//七福神商城刷新\
	FacebookRewardGet						=130;//fackbook点击领奖\
\
	LeaderBreakLevel						=131;//武将突破等级\
\
	ChristmasBuyMall						=132;//圣诞商场购买\
	NewYearActivityTask						=133;//年玉活动领取\
	NewYearFamilyWar						=134;//圣诞大合战活动\
	FunctionsBuildChangeNickName			=135;//功能建筑改名\
	functionsBuildHavsetItem				=136;//功能建筑征收\
	buyShopItem								=137;//购买幻舞商城物品(以后会有其他的)\
	refreshShopItem							=138;//商城刷新\
	takeWatchAdsReward						=139;//领取观看广告奖励\
	leaderLgStep1							=140;//武将升级到LG 第一阶段\
	leaderLgStep2							=141;//武将升级到LG 第二阶段\
	infinityCityOpenBox31					=142;//无限城开启31层宝箱\
	guessCardOpen							=143;//卡牌配对\
	guessCardBuyTimes						=144;//卡牌配对 购买次数\
		//===============国战===========================\
	leaderOffFormation		=60001;//武将下阵\
	productSoldier			=60002;//国战造兵\
	atkPoint				=60003;//国战出征\
	CountryHavset			=60004;//国战征收\
	AtkCountryBoss			=60005;//国战打BOSS\
	UpgradeScience			=60006;//国战升级科技\
	KillBoss				=60007;//击杀boss\
	createCity				=60008;//造城\
	upgradeCity				=60009;//升级城池\
	countryPointHavset		=60010;//国战资源点征收\
	countryBasicHavset		=60011;//国战自然征收\
	countryWarCityUpgradeOrCreateCoolingTime	=60012;//国战建筑升级立即完成\
	countryWarFormationFastBack	=60013;//国战立即撤军\
	firstEnterCountryWar	=60014;//首次进入国战\
	takeSysEventReward		=60015;//领取天下大事奖励\
	takeHeroLevelReward		=60016;//领取武家奖励\
	upgradeHeroLevel		=60017;//升级武家\
	createCitySide			=60018;//造城皮\
	getCountryWarFightScoreRankReward =	60019;//领取国战武勋排行奖励\
	getCountryWarFightScoreLeagueRankReward =60020;//领取国战武勋联盟排行奖励\
	stayPoint				=60021;//国战出征\
	formationBack			=60022;//撤军\
	//=====================灵兽==============\
	upgradeGhostMonster		=80001;//灵兽升级\
	upgradeGhostMonsterStar	=80002;//灵兽升星\
	swearGhostMonster		=80003;//召唤灵兽\
	compositionGhostMonster	=80004;//灵兽合成\
	firstTakeGhostMonsterId	=80005;//首次进入灵兽领取\
	\
\
}\
\
//装备位置枚举\
enum EquipPosition\
{\
	Weapon=1;//武器\
	Helmet=2;//头盔\
	Armour=3;//铠甲\
	Talisman=4;//家宝\
	Horse=5;//坐骑\
}\
\
//错误返回\
message ErrorMsg_S2C\
{\
	optional int32 errorCode=1;//错误码\
}\
   \
  //客户端推送消息\
message PushMsg2Client{\
	repeated PushBody pushBodys=1;//\
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
	optional int32 uid=1;//玩家ID\
    optional  string uName=2;//玩家昵称\
    optional  int32 exp=3;//玩家经验\
    optional  int32 level=4;//玩家等级	\
\
	repeated int32 ChatperRewardList=7;//领取过的章节奖励\
\
	optional int32 commandValue=8;//统领值\
	optional int32 guide=9;//新手引导步骤\
	optional int32 sex=10;//性别 0：女1：男\
	optional int32 headId=11;//头像ID\
  \
    optional int32 monthGetSignRewardTimes=13;//本月领取签到次数\
    optional int64 lastGetSignRewardTime=14;//最后领取签到奖励时间\
    repeated int32 triggerGuideList=15;\
	\
	required int64 lastCalcStrengthTime=18;//最后计算体力时间\
	optional int32 canAttackCityNum=19;//当前可征战次数\
	optional int64 lastCalcCanAttackCityTime=20;//最后计算可征战次数时间\
	optional int32 guideStep=21;//新手引导当前步骤\
	//==============================VIP================================================\
	required int32 curVIPLevel=22;//当前VIP等级\
	required int32 curVIPExp=23;//当前VIP经验\
	optional int32 monthVipCardId=24;//月活卡ID 没有为0\
	optional int64 monthVipCardEndTime=25;//月卡结束时间\
	repeated int32 buyedVIPRewardLevel=26;//已经购买的VIP礼包的VIP等级\
\
	optional int32 buyStrengthCount=27;//当前购买体力次数\
	optional int32 resetJYPVECount=28;//当前重置精英副本次数\
	optional int32 resetActivityPVECount=29;//当前重置活动副本次数\
	optional int32 buyAttackCityCount=30;//当前购买征战次数\
	optional int32 buyTournamentCount=31;//当前购买竞技场次数\
	optional int64 lastGetVIPMonthCardRewardTime=32;//最后领取VIP月卡奖励时间\
	repeated int32  sendFirstRechargeRewardIds=33;//已经发放的充值双倍奖励	\
\
\
//==============================VIP结束================================================\
//==============================战斗相关================================================\
	optional float atcAngery=34;//初始攻击士气\
	optional float tournamentAngery=35;//初始竞技场士气\
//==============================战斗相关结束================================================\
\
//==============================圣诞节相关================================================\
	optional int32 christmasTreeId=36;//圣诞树ID\
//==============================圣诞节相关结束================================================\
	optional int32 assistLeaderId=37;//助战武将ID\
	optional int64 lastCalcCityResTime=38;//最后计算城池资源时间\
	repeated int32 praise_UID=39;//今天赞的玩家UID\
	optional int32 praiseCount = 40; //赞数量 \
	optional int32 changeNameCounts=41;//改名次数\
	optional int64 regTime=42;//注册时间\
	repeated int32 takedSysEventIds=43;//领取过的天下大事奖励\
\
	optional float countryWarAngery=44;//国战初始士气\
    optional int32 arenaFormationCapa=45;//竞技场阵型战力\
    optional int32 atkFormationCapa=46;//攻击阵型战力\
    repeated int32 checkedSysActivityClassificationIds=47;//查看过的活动大类ID\
    optional int32 arenaFormationSkillFunction=48;//竞技场布阵技能释放方式(0:智能 1:顺序 )\
    optional int32 atkFormationSkillFunction=60;//攻击布阵技能释放方式(0:智能 1:顺序 )\
	optional int32 serverId = 49; // 服务器id\
	optional string platformId = 50; // 平台id\
	optional string platformUid = 51; // 平台玩家Id\
\
	optional int64 lastTakeDinnerTime=52;//最后夜宴奖励领取时间\
	optional int32 growthThingId=53;//成长基金物品ID\
	repeated int32 takedGrowthRewardLevel=54;//领取过的成长基金等级\
	optional bool isTakeFirstEnterCountryWarReward=55;//是否领取过首次进入国战奖励\
\
	\
	optional int32 firstTakeGhostMonsterId=58;//免费领取的召唤兽ID\
\
	//==============================万圣节相关================================================\
	optional int32 pumpkinLanternId=56;//南瓜灯ID\
	//==============================万圣节相关结束================================================\
	repeated int32 disChatUIDs=59;//屏蔽聊天的玩家ID\
\
	optional int32 takeWatchAdsRewardTimes=61;//领取观看广告奖励次数\
}\
\
\
//玩家资源\
message PlayerRes{	\
    optional  int32 money=1;//金币数	\
    optional  int32 person=2;//当前拥有劳力数	\
    optional  int32 coin=3;//当前钱庄铜钱数量\
	optional  int32 food=4;//当前粮仓粮食数量\
	optional  int32 hammer=5;//锤子\
	optional  int32 strength=6;//体力\
	optional int32 maxEquipNum=7;//最多装备数量	\
	optional int32 boxKey=11;//宝箱钥匙\
	optional int32 friendPoint=12;//友情点\
}\
\
//建筑信息\
message BuildingInfo\
{\
	optional  int32 buildtype=1;//建筑类型\
    optional  int32 level=2;//建筑等级\
	optional  int32 state=3;//当前状态 1:正常 2：升级中 3:建造中\
	optional  int64 stateTime=4;//状态开始时间\
	optional  int64 lastGetCoinTime=5;//最后征收铜钱时间\
	optional  int64 lastGetFoodTime=6;//最后征收粮食时间\
	optional int32 output=7;//产出、小时（用于农田或钱庄）\
	optional int32 capability=8;//最大产出值（用于农田或钱庄）\
	optional int32 exp=9;//当前经验（主城用）\
	optional int32 usedPerson=10;//已经使用的劳力	\
	optional int64 lastGetItemTime=11;//最后征收物品时间\
}\
\
//武将阵型信息\
message Formation\
{\
	required float positionX=1;//位置X\
	required float positionY=2;//位置Y\
	required int32 	skillSort=3;//技能出手顺序\
	required int32 leaderId=4;//武将Id\
	required bool  isMainLeader=5;//是否是主将\
	required int32 ai=6;//武将AI\
	optional int32 isPao=7;//是否是炮 0：不是 1：是\
}\
\
\
//武将的攻击属性\
message LeaderAtkProp\
{\
	optional  int32 Force=1;//勇武    \
    optional  int32 Guide=2;//统御   \
    optional  int32 Ploy=3;//策略 \
	required int32 Hp=4;//兵力    \
	required int32 ATK=5;//攻击    \
	required int32 Defense=6;//防御    \
	required float ATKSpeed=7;//攻速    \
	required int32 Spell=8;//阵法    \
	required int32 SpellDefense=9;//阵法防御 \
    optional float Baoji=10;//暴击\
    optional float Shanbi=11;//闪避\
    optional float MoveSpeed=12;//移动速度\
    optional float ReHp=13;//回血\
    optional int32 AI=14;//AI类型\
	optional  int32 capability=15;//战力\
	optional float spellBaoji=16;//战法暴击\
	optional float spellDiKang=17;//战法抵抗\
	optional float spellChuanTou=18;//战法穿透\
	optional float baojiShanghai=19;//暴击伤害\
\
	optional float hit_persent=20;//命中\
	optional float hurtAdd_persent=21;//最终伤害增加\
	optional float hurtMinus_persent=22;//最终伤害减少\
	optional float hurtBack_persent=23;//反弹伤害（物理）\
	optional float spellHurtBack_persent=24;//反弹伤害(战法）\
\
	optional int32 buildingAttack=25;//攻城值\
	optional float WarMove=26;//国战中的移动速度\
}\
\
//武将觉醒后的觉醒属性\
message LeaderAwakeProp\
{\
	required int32 id=1;//实例ID\
	required int32 propId=2;//属性ID 被动表的effectId\
	required float propValue=3;//属性值 与被动表呼应\
	required int32 propType=4;//属性类型 1：固定属性 2：可变属性\
}\
\
//武将信息\
message LeaderInfo\
{\
	optional int32 id=1;//武将实例ID\
    optional int32 leaderLevel=3;//武将等级	\
    optional int32 star=4;//星级\
    optional int32 advancedLv=5;//进化等级\
    repeated TalentSkill talentSkills=6;//被动技能列表\
	optional LeaderAtkProp atkFormationProp=7;//攻击阵型属性\
    optional LeaderAtkProp arenaFormationProp=8;//竞技场攻击属性\
    optional LeaderAtkProp countryWarFormationProp=16;//防御阵型属性\
    repeated int32 awakeFunctionsItemIds=10;//身上的觉醒材料ID\
    optional int32 awakeLeaderId=11;//觉醒后的武将ID\
    repeated LeaderAwakeProp awakeProps=12;//武将觉醒后的觉醒属性\
	optional int32 cowryAtt=13;//武将专宝ID\
	repeated CowryInfo cowrys=14;//武将专宝随机属性\
	optional int32 state=15;//武将状态 1：正常 2：重伤不治（重伤的武将不能用于防守布阵）\
	optional int64 stateTime=17;//状态开始时间(如果为0则为正常状态，如果开始时间+时间段小于当前时间则为正常状态)\
	optional int32 maxCowryQuanlity=18;//专宝刷新的最高品质\
	optional int32 countrywarStrength=19;//国战行动力\
	optional int32 breakLevel=20;//武将当前突破的等级\
	optional int32 lgStep=21;//转生到LG阶段  默认0 没有转生阶段 2:转生完成\
}\
\
\
//简单武将信息\
message SimpleLeaderInfo\
{\
	optional int32 id=1;//武将实例ID\
    optional int32 leaderLevel=3;//武将等级	\
    optional  int32 star=4;//星级\
    optional  int32 advancedLv=5;//进化等级\
    optional  int32 capability=6;//战力\
    optional  bool isMainLeader=7;//是否主将\
	optional  int32 awakeLeaderId=8;//觉醒武将ID 0:未觉醒\
	repeated int32 gemStoneIds=9;//该武将装备的魂石\
	optional int32 lgStep=21;//转生到LG阶段  默认0 没有转生阶段 2:转生完成\
}\
\
//城市守兵武将\
message AILeader\
{\
	required int32 leaderId=1;//武将ID\
	required int32 leaderLevel=2;//武将等级\
    optional bool isMainLeader=3;//是否是主将\
    optional int32 skillSort=4;//技能出手顺序\
    optional  int32 star=5;//星级\
    optional  int32 advancedLv=6;//进化等级\
    optional LeaderAtkProp prop=7;//属性\
    required float positionX=8;//位置\
	required float positionY=9;//位置\
	repeated TalentSkill talentSkills=10;//被动技能列表\
	optional int32 awakeLeaderId=11;//觉醒后的武将ID\
	optional int32 isPao=12;//是否是炮\
	optional int32 soldierNum=13;//国战带兵数量\
	optional int32 countryWarPos=14;//国战布阵位置\
	repeated CowryInfo cowrys=16;//武将专宝随机属性\
	optional int32 maxCowryQuanlity=18;//专宝刷新的最高品质\
	optional int32 lgStep=19;//lg阶段 >=2 为LG武将\
\
}\
//科技信息\
message TechnologyInfo\
{\
	optional int32 memberId=1;//科技ID\
    optional int32 level1=2;//科技等级分组1\
    optional int32 level2=3;//科技等级分组2\
    optional int32 level3=4;//科技等级分组3\
}\
//天赋信息\
message GiftInfo\
{\
	optional int32 id=1;//ID\
    optional int32 level=2;//天赋等级\
    optional int32 giftId=3;//天赋ID\
    optional int32 memberId=4;//兵种ID\
    optional int32 dataId=5;//数据表配置主键ID\
\
}\
\
//技能信息\
message TalentInfo\
{\
    optional int32 level=1;//天赋等级\
    optional int32 giftId=2;//天赋ID\
    optional int32 memberId=3;//兵种ID\
    optional int32 layerId=4;//数据表配置主键ID\
\
}\
\
\
\
//其他玩家攻击信息\
message OtherPlayerAtkInfo\
{\
	required int32 UID=1;//玩家ID\
	required string uName=2;//玩家昵称\
	repeated AILeader formation=3;//对应武将列表（可根据竞技场或者平时切换三个阵型）\
    optional int32 mainBuildLevel=4;//天守阁等级\
    optional int32 fansuoLevel=5;//番所等级\
    optional float anger=6;//对方士气\
    optional int32 uLevel=7;//玩家等级\
    optional int32 bugyBuildLevel=8;//奉行建筑等级\
    optional int32 christmasTreeId=9;//圣诞树等级\
	optional int32 capa=10;//战力\
	repeated FunctionsBuild functionsBuilds=11;//辅助建筑列表\
	repeated BlockFunctionsBuild blockfunctionsBuilds=12;//坑列表\
	optional int32 formationId=13;//布阵ID\
	optional int32 arenaFormationSkillFunction=14;//竞技场布阵技能释放方式(0:智能 1:顺序 )\
	optional GhostMonster formationGhostMonster=15;//布阵的灵兽\
	repeated GhostMonster lingyouGhostMonsters=16;//灵佑的灵兽\
	optional int32 ghostMonsterTreeLevel=17;//通灵树等级\
}\
\
//装备信息\
message Equip{\
	optional int32 id=1;//装备实例ID\
	optional int32 type=2;//装备类型\
	optional int32 level=3;//当前等级\
	optional int32 leaderId=4;//装备于哪个武将 0 为未装备\
	optional int32 exp=5;//经验\
	optional int32 star=6;//装备星级\
	optional bool isProtect=7;//装备是否保护\
}\
\
//被动技能\
message TalentSkill\
{\
	required int32 id=1;//技能ID\
	required int32 level=2;//技能等级\
	required int32 state=3;//状态 0：未解锁 1:解锁\
}\
\
//PVE信息\
message PVE{\
	required int32 id=1;//PVEID\
	required int32 attackNum=2;//总攻打次数\
	required int32 todayAttNum=3;//今日攻打次数\
	required int32 maxStar=4;//最高评级\
	required int64 lastAttackTime=5;//最后攻打时间\
\
}\
\
//设备信息\
message DeviceInfo\
{\
	optional string deviceOS=1;//手机操作系统\
	optional string resolution=2;//手机分辨率	\
	optional string deviceId=3;//手机识别码\
	optional string deviceModel=4;//手机模型 如iphone ipad itouch\
}\
\
//功能建筑\
message FunctionsBuild\
{\
	required int32 buildId=1;//建筑ID\
	required int32 buildLevel=2;//建筑等级\
	optional int64 lastHarvestTime=3;//最后征收时间\
	optional string nickName=4;//别名 如果为空或空字符串则为本来名称\
	required int32 changeNickNameTimes=5;//修改别名次数\
}\
\
//当前已存储武魂数量\
message BlockFunctionsBuild\
{\
	required int32 blockId=1;//底座ID\
	required int32 functionsBuildId=2;//功能建筑ID\
}\
\
//魂石\
message GemStone\
{\
	required int32 instId=1;//实例ID\
	required int32 gemStoneId=2;//类型ID\
	required int32 star=3;//星级\
	required int32 leaderId=4;//装备的武将ID 没装备则为0\
}\
\
//召唤兽\
message GhostMonster\
{\
	required int32 id=1;//id\
	required int32 level=2;//等级\
	required int32 star=3;//星级\
	required int32 formationType=5;//在哪个布阵位置上 0:无 1:布阵 201:灵佑左  202:灵佑右 其他:武将ID(>20000) \
	required int32 capa=6;//战力\
}\
\
\
//玩家升级\
message PlayerUpLevel_S2C\
{\
	required int32 curLevel=1;//玩家当前等级\
	required int32 curExp=2;//玩家当前经验\
}\
\
\
//购买体力返回\
message BuyStrength_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 curStrength=2;//当前体力\
	required int32 buyStrengthCount=3;//今天购买体力次数\
    required int64 curMoneyNum=4;//当前判金\
\
}\
\
\
//公告\
message Announce_S2C\
{\
	optional bool IsNew = 1; //是否是新公告\
	optional string Announce = 2; //公告告内容\
}\
\
//客户端日志记录\
message ClientLog\
{\
	required string content=1;//日志内容\
}\
\
//抽卡信息\
message SwearInfo\
{\
	required int32 XJFreeNum=1;//小吉免费抽卡次数\
	required int32 XJPriceNum=2;//小吉铜币抽卡次数\
	required int64 XJFreeTime=3;//小吉免费最后抽卡时间\
	required int64 DJFreeTime=4;//大吉最后抽卡免费时间\
	required int64 LastXJPriceTime=5;//小吉铜币最后抽卡时间\
	required int32 DJTotalNum=6;//大吉累计次数\
	optional int32 lastTimesSLeader=7;//还有几次必出S武将\
	optional int32 curZhuanPanStorageNum=8;//当前转盘库ID\
	optional int32 curDJLuck=9;//当前大吉抽卡幸运值\
	repeated KamikiBoxInfo wutianKamikiBoxInfos=10;//武田抽卡活动信息\
	repeated KamikiBoxInfo zhitianKamikiBoxInfos=11;//织田抽卡活动信息\
	repeated KamikiBoxInfo shanshangKamikiBoxInfos=12;//上杉抽卡活动信息\
	required int32 kamikiLuck=13;//织田 武田 上杉 祭类抽卡幸运值\
	optional int32 lastTimesSLeaderZhiTian=14;//织田还有几次必出S武将\
	optional int32 lastTimesSLeaderWuTian=15;//武田还有几次必出S武将\
	optional int32 lastTimesSLeaderShangshan=16;//上杉还有几次必出S武将\
}\
\
//装备抽卡信息\
message SwearEquipInfo\
{\
	required int64 freeSwearTime=3;//上次免费宝物抽卡时间\
	required string swearEquip_Activity_BeginTime=4;//宝物祭活动开启时间\
	required string swearEquip_Activity_EndTime=5;//宝物祭活动结束时间\
	required int32 swearEquip_Activity_TotalTimes=6;//活动时间内累计抽卡次数\
	optional int32 swearEquip_Activity_GoodTimes=7;//橙色装备数量\
}\
\
//神兽召唤信息\
message SwearGhostMonsterInfo{\
	required int32 ghostMonsterLuck=1;//神兽召唤幸运值\
	required int32 ghostMonsterDoubleWeekNum=2;//神兽召唤当前双周ID\
	optional int32 swearGhostMonsterFreeTime=3;//本轮灵兽抽卡已使用免费次数\
}\
\
//武田上杉织田祭类活动\
message KamikiBoxInfo\
{\
	required int32 primaryKeyId=5;//配置表主键ID\
	required int64 lastExchangeTime=2;//最后领取时间\
	required int32 ExchangeTimes=4;//领取次数\
}\
\
//商城购买信息\
message StoreGoods\
{\
	required int32 id=1;//物品ID\
	required int32 buyTimes=2;//已经购买次数\
}\
\
\
//邮件中的资源\
message MailThings\
{\
	required int32 objType=1;//资源类型 1:铜钱 2:兵粮 3:判金 4:锤子 5:物品 6:征战积分\
	required int32 objId=2;//对应的资源ID\
	required int32 num=3;//数量\
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
    optional string senderName=16;//发件人\
    optional string senderName_tw=17;//发件人\
    optional string senderName_en=18;//发件人\
    optional string senderName_jp=19;//发件人\
}\
\
//系统消息\
message SysMessage\
{\
	required int32 id=1;//消息ID\
	required int32 type=2;//消息类型  1:一次通知消息 2：轮播消息\
	required string content=3;//消息内容\
	optional int64 beginTime=4;//开始时间\
	optional int64 endTime=5;//结束时间\
	optional int32 disInterval=6;//展现时间间隔（秒）\
	optional string content_tw=7;//消息内容\
	optional string content_en=8;//消息内容\
	optional string content_jp=9;//消息内容\
}\
//聊天消息实体类\
message ChatModel\
{\
	required int64 id=1;//消息ID\
	required int64 sendTime=2;//发送时间\
	required string content=3;//聊天内容\
	required int32 state=4;//状态 0:未读 1:已读\
	required int32 senderUID=5;//发送者ID\
	required string senderName=6;//发送者昵称\
	required int32 receiveUID=7;//接受者ID\
	required string receiveUName=8;//接受者昵称\
}\
//聊天消息实体类\
message LeagueChatModel\
{\
	required int64 id=1;//消息ID\
	required int64 sendTime=2;//发送时间\
	required string content=3;//聊天内容\
	required int32 senderUID=5;//发送者ID\
	required string senderName=6;//发送者昵称\
}\
\
//陌生人聊天信息\
message StrangerChatModel\
{\
	required int32 targetUID=1;//对方ID\
	required int32 chatNum=2;//聊几句了\
}\
\
//碎片\
message Part\
{\
	required int32 id=1;//碎片ID\
	required int32 num=2;//碎片数量\
	optional int32 comeFromLeaderId=3;//来源 0:正常添加 其他:武将ID/灵兽ID\
}\
\
//材料\
message Material\
{\
	required int32 id=1;//碎片ID\
	required int32 num=2;//碎片数量\
}\
\
//功能性道具\
message FunctionsItem\
{\
	required int32 id=1;//碎片ID\
	required int32 num=2;//碎片数量\
}\
\
//奖励\
message Reward\
{\
	optional int32 exp=1;//当前经验\
	optional int32 coin=2;//当前铜钱\
	optional int32 food=3;//当前军粮\
	optional int32 hammer=4;//当前锤子\
	optional int32 money=5;//当前金币\
	repeated LeaderInfo rewardLeaders=6;//奖励的武将\
	repeated Equip rewardEquips=7;//奖励的装备\
	repeated Part rewardParts=8;//奖励的碎片\
	repeated Material rewardMaterials=9;//奖励的材料\
	optional int32 playerLV=10;//玩家等级\
	optional int32 positionsIntegral=11;//征战积分\
	optional int32 tournamentStone=12;//竞技场之石\
	optional int32 tournamentGhost=13;//竞技场之魂\
	optional int32 strength=14;//当前体力\
	optional int32 boxKey=15;//宝箱钥匙\
	optional int32 christmasTreeId=16;//圣诞树ID\
	optional int32 friendPoint=18;//友情点\
	repeated FunctionsItem functionsItems=19;//功能性道具 \
	optional int32 countrywarReservesNum=20;//国战预备役数量\
	optional int32 countryWarOreNum=21;//国战铁矿数量\
	optional int32 countryWarWoodNum=22;//国战木材数量\
	repeated GemStone rewardGemStones=23;//奖励的魂石\
	optional int32 vipExp=24;//VIP经验\
	optional int32 vipLevel=25;//VIP等级\
	optional int32 pumpkinLanternId=26;//南瓜灯ID\
	repeated GhostMonster rewardGhostMonster=27;//奖励的灵兽\
}\
\
//物品\
message Item\
{\
	required int32 itemId=1;\
	required int32 itemNum=7;\
	required int32 orgNum=8;\
	optional LeaderInfo leader=2;//武将\
	repeated Equip equip=3;//装备\
	optional Part part=4;//碎片\
	optional Material material=5;//材料\
	optional GhostMonster ghostMonster=6;//灵兽\
	repeated GemStone gemStones=9;//灵石\
}\
\
\
\
\
//武将还是碎片\
message LeaderOrPart\
{\
	required bool isLeader=1;//是否是武将\
	optional LeaderInfo leader=2;//武将信息\
	optional Part part=3;//碎片信息\
	optional int32 partComeFrom=4;//如果是碎片 则表明碎片来源 1:已有武将拆解 2：策划配置\
}\
\
//积分商品信息\
message ScoreGoods\
{\
	required int32 itemId=2;//物品id\
	required int32 itemCount=3;//物品数量\
	required int32 needScore=4;//所需积分\
	required bool sold=5;//是否已经被购买\
}\
//挑战活动\
message ChallengeActivity\
{\
	required int32 activityId=1;//活动id\
	required int32 todayChallengeNum=2;//今日挑战次数\
	required int64 lastChallengeTime=3;//最后挑战时间\
}\
\
\
\
\
//奉行\
message Bugy\
{\
	\
	required int32 position =1;//奉行位置\
	required int32 level =2;//奉行等级\
	required int32 leaderId =3;//武将id\
\
}\
\
//奉行\
enum FormationEnum \
{\
	\
	  ATK  =0;//攻击阵型\
	  ARENA =2;//竞技场阵型\
	  ALL=3;//全部\
	  CountryWar=4;//国战布阵\
\
}\
\
\
\
//好友申请\
message FriendApplicant\
{\
	required int32 applicantUID=1;//申请玩家ID\
	required int32 targetUID=2;//被申请玩家ID\
	required SimplePlayer simplePlayer=3;//对应的玩家信息 如果是被申请者看 则为申请者信息 反之为被申请者\
    required int64 applyTime=4;//申请时间\
    \
}\
//好友\
message Friend\
{\
	required int32 frientUID=1;//对方玩家ID\
	required int32 frientType=2;//好友类型 1：好友 2：陌生人 3：黑名单\
	required bool  isOnline=3;//是否在线\
	required SimplePlayer friendPlayerInfo=4;//对方玩家信息\
	required int64 friendedTime=5;//添加好友时间\
}\
//简单角色信息\
message SimplePlayer{ \
	required int32 uId=1;//角色id\
	required string uName=3;//角色名字\
    required int32 uLevel=2;//角色等级\
    required int32 capability=4;//角色战力\
    required int32 vipLevel=5;//VIP\
    required int32 sex=6;//0：女 1：男\
	required bool isOnline=7;//是否在线\
	required int64 offlineTime=8;//离线时间\
	optional string leagueName=9;//所在联盟名称\
	required int32 praiseCount = 10; //赞数量 \
	required int32 capabilityRank = 11; //战力排名\
	required int32 leagueId=12;//所在联盟ID\
	optional int32 disTitle_WorldCityId=13;//国战官位\
	optional GhostMonster formationGhostMonster=15;//布阵的灵兽\
	repeated GhostMonster lingyouGhostMonsters=16;//灵佑的灵兽\
	optional int32 tournamentCapa=18;//竞技场战力\
	\
}\
\
//体力赠送\
message GiveStrength\
{\
	required int32 giveuid=1;//赠送者UID\
	required int32 targetUID=2;//被赠送者UID\
	\
}\
\
\
//战役关卡\
message CampaignBattleLevel\
{\
	required int32 campaignBattleLevelId=1;//关卡ID\
	required int32 passNum=2;//胜利次数\
	required int32 getedGiftBagRewardNum=3;//已经领取的宝箱奖励次数\
	required bool isGetCampignChapterReward=4;//是否领取过大宝箱奖励\
	required int32 todayAttNum=5;//当日胜利次数\
}\
\
 //商城 如果刷新类型为0 不刷新,则没有这条\
 message Shop{\
	required int32 shopType=1;//商城类型\
	optional int64 lastRefreshTime=2;//最后刷新时间\
	repeated ShopItem shopItems=3;//物品列表\
	required int32 refreshTimes=4;//刷新次数\
	optional int32 guessCardTimes=5;//卡牌配对次数(卡牌配对专用)\
}\
//商城物品\
message ShopItem\
{\
	required int32 shopItemId=1;//shop表主键ID\
	required int32 buyNum=2;//购买次数\
}\
\
//卡牌配对\
message GuessCard{\
	repeated int32 guessCardItemIds=1;//卡牌配对的表主键ID(如果为0 则为可翻状态,其他为展示状态)\
	required int32 guessCardTimes=2;//当日已购买配对次数\
	required bool canGuess=3;//当前是否可以卡牌配对\
	required int32 preOpenGuessCardIndex=4;//上次配对索引(第一下),如果这个索引小于0 则可进行第二下\
	required int64 lastResetTime=5;//最后重置时间(用于第二日计算,客户端服务器毕竟有延迟 ,如果客户端判断这个时间跟当前时间不是同一天 ,则不让玩家进行操作 ,比如重新拉数据)\
	repeated int32 canGuessCardItemIds=6;//卡牌配对可以抽出的卡牌配对主键物品\
}\
\
//proto用的hash结构\
message ProtoHashInt2Int\
{\
	required int32 key=1;//Key\
	required int32 value=2;//Value\
}\
//proto用的hash结构\
message ProtoHashInt2String\
{\
	required int32 key=1;//Key\
	required string value=2;//Value\
}\
\
//圣诞活动\
message Christmas\
{\
	\
	required int32 familyWarRank=2;//领取圣诞活动大合战排名 -1 没有排名\
	required int32 familyWarWinOrFail=7;//大合战输赢 0:输 1:赢\
\
	required int32 IsGetFamilyWarRankReweard=3;//是否领取圣诞活动大合战奖 1:领取0:未领取\
	repeated ProtoHashInt2Int buyChrimasMallGoods=4;//购买的圣诞活动商品 商品表主键ID:购买次数\
	repeated ProtoHashInt2Int newYearMallTaskProcess=5;//购年玉活动条件值 活动任务类型ID:条件值\
	repeated int32 takedNewYearMallReeward=6;//领取的年玉活动奖励\
}\
//新年活动时间表(对应NewyearActivity2018数据表)\
message NewYearActivityTime\
{\
	required int32 activityId=1;//活动ID\
	required string beginTime=2;//开启时间\
	required string cycleTime=3;//结算时间\
	required string endTime=4;//结束时间\
}\
\
//玩家远征战斗武将信息\
message InfiniteCityBattleLeader\
{\
	optional int32 leaderId=1;//武将id\
	optional int32 blood=2;//剩余血量\
}\
\
//玩家武将id\
message InfiniteCityLeaderId\
{\
	optional int32 leaderId=1;//武将id\
}\
\
//远征排行榜数据\
message InfiniteCityRankInfo\
{\
	required int32 rank=1;//排行\
	required string name=2;//名字\
	required int32 score=3;//积分\
	optional string leagueName=4;//所在联盟名称\
}\
\
//使用我的邀请码玩家信息\
message InviteCodePlayerInfo\
{\
	required int32 uid=1;//玩家ID\
	required string servername=2;//服务器名字\
	required SimplePlayer friendPlayerInfo=3;//对方玩家信息\
}\
\
//我的邀请码任务完成\
message InviteCodeStateInfo\
{\
	required int32 id=1;\
	required int32 state=2;//状态,0未完成,1完成,-1已领奖\
}\
\
//专宝\
message CowryInfo\
{\
	required int32 id=1;\
	required float count=2;//增加数值\
	required int32 isLock=3;//是否锁定\
}\
\
//城池资源\
message CityRes{\
	required int32 itemId=1;//物品ID\
	required int32 itemNum=2;//物品数量\
}\
//特殊任务\
message SpecialTaskState{\
	required int32 id=1;//数据表ID\
	required bool firstFinished=2;//首次任务是否完成\
	required int32 takedFirstRewardTimes=3;//首次任务领取次数\
	required int32 haveNormalTakeTimes=4;//还有多少次普通任务待领取\
	optional int64 lastTakeFirstRewardTime=5;//最后领取首次完成奖励时间\
}\
\
//排行Model\
message Rank{\
	required int32 uid=1;//玩家ID\
	required string uName=2;//玩家昵称\
	required int32 score=3;//积分\
	required int32 playerRank=4;//排行\
}\
\
//联盟排行\
message LeagueRank{\
	required int32 leagueId=1;//联盟ID\
	required string leagueName=2;//联盟昵称\
	required int32 score=3;//联盟分数\
	required int32 rank=4;//联盟排名\
	repeated int32 ownerCityIds=5;//占领的城池ID列表\
}\
\
//天下大事\
message SysEvent\
{\
	required int32 eventId=1;//事件ID\
	required int32 eventType=2;//事件类型\
	required int32 state=3;//事件状态 0:未完成 1:已完成 2:已超时\
	repeated int32 taskProgresses=4;//事件进度\
	repeated LeagueRank finishedLeagues=5;//完成的联盟 或者 联盟排行 用\
	required int64 finishTime=6;//完成时间\
	optional int64 beginTime=7;//开始时间\
}\
\
//武将战斗属性校验\
message LeaderFightCheckProp\
{ \
	optional float leaderId=1;//武将ID\
	optional float Hp=4;//兵力    \
	optional float ATK=5;//攻击    \
	optional float Defense=6;//防御    \
	optional float ATKSpeed=7;//攻速    \
	optional float Spell=8;//阵法    \
	optional float SpellDefense=9;//阵法防御 \
    optional float Baoji=10;//暴击\
    optional float Shanbi=11;//闪避\
    optional float MoveSpeed=12;//移动速度\
    optional float ReHp=13;//回血\
	optional float spellBaoji=16;//战法暴击\
	optional float spellDiKang=17;//战法抵抗\
	optional float spellChuanTou=18;//战法穿透\
	optional float baojiShanghai=19;//暴击伤害\
	optional float hit_persent=20;//命中\
	optional float hurtAdd_persent=21;//最终伤害增加\
	optional float hurtMinus_persent=22;//最终伤害减少\
	optional float hurtBack_persent=23;//反弹伤害（物理）\
	optional float spellHurtBack_persent=24;//反弹伤害(战法）\
}\
\
// 每日获取友情点 推送\
message DailyFriendPointChange_S2C_Push {\
	required int32 nowDailyFriendPoint = 1; // 当日友情点数量\
}\
\
// 我助战过的好友次数 推送\
message MeAssistedFriendTimesChange_S2C_Push {\
	required int32 meAssistedFriendTimesChange = 1; // 我助战过的好友次数\
}\
\
// 收集兑换任务条目\
message CollectExchangeItem {\
	required int32 id = 1; // ID\
	repeated int32 collectIds = 2; // 已经收集到的物品\
}\
\
// 收集兑换信息 返回\
message CollectExchangeInfo_S2C_Push {\
	repeated int32 getRewardIds = 1; // 收集兑换已经领取过的奖励1表示1/n 2表示2/n 一直到n/n 10000表示全部完成时领取的\
	repeated CollectExchangeItem collectExchangeItem = 2; // 任务条目\
}\
\
// 收集兑换兑换奖励\
message CollectExchangeRewardGet {\
	required int32 exchangeIds = 1; // 兑换id\
}\
\
// 收集兑换兑换奖励 返回\
message CollectExchangeRewardGet_S2C {\
	required int32 errorCode = 1; // 错误码\
	optional Reward reward = 2; // 奖励\
	optional int32 exchangeIds = 3; // 兑换id\
}\
\
// 七福神活动信息\
message SeverGodsInfo_S2C_Push {\
	repeated int32 sevenGodsId = 1; // 1-31号开启的福神\
	optional int32 schedule = 2; // 当前完成进度\
	optional bool isRewardGet = 5; // 是否已经领取\
}\
\
// 七福神一键完成\
message SevenGodsMoneyFinish {\
	required int32 sevenGodsId = 1; // 福神ID\
}\
\
// 七福神一键完成\
message SevenGodsMoneyFinish_S2C {\
	required int32 errCode = 1; // 错误信息\
	required int32 lastMoney = 2; // 玩家剩余判金\
}\
\
// 七福神奖励领取\
message SevenGodsRewardGet {\
	required int32 sevenGodsId = 1; // 福神ID\
}\
\
// 七福神奖励领取\
message SevenGodsRewardGet_S2C {\
	required int32 errCode = 1; // 错误信息\
	optional Reward reward = 2; // 奖励\
}\
// 七福神活动变化推送\
message SeverGodsActivity_S2C_Push {\
	repeated int32 sevenGodsId = 1; // 1-31号开启的福神\
}\
\
// 装备保护\
message EquipProtect {\
	required int32 equipId = 1; // 装备id\
	required int32 type = 2; // 1. 添加保护 2.解除保护\
}\
\
// 装备保护\
message EquipProtect_S2C {\
	required int32 errCode = 1; // 错误信息\
	required Equip equip = 2; // 装备\
}\
\
// 领取战国器魂章节奖励\
message SoulOfChapter {\
	required int32 chapterId = 1; // 章节ID\
}\
\
// 领取战国器魂章节奖励\
message SoulOfChapter_S2C {\
	required int32 errorCode = 1;\
	optional Reward reward = 2; // 奖励内容\
	optional SoulChapter soulChapter = 3; // 收集章节详情\
}\
\
// 领取战国器魂收集奖励\
message SoulOfScore {\
	required int32 score = 1; // id\
	required int32 index = 2; // 第几个(1, 2, 3)\
}\
\
// 领取战国器魂收集奖励\
message SoulOfScore_S2C {\
	required int32 errorCode = 1;\
	optional Reward reward = 2; // 奖励内容\
	optional SoulReward soulReward = 3; // 奖励内容\
}\
\
// 收集章节详情\
message SoulChapter {\
	required int32 chapterId = 1; // id\
	repeated int32 itemIds = 2; // 已经收集到的物品ID\
	required bool isRewardGet = 3; // 是否已经领取过奖励\
}\
\
// 器魂收集奖励\
message SoulReward {\
	required int32 soulId = 1; // id\
	required int32 rewardId = 2; // 第几个(1, 2, 3)\
}\
\
// 器魂收集详情\
message SoulEquipCollect_S2C_Push {\
	repeated SoulChapter soulChapter = 1; // 章节信息\
	repeated SoulReward soulReward = 2; // 收集器魂数量领奖信息\
	required int32 collectNum = 3; // 当前的战魂积分\
}\
\
//好友竞技场切磋结果\
message TryAtkTournamentResult\
{\
	required int32 targetUID=1;//目标好友ID\
	required string targetUName=2;//目标好友昵称\
	required int64 atkTime=3;//切磋时间\
	required int32 atkUID=4;//攻击方ID\
	required bool result=5;//攻击结果\
	required string atkUName=6;//攻击方昵称\
}\
\
//好友竞技场切磋结果推送\
message TryAtkTournamentResult_S2C_Push\
{\
	required TryAtkTournamentResult tryAtkTournamentResults=118;//切磋结果\
}\
\
//扣除物品\
message Cost\
{	\
	required int32 errCode=1;//错误号(前端不用)\
	repeated CostItem items=8;//扣除的物品列表 里面都是终值\
\
}\
//物品\
message CostItem {\
	required int32 itemId=1;//物品ID(同Item表ItemId)\
	required int32 itemNum=2;//物品数量\
	optional int32 orgNum=3;//原始数量\
}\
\
//扣除信息推送\
message Cost_S2C_Push\
{\
	required Cost cost=1;//扣除信息\
}import 'Msg.proto';\
import 'TournamentAndFamilyWarAndActivity.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
//攻打关卡\
message AttackPVE\
{\
	required int32 pveId=1;//关卡ID\
	required int32 star=2;//评级\
	required bool result=3;//攻打结果\
	optional int32 attackTime=4;//攻打时长(秒)\
	optional int32 assistFriendUID=5;//助战好友\
	repeated bool isReached = 6; // 1，2，3星任务目标达成情况\
	repeated LeaderFightCheckProp leaderFightCheckProp=7;//武将战斗属性校验\
}\
//攻打关卡返回\
message AttackPVE_S2C\
{\
	required int32 errCode=1;//错误号\
	optional int32 todayAttNum=2;//今日攻打的次数\
	optional int32 newStar=3;//最新评级\
	optional Reward reward=4;//奖励\
	required int32 pveId=5;//关卡ID\
	optional int64 lastAttackTime=6;//最后攻打时间\
	optional bool result=7;//攻打结果\
\
}\
\
\
\
//扫荡关卡\
message SweepPVE\
{\
	required int32 pveId=1;//关卡ID\
	required int32 num=2;//扫荡次数\
}\
\
//扫荡关卡\
message SweepPVE_S2C\
{\
	required int32 errCode=1;//错误号\
	\
	repeated Reward rewards=2;//扫荡结果\
	optional int64 lastAttackTime=3;//最后攻打时间\
	required int32 pveId=4;//关卡ID\
}\
\
//领取章节奖励\
message GetChaperReward\
{\
	required int32 charperRewardId=1;//章节奖励ID\
}\
//领取章节奖励返回\
message GetChaperReward_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Reward reward=2;//奖励\
	repeated int32 ChatperRewardList=3;//领取过的章节奖励\
}\
\
\
\
//提交任务\
message CommitTask\
{\
	required int32 taskId=1;//任务ID\
}\
//提交任务返回\
message CommitTask_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Reward reward=2;//奖励\
	required int32 taskId=3;//任务ID\
\
}\
\
//任务状态数据变更推送\
message TaskStateChange_S2C\
{\
	required int32  atkPveNum=1;					//攻打普通副本次数				(日常任务）\
	required int32 atkJYPveNum=2;					//攻打精英副本次数				(日常任务）\
	required int32 upgrageLeaderNum=3;				//升级武将次数					(日常任务）\
	required int32 upgrageEquipNum=4;				//强化装备次数					(日常任务）\
	required int32 atkCityNum=5;					//征战次数						(日常任务）\
	required int32 compositionEquipMaxQuality=6;	//最高重铸品阶					(普通任务）\
	required bool get12StrengthReward=7;			//是否领取12点体力奖励			(日常任务)\
	required bool get18StrengthReward=8;			//是否领取18点体力奖励			(日常任务)\
	required int32 upgradeEquipMaxLv=9;				//装备最大强化等级				(普通任务）\
	required int32 todayLeaderEatLeaderNum=10;		//今日武将进阶吞噬武将次数		(日常任务)\
	required bool getSignReward=11;					//今日是否领取签到奖励			(日常任务)\
	required int32 todayUseStrengthNum=12;			//今日消耗体力					(日常任务)\
	required int32 todayUseCoinNum=13;				//今日消耗铜钱数量				(日常任务)\
	required int32 todayEndDayTaskNum=14;			//今日完成日常任务数量			(日常任务)\
	required int32 todaySwearLeaderNum=15;			//今日抽卡次数					(日常任务)\
	required int32 todayUpgradeBuildingNum=16;		//今日升级建筑次数				(日常任务)\
	required int32 totalRechargeNum=17;				//累计充值金额					(成就任务)\
	required int32 totalUseCoinNum=18;				//累计消费铜钱					(成就任务)\
	required int32 totalUseMoneyNum=19;				//累计判金消费					(成就任务)\
	required int32 totalUseFoodNum=20;				//累计军粮消费					(成就任务)\
	required int32 totalUseHammerNum=21;			//累计锤子消费					(成就任务)\
    required int32 todayTournamentNum=22;			//今日完成竞技场挑战次数		(日常任务)\
    required int32 todayChallengeActivityNum=23;	//今日完成某个次数的演武挑战	(日常任务)\
    required int32 todayUseMoneyNum=24;				//今日使用判金数量				(日常任务)\
    required int32 todayUseFoodNum=25;				//今日消耗粮食数量				(日常任务)\
    required int32 todayLeagueDonationNum=26;		//今日联盟捐献次数				(日常任务)\
    required int32 totalLeagueDonationNum=27;		//累计联盟捐献次数				(成就任务)\
    required int32 totalGetedLeagueContributionCoinNum=28;	//累计获取联盟贡献币数量				(成就任务)    \
    required int32 todayCountryWarAtkNum=29;		//今日国战出征次数(日常任务)\
	required int32 totalKilledSoldierNum=30;		//国战累计杀死的士兵数量(成就任务)\
	required int32 todayLeaderAdvanceNum=31;		//今日武将进阶次数(日常任务)\
	repeated int32 passdLeagueWarBossPveId=32;		//通关的联盟战boss关卡\
	required int32 todayGhostMonsterChallengeActivityNum	=33;//今日完成某个次数的灵兽演武挑战	\
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
	required int32 firstOrNormal=1;//首次奖励还是普通奖励 1:首次 2:普通\
	required int32 id=2;//数据表ID\
}\
//领取特殊任务奖励\
message TakeSpecialTaskReward_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Reward reward=2;//奖励\
	required SpecialTaskState SpecialTaskState=3;\
}\
\
//领取12点或者18点体力奖励（体力和是否领取均不走推送）\
message MiddleTimeGetStrength_S2C\
{\
	required int32 errorCode=1;\
	required int32 strength=2;//当前体力\
}\
\
//活动挑战\
message ActivityChallenge\
{\
	required int32 activityId=1;//活动ID\
	required bool result=2;//攻打结果\
	optional int32 attackTime=3;//攻打时长(秒)\
	optional int32 LevelMap=4;//关卡序列\
	repeated int32 rewardIndex=5;//攻打本阵奖励索引\
	optional int32 kill=6;//杀敌人数\
	optional int32 assistFriendUID=7;//助战好友\
	optional int32 repressives=8;//镇压次数\
	repeated LeaderFightCheckProp LeaderFightCheckProp=9;//武将战斗属性校验\
}\
//活动挑战返回\
message ActivityChallenge_S2C\
{\
	required int32 errCode=1;//错误号\
	optional int32 todayChallengeNum=2;//今日挑战的次数\
	optional Reward reward=3;//奖励\
	required int32 activityId=4;//活动ID\
	optional int64 lastChallengeTime=5;//最后挑战时间\
	required int32 activityHomeId=6;//活动分组ID\
	required bool result=7;//结果\
	optional int32 levelId=8;//关卡ID\
	required int32 curMoney=9;//当前判金\
	repeated Material changeMaterial=10;//变化的材料\
	optional int32 repressives=11;//镇压次数\
}   \
\
//竞技场匹配对手\
message TournamentMatch_S2C\
{	\
	required int32 errCode=1;//错误号\
	\
	optional int32 tournamentGrade=2;//对方段位\
	\
	optional int32 tournamentDoubleNum=3;//竞技场双倍收益次数\
	optional int32 tournamentRemainNum=4;//竞技场挑战次数\
	optional int64 tournamentRefnewTime=5;//竞技场次数恢复时间\
\
	optional OtherPlayerAtkInfo OtherPlayerAtkInfo=6;\
}\
\
\
//竞技场挑战\
message TournamentChallenge\
{\
	required bool result=1;//攻打结果\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;//武将战斗属性校验	 \
}\
//竞技场挑战返回\
message TournamentChallenge_S2C\
{\
	required int32 errCode=1;//错误号 \
	optional int32 tournamentGrade=6;//竞技场段位\
	optional int32 tournamentScore=4;//竞技场当前积分\
    repeated bool tournamentPromotionResult=5;//竞技场晋级赛结果 true 赢 false 输\
	optional Reward reward=3;//奖励\
	required bool result=10;//攻打结果\
}\
\
//竞技场奖励\
message TournamentReward\
{\
\
	required int32 type=1;//1 周奖励 2 赛季奖励\
	 \
}\
//竞技场奖励返回\
message TournamentReward_S2C\
{\
	required int32 errorCode=4;//错误号\
	optional int32 type=1;//1 周奖励 2 赛季奖励\
	optional Reward reward=3;//奖励\
	optional int32 weekGrade=7;//周段位\
	optional int32 seasonGrade=5;//赛季段位\
	optional int32 seasonRankNo=6;//赛季排名\
\
} \
\
//竞技场排行榜返回\
message TournamentRank_S2C\
{\
	required int64 rankTime=1;//排行时间\
	repeated TournamentRankElement  rankElement=2;//排行榜信息\
\
}\
//购买竞技场商品\
 message BuyTournamentGoods     \
 {\
 		required int32 type=1;//1 竞技之石 2 竞技之魂\
 		required int32 goodsIndex=2;//商品索引\
 }\
\
 //购买竞技场商品返回结果\
 message BuyTournamentGoods_S2C     \
 {\
 	required int32 errorCode=1;//错误号\
 	required int32 type=3;//1 竞技之石 2 竞技之魂\
	required int32 goodsIndex=2;//物品索引\
	optional Reward reward=4;//奖励\
 }\
 //更改竞技场头像\
 message ChangeTournamentAvatar     \
 {\
 		required int32 avatarId=1;//头像id\
 }\
\
 //更改竞技场头像返回结果\
 message ChangeTournamentAvatar_S2C     \
 {\
 	required int32 errorCode=1;//错误号\
\
 \
 }\
 //刷新竞技场商城\
message RefreshTournamentMall_S2C     \
 {\
 	required int32 errorCode=1;//错误号\
 	optional int64 refreshTims=12;//刷新时间\
	repeated TournamentGoods  stoneGoods=33;//竞技之石商品\
 	repeated TournamentGoods  ghostGoods=34;//竞技之魂商品\
 \
}\
\
//竞技场奖励返回\
message TournamentHistoryGradeChange_S2C\
{\
	optional int32 weekGrade=4;//周段位\
	optional int32 seasonGrade=5;//赛季段位\
	optional bool canTakeweekReward=7;//是否可以领取周奖励\
	optional bool canTakeSeasonReward=6;//是否可以领取赛季奖励\
	optional int32 histoRankNo=8;//上一赛季排行\
	optional int32 tournamentGrade=24;//竞技场段位\
	optional int32 tournamentScore=25;//竞技场当前积分\
\
\
} \
\
\
//竞技场挑战次数返回\
message TournamentChallengeNum_S2C\
{\
	optional int32 tournamentDoubleNum=28;//竞技场双倍收益次数\
	optional int32 tournamentChallengeNum=29;//竞技场挑战次数\
	optional int64 tournamentRefnewTime=30;//竞技场次数恢复时间\
}\
\
//重置精英副本攻打次数\
message ResetJYPVEAttackNum\
{\
	required int32 pveId=1;//副本ID\
}\
//重置精英副本攻打次数\
message ResetJYPVEAttackNum_S2c\
{\
	required int32 errorCode=1;//错误号\
	required PVE pve=2;//副本\
	required int32 curMoney=3;//当前判金\
	optional int32 resetAJYPVECount=29;//当前重置精英副本次数\
}\
\
//重置活动副本次数\
message ResetActivityPVECount\
{\
	required int32 activieyId=1;//副本ID\
}\
//重置活动副本次数\
message ResetActivityPVECount_S2c\
{\
	required int32 errorCode=1;//错误号\
	required ChallengeActivity activity=2;//副本\
	required int32 curMoney=3;//当前判金\
	optional int32 resetActivityPVECount=29;//当前重置活动副本次数\
}\
 	\
//购买竞技场次数\
message BuyTournamentCount_S2c\
{\
	required int32 errorCode=1;//错误号\
	required int32 tournamentChallengeNum=2;//当前次数\
	required int32 curMoney=3;//当前判金\
\
}\
\
\
\
\
//活动信息变化\
message ActivityChange_S2c\
{\
	required int32 type=3;//1 增加 2 删除 3 更新\
	repeated Activity activity=1;//活动\
	optional ActivityClassification classification=2;//活动类型\
}\
\
\
\
//领取活动奖励\
message TakeActivityReward\
{\
	required int32 activityId=1;//活动Id\
}\
//领取活动奖励\
message TakeActivityReward_S2c\
{\
	required int32 errorCode=1;//错误号\
	optional int32 activityId=2;//活动Id\
	optional Reward reward=3;//奖励\
}\
\
//活动进度变化\
message ActivityProgressChange_S2c\
{\
	repeated ActivityProgress progress =4;//当前进度\
\
}\
\
//攻打战役关卡\
message AttackCampaignBattleLevel\
{\
	required int32 levelId=1;//战役关卡ID\
	required bool attackResult=2;//战斗结果\
	required int32 attackTimeLong=3;//攻打时长（秒）\
	optional int32 assistFriendUID=4;//助战好友\
	optional int32 repressives=5;//镇压次数\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;//武将战斗属性校验\
}\
//攻打战役关卡\
message AttackCampaignBattleLevel_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional Reward reward=2;//奖励\
	optional CampaignBattleLevel campaignBattleLevel=3;//战役关卡实例\
	optional int32 levelId=4;//战役关卡ID\
	required int32 curMoney=5;//当前判金\
	repeated Material changeMaterial=6;//变化的材料\
	optional int32 repressives=7;//镇压次数\
}\
\
//领取战役关卡宝箱奖励\
message GetCampaignBattleGiftBagReward\
{\
	required int32 levelId=1;//战役关卡ID\
}\
\
//领取战役关卡宝箱奖励\
message GetCampaignBattleGiftBagReward_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional Reward reward=2;//奖励\
	optional CampaignBattleLevel campaignBattleLevel=3;//战役关卡实例\
}\
\
//领取战役章节奖励\
message GetCampaignBattleChapterReward\
{\
	required int32 levelId=1;//战役关卡ID\
}\
\
//领取战役章节奖励\
message GetCampaignBattleChapterReward_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional Reward reward=2;//奖励\
	optional CampaignBattleLevel campaignBattleLevel=3;//战役关卡实例\
}\
\
\
\
//进入演武挑战\
message EnterYanwuChallenge\
{\
	required int32 activityId=1;//活动ID\
\
}\
//进入演武挑战\
message EnterYanwuChallenge_S2C\
{\
    required int32 errCode=1;//错误号\
    repeated int32 kill=2;//杀敌\
	repeated int32 boxType=3;//宝箱类型  0 无宝箱 1 铜宝箱 2 银宝箱 3 金宝箱\
\
\
}\
\
//领取活动奖励\
message TakeActivityClassificationReward\
{\
	required int32 activityClassificationId=1;//活动Id\
	optional int32 param1=2;//武将索引\
}\
//领取活动奖励\
message TakeActivityClassificationReward_S2c\
{\
	required int32 errorCode=1;//错误号\
	optional int32 activityClassificationId=2;//活动Id\
	optional Reward reward=3;//奖励\
}\
\
//获取排行活动排行\
message GetRankActivity_Rank\
{\
	required int32 classificationId=1;//活动大类实例ID\
}\
//获取排行活动排行\
message GetRankActivity_Rank_S2C\
{\
	required int32 classificationId=1;//活动大类实例ID\
	repeated Rank ranks=2;//排行信息\
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
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo\
{\
	optional DeviceInfo deviceInfo=1;//设备信息\
	optional string		version=2;//游戏版本号\
	optional string appSign=7;//签名\
	optional string dllMd5=8;//类库MD5签名\
}\
\
\
//登录获取玩家全部信息\
message PlayerLoginGetInfo_S2C\
{\
	optional PlayerInfo playerInfo=1;//玩家信息\
	optional PlayerRes playerRes=2;//玩家资源表\
	repeated BuildingInfo buildings=3; //建筑信息	\
	repeated LeaderInfo leaders=4;//武将信息\
	repeated TechnologyInfo technologyInfos=5;//科技信息\
	repeated GiftInfo giftInfos=6;//科技信息\
	repeated Equip equipInfos=9;//玩家的装备列表\
	repeated PVE pveInfos=10;//玩家攻打的PVE信息\
	repeated int32 passedTargetTask=11;//已经完成的目标任务\
	repeated int32 passedDayTask=12;//已经完成的日常任务\
	repeated int32 passedAchievementsTask=13;//已经完成的成就任务\
	optional TaskStateChange_S2C taskState=14;//任务的状态数据\
			\
	repeated Formation atkFormation=15;//攻击阵型\
	repeated Formation tournamentFormation=132;//竞技场阵型\
	repeated StoreGoods mallBuyInfo=17;//商城当日购买信息\
	optional SwearInfo swearHeroInfo=18;//抽卡心想\
\
	repeated Mail mails=20;//邮件列表\
	repeated SysMessage sysMsgs=21;//系统消息（轮播）\
	repeated Part parts=22;//碎片\
	repeated Material materials=23;//材料\
\
	repeated ChallengeActivity challengeActivity=26;//挑战活动列表\
	optional PlayerTournamentInfo TournamentInfo =27;//玩家竞技场信息\
	repeated ActivityClassification classification=28;//活动分类\
	repeated Activity      activity=29;//活动\
	optional  PlayerActivity playerActivity=30;//玩家活动信息\
	repeated Bugy      attackBugy=31;//攻击奉行\
	repeated Bugy      tournamentBugy=32;//竞技场奉行\
	repeated FunctionsBuild functionsBuilds=33;//功能建筑列表\
	repeated BlockFunctionsBuild blockFunctionsBuild=34;//坑里的功能建筑\
	repeated int32 clearChalengeActivity=35;//通关的挑战活动/演武\
	optional FamilyWar familyWar=36;//合战信息\
	optional SwearEquipInfo swearEquipInfo=7;//宝物抽卡信息\
\
	repeated FriendApplicant friendApplicant=38;//好友申请列表\
	repeated Friend friend=39;//好友列表\
	repeated GiveStrength giveStrength =40;//体力赠送\
	required int32 campaignBattleChapterId=41;// 本次战役章节ID\
	repeated CampaignBattleLevel campaignBattleLevels=42;//攻打过的战役关卡\
\
	repeated int32 applicant=43;//申请别人的列表\
\
	optional string clientCorpsUrl=48;//客户端连接军团url\
	optional int32 infiniteCityLevel=49;//无限城当前关卡\
	optional int32 infiniteCityResetCount=50;//无限城重置次数\
	optional int32 infiniteCityPassLevelCount=51;//无限城跳过关卡次数\
	optional int32 infiniteCityScore=52;//无限城总积分\
	optional InfiniteCity infiniteCitys=53;//无限城信息\
	optional int32 infiniteCityStar=54;//无限城总评星\
	repeated InfiniteCityBattleLeader leadersBlood=55;//无限城武将剩余血量\
	repeated ScoreGoods infiniteCityScoreGoods=56;//商品列表\
	optional int32 infiniteCitySkillId=57;//无限城buffid\
	repeated InfiniteCityLeaderId leadersOnBattle=58;//无限城武将上阵信息\
	repeated FunctionsItem functionsItems=59;//功能性道具 \
	repeated StoreGoods friendPointBuyInfo=60;//有情点购买信息\
	optional int64 infiniteCityRefreshTime=61;//无限城商城下次刷新时间\
	repeated int32 closeFunctionId=62;//关闭模块id\
	optional string infiniteCityFriends=63;//无限城好友助战信息\
	optional int64 infiniteCityOpenTime=64;//无限城开启时间\
	optional string inviteCode=65;//邀请码\
	repeated InviteCodePlayerInfo inviteCodePlayers=66;//使用我的邀请码玩家列表\
	repeated InviteCodeStateInfo inviteCodeStates=67;//使用我的邀请任务完成情况,0往上表示步骤,-2表示已完成-1已领奖\
	optional int32 isInvited=68;//是否绑定,1有0无\
	optional int64 inviteCodeOpenTime=69;//邀请码开启时间\
	optional int64 kamikiCardExchangeOpenTime=70;//神级抽卡开始时间\
	optional int64 kamikiCardExchangeEndTime=71;//神级抽卡结束时间\
	optional PlayerLeagueInfo playerleagueInfo=72;//玩家的联盟信息\
	optional LeagueInfo leagueInfo=73;//联盟信息(可能没有)\
	optional int64 LeagueOpenTime=74;//联盟开启时间\
	optional int64 LeagueWarOpenTime=75;//联盟开启时间\
	repeated TalentInfo talentInfos=76;//兵种被动信息\
	repeated SweepFarWarBoxModel sweepFarWarBoxLevels=77;//待开的宝箱\
	repeated SpecialTaskState specialTaskTates=78;//特殊成就任务状态\
	optional int64 specialTaskOpenTime=79;//特殊成就任务开启时间\
	optional int32 infiniteMaxLevel=82;//无限城最高层数\
	optional int64 countryWarOpenTime=83;//国战开启时间\
	optional int64 countryWarEndTime=60084;//国战结束时间\
	optional int32 countryWarSeasonNo=60085;//当前国战赛季\
	repeated SysEvent sysEvents=84;//天下大事\
	repeated CountryWarBattle countryWarBattles=85;//国战战报\
	optional int32 timeZoneHours=86;//时区小时偏差\
	optional int32 bindingTwitterRewardGetTimes=87;//绑定推特帐号领奖次数\
	optional int32 dailyFriendPoint = 88; // 每日获取友情点\
	optional int32 meAssistedFriendTimes = 89; // 我助战过的好友次数\
	optional SeverGodsInfo_S2C_Push sevenGodsInfo = 90; // 七福神活动开启情况 0.未开启\
	optional CollectExchangeInfo_S2C_Push collectExchangeInfo = 91; // 立志传信息\
	optional float recharge = 93; // 累计充值\
	optional SoulEquipCollect_S2C_Push soulEquipCollect= 94; // 器魂收集详情\
\
	optional int32 powerLevel = 96; // 武家等级\
	optional bool heroLevelDayRewardGet = 97; // 每日俸禄是否已经领取\
	optional string zhitianKamikiOpenTime=98;//织田抽卡开启时间\
	optional string zhitianKamikiEndTime=99;//织田抽卡结束时间\
	optional string wutianKamikiOpenTime=100;//武田抽卡开启时间\
	optional string wutianKamikiEndTime=101;//武田抽卡结束时间\
	optional string shangshanKamikiOpenTime=102;//上杉抽卡开启时间\
	optional string shangshanKamikiEndTime=103;//上杉抽卡结束时间\
	repeated StrangerChatModel strangetChatModels=104;//陌生人聊天信息\
	repeated int64 readedLeagueChatId=105;//读取过的联盟消息\
	repeated GemStone gemStones=106;//魂石列表\
	optional bool facebookRewardCanGet=107; // facebook是否可领奖\
	optional int32 facebookRewardGetTimes=108;//facebook领奖次数\
	optional bool isFirstMonthCardRewardCanGet=109;//月卡首冲奖励是否可以领取\
	optional bool isFirstMonthCardRewardGet=110;//月卡首冲奖励是否已领取\
	optional string channel=111;//玩家渠道\
	repeated GhostMonster ghostMonsters=112;//灵兽信息\
	optional SwearGhostMonsterInfo swearGhostMonsterInfo=114;//神兽召唤信息 \
	optional Christmas ChristmasInfo=115;//圣诞活动信息\
	repeated NewYearActivityTime newYearActivityTime=116;//圣诞活动开始时间\
	optional ProtoHashInt2String ServerMaxCapa=117;//全服最高战力 战力:玩家昵称\
	repeated TryAtkTournamentResult tryAtkTournamentResults=118;//切磋结果列表\
	repeated Shop shops=119;//商城\
	repeated int32 huanwuShopDefaultValue4=120;//梦幻商城的刷新时间VALUE4，时间(开始小时，结束小时），刷新日期1日期2日期3\
}\
\
\
//============================通用接口===========================\
//消除冷却时间\
message ClearCoolingTime\
{\
	optional int32 actionID=1;//操作类型 对应 ActionEnum中类型\
	optional int32 objId=2;//操作对象ID\
	optional int32 costMoney = 3; // 消耗金钱(客户端计算)\
}\
\
//消除冷却时间\
message ClearCoolingTime_s2c\
{\
	optional int32 errorCode=1;//操作类型 对应 ActionEnum中类型\
}\
\
//=============================玩家==============================\
\
//玩家登陆返回\
message KickPlayer_S2C\
{\
	optional int32 errCode=1;//1：有玩家登录顶掉 2：服务器主动踢出\
}\
\
//设备第一次启动客户端时记录一条\
message Activate\
{\
	required string platformId=1;//平台ID(渠道ID)\
	required string deviceId=2;//设备唯一标识\
	required string channelId=3;//渠道号\
}\
\
//玩家登陆\
message PlayerLogin\
{\
	\
	required string platformId=1;//平台ID\
	required string platformUserId=2;//平台玩家ID\
	required DeviceInfo deviceInfo=3;//设备信息\
	required string		version=4;//游戏版本号\
	required string channelId=5;//渠道号\
	required int32 serverId=6;//登录的服务器ID\
	optional string appSign=7;//签名\
	optional string dllMd5=8;//类库MD5签名\
}\
//玩家登陆返回\
message PlayerLogin_S2C\
{\
	optional int32 result=1;//返回结果 0:玩家存在 1:玩家不存在 2:服务器维护中 3:黑名单中 \
	optional int32 uid=2;//玩家ID \
	optional string serverDataVersion=3;//服务端字典数据版本号\
	optional string token=4;//新的Token\
	required int64 now=5;//当前时间\
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
	required string platformId=1;//平台ID\
	required string platformUserId=2;//平台玩家ID\
	required string uName=3;//玩家昵称\
	required DeviceInfo deviceInfo=4;//设备信息	\
	required int32 sex=5;//性别 0：女1：男\
	required int32 headId=6;//头像ID\
	required string channelId=7;//渠道号\
	required int32 serverId=8;//登录的服务器ID\
}\
//玩家注册\
message PlayerRegist_S2C\
{\
	optional int32 errorCode=1;//返回结果 0:玩家存在 1:玩家不存在 \
	optional int32 uid=2;//如果成功返回的玩家ID\
	optional string token=3;//新的Token\
}\
\
\
\
//获取玩家基础信息\
message GetPlayerInfo_S2C\
{\
	optional PlayerInfo playerInfo=1;//返回的玩家信息\
}\
\
\
\
\
//开始充值\
message StartRecharge{\
	required int32 rechargeId=1;//充值ID\
}\
//开始充值\
message StartRecharge_S2C{\
\
	optional int32 rechargeId=1;//充值ID\
	optional int32 cpOrderId=2;//游戏订单ID\
	required int32 errCode=3;//错误号\
}\
\
//Otaku充值\
message Recharge_Otaku{\
	required string orderId=1;//游戏订单号	\
	required string platOrderId=2;//平台订单号\
}\
\
//OTAKU充值返回\
message Recharge_Otaku_S2C\
{\
	required int32 errorCode=1;//错误码\
	required int32 rechargeId=2;//充值ID\
	required int32 money=3;//玩家当前金币\
	required int32 curVIPLevel=4;//当前VIP等级\
	required int32 curVIPExp=5;//当前VIP经验\
	optional Reward reward=6;//月卡即时奖励\
	optional int32 monthVipCardId=7;//月活卡ID 没有为0\
	optional int64 monthVipCardEndTime=8;//月卡开始时间\
	repeated int32 sendFirstRechargeRewardIds=9;//已经发放的充值双倍奖励	\
	optional int64 lastGetVIPMonthCardRewardTime=32;//最后领取VIP月卡奖励时间\
	optional float totalRecharge = 93; // 累计充值\
}\
\
//商城购买\
message BuyMallGoods{\
	required int32 goodsId=1;//商城物品ID\
	required int32 num=2;//物品数量\
}\
\
//商城购买\
message BuyMallGoods_S2C{\
	required int32 errorCode=1;//错误号\
	required int32 goodsId=2;//商城物品ID\
	optional Reward reward=5;//奖励\
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
	required int32 errorCode=1;//错误码\
	//祈愿1:小吉抽卡 2：大吉 3 ：大吉十连抽 4:神级抽卡5：神级十连抽 6:转盘抽卡 7：转盘十连抽 8:织田 9:织田十连 10:武田 11:武田十连 12:上杉 13:上杉十连\
	required int32 type=2;\
	repeated Item item=3;//增加的武将或碎片\
	required SwearInfo swearInfo=4;//抽卡信息\
	optional Material addedWuHun=5;//返回的武魂\
	required int32 curCoin=6;//当前铜钱\
	required int32 curMoney=7;//当前判金\
	repeated Material costMaterials=8;//消耗的道具(终值)\
}\
\
//更新新手引导步骤\
message ChangeGuide\
{\
	required int32 guideNum=1;//步骤\
}\
\
\
//更新新手引导步骤\
message ChangeGuide_S2C\
{\
	required int32 guideNum=1;//步骤\
}\
\
//新邮件\
message SysMail\
{\
	required Mail mail=1;//邮件内容\
}\
//邮件已读\
message ReadSysMail\
{\
	required int32 mailId=1;//邮件ID\
}\
\
//领取邮件附件\
message GetMailRes\
{\
	required int32 mailId=1;//邮件ID\
}\
\
//领取邮件附件\
message GetMailRes_S2C\
{\
	required int32 errCode=1;//返回结果\
	optional Reward reward=2;//奖励的物品\
	required int32 mailId=3;//邮件ID\
}\
\
//签到\
message GetSignReward_S2C\
{\
	required int32 errCode=1;//返回结果\
	optional int32 monthGetSignRewardTimes=2;//本月领取签到次数\
    optional int64 lastGetSignRewardTime=3;//最后领取签到奖励时间\
	optional Reward reward=4;//奖励\
\
}\
\
//玩家完成触发引导步骤\
message TriggerGuideChange\
{\
	required int32 stepNum=1;//步骤\
}\
\
//系统消息\
message SysMsg_S2C\
{\
	required SysMessage msgModel=1;//消息内容\
}\
\
//系统消息\
message SysMsg_Del_S2C\
{\
	required int32 msgId=1;//要删除的消息ID\
}\
\
//世界聊天\
message WorldChat\
{\
	required string content=1;//消息内容\
}\
\
//世界聊天\
message WorldChat_S2C\
{\
	required int32 uid=1;//玩家ID\
	required string content=2;//消息内容\
	required string uName=3;//玩家昵称\
	optional int32 disTitle_WorldCityId=4;//国战官位\
}\
\
\
//私聊\
message PlayerChat\
{\
	required int32 targetUid=1;//好友ID\
	required string content=2;//消息内容\
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
	required int32 materialId=1;//要合成的材料ID\
}\
//材料合成\
message CompositionMaterial_S2C\
{\
	required int32 errCode=1;//错误号 \
	required int32 materialId=2;//合成的材料ID\
	repeated Material material=3;//变化后的材料，包括之前的材料\
	optional int32 curCoin=4;//玩家当前铜币\
\
}\
\
//获取玩家当前体力并计算体力\
message GetPlayerStrength_S2C\
{\
	required int32 curStrength=1;//当前体力\
	required int64 lastCalcStrengthTime=2;//最后计算体力时间\
}\
\
\
//新手引导步骤\
message ChangeStep\
{\
	required int32 step=1;//步骤\
}\
\
 //碎片转换\
message PartConvert\
{\
	optional int32 targetPartId=1;//要合成的碎片ID\
	optional int32 usePartId=2;//使用的碎片ID\
	optional int32 convertTimes=3;//合成次数\
}\
\
 //碎片转换返回\
message PartConvert_S2C\
{\
	optional int32 errCode=1;//错误号\
	optional Part targetPart=2;//转换后的目标碎片\
	optional Part usedPart=3;//使用的碎片\
\
}\
\
\
\
//一次性消息\
message Notice_S2C\
{\
	required int32 id=1;//消息id\
	repeated string param=2;//消息参数\
\
}\
\
//cdKey 领奖\
message CDKeyReward\
{\
	required string cdKey=1;//cdkey\
}\
\
//cdKey 领奖\
message CDKeyReward_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Reward reward=2;//奖励\
}\
\
//购买VIP礼包\
message BuyVIPReward\
{\
	required int32 vipLevel=1;//要购买的礼包对应的等级\
}\
//购买VIP礼包\
message BuyVIPReward_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated int32 buyedVIPRewardLevel=2;//已经购买的VIP礼包的VIP等级\
	optional Reward reward=3;//购买的奖励\
}\
\
//领取月卡奖励\
message GetMonthCardReward_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int64 lastGetVIPMonthCardRewardTime=2;//最后领取VIP月卡奖励时间\
	optional Reward reward=3;//领取的奖励\
}\
\
//苹果支付验证\
message AppleRecharge\
{\
	required int32 rechargeId=1;//充值ID\
	required int32 cpOrderId=2;//游戏订单号\
	required string validStr=3;//验证字符串\
	optional string deviceId=4;//设备号\
}\
//苹果支付验证\
message AppleRecharge_S2C\
{\
	required int32 errorCode=1;//错误号\
}\
\
//玩家切出游戏\
message ClientGameOut_S2C\
{\
	required int32 errorCode=1;//错误号\
}\
//玩家切回游戏\
message ClientGameIn_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated bytes cachedMessages=2;//缓存的未发送的消息 \
}\
\
//神级抽卡兑换\
message KamikiCardExchange\
{\
	required int32 giftBagId=1;//礼包ID\
}\
\
//神级抽卡兑换\
message KamikiCardExchange_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 giftBagId=2;//礼包ID\
	repeated Material changeMaterial=3;//变化的材料\
	optional Reward reward=4;//领取的奖励 \
}\
\
//获取战力前100\
message GetPlayerAtkCapaTop100_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated SimplePlayer simplePlayers=2;//前100\
	optional int32 meRank=3;//我自己的排名\
}\
\
//点赞\
message PraisePlayer\
{\
	required int32 uid=1;//点赞的人的ID\
}\
//点赞\
message PraisePlayer_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated int32 uid=2;//点赞的人的ID\
	optional Reward reward=3;//点赞的奖励\
}\
//点赞（推送给被赞玩家）\
message PraisePlayer_S2C_Push\
{\
	required int32 errorCode=1;//错误号\
	required int32 praiseCount=2;//总点赞次数\
}\
\
//玩家改名\
message ChangePlayerName\
{\
	required string uName=1;//玩家昵称\
}\
//玩家改名\
message ChangePlayerName_S2C\
{\
	required int32 errorCode=1;//错误号\
	required string uName=2;//玩家昵称\
	optional int32 curMoney=3;//当前判金数\
	optional int32 changeNameCounts=4;//玩家改名次数\
}\
\
//玩家开始战斗 加速器用\
message PlayerStartFighting_S2C\
{\
	required int32 errCode=1;//错误号\
}\
//玩家结束战斗 加速器用\
message PlayerFinishFighting\
{\
	required string model=1;//模块\
	required int32 atkTimeSecond=2;//攻打时长(秒)\
}\
//玩家结束战斗 加速器用\
message PlayerFinishFighting_S2C\
{\
	required int32 errCode=1;//错误号\
}\
\
// 绑定推特帐号领奖\
message BindingTwitterRewardGet_S2C {\
	required int32 errCode = 1; // 错误号\
	optional Reward reward = 2; // 奖励\
	optional int32 rewardGetTimes = 3; // 奖励领取次数\
}\
\
// 玩家战力变化推送\
message PlayerCapcChange_S2C_Push {\
	optional int32 arenaFormationCapa=45;//竞技场阵型战力\
    optional int32 atkFormationCapa=46;//攻击阵型战力\
}\
\
//查看活动大类\
message CheckSysActivityClassification{\
	required int32 sysActivityClassificationId=47;//活动大类ID\
}\
\
//查看活动大类\
message CheckSysActivityClassification_S2C{\
	repeated int32 checkedSysActivityClassificationIds=47;//查看过的活动大类ID\
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
	required int32 id=2;//活动表主键ID \
}\
\
\
//武田织田上杉祭 抽卡子项活动兑换\
message KamikiBoxExchange_S2C\
{\
	required int32 errCode = 1; // 错误号\
	optional KamikiBoxInfo kamikiBoxInfio=2;//武田上杉织田祭类活动\
	required int32 curMoney=3;//当前判金\
	optional Reward reward=4;//奖励信息\
	optional int32 curLuck=5;//当前武田上杉织田祭类活动幸运值\
}\
\
//领取夜宴奖励\
message TakeDinnerReward_S2C\
{\
	required int32 errCode=1;//错误号\
	optional int64 lastTakeDinnerTime=2;//最后夜宴奖励领取时间\
	optional Reward reward=3;//奖励信息\
}\
\
//成长基金信息变化推送\
message GrowthRewardInfoChange_S2C_Push\
{\
	optional int32 growthThingId=53;//成长基金物品ID\
	repeated int32 takedGrowthRewardLevel=54;//领取过的成长基金等级\
}\
\
//领取成长基金\
message TakeGrowthReward\
{\
	required int32 takedLevel=1;//要领取的等级\
}\
\
//领取成长基金\
message TakeGrowthReward_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Reward reward=2;//奖励信息\
	optional int32 growthThingId=53;//成长基金物品ID\
	repeated int32 takedGrowthRewardLevel=54;//领取过的成长基金等级\
}\
\
// 七福神商城商品信息\
message SevenGodsShopItemInfo {\
	required int32 itemId = 1; // 商品ID\
	required int32 itemNum = 2; // 商品数量\
	required bool isBuyed = 3; // 是否已经够买过 true已经购买 false 未购买\
}\
\
// 商城信息\
message SevenGodsShopInfo {\
	required int32 randomNum = 1; // 随机数字 每次商城物品变化随机数字也会变化\
	optional int32 randomItemNeedMoney = 2; // 刷新商城需要判金 没有刷新次数传-1\
	repeated SevenGodsShopItemInfo itemsInfo = 3; // 所有商品信息\
}\
\
// 七福神商城信息\
message SevenGodsShopInfo_S2C {\
	required SevenGodsShopInfo info = 1; // 商城信息\
}\
\
// 七福神商城物品购买\
message SevenGodsShopBuy {\
	required int32 randomNum = 1; // 随机数\
	required int32 itemId = 2; // 商品ID\
}\
\
// 返回 七福神商城物品购买\
message SevenGodsShopBuy_S2C {\
	required int32 errCode = 1; // 错误号\
	optional int32 itemId = 2; // 商品ID\
	optional Reward reward = 3; // 奖励信息\
	optional int32 lastMoney = 4; // 剩余判金数量\
	optional int32 lastHammer = 5; // 剩余锤子数量\
}\
\
// 七福神商城商品刷新\
message SevenGodsShopReflush {\
	required int32 randomNum = 1; // 随机数\
}\
\
// 返回 七福神商城商品刷新\
message SevenGodsShopReflush_S2C {\
	required int32 errCode = 1; // 错误号\
	optional SevenGodsShopInfo info = 2; // 商城信息\
	optional int32 lastMoney = 3; // 剩余判金数量\
}\
\
// 绑定推特帐号领奖\
message FacebookRewardGet_S2C {\
	required int32 errCode = 1; // 错误号\
	optional Reward reward = 2; // 奖励\
	optional int32 rewardGetTimes = 3; // 奖励领取次数\
}\
\
// 月卡首充奖励领取\
message FirstMonthCardRewardGet_S2C {\
	required int32 errCode = 1; // 错误号\
	optional Reward reward = 2; // 奖励\
}\
\
// fackbook点击返回\
message FacebookButtonClick_S2C {\
	required bool facebookRewardCanGet = 1; // 错误号\
}\
\
//Reward推送\
message Reward_S2C_Push{\
	required Reward reward=1;//奖励信息\
}\
\
//购买圣诞活动物品\
message BuyChristMasMall_2018\
{\
	required int32 mallId=1;//ChristmasBuy2017表 主键ID\
}\
///购买圣诞活动物品\
message BuyChristMasMall_2018_S2C\
{\
	required int32 errCode = 1; // 错误号\
	optional int32 curMoney=2;//当前判金\
	optional Material costMaterial=3;//扣除的材料(糖果)\
	optional Reward reward = 4; // 奖励\
	repeated ProtoHashInt2Int buyChrimasMallGoods=5;//购买的圣诞活动商品 商品表主键ID:购买次数\
	\
}\
//年玉活动条件变化推送\
message NewYearMallTaskProcessChange_S2C_Push\
{\
	repeated ProtoHashInt2Int newYearMallTaskProcess=5;//购年玉活动条件值 活动任务类型ID:条件值\
}\
\
//圣诞大合战活动大合战排名推送\
message NewYearFamilyWarRankChange_S2C_Push\
{\
	required int32 familyWarRank=2;//领取圣诞活动大合战排名 -1 没有排名\
	required int32 familyWarWinOrFail=7;//大合战输赢 0:输 1:赢\
\
	required int32 IsGetFamilyWarRankReweard=3;//是否领取圣诞活动大合战奖 1:领取0:未领取\
}\
\
\
//领取年玉活动任务奖励\
message TakeNewYearMallTaskReward\
{\
	required int32 mallId=1;//年玉活动ID\
}\
\
//领取年玉活动任务奖励\
message TakeNewYearMallTaskReward_S2C\
{\
	required int32 errCode = 1; // 错误号\
	optional Reward reward = 4; // 奖励\
	repeated int32 takedNewYearMallReeward=6;//领取的年玉活动奖励	\
}\
\
\
//领取圣诞节大合战活动奖励\
message TakeNewYearFamilyWarReward_S2C\
{\
	required int32 errCode = 1; // 错误号\
	optional Reward reward = 4; // 奖励\
	optional int32 IsGetFamilyWarRankReweard=3;//是否领取圣诞活动大合战奖 1:领取0:未领取	\
}\
\
//屏蔽聊天的玩家信息\
message GetDisChatPlayers_S2C\
{\
	repeated SimplePlayer simplePlayers=1;//屏蔽聊天的玩家信息\
}\
\
//屏蔽聊天玩家\
message DisChatPlayer{\
	required int32 targetUID=1;//屏蔽玩家ID\
	required int32 type=2;//0:移除 1:新增\
}\
//屏蔽聊天玩家\
message DisChatPlayer_S2C{\
	repeated int32 disChatUIDs=1;//屏蔽聊天的玩家ID\
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
	required int32 targetUid=1;//目标id\
	required FormationEnum formationEnum=2;//布阵类型\
}\
\
//获取其他玩家攻击信息\
message GetOtherPlayerFormationAtkInfo_S2C\
{\
	required int32 targetUid=1;//目标id\
	required FormationEnum formationEnum=2;//布阵类型\
	optional OtherPlayerAtkInfo otherPlayerAtkInfo=3;//该玩家攻击信息\
}\
\
\
//购买商城物品\
message BuyShopItem\
{\
	required int32 shopItemId=1;//shop表主键ID\
	required int32 num=2;//数量\
}\
\
//购买商城物品\
message BuyShopItem_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Reward reward=2;//购买到的Item\
	optional ShopItem shopItem=3;//购买的商场物品\
	optional Cost cost=4;//扣除的物品\
}\
\
//商城信息变化推送\
message ShopDataChange_S2C_Push\
{\
	required Shop shops=9;//商城\
}\
//商城刷新\
message ShopRefresh\
{\
	required int32 shopType=1;//商城类型\
}\
\
//商城刷新\
message ShopRefresh_S2C\
{\
	required int32 errCode=1;//错误号\
	optional Shop shops=9;//商城\
	optional Cost cost=4;//扣除的物品\
}\
\
//领取观看广告奖励\
message TakeWatchAdsReward_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 takeWatchAdsRewardTimes=2;//领奖次数\
	optional Reward reward=3;//奖励信息\
}\
\
\
//获取卡牌配对信息\
message GuessCardInfo_S2C\
{\
	optional GuessCard guessCard=1;//卡牌配对信息\
}\
//卡牌配对 开牌\
message GuessCardOpen\
{\
	required int32 cardIndex=1;//开启的索引\
}\
//卡牌配对 开牌\
message GuessCardOpen_S2C\
{\
	required int32 errCode=1;//错误号\
	optional GuessCard guessCard=2;//卡牌配对信息\
	optional Reward reward=3;//奖励信息\
	optional bool isSuccess=4;//配对是否成功\
	optional int32 cardIndex=5;//开启的索引\
}\
\
//卡牌配对 购买次数\
message GuessCardBuyTimes_S2C\
{\
	required int32 errCode=1;//错误号\
	optional GuessCard guessCard=2;//卡牌配对信息\
	optional Cost cost=3;//奖励信息\
}\
\
\
import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
\
\
//=====================武将===========================\
//武将阵型变化\
message LeaderFormationChanged\
{\
	required int32 type=1;//0 攻击 1 防守 2 竞技场\
	repeated Formation formation=2;//阵容信息\
	optional int32 arenaFormationSkillFunction=3;//竞技场布阵技能释放方式(0:智能 1:顺序 )\
}\
\
//武将阵型变化\
message LeaderFormationChanged_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional int32 type=2;//0 攻击 1 防守 2 竞技场\
	repeated Formation formation=3;//阵容信息\
}\
\
\
//武将升级\
message UpgradeLeader\
{\
	required int32 leaderId=1;//武将ID\
	required int32 upgradeType = 2; // 升级类型 1.升级1级 10.升级10级\
}\
//武将升级\
message UpgradeLeader_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//返回的武将\
	optional int32 curCoin=3;//玩家当前铜币\
	optional Material material=4;//使用后剩余的材料\
\
}\
\
//武将升星\
message UpgradeLeaderStar\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//武将升星\
message UpgradeLeaderStar_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//最新的吞噬后的武将信息\
	repeated Part parts=3;//使用后剩余的碎片\
	repeated Material materials=4;//使用后剩余的材料\
	optional int32 curCoin=5;//玩家当前铜币\
}\
\
//武将进化\
message AdvancedLeader\
{\
	required int32 leaderId=1;//武将ID\
}\
\
\
//武将进化\
message AdvancedLeader_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//最新的吞噬后的武将信息\
	repeated Material materials=3;//使用后剩余的材料\
	optional int32 curCoin=4;//玩家当前铜币\
}\
\
\
\
//升级武将天赋\
message UpgradeLeaderTalentSkill\
{\
	required int32 leaderId=1;//武将ID\
	required int32 skillId=2;//天赋ID\
}\
\
//升级武将天赋\
message UpgradeLeaderTalentSkill_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//最新的吞噬后的武将信息\
	optional Material material=3;//使用后剩余的材料\
}\
\
//武将合成\
message CompositionLeader\
{\
	required int32 leaderTypeId=1;//武将类型ID\
}\
//武将合成\
message CompositionLeader_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将信息\
	optional Part part=3;//使用后剩余的碎片\
	optional int32 curCoin=4;//玩家当前铜币\
}\
\
\
//装备强化\
message UpgrageEquip\
{\
	required int32 id=1;//装备ID\
	repeated int32 eatEquipIds=2;//吃的装备ID\
	required bool isMoney=3;//\
}\
\
\
//装备强化返回\
message UpgrageEquip_S2C\
{\
\
	required int32 errCode=1;//错误号\
	optional Equip equipInfo=2;//装备信息\
	repeated int32 eatEquipIds=3;//吃的装备ID,客户端自行删除相应对象\
}\
\
//装备重铸\
message CompositionEquip\
{\
	required int32 id=1;//要重铸的装备ID\
	repeated int32 eatEquipIds=2;//吃的装备ID\
	required bool isMoney=3;\
}\
//装备重铸\
message CompositionEquip_S2C\
{\
	required int32 errCode=1;//错误号\
	required bool isSuccess=2;//成功还是失败\
	optional Equip equipInfo=3;//新增的装备信息 如果失败则该属性为null\
	repeated int32 eatEquipIds=4;//吃的装备ID,客户端自行删除相应对象\
	repeated Material eatMaterials=5;//吃掉的材料，返回终值\
}\
\
//换装\
message WearEquip\
{\
	required int32 leaderId=1;//武将ID\
	required int32 equipId=2;//装备ID 如果当前装备已经装备到这个武将，则为卸下\
}\
//换装\
message WearEquip_S2C\
{\
	required int32 errCode=1;//错误号 \
	optional LeaderInfo leaderInfo=2;//装备后的武将信息\
	repeated Equip changedEquipInfo=3;//变化的装备信息\
\
}\
\
//出售装备\
message SellEquip{\
	required int32 id=1;//装备ID\
}\
//出售装备\
message SellEquip_S2C{\
	required int32 errCode=1;//错误号 \
	required int32 id=2;//装备ID\
	optional int32 curCoin=5;//当前铜钱\
} \
\
//武将信息发生变化 服务器推送\
message LeaderAttrChanged_S2C\
{\
	repeated LeaderInfo leaderInfo=1;//武将信息\
}\
\
//保存奉行\
message SaveBugy\
{\
	required int32   bugyType=1;//奉行对应阵型类型\
	repeated  Bugy   bugy =2;//奉行\
\
}\
//保存奉行\
message SaveBugy_S2C\
{	\
	required int32 			errCode 		=1;//错误号 \
	optional int32   		bugyType		=2;//奉行对应阵型类型\
	repeated LeaderInfo 	LeaderInfo 		=3;//武将信息\
	optional float   		angery			=4;//士气\
	repeated  Bugy   bugy =5;//奉行\
}\
\
\
//升级奉行\
message UpgradeBugy\
{\
	required int32   bugyType=1;//奉行对应阵型类型\
	required int32   position =2;//奉行位置\
}\
\
//升级奉行\
message UpgradeBugy_S2C\
{	\
	required int32 errCode=3;//错误号 \
	optional int32   bugyType=1;//奉行对应阵型类型\
	repeated LeaderInfo leaderInfo=2;//武将信息\
	optional float   angery=4;//士气\
	optional  Bugy   bugy =5;//奉行\
	optional int32 coin=6;//当前铜币\
	optional int32 food=7;//当前兵粮\
	optional Material curMaterial=8;//使用后的材料\
\
}\
\
//装备升星\
message UpgradeEquipStar\
{\
	required int32 equipInstId=1;//装备实例ID\
}\
//装备升星返回\
message UpgradeEquipStar_S2C\
{\
	required int32 errCode=1;//错误号 \
	optional bool isSuccess=2;//是否成功\
	optional Equip equip=3;//变化的装备\
	optional Material curMaterial=4;//使用后的材料\
	optional int32 curCoin=5;//当前铜钱\
	optional LeaderInfo leaderInfo=6;//变化的武将信息\
}\
\
//装备降星\
message DegradeEquipStar\
{\
	required int32 equipInstId=1;//装备实例ID\
}\
//装备降星返回\
message DegradeEquipStar_S2C\
{\
	required int32 errCode=1;//错误号 \
	optional Equip equip=2;//变化的装备\
	optional Material curMaterial=3;//返回的材料\
	optional LeaderInfo leaderInfo=4;//变化的武将信息\
}\
\
//开宝箱\
message OpenBox\
{\
	required int32 type=1;//1 一次， 2 十次 \
}\
\
//开宝箱\
message OpenBox_S2C\
{\
 	required int32 errorCode=1;//错误号\
 	optional SwearEquipInfo swearEquipInfo=6;//抽装备信息\
    repeated Reward reward=3;//奖励\
    optional int32 curMoney=4;//当前判金\
	optional int32 diffBoxKey=5;//当前钥匙\
}\
\
\
//兑换装备\
message ExchangeEquip\
{\
	required int32 mainId=1;//主键id\
}\
\
//兑换装备\
message ExchangeEquip_S2C\
{\
	required int32 errorCode=1;//错误号\
\
	optional Part part=3;//碎片\
	optional Reward reward=4;//合成后的东西\
\
}\
\
//武将重置\
message ResetLeader\
{\
	required int32 leaderId=1;//武将ID\
}\
//武将重置\
message ResetLeader_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//返回的武将\
	optional int32 curCoin=3;//玩家当前铜币\
	optional int32 curMoney=4;//当前判金\
	repeated Material material=5;//返还的材料（终值）\
\
}\
\
//添加武将觉醒普通家宝ID\
message AddLeaderAeakenPrecious\
{\
	required int32 leaderId=1;//武将ID\
	required int32 preciousId=2;//普通家宝ID\
}\
\
//添加武将觉醒普通家宝ID\
message AddLeaderAeakenPrecious_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//返回的武将\
	optional FunctionsItem functionsItem=3;//变化的普通家宝\
}\
//武将觉醒\
message AwakeLeader\
{\
	required int32 leaderId=1;//武将ID\
}\
//武将觉醒返回\
message AwakeLeader_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//返回的武将	\
}\
\
//武将觉醒材料合成\
message LeaderAeakenPreciousCompose\
{\
	required int32 itemId=1;//材料ID\
}\
\
//武将觉醒材料合成返回\
message LeaderAeakenPreciousCompose_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 composeItemId=2;//合成的材料ID\
	required int32 curCoin=3;//当前铜钱\
	repeated FunctionsItem functionsItem=4;//变化的功能道具\
}\
\
\
//解锁专宝\
message UnlockCowry\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//解锁专宝\
message UnlockCowry_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//返回的武将\
	optional int32 curMoney=3;//当前判金\
	repeated Material changedMaterial=4;//变化的材料\
}\
\
//解锁/锁定专宝随机属性\
message LockCowryRandomAtt\
{\
	required int32 leaderId=1;//武将ID\
	required int32 randomAttId=2;//随机属性ID\
}\
\
//解锁/锁定专宝随机属性\
message LockCowryRandomAtt_S2C\
{\
	required int32 errCode=1;//错误号\
	required CowryInfo cowry=2;//返回的专宝随机属性\
	optional int32 curMoney=3;//当前判金数\
}\
\
//洗练专宝\
message RefreshCowry\
{\
	required int32 leaderId=1;//武将ID\
	required int32 costType=2;//消耗类型,1普通,2判金\
}\
\
//洗练专宝\
message RefreshCowry_S2C\
{\
	required int32 errCode=1;//错误号\
	required LeaderInfo leader=2;//返回的武将\
	optional int32 curMoney=3;//当前判金\
	repeated Material changedMaterial=4;//变化的材料\
}\
//计算武将对应等级数据\
message GetLeaderNextInfo{\
	required int32 leaderId=1;//武将ID\
	required int32 level=2;//武将等级\
	required int32 star=3;//武将星级\
	required int32 advanceLv=4;//进阶等级\
}\
//计算武将对应等级数据\
message GetLeaderNextInfo_S2C{\
	required int32 errCode=1;//错误号\
	required int32 leaderId=2;//武将ID\
	required int32 level=3;//武将等级\
	required int32 star=4;//武将星级\
	required int32 advanceLv=5;//进阶等级\
	optional LeaderAtkProp prop=6;//武将属性信息\
}\
\
//魂石升星\
message GemStoneUpgradeStar\
{\
	repeated int32 instId=1;//魂石实例ID列表\
	\
}\
\
//魂石升星\
message GemStoneUpgradeStar_S2C\
{\
	required int32 errCode=1;//错误号\
	optional int32 curCoin=2;//当前铜钱\
	repeated int32 delInstId=3;//消失的魂石列表	\
	optional GemStone upgradeStarGemStone=4;//升星成功的魂石\
	repeated LeaderInfo changedLeaders=5;//变化的武将\
}\
\
//魂石镶嵌\
message WearGemStone\
{\
	required int32 instId=1;//魂石实例ID\
	required int32 leaderId=2;//镶嵌的武将ID\
	optional bool isWear=6;//镶嵌还是卸下\
}\
\
//魂石镶嵌\
message WearGemStone_S2C\
{\
	required int32 errCode=1;//错误号\
	repeated GemStone changedGemStone=4;//变化的魂石信息\
	repeated LeaderInfo changedLeaders=5;//变化的武将\
	optional bool isWear=6;//镶嵌还是卸下\
}\
\
//武将体力推送Pojo\
message LeaderStrengthPojo{\
	required int32 leaderId=1;//武将ID\
	required int32 strength=2;//行动力\
}\
\
//武将行动力变化推送\
message LeaderStrength_S2C_Push\
{\
	repeated LeaderStrengthPojo leaderStrengthPojos=1;//变化的武将列表\
}\
\
\
//======================灵兽=============================================\
\
//灵兽变化推送\
message GhostMonsterChange_S2C_Push\
{\
	required GhostMonster ghostMonster=4;//灵兽信息\
}\
\
\
//灵兽升级\
message GhostMonsterUpgrade{\
	required int32 ghostMonsterId=1;//灵兽\
	required int32 upgradeTimes=2;//升级次数\
}\
\
//灵兽升级\
message GhostMonsterUpgrade_S2C{\
	required int32 errCode=1;//错误号\
	required int32 ghostMonsterId=2;//灵兽\
	required int32 upgradeTimes=3;//升级次数\
	optional GhostMonster ghostMonster=4;//灵兽信息\
	required int32 curCoin=5;//当前铜钱\
	repeated Material costMaterial=6;//消耗后的材料\
}\
\
\
//灵兽升星\
message GhostMonsterUpgradeStar{\
	required int32 ghostMonsterId=1;//灵兽\
}\
\
//灵兽升星\
message GhostMonsterUpgradeStar_S2C{\
	required int32 errCode=1;//错误号\
	required int32 ghostMonsterId=2;//灵兽\
	optional GhostMonster ghostMonster=4;//灵兽信息\
	required int32 curCoin=5;//当前铜钱\
	optional Material costMaterial=6;//消耗后的材料\
	optional Part costPart=7;//消耗后的碎片\
}\
\
//上阵召唤兽\
message GhostMonsterFormationChange\
{\
	required int32 ghostMonsterId=1;//灵兽\
	required int32 formationType=2;//哪个布阵位置上 0:无 1:布阵 201:灵佑左  202:灵佑右\
}\
\
//上阵召唤兽(相关武将和下阵的召唤兽通过推送  如果有UI展示就找我改一下)\
message GhostMonsterFormationChange_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 ghostMonsterId=2;//灵兽\
	required int32 formationType=3;////在哪个布阵位置上 0:无 1:布阵 201:灵佑左  202:灵佑右 其他:武将ID(>20000)\
	optional GhostMonster ghostMonster=4;//灵兽信息\
}\
\
\
//灵兽召唤\
message SwearGhostMonster{\
	required int32 swearTimes=1;//召唤次数\
}\
\
\
//灵兽召唤\
message SwearGhostMonster_S2C{\
	required int32 errCode=1;//错误码\
	required int32 swearTimes=2;//召唤次数\
	repeated Item item=3;//增加的物品\
	optional SwearGhostMonsterInfo swearInfo=4;//神兽召唤信息\
	required int32 curMoney=7;//当前判金\
	optional Material costMaterial=8;//消耗的道具(终值)\
	optional int32 swearGhostMonsterFreeTime=9;//本轮灵兽抽卡已使用免费次数\
}\
\
//灵兽合成\
message CompositionGhostMonster\
{\
	required int32 ghostMonsterId=1;//灵兽ID\
}\
//灵兽合成\
message CompositionGhostMonster_S2C\
{\
	required int32 errCode=1;//错误号\
	optional GhostMonster ghostMonster=2;//灵兽信息\
	optional Part part=3;//使用后剩余的碎片\
	optional int32 curCoin=4;//玩家当前铜币\
}\
\
//第一次免费领取灵兽\
message TakeGhostMonster\
{\
	required int32 ghostMonsterId=1;//灵兽ID\
}\
\
//第一次免费领取灵兽\
message TakeGhostMonster_S2C\
{\
	required int32 errCode=1;//错误号\
	optional GhostMonster ghostMonster=2;//灵兽信息\
	optional int32 fristTakeGhostMonsterId=4;//玩家免费领取的召唤兽ID\
	optional Part part=5;//如果灵兽存在了就给对应的碎片\
}\
\
\
//武将等级突破\
message LeaderLevelBreak\
{\
	required int32 leaderId=2;//武将ID\
}\
//武将等级突破\
message LeaderLevelBreak_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将\
	repeated Part costPart=3;//扣除后的碎片\
}\
\
//武将转生到LG\
message LeaderUpgradeLG{\
	required int32 leaderId=1;//武将ID\
	required int32 lgStep=2;//转生目标阶段(网不好能防止过多花费)\
}\
\
//武将转生到LG\
message LeaderUpgradeLG_S2C{\
	required int32 errCode=1;//错误号\
	optional LeaderInfo leader=2;//武将\
	optional Cost cost=3;//扣除的Item\
}\
\
\
\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
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
	optional int32 type = 1;// 逻辑命令类型\
	//optional int32 seq = 2;// 时间序号\
	//optional int32 idx = 3;// 包序号\
	optional bytes data = 4;// 数据\
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
	repeated CommandBase commandList = 1; // 命令列表\
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
	optional int32 type = 1; // 1 为消息包 2 为ack包\
	optional bytes data = 2;\
}\
\
message UDPDataPacket\
{\
	optional int32 index = 1; // 序号\
	optional bytes data = 2; // 实际消息 包含消息号和消息体\
}\
\
message UDPAckPacket\
{\
	optional int32 index = 1; // 序号\
}\
\
message UDPClientServerPacket\
{\
	optional int32 type = 1; // 1 为client发起连接 2 为server响应连接 3 为client确认连接 4 为消息体 5 为关闭消息 6 为响应关闭消息\
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
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//=====================建筑==============================\
\
//获取建筑信息\
message GetBuildingInfo\
{\
	optional int32 buildID=1;//建筑ID\
}\
//获取建筑信息返回\
message GetBuildingInfo_S2C\
{\
	optional BuildingInfo buildingInfo=1;//返回的建筑信息\
}\
\
//建造建筑\
message Building_Create\
{\
	optional int32 buildType=1;//建筑类型 \
	optional bool isMoney=2;//材料不够是否使用金币\
}\
//建造建筑返回\
message Building_Create_S2C\
{\
	optional  int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional BuildingInfo buildingInfo=2;//建筑\
	optional int32 mainBuildExp=3;//主程当前经验\
}\
//升级建筑\
message Building_Upgrade\
{\
	optional int32 buildType=1;//建筑类型 \
	optional bool isMoney=2;//材料不够是否使用金币\
}\
//升级建筑返回\
message Building_Upgrade_S2C\
{\
	optional  int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional BuildingInfo buildingInfo=2;//建筑\
	optional int32 mainBuildExp=3;//主程当前经验\
}\
\
//升级天守阁返回\
message UpgradeMainBuild_S2C\
{\
	optional  int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional BuildingInfo buildingInfo=2;//建筑\
}\
\
\
\
//建筑建造或升级完成客户端调用返回\
message BuildCreateOrUpgradeEnd\
{\
	optional int32 buildId=1; //建筑ID\
}\
\
//建筑建造或升级完成客户端调用返回\
message BuildCreateOrUpgradeEnd_S2C\
{\
	optional BuildingInfo buildings=1; //建筑信息\
}\
//=====================建筑功能===========================\
\
//征收铜钱\
message HarvestCoin\
{\
	required int32 buildId=1;//建筑iD\
}\
\
//征收铜钱返回，铜钱数量不走推送消息\
message HarvestCoin_S2C\
{\
	optional int32 curCoinNum=1;//当前铜钱数量\
	optional int64 lastGetTime=2;//最后征收时间\
	required int32 buildId=3;//建筑ID\
}\
\
message HarvestFood\
{\
	required int32 buildId=1;//建筑ID\
}\
//征收铜钱返回，粮食数量不走推送消息\
message HarvestFood_S2C\
{\
	optional int32 curFarmNum=1;//当前粮食数量\
	optional int64 lastGetTime=2;//最后征收时间\
	required int32 buildId=3;//建筑ID\
}\
\
//建筑征收物品\
message BuildHarvestItem\
{\
	required int32 buildId=1;//建筑ID\
}\
//建筑征收物品\
message BuildHarvestItem_S2C\
{\
	optional Reward reward=1;//征收信息\
	optional int64 lastGetTime=2;//最后征收时间\
	required int32 buildId=3;//建筑ID\
}\
\
\
\
//科技升级\
message Tech_Upgrade\
{\
	required int32 memberId=1;//兵种ID\
	required int32 groupId=3;//升级分组ID\
}\
//科技升级返回\
message Tech_Upgrade_S2C\
{\
	optional  int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional TechnologyInfo technologyInfo=2;//科技\
	optional int32 curCoin=3;//当前铜币\
	optional int32 curHammer=4;//当前锤子\
}\
\
//天赋升级\
message Gift_Upgrage\
{\
	required int32 giftInstId=1;//兵种ID\
}\
//天赋升级返回\
message Gift_Upgrage_S2C\
{\
	optional  int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional GiftInfo giftInfo=2;//天赋\
	optional int32 curCoin=3;//当前铜钱\
	optional int32 curHammer=4;//当前锤子\
}\
\
//科技重置\
message Tech_Reset\
{\
	required int32 memberId=1;//兵种ID\
}\
\
//科技重置返回\
message Tech_Reset_S2C\
{\
	optional  int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional TechnologyInfo technologyInfo=2;//科技\
	optional int32 curCoin=3;//当前铜币\
	optional int32 curHammer=4;//当前锤子\
	optional int32 curMoney=5;//当前判金\
	repeated GiftInfo resetdGiftInfos=6;//重置的练兵场天赋\
	repeated TalentInfo resetdTalentInfos=7;//重置的练兵场技能\
}\
\
//兵种技能升级\
message Talent_Upgrage\
{\
	required int32 memberId=1;//兵种ID\
	required int32 giftType=2;//天赋ID	\
}\
//兵种技能升级\
message Talent_Upgrage_S2C\
{\
	optional int32 errCode=1;//操作结果 0：成功 其他：错误码\
	optional TalentInfo talentInfo=2;//技能\
	optional int32 curCoin=3;//当前铜钱\
	optional int32 curHammer=4;//当前锤子\
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
	required int32 buildId=1;//功能建筑ID\
}\
\
//升级功能建筑返回\
message UpgradeFunctionsBuild_S2C\
{\
	required int32 errCode=1;//错误号\
	optional FunctionsBuild functionsBuild=2;//更新后的建筑\
	required int32 curMoney=3;//当前判金\
	required int32 curCoin=4;//当前铜币\
	required int32 curFood=5;//当前粮食\
	repeated BuildingInfo buildings=6;//受影响的建筑\
	optional float curAtcAngery=7;//当前攻击初始士气\
	optional float curTournamentAngery=8;//当前竞技场初始士气\
	optional int32 cost=9;//COST值\
	repeated Material usedMaterials=10;//使用的材料\
\
	optional float countryWarAngery=44;//国战初始士气\
	optional int32 countrywarMaxReservesNum=45;//国战预备役上限\
\
}\
\
//更换坑里的功能建筑\
message ChangeBlockFunctionsBuild\
{\
	required int32 blockId=1;//坑ID\
	required int32 functionsBuildId=2;//功能建筑ID\
}\
\
//更换坑里的功能建筑\
message ChangeBlockFunctionsBuild_S2C\
{\
	required int32 errCode=1;//错误号\
	optional BlockFunctionsBuild blockFunctionsBuild=2;//更新后的坑\
	required int32 curMoney=3;//当前判金\
	repeated BuildingInfo buildings=4;//受影响的建筑\
	optional float curAtcAngery=5;//当前攻击初始士气\
	optional float curTournamentAngery=6;//当前竞技场初始士气\
	optional int32 cost=7;//COST值\
	optional FunctionsBuild functionsBuild=8;//更新后的建筑\
\
	optional float countryWarAngery=44;//国战初始士气\
	optional int32 countrywarMaxReservesNum=45;//国战预备役上限\
}\
\
//功能建筑征收武魂\
message FunctionsBuildHarvestWuHun\
{\
	required int32 blockId=1;//坑ID\
	required int32 functionsBuildId=2;//功能建筑ID\
}\
\
\
//功能建筑征收武魂\
message FunctionsBuildHarvestWuHun_S2C\
{\
	required int32 errCode=1;//错误号\
	optional FunctionsBuild functionsBuild=2;//征收的建筑\
	optional Material curWuHun=3;//当前武魂数量\
}\
\
\
//功能建筑征收物品\
message FunctionsBuildHarvestItem\
{\
	required int32 blockId=1;//坑ID\
	required int32 functionsBuildId=2;//功能建筑ID\
}\
\
\
//功能建筑征收物品\
message FunctionsBuildHarvestItem_S2C\
{\
	required int32 errCode=1;//错误号\
	optional FunctionsBuild functionsBuild=2;//征收的建筑\
	optional Reward reward=3;//收货的物品\
}\
\
//购买辅助建筑坑\
message BuyFunctionsBuildBlock\
{\
	required int32 blockId=1;//坑ID\
}\
//购买辅助建筑坑\
message BuyFunctionsBuildBlock_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 blockId=2;//坑ID\
	required int32 curMoney=3;//当前判金\
	optional BlockFunctionsBuild blockFunctionsBuild=4;//更新后的坑\
	\
}\
\
//功能建筑征收战魂\
message FunctionsBuildHarvestZhanHun\
{\
	required int32 blockId=1;//坑ID\
	required int32 functionsBuildId=2;//功能建筑ID\
}\
\
\
//功能建筑征收战魂\
message FunctionsBuildHarvestZhanHun_S2C\
{\
	required int32 errCode=1;//错误号\
	optional FunctionsBuild functionsBuild=2;//征收的建筑\
	optional Material curZhanHun=3;//当前战魂数量\
}\
\
//功能建筑征收预备役\
message FunctionsBuildHarvestReserves\
{\
	required int32 blockId=1;//坑ID\
	required int32 functionsBuildId=2;//功能建筑ID\
}\
\
\
//功能建筑征收预备役\
message FunctionsBuildHarvestReserves_S2C\
{\
	required int32 errCode=1;//错误号\
	optional FunctionsBuild functionsBuild=2;//征收的建筑\
	optional int32 curReservesNum=3;//当前预备役数量\
}\
\
//修改辅助建筑别名\
message ChangeFUnctionsBuildNickName\
{\
	required int32 buildId=1;//建筑ID\
	required string nickName=2;//建筑别名\
}\
\
//修改辅助建筑别名\
message ChangeFUnctionsBuildNickName_S2C\
{\
	required int32 errCode=1;//错误号\
	optional FunctionsBuild functionsBuild=8;//更新后的建筑\
	required int32 curMoney=9;//当前判金数\
}\
\
\
\
import 'Msg.proto';\
import 'TournamentAndFamilyWarAndActivity.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//选择势力\
message SelectFamily\
{\
	\
	optional int32  familyId=1;//势力id\
}\
//选择势力\
message SelectFamily_S2C\
{\
		required int32  errorCode=1;//错误码\
		optional int32  familyId=2;//势力id\
		optional int64 selectFamilyTime =3;//选择势力时间\
\
}\
\
//合战匹配对手\
message FamilyWarMatch_S2C\
{	\
	required int32 errCode=1;//错误号\
	optional int32 score=2;//对方积分\
	optional int32 challengeNum=4;//挑战次数\
	optional  OtherPlayerAtkInfo otherPlayerAtkInfo=5;\
	optional int32 food=3;//自己粮食\
	optional int32 money=6;//自己判金\
}\
\
//合战挑战\
message FamilyWarChallenge\
{\
	required bool result=1;//攻打结果\
	optional int32 atkSecond=3;//攻打时长秒\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;//武将战斗属性校验	 \
}\
//合战挑战返回\
message FamilyWarChallenge_S2C\
{\
	required int32 errCode=1;//错误号 \
	optional int32 score=4;//合战当前积分\
	required bool result=2;//攻打结果\
	optional Reward reward=3;//奖励信息\
\
\
}\
\
message GetFamilyWarRank_S2C{\
    required int32 selfRankNo=3;//自己排名\
   repeated FamilyWarRank familyARank=1;//势力A排行榜\
   repeated FamilyWarRank familyBRank=2;//势力B排行榜\
}\
\
message FamilyWarMember_S2C{\
   required int32 familyAMemberNum =1;//势力A人数\
   required int32 familyBMemberNum =2;//势力B人数\
   \
}\
\
message FamilyWarScore_S2C{\
   required int32 familyAScore =1;//势力A积分\
   required int32 familyBScore =3;//势力B积分\
\
}\
\
\
import 'Msg.proto';\
import 'League.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
//申请好友\
message ApplyFriend\
{\
	required int32 targetUid=1;//目标id\
}\
\
//申请好友--返回自己和推送对方\
message ApplyFriend_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional FriendApplicant applicantInfo=2;//申请信息\
}  \
\
\
//申请好友操作\
message OperApplyFriend\
{\
	required int32 targetUid=1;//目标id\
	required int32 type=2;//1 同意 2 拒绝\
}\
\
//好友申请处理--返回自己和推送对方,不管是否同意客户端都要自行删除\
message OperpplyFriend_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 type=4;//目标id\
	optional FriendApplicant friendApplicant=2;//申请信息\
    optional Friend friend=3;//朋友\
} \
\
\
//删除好友\
message DelFriend\
{\
	required int32 targetUid=1;//目标id\
}\
\
//删除好友--返回\
message DelFriend_S2C\
{\
	required int32 errorCode=1;//错误号\
    optional int32 targetUid=2;//目标id\
} \
\
 \
\
//赠送体力好友\
message FriendGiveStrength\
{\
	required int32 targetUid=1;//目标id\
}\
\
//赠送体力好友 \
message FriendGiveStrength_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated GiveStrength giveStrength=2;//赠送信息\
	optional int32 targetUid=3;//目标id\
	optional int32 friendPoint=4;//友情点\
\
    \
} \
\
\
\
//一键赠送体力好友推送\
message FriendGiveStrengthPush_S2C\
{\
   required GiveStrength giveStrength=1;//赠送信息\
  \
}\
\
//领取体力好友\
message FriendTakeStrength\
{\
	required int32 targetUid=1;//目标id\
}\
//领取体力好友\
message FriendTakeStrength_S2C\
{\
    required int32 errorCode=1;//错误号\
    repeated GiveStrength giveStrength=3;//赠送信息\
	optional int32 strength=2;//当前体力\
}\
\
\
 \
//推荐好友\
message RecommendFriend_S2C\
{\
	required int32 errorCode=2;//错误号\
    repeated SimplePlayer simplePlayer =1;//推荐的玩家\
	 \
}\
\
\
\
//获取阵型武将信息\
message GetAtkLeaderInfo\
{\
	required int32 targetUid=1;//目标id\
	required FormationEnum formationEnum=2;//布阵类型\
}\
\
// 获取阵型武将信息\
message GetAtkLeaderInfo_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated SimpleLeaderInfo simpleLeaderInfo=2;//武将信息\
	required SimplePlayer simplePlayer =3;//玩家\
	required FormationEnum formationEnum=4;//布阵类型    \
} \
\
//好友切磋结果\
message TryAtkOtherPlayerTournamentResult\
{\
	required int32 targetUid=1;//对方玩家ID\
	required bool result=2;//结果\
}\
//好友切磋结果\
message TryAtkOtherPlayerTournamentResult_S2C\
{\
	required int32 targetUid=1;//对方玩家ID\
	required bool result=2;//结果\
	optional TryAtkTournamentResult tryAtkTournamentResults=118;//切磋结果\
}\
\
\
\
//获取指定武将详细\
message GetLeaderInfo\
{\
	required int32 uid=1;//玩家ID\
	required int32 leaderId=2;//武将ID\
}\
//获取指定武将详细返回\
message GetLeaderInfo_S2C\
{\
	optional LeaderInfo leader=1;//武将信息\
	repeated Equip equips=2;//装备列表\
	repeated GemStone gemStones=3;//魂石列表\
}\
\
//获取玩家信息\
message GetSimplePlayerByUId \
{\
    required int32 uid=1;//玩家ID\
   \
	 \
}\
//获取玩家信息\
message GetSimplePlayerByUId_S2C\
{\
    required int32 errorCode=1;//错误号\
    optional SimplePlayer simplePlayer =2;//玩家\
	 \
}\
\
\
//搜索玩家信息\
message GetSimplePlayer \
{\
    required string targetUName=1;//名字\
   \
	 \
}\
//搜索玩家信息\
message GetSimplePlayer_S2C\
{\
    required int32 errorCode=1;//错误号\
    optional SimplePlayer simplePlayer =2;//玩家\
	 \
}\
\
//搜索玩家信息\
message GetFriend_S2C\
{\
    required int32 errorCode=1;//错误号\
  	repeated FriendApplicant friendApplicant=2;//好友申请列表\
	repeated Friend friend=3;//好友列表\
	 \
}\
\
//好友助战类型\
message AssistFriendModel\
{\
	required int32 uid=1;//玩家ID\
	required string uName=2;//玩家昵称\
	required LeaderInfo leader=3;//助战武将 \
}\
//获取助战好友列表\
message GetAssistFriends_S2C\
{\
    required int32 errCode=3;\
	repeated AssistFriendModel assistFriends =1;//助战玩家列表\
	repeated int32 assistedFriendUID=2;//助战过的好友ID   \
}\
//设置助战武将\
message SetAssistLeader\
{\
	required int32 leaderId=1;//武将ID\
}\
\
//设置助战武将\
message SetAssistLeader_S2C\
{\
	required int32 errCode=1;//错误号\
}\
\
//远征每层信息\
message InfiniteCity\
{	\
	required int32 errCode=1;//错误号\
	optional int32 level=2;//当前层数\
	optional OtherPlayerAtkInfo OtherPlayerAtkInfo=3;\
	repeated InfiniteCityBattleLeader enemyLeadersBlood=4; //对手武将剩余血量列表\
	repeated int32 taked31LevelBoxIndex=5;//领取的31层奖励的索引 0 1 2 其它层无此字段\
	optional bool cancleTake31LevelBox=6;//是否放弃31层奖励 true:是 false :否\
\
}\
\
\
\
//玩家远征战斗前请求\
message InfiniteCityBattleEnter\
{\
    required int32 errorCode=1;//错误号\
  	optional int32 level=2;//当前层数\
	repeated InfiniteCityLeaderId leaders=3; //武将上阵列表\
}\
\
\
//玩家远征战斗前请求\
message InfiniteCityBattleEnter_S2C\
{\
    required int32 errorCode=1;//错误号\
  	optional int32 level=2;//当前层数\
	optional int32 strength=3;//当前体力\
}\
\
\
//玩家远征战斗结束\
message InfiniteCityBattleOver\
{\
    required int32 errorCode=1;//错误号\
  	optional int32 level=2;//当前层数\
	repeated InfiniteCityBattleLeader leadersBlood=3; //武将剩余血量列表\
	optional int32 star=4;//获得星数量\
	optional int32 time=5;//战斗耗时(秒)\
	optional int32 isWin=6;//是否获胜\
	optional int32 friendId=7;//助战好友id\
	repeated InfiniteCityBattleLeader enemyLeadersBlood=8; //对手武将剩余血量列表\
	repeated LeaderFightCheckProp LeaderFightCheckProp=9;//武将战斗属性校验\
}\
\
\
//玩家远征战斗结束\
message InfiniteCityBattleOver_S2C\
{\
    required int32 errorCode=1;//错误号\
  	optional int32 level=2;//当前层数\
	optional int32 star=3;//当前星数量\
	optional int32 score=4;//当前积分数量\
	optional int32 skillId=5;//当前buffid\
	optional InfiniteCity nextInfiniteCity=6;//下一关武将信息\
	repeated InfiniteCityLeaderId leaders=7; //武将上阵列表\
	optional Reward reward=8;//奖励\
	optional string friends=9;//助战信息\
	repeated InfiniteCityBattleLeader leadersBlood=10;//无限城武将剩余血量\
}\
\
//玩家跳过远征\
message InfiniteCityBattlePass_S2C\
{\
    required int32 errorCode=1;//错误号\
	optional int32 money=2;//当前判金\
	optional int32 passCount=3;//本日跳过次数\
	optional InfiniteCity nextInfiniteCity=4;//下一关武将信息\
}\
\
//玩家开启宝箱\
message InfiniteCityOpenBox_S2C\
{\
    required int32 errorCode=1;//错误号\
	optional int32 money=2;//当前判金\
	optional int32 boxStep=3;//宝箱步骤\
	optional InfiniteCity nextInfiniteCity=4;//下一关武将信息\
	optional Reward reward=5;//奖励\
}\
\
//玩家远征购买buff\
message InfiniteCityBuyBuff\
{\
    required int32 errorCode=1;//错误号\
  	optional int32 index=2;//购买的buff下标\
}\
\
\
//玩家远征购买buff\
message InfiniteCityBuyBuff_S2C\
{\
    required int32 errorCode=1;//错误号\
	optional int32 star=2;//当前星数量\
	optional int32 skillId=3;//购买的技能id\
	optional InfiniteCity nextInfiniteCity=4;//下一关武将信息\
}\
\
//花钱刷新远征积分商城 \
message RefreshInfiniteCityMall_S2C\
{\
	repeated ScoreGoods scoreGoods=1;//商品列表\
	optional int32 curMoney=2;//当前玩家判金\
	required int32 errCode=3;//错误号\
	optional int64 nextRefreshTime=4;//下次刷新时间\
}\
\
//远征购买积分商品\
message InfiniteCityBuyScoreGoods\
{\
	 required int32 errCode=1;\
	 required int32 goodsIndex=2;//商品索引\
}\
\
//远征购买积分商品\
message InfiniteCityBuyScoreGoods_S2C\
{\
	required int32 errCode=1;	\
	optional Reward item=2;//购买的商品	\
	optional int32 score=3;//积分数量\
	required int32 goodIndex=4;//购买的索引\
	repeated Material changedMaterial=5;//变化的材料\
}\
\
//远征重置\
message InfiniteCityReset_S2C\
{\
	required int32 errCode=1;	\
	optional int32 infiniteCityLevel=2;//无限城当前关卡\
	optional int32 infiniteCityResetCount=3;//无限城重置次数\
	optional int32 infiniteCitySkillId=4;//无限城buffid\
	optional InfiniteCity infiniteCity=5;//无限城信息\
	repeated InfiniteCityBattleLeader leadersBlood=6;//无限城武将剩余血量\
	repeated InfiniteCityLeaderId leaders=7; //武将上阵列表\
	required int32 curMoney=8;//当前判金\
}\
\
//远征排行榜返回\
message InfiniteCityRank_S2C\
{\
	optional int32 errCode=1;\
	optional int32 rankOwn=2;//自己排行\
	repeated InfiniteCityRankInfo  ranks=3;//排行榜信息\
	\
\
}\
\
//远征扫荡宝箱Model\
message SweepFarWarBoxModel{\
	required int32 boxLevel=1;//宝箱关卡ID\
	required int32 boxStep=2;//宝箱步骤	\
}\
\
//远征扫荡\
message SweepFarWar_S2C\
{\
	optional int32 errCode=1;\
	repeated Reward rewards=2;//奖励列表\
	optional int32 curLevel=3;//无限城当前关卡\
	repeated SweepFarWarBoxModel boxLevels=4;//待开的宝箱\
	optional InfiniteCity nextInfiniteCity=5;//下一关武将信息\
	optional int32 money=6;//当前判金\
	optional int32 star=7;//当前总星星\
}\
//远征扫荡开宝箱\
message SweepFarWarOpenBox\
{	\
	optional int32 level=1;//宝箱关卡\
}\
//远征扫荡开宝箱\
message SweepFarWarOpenBox_S2C\
{\
    required int32 errorCode=1;//错误号\
	optional int32 money=2;//当前判金\
	repeated SweepFarWarBoxModel boxLevels=3;//待开的宝箱（可能包含上一次开的宝箱，用来确定购买宝箱）	\
	optional Reward reward=4;//奖励\
}\
\
//玩家开启最后一层无限城宝箱\
message InfiniteCityOpenBox31Level\
{\
	optional int32 boxStep=3;//宝箱步骤\
}\
\
//玩家开启最后一层无限城宝箱\
message InfiniteCityOpenBox31Level_S2C\
{\
    required int32 errorCode=1;//错误号\
	optional int32 money=2;//当前判金\
	optional InfiniteCity infiniteCity=3;//宝关卡信息\
	optional Reward reward=5;//奖励\
}\
\
//玩家取消领取最后一层无限城宝箱\
message CancleTake31LevelBox_S2C\
{\
    required int32 errorCode=1;//错误号\
	optional InfiniteCity infiniteCity=3;//宝关卡信息\
}\
\
\
//好友在线状态\
message FriendOnlienState_S2C\
{\
	required int32 errCode=1;\
  	repeated int32 friendUId=2;//好友uid\
	repeated bool online=3;//是否在线\
}\
\
\
\
//友情点购买\
message BuyFriendPointGoods{\
	required int32 goodsId=1;//商城物品ID\
}\
\
//友情点购买\
message BuyFriendPointGoods_S2C{\
	required int32 errorCode=1;//错误号\
	required int32 goodsId=2;//商城物品ID\
	optional Reward reward=5;//奖励\
}\
\
//查询邀请码\
message SearchInviteCode{\
	required string inviteCode=1;//邀请码\
}\
\
//查询邀请码\
message SearchInviteCode_S2C{\
	required int32 errorCode=1;//错误号\
	optional InviteCodePlayerInfo info=2;//信息\
}\
\
//绑定邀请码\
message BindInviteCode{\
	required string inviteCode=1;//邀请码\
}\
\
//绑定邀请码\
message BindInviteCode_S2C{\
	required int32 errorCode=1;//错误号\
}\
\
//领取邀请码奖励\
message ReceiveInviteCode{\
	required int32 id=1;//邀请码奖励id\
}\
\
//领取邀请码奖励\
message ReceiveInviteCode_S2C{\
	required int32 errorCode=1;//错误号\
	optional Reward reward=2;//奖励\
}\
\
//获取联盟列表\
message LeagueList_S2C\
{\
	required int32 errCode=1;\
	repeated SimpleLeagueInfo leagues=2;//联盟列表\
}\
\
//创建联盟\
message LeagueCreate\
{\
	required string leagueName=1;//联盟名称\
}\
//创建联盟返回\
message LeagueCreate_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional LeagueInfo leagueInfo=2;//联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=3;//玩家联盟信息\
	optional int32 curMoney=4;//当前判金\
}\
\
//获取自己的联盟\
message League_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional LeagueInfo league=2;//联盟信息\
}\
\
//获取联盟成员\
message LeagueMemberList\
{\
	required int32 leagueId=1;//联盟ID\
}\
//获取联盟成员\
message LeagueMemberList_S2C\
{\
	repeated SimplePlayerLeagueInfo leagueMembers=1;//联盟成员\
}\
\
//退出联盟\
message ExitLeague_S2C\
{\
	required int32 errCode=1;//错误号\
	required PlayerLeagueInfo playerLeagueInfo=2;//个人联盟信息\
}\
\
//解散联盟（推送至各个成员）\
message DissolvedLeague_S2C\
{\
	required int32 errCode=1;//错误号\
	required PlayerLeagueInfo playerLeagueInfo=2;//个人联盟信息\
}\
\
//转让联盟\
message MadeLeague\
{\
	required int32 madeUID=1;//要转让的成员\
}\
//转让联盟\
message MadeLeague_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeagueInfo leagueInfo=2;//最新联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=3;//最新的自己的个人联盟信息\
	required int32 madeUID=4;//要转让的成员\
}\
\
//个人联盟信息变化 （推送）到被转让者 发邮件\
message PlayerLeagueInfoChanged_S2C\
{\
	optional LeagueInfo leagueInfo=1;//最新联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=2;//最新的自己的个人联盟信息\
	repeated SimplePlayerLeagueInfo otherPlayerLeagueInfos=3;//联盟其他人信息\
}\
\
//修改联盟公告\
message ChangeLeagueNotice\
{\
	required string notice=1;//公告内容\
}\
//修改联盟公告\
message ChangeLeagueNotice_S2C\
{\
	required int32 errCode=1;//错误号\
	required string notice=2;//公告内容\
}\
//修改联盟宣言\
message ChangeLeagueDeclaration\
{\
	required string declaration=1;//宣言内容\
}\
//修改联盟宣言\
message ChangeLeagueDeclaration_S2C\
{\
	required int32 errCode=1;//错误号\
	required string declaration=2;//宣言内容\
}\
\
//踢出联盟成员\
message KickLeaguePlayer\
{\
	required int32 uid=1;//踢出的成员ID	\
}\
//踢出联盟成员\
message KickLeaguePlayer_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 uid=2;//踢出的成员ID\
}\
//踢出联盟成员（推送）\
message KickLeaguePlayer_S2C_Push\
{\
	required PlayerLeagueInfo playerLeagueInfo=2;//踢出的成员信息\
}\
//申请联盟\
message ApplicantLeague\
{\
	required int32 leagueId=1;//联盟ID\
	required string applicantNotice=2;//申请留言\
}\
\
//申请联盟返回\
message ApplicantLeague_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 leagueId=2;//联盟ID\
}\
//申请联盟推送（推送给盟主副盟主）\
message ApplicantLeague_S2C_Push\
{\
	required LeagueApplicant applicantInfo=1;//申请信息\
\
}\
//获取联盟申请列表\
message ApplicantLeagueList_S2C\
{\
	required int32 errCode=1;//\
	repeated LeagueApplicant applicantInfo=2;//申请信息\
}\
//处理联盟申请消息\
message ApplicantLeagueOpt\
{\
	repeated int32 uid=1;//玩家ID\
	required bool isAgree=2;//是否同意\
}\
//处理联盟申请消息\
message ApplicantLeagueOpt_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional SimplePlayerLeagueInfo playerLeagueInfo=2;//同意的成员联盟信息\
	required bool isAgree=3;//是否同意\
	repeated int32 uids=4;//玩家ID\
}\
//处理联盟申请消息(推送)给被同意的成员\
message ApplicantLeagueOpt_S2C_Push\
{\
	optional LeagueInfo leagueInfo=1;//最新联盟信息\
	optional PlayerLeagueInfo playerLeagueInfo=2;//最新的自己的个人联盟信息\
}\
\
//联盟邀请\
message LeagueInvitePlayer\
{\
	required int32 uid=1;//玩家ID\
}\
//联盟邀请返回\
message LeagueInvitePlayer_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 uid=2;//玩家ID\
}\
\
\
//联盟邀请推送(推送给玩家)\
message LeagueInvitePlayer_S2C_Push\
{\
	required LeagueInvite LeagueInviteInfo=1;//邀请信息\
}\
\
//处理联盟邀请消息\
message LeagueInvitePlayerOpt\
{\
	repeated int32 leagueId=1;//联盟ID\
	required bool isAgree=2;//是否同意\
}\
//处理联盟邀请消息\
message LeagueInvitePlayerOpt_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional PlayerLeagueInfo playerLeagueInfo=2;//同意的成员联盟信息\
	optional LeagueInfo leagueInfo=3;//联盟信息\
	required bool isAgree=4;//是否同意\
\
}\
\
\
\
//联盟改名\
message ChangeLeagueName\
{\
	required string leagueName=1;//联盟名称\
}\
//联盟改名返回\
message ChangeLeagueName_S2C\
{\
	required int32 errorCode=1;//错误号\
	required string leagueName=2;//联盟名称\
	required int32 curMoney=3;//当前判金\
}\
\
//联盟捐献\
message LeagueDonation\
{\
	required int32 donationId=1;//捐献项ID\
}\
//联盟捐献\
message LeagueDonation_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 donationId=2;//捐献项ID\
	required int32 curMoney=3;//当前判金\
	required int32 curCoin=4;//当前铜钱\
	optional PlayerLeagueInfo playerLeagueInfo=5;//个人联盟信息\
	optional LeagueInfo leagueInfo=6;//联盟信息\
\
}\
\
//获取联盟捐献信息\
message LeagueDonationInfo_S2C\
{\
	repeated LeagueDonationInfo leagueDonationInfos=1;//捐献日志\
\
}\
\
//联盟激活旗帜\
message LeagueActiveFlag\
{\
	required int32 flagId=1;//战棋ID\
}\
//联盟激活旗帜\
message LeagueActiveFlag_S2C\
{\
	required int32 errorCode=1;//错误号\
	repeated int32 flags=2;//旗帜列表	\
}\
\
//联盟选择旗帜\
message ChangeCurFlag\
{\
	required int32 flagId=1;//战棋ID\
}\
//联盟选择旗帜\
message ChangeCurFlag_S2C\
{\
	required int32 errorCode=1;//错误号\
	optional int32 curFlag=2;//当前旗帜	\
}\
\
//联盟群发信息\
message LeaguePublicMsg\
{\
	required string content=1;//消息内容\
}\
\
//联盟群发信息\
message LeaguePublicMsg_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 todayPublicMsgTimes=2;//今日群发消息次数\
	required int64 lastLeaguePublicMsgTime=3;//最后群发消息时间\
}\
\
//联盟商店购买\
message LeagueShopBuy\
{\
	required int32 itemId=1;//物品ID\
}\
//联盟商店购买\
message LeagueShopBuy_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 itemId=2;//物品ID\
	optional Reward reward=3;//奖励\
	repeated int32 todayBuyMallThingIds=4;//今日已购买的商城物品\
	optional int64 lastBuyMallThingTime=5;//最后购买商城物品时间\
	optional int32 curPlayerContributionCoin=6;//当前贡献币\
}\
//修改成员职位\
message ChangePlayerLeagueTitle\
{\
	required int32 uid=1;//盟员玩家ID\
	required LeagueTitleEnum leagueTieleEnum=2;//职位\
}\
//修改成员职位\
message ChangePlayerLeagueTitle_S2C\
{\
	required int32 errorCode=1;//错误号\
	required int32 uid=2;//盟员玩家ID\
	required LeagueTitleEnum leagueTieleEnum=3;//职位\
}\
\
//陌生人聊天信息变化推送\
message StrangerChatModelChange_S2C_Push\
{\
	required StrangerChatModel strangerChatModel=1;//聊天信息\
}\
\
//获取玩家私聊信息\
message GetPlayerChats_S2C\
{\
	repeated ChatModel chatModels=1;//私聊信息\
}\
\
//已读私聊聊天\
message PlayerChatReaded\
{\
	required int32 senderUID=1;//发送者ID\
}\
\
//已读私聊聊天\
message PlayerChatReaded_S2C\
{\
	required int32 errCode=1;//错误号\
}\
package msg;\
import 'Msg.proto';\
\
\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//联盟关系\
message LeagueRelation\
{\
	required int32 targetLeagueId=1;//联盟ID\
	required int32 relationType=2;//关系类型:  1:友好 2:敌对 3:和平 \
	required string des=3;//说明\
	optional int64 relationTime=4;//修改关系时间\
}\
\
//联盟科技\
message LeagueScience\
{\
	required int32 scienceId=1;//科技ID\
	required int32 scienceLevel=2;//科技等级\
}\
//联盟科技记录\
message LeagueScienceLog\
{\
	required int32 scienceId=1;//科技ID\
	required int32 scienceLevel=2;//科技等级\
	required int32 upgradeUID=3;//升级玩家ID\
	required int64 upgradeTime=4;//升级时间\
	required string upgradeUName=5;//升级的玩家昵称\
}\
\
//联盟弹劾信息\
message LeagueImpeachmentInfo\
{\
	optional int32 impeachmentUID=22;//发起人\
	optional int64 impeachmentTime=24;//弹劾开始时间\
	repeated int32 impeachmentAgreeUIDs=25;//同意弹劾人\
	repeated int32 impeachmentRefuseUIDs=26;//拒绝弹劾的人\
	repeated int32 canImpeachmentUIDs=27;//可以投票的人\
}\
\
//联盟信息\
message LeagueInfo\
{\
	required int32 leagueId=1;//联盟ID\
	required string leagueName=2;//联盟名称\
	required int32 leagueLevel=3;//联盟等级\
	required int32 honor=4;//荣誉值\
	required int32 curFlag=5;//展示旗帜\
	repeated int32 flags=6;//旗帜列表\
	required int32 ownerUID=7;//盟主ID\
	required string ownerName=8;//盟主昵称\
	required int32 cmdTokenNum=9;//令牌数\
	required int32 curMemberNum=10;//当前人数\
	required int64 createTime=11;//创建时间\
	required string leagueNotice=12;//联盟公告\
	required string leagueDeclaration=13;//联盟宣言\
	repeated LeagueApplicant leagueApplicants=14;//申请列表\
	required int64 leaguePower=15;//联盟战斗力\
	optional LeagueWar leagueWarInfo=16;//联盟Boss信息\
	repeated LeagueRelation leagueRelations=17;//联盟关系列表\
	repeated int32 controldUids=21;//沦陷的玩家列表\
	repeated LeagueScience sciences=22;//联盟科技\
	optional LeagueImpeachmentInfo leagueImpeachment=23;//联盟弹劾信息\
	optional int64 leagueLastBattleTime=24;//最后联盟战报时间\
	optional int32 rank=25;//排行\
	optional int32 rank_CountryWar=26;//国战排行\
	optional int64 rank_CountryWar_Time=27;//国战排行\
	optional int32 rank_CountryWar_preSeason=28;//上一赛季国战排行\
	optional int64 rank_CountryWar_Time_preSeason=29;//国战上一赛季排行时间\
\
}\
//简单联盟信息（给其他人看的）\
message SimpleLeagueInfo\
{\
	required int32 leagueId=1;//联盟ID\
	required string leagueName=2;//联盟名称\
	required int32 leagueLevel=3;//联盟等级\
	required int32 honor=4;//荣誉值\
	required int32 curFlag=5;//展示旗帜\
	required int32 ownerUID=6;//盟主ID\
	required string ownerName=7;//盟主昵称\
	required int32 curMemberNum=8;//当前人数\
	required int64 createTime=9;//创建时间\
	required string leagueDeclaration=10;//联盟宣言\
	  \
	optional int32 ownerMainCityCenterPosId=12;//盟主国战主城中心点\
	required int64 leaguePowerScore=14;//联盟势力值\
	required int64 leagueCapa=15;//联盟战斗力\
}\
\
//当天贡献信息\
message LeagueDonationInfo\
{\
	required string uName=1;//\
	required int32 todayDonationValue=2;//今日贡献值（前端用）\
	required int32 weekDonationValue=3;//本周贡献值（前端用）	\
}\
\
\
//联盟申请信息\
message LeagueApplicant\
{\
	required int32 uid=1;//玩家ID\
	required string applicantNotice=2;//申请留言\
	optional SimplePlayer simplePlayer=3;//玩家简单信息\
}\
//联盟邀请信息\
message LeagueInvite\
{\
	required int32 leagueId=1;//联盟ID\
	optional SimpleLeagueInfo simpleLeagueInfo=2;//联盟简单信息\
}\
//玩家联盟信息\
message PlayerLeagueInfo\
{\
	required int32 uid=1;//玩家ID\
	required string uName=2;//玩家昵称\
	required int32 leagueId=3;//所属联盟ID	\
	required LeagueTitleEnum leagueTitle=4;//所属联盟官职\
	required int32 leagueContribution=5;//联盟贡献值（离开联盟则清零）\
	required int32 playerContributionCoin=6;//玩家贡献币(一直跟随玩家，可以商城购买)\
	repeated int32 todayBuyMallThingIds=7;//今日已购买的商城物品\
	repeated LeagueInvite leagueInvites=8;//联盟邀请列表\
	required int64 lastExitLeagueTime=9;//最后退出联盟时间\
	required int32 todayDonationCount=10;//今日贡献次数\
	required int32 todayDonationValue=11;//今日贡献值（前端用）\
	required int32 weekDonationValue=12;//本周贡献值（前端用）\
	required int64 lastDonationTime=13;//最后贡献时间\
	required int32 todayLeaguePublicMsgTimes=14;//今日群发信息次数\
	required int64 lastLeaguePublicMsgTime=15;//最后群发消息时间\
	required int64 lastbuyMallThingsTime=16;//最后购买商城物品时间\
	required int64 inLeagueTime=17;//进盟时间\
	optional int32 disTitle_WorldCityId=18;//展示的国战中立城池官位\
	optional int64 lastCheckLeagueBattleTime=19;//最后查看联盟战报时间\
\
}\
//简单联盟成员信息（给其他人看的）\
message SimplePlayerLeagueInfo\
{\
	required int32 uid=1;//玩家ID\
	required string uName=2;//玩家昵称\
	required int32 leagueId=3;//所属联盟ID	\
	required LeagueTitleEnum leagueTitle=4;//所属联盟官职\
	optional SimplePlayer SimplePlayer=5;//玩家简单信息\
	required int32 weekDonationValue=6;//本周贡献值（前端用）\
	required int32 leagueContribution=7;//联盟贡献值（离开联盟则清零）\
	optional int32 countryWarPowerScore=8;//势力值\
	optional int32 countryWarMainCityCenterPointId=9;//国战主程所在中心点ID\
	optional int32 disTitle_WorldCityId=10;//展示的国战中立城池官位\
}\
\
enum LeagueTitleEnum\
{\
	none=0;//无帮派人士\
	owner=1;//盟主\
	deputy=2;//公卿\
	elite=3;//大臣\
	member=4;//群众\
	strategist=5;//军师\
}\
\
\
\
//玩家攻打的联盟PVE信息\
message LeaguePve\
{\
	required int32 pveId=1;//boss关卡ID\
	required int32 getedBossPoint=2;//获得的boss点数\
	required int32 attatkedBossHp=3;//打掉的boss血量\
}\
\
//联盟PVe单个关卡排行\
message LeagueWarPveRank\
{\
	required SimplePlayer simplePlayer=1;//玩家简单信息\
	required LeaguePve LeaguePve=2;//攻打情况\
	required LeagueTitleEnum leagueTitle=3;//所属联盟官职\
}\
\
//联盟PVe Boss排行\
message LeagueWarBossRank\
{\
	required SimplePlayer simplePlayer=1;//玩家简单信息\
	required LeagueTitleEnum leagueTitle=3;//所属联盟官职\
	optional int32 attatkedBossHp=4;//打掉的总boss血量\
}\
//联盟PVe Boss点排行\
message LeagueWarBossPointRank\
{\
	required SimplePlayer simplePlayer=1;//玩家简单信息\
	required int32 bossPoint=2;//攻打点数\
	required LeagueTitleEnum leagueTitle=3;//所属联盟官职\
}\
\
//联盟讨伐战boss\
message LeagueWarBoss\
{\
	required int32 bossPveId=1;//当前boss关卡ID\
	required int32 bossCurHp=2;//当前boss血量	\
	required int32 bossMaxHp=3;//boss血量\
	required int64 bossOpenTime=4;//boss开启时间\
	required int32 bossState=5;//当前Boss状态 0：未开启 1：已开启 2：已击毙\
}\
//玩家联盟讨伐战信息\
message PlayerLeagueWar\
{\
	repeated LeaguePve meAtkedLeagueWarPveList=1;//我打过的关卡信息\
	required int64 lastAtkPveTime=2;//上次进入关卡时间\
	repeated int32 meGetedBossRewardPveId=3;//我领取过的boss奖励\
	required int64 lastAtkBossTime=4;//最后攻打boss时间\
	required int32 lastInPveId=5;//最后进入的关卡ID\
	optional int32 atkTimes=6;//剩余攻打联盟战次数\
	optional int32 totalAtkTimes=7;//累计攻打联盟战次数\
}\
//联盟讨伐战\
message LeagueWar\
{\
	required int32 bossPoint=1;//Boss点数\
	required int64 startTime=2;//本次讨伐战开启时间\
	required int32 state=3;//当前联盟讨伐战状态 0:已结束 1：开启中\
	repeated int32 atkedBosseIds=4;//已经打过的boss关卡\
	optional LeagueWarBoss curBoss=5;//当前boss关卡ID\
	optional PlayerLeagueWar playerLeagueWar=6;//玩家联盟讨伐战信息\
	optional int64 lastOpenTime=7;//最后一次开启讨伐战时间\
	optional int32 weekOpenTimes=8;//本周开启讨伐战次数\
	optional int32 joinedMemberNum=9;//参加联盟战的人数\
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
	required int32 errCode=1;//错误号\
	optional LeagueWar leagueWarInfo=2;//联盟讨伐战\
	optional int32 cmdTokenNum=3;//令牌数\
}\
\
//获取联盟PVe单个关卡排行\
message GetLeagueWarPveRank\
{\
	required int32 leagueWarPveId=1;//联盟讨伐战关卡ID\
}\
//获取联盟PVe单个关卡排行\
message GetLeagueWarPveRank_S2C\
{\
	required int32 errCode=1;//联盟讨伐战关卡ID\
	repeated LeagueWarPveRank ranks=2;//排行\
	required int32 bossMaxHp=3;//boss最高血量\
}\
//获取联盟BOSS点数排行\
message GetLeagueWarBossPointRank_S2C\
{\
	required int32 errCode=1;//联盟讨伐战关卡ID\
	repeated LeagueWarBossPointRank ranks=2;//排行\
	\
}\
//攻打讨伐战开始\
message AtkLeagueWar_Begin\
{\
	required int32 pveId=1;//关卡ID\
}\
//攻打讨伐战开始\
message AtkLeagueWar_Begin_S2C\
{\
	required int32 errCode=1;//联盟讨伐战关卡ID\
	optional int64 lastAtkBossTime=2;//最后攻打boss时间\
	optional int32 lastInPveId=3;//最后进入的关卡ID\
}\
//攻打讨伐战结束\
message AtkLeagueWar_End\
{\
	required int32 pveId=1;//关卡ID\
	optional int32 atkedHp=2;//打掉的血量\
	required int32 atkTime=3;//攻打时长\
	required bool result=4;//攻打结果\
	repeated LeaderFightCheckProp LeaderFightCheckProp=7;//武将战斗属性校验\
}\
//攻打讨伐战结束\
message AtkLeagueWar_End_S2C\
{\
	required int32 errCode=1;\
	required int32 pveId=2;//关卡ID\
	optional Reward reward=3;//奖励\
	optional int32 rewardContribution=4;//玩家当前贡献币\
	optional LeaguePve leaguePveInfo=5;//玩家攻打的联盟PVE信息\
	optional int32 atkTimes=6;//剩余攻打联盟战次数\
	optional int32 totalAtkTimes=7;//累计攻打次数\
}\
\
\
//联盟Boss点数变化推送\
message LeagueWarBossPointChange_S2C_Push\
{\
	required int32 bossPoint=1;//Boss点数\
}\
//联盟参加人数变化推送\
message LeagueWarJoinedMemberNumChange_S2C_Push\
{\
	optional int32 joinedMemberNum=9;//参加联盟战的人数\
}\
\
//联盟Boss开启\
message LeagueWarBossOpen_S2C_Push\
{\
	required LeagueWarBoss leagueWarBossInfo=1;//联盟讨伐战boss\
}\
//联盟Boss血量更新\
message LeagueWarBossHPChange_S2C_Push\
{\
	required int32 bossCurHp=1;//当前boss血量	\
}\
\
//联盟讨伐战Boss死掉\
message LeagueWarBossFinished_S2C_Push\
{\
	required LeagueWarBoss finishedLeagueWarBoss=1;//被击毙的boss	\
	optional LeagueWarBoss newLeagueWarBoss=2;//被击毙的boss\
}\
//领取boss关卡奖励\
message TakeLeagueWarBossReward\
{\
	required int32 pveId=1;//关卡ID\
}\
//领取boss关卡奖励\
message TakeLeagueWarBossReward_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 pveId=2;//Boss关卡ID\
	optional Reward reward=3;//奖励\
	optional int32 rewardContribution=4;//玩家当前贡献币\
}\
\
//获取boss战排行\
message GetLeagueWarBossRank_S2C\
{\
	required int32 errCode=1;//错误号\
	repeated LeagueWarBossRank ranks=2;//攻打情况\
}\
\
//联盟讨伐战结束\
message LeagueWar_End_S2C{\
	required int32 errCode=1;//错误号\
	required LeagueWar leagueWar=2;//联盟讨伐战\
}\
//清除联盟战boss时间\
message CoolingLeagueWarBossTime_S2C\
{\
	required int32 errCode=1;//错误号\
	optional int64 lastAtkBossTime=2;//最后攻打boss时间\
	optional int32 curMoney=3;//当前判金\
}\
\
//兑换联盟战次数\
message BuyLeagueWarAtkTimes_S2C\
{\
	required int32 errCode=1;//错误号\
	optional int32 atkTimes=6;//剩余攻打联盟战次数\
	optional Material costMaterial=7;//扣除的材料信息\
}\
\
\
//联盟聊天\
message LeagueChat\
{\
	required string content=1;//聊天内容\
}\
//联盟聊天\
message LeagueChat_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeagueChatModel chatModels=2;//聊天信息\
}\
//联盟关系变化\
message ChangeLeagueRelation\
{\
	required int32 leagueId=1;//联盟ID\
	required int32 relationType=2;//关系类型  1:友好 2:敌对 3:和平 \
	required string des=3;//备注(如果是删除不需要传)\
	required bool isDel=4;//是否是删除\
}\
\
//联盟关系变化\
message ChangeLeagueRelation_S2C\
{\
	required int32 errCode=1;//错误号\
}\
//联盟关系变化(推送)\
message LeagueRelationChange_S2C_Push\
{\
	required LeagueRelation leagueRelation=1;//关系\
}\
\
//联盟沦陷的其他联盟或玩家数据变化推送\
message LeagueControldInfoChange_S2C_Push\
{\
	required int32 curLeagueLevel=2;//当前联盟等级\
	required int32 curHonor=1;//当前荣誉值\
	repeated int32 controldUids=25;//联盟玩家沦陷的其他玩家列表\
}\
\
//联盟荣誉值变化(推送)\
message LeagueHonorChange_S2C_Push\
{\
	required int32 curLeagueLevel=2;//当前联盟等级\
	required int32 curHonor=1;//当前荣誉值\
}\
\
//获取联盟当前在线人数\
message LeagueOnlinePlayerNum_S2C\
{\
	required int32 num=1;//人数\
}\
\
//升级联盟科技\
message UpgradeLeagueScience\
{\
	required int32 scienceId=1;//科技ID\
	required int32 targetLevel=2;//要升级到几级(连续点击用)\
}\
\
//升级联盟科技\
message UpgradeLeagueScience_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeagueScience leagueScience=2;//联盟科技\
	optional int32 cmdTokenNum=3;//当前联盟钥匙数\
}\
//升级联盟科技推送给成员\
message UpgradeLeagueScience_S2C_Push\
{\
	required LeagueScience leagueScience=2;//联盟科技\
	required int32 cmdTokenNum=3;//当前联盟钥匙数\
}\
\
//获取联盟日志列表\
message GetLeagueScienceLog_S2C\
{\
	repeated LeagueScienceLog leagueScienceLogs=1;//联盟日志列表\
}\
\
//联盟弹劾\
message LeagueImpeachment_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeagueImpeachmentInfo impeachmentInfo=2;//联盟弹劾信息\
}\
\
//联盟弹劾变化 推送\
message LeagueImpeachment_S2C_push\
{\
	optional LeagueImpeachmentInfo impeachmentInfo=2;//联盟弹劾信息\
	optional bool isDel=3;//是否删除\
}\
\
//联盟弹劾投票\
message LeagueImpeachmentVolting\
{\
	required bool isAgree=1;//是否同意\
}\
\
//联盟弹劾投票\
message LeagueImpeachmentVolting_S2C\
{\
	required int32 errCode=1;//错误号\
	optional LeagueImpeachmentInfo impeachmentInfo=2;//联盟弹劾信息\
	optional bool isResult=3;//本次操作是否有结果\
}\
\
//获取联盟聊天信息\
message GetLeagueChats_S2C\
{\
	repeated LeagueChatModel chatModels=1;//私聊信息\
}\
\
//已读联盟聊天\
message LeagueChatReaded_S2C\
{\
	required int32 errCode=1;//错误号\
}\
\
//获取活动的联盟排行\
message GetActivityLeagueRank_S2C{\
	repeated LeagueRank leagueRanks=1;//联盟排行列表\
}\
\
//获取国战的联盟排行\
message GetCountryWarLeagueRank_S2C{\
	repeated LeagueRank leagueRanks=1;//联盟排行列表\
	repeated SimpleLeagueInfo simpleLeagueInfos=2;//联盟信息\
}\
import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
//竞技场排行玩家信息\
message TournamentRankElement\
{\
	required int32 rankNo=9;//排名\
	required int32 avatarId=1;//头像id\
	required int32 uId=2;//角色id\
	required string uName=3;//角色名字\
	required int32 uLevel=4;//角色登记\
	required int32 tournamentGrade=5;//竞技场段位\
	required int32 tournamentScore=6;//竞技场积分\
	repeated  LeaderInfo leaderInfo=7;//武将信息\
	repeated Formation formation=8;//竞技场阵型\
}\
\
\
//竞技场商品信息\
message TournamentGoods\
{\
	required int32 goodsId=1;//商品品id\
	required int32 buyNum=2;//购买次数\
	required int32 itemNum=3;//物品数量\
}\
\
\
//竞技场信息\
message PlayerTournamentInfo\
{\
	optional int32 tournamentGrade=1;//竞技场段位\
	optional int32 tournamentScore=2;//竞技场当前积分\
	optional int32 tournamentStone=3;//竞技场之石\
	optional int32 tournamentGhost=4;//竞技场之魂\
	optional int32 tournamentDoubleNum=5;//竞技场双倍收益次数\
	optional int32 tournamentChallengeNum=6;//竞技场挑战次数\
	optional int64 tournamentRefnewTime=30;//竞技场次数恢复时间\
	repeated bool tournamentPromotionResult=7;//竞技场晋级赛结果 true 赢 false 输\
	repeated TournamentGoods  stoneGoods=8;//竞技之石商品\
 	repeated TournamentGoods  ghostGoods=9;//竞技之魂商品\
 	\
 	required int64 rankTime=10;//排行时间\
 	optional int32 avatarId=11;//头像id\
 	optional int32 season=12;//赛季\
 	optional int32 weekGrade=13;//周段位\
	optional int32 seasonGrade=14;//赛季段位\
	optional bool canTakeweekReward=15;//是否可以领取周奖励\
	optional bool canTakeSeasonReward=16;//是否可以领取赛季奖励\
	optional int32 histoRankNo=17;//上一赛季排行\
	optional int64 refreshMallTime=18;//刷新兑换时间\
\
}\
\
//合战信息\
message FamilyWar\
{\
  required int32 serverWarId =1;//服务器战斗场次ID\
   required int32 familyId =2;//玩家势力Id\
   required int32 score =3;//玩家势力积分\
   required int32 challengeNum=4;//玩家挑战次数\
    required int64 selectFamilyTime=6;//选择势力时间\
    required int32 winFamilyId=7;//胜利势力id\
    required int64 familyWarOpenTime=8;//  国战开启时间\
\
}\
\
\
\
//合战排行榜信息\
message FamilyWarRank\
{\
	required int32 rankNo=9;//排名\
	required int32 uId=2;//角色id\
	required string uName=3;//角色名字\
	required int32 score=6;//积分\
	required int32 kill=7;//击杀\
\
}\
\
\
\
//活动大类\
message ActivityClassification\
{\
	required int32 id=1;//活动类型\
	required int64 begin=2;//开始时间\
	required int64 end=3;//结束时间\
	required int32 templateId=4;//模板id\
	required string imageUrl=5;//图片url\
	required string smallTitle=6;//小标题\
	required string bigTitle=7;//大标题\
	required string desc=12;//活动描述\
	optional int32 sort=13;//排序\
	optional string parm1=14;//参数 领取物品 如果是排行活动或者转盘活动则为 排行类型\
	\
\
	optional string smallTitle_tw=16;//小标题\
	optional string smallTitle_en=17;//小标题\
	optional string smallTitle_jp=18;//小标题\
	optional string bigTitle_tw=19;//大标题\
	optional string bigTitle_en=20;//大标题\
	optional string bigTitle_jp=21;//大标题\
	optional string desc_tw=22;//活动描述\
	optional string desc_en=23;//活动描述\
	optional string desc_jp=24;//活动描述\
	optional int32 minLevel=25;//最小可见等级\
	optional int64 maxLevel=26;//最大可见等级\
	optional int64 cycleTime=27;//排行活动结算时间\
	optional int32 isNewServerActivity=28;//是否是开服活动 0:不是 1:是\
}\
\
\
//活动\
message Activity\
{\
	required int32 id=1;//活动id\
	\
	required int32 conditionType =3;//条件类型\
	required int32 conditionValue =4;//条件达成值\
	required int32 acId=5;//活动大类id\
	repeated ItemSimple item=6;//奖励物品\
	optional string parm1=17;//参数1\
	optional string parm2=18;//参数2\
	optional string parm3=19;//参数3\
	optional string parm4=20;//参数4\
	optional string parm1_tw=21;//参数1\
	optional string parm1_en=22;//参数1\
	optional string parm1_jp=23;//参数1	\
}\
\
//活动\
message ItemSimple\
{\
	required int32 id=1;//道具id\
	required int32 count =3;//道具数量\
}\
//活动进度\
message ActivityProgress\
{\
	optional int32 activityId=11;//活动id\
	optional int32 conditionType=1;//条件类型\
	optional int32 currentValue =3;//当前达成值\
	optional int64 time =13;//时间\
}\
//活动\
message PlayerActivity\
{\
	\
	repeated ActivityProgress progress =1;//当前进度\
	repeated int32 takenId =2;//已经领取\
	repeated int32 takenClassificationIds=3;//领取过的大类奖励\
	repeated int32 takenRankActivityIds=4;//已经领取过的排行活动奖励\
}\
\
\
\
import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//地块类型枚举\
enum CountryWarObjTypeEnum\
{\
    tile=1;//普通地块\
    playerCity=2;//玩家城池\
    worldCity=3;//中立城池\
    res=4;//资源点\
    playerCitySide=5;//玩家城池城皮\
    worldCitySide=6;//中立城池城皮\
    tree		=7;//树\
}\
//地块类型枚举\
enum CountryWarCityTypeEnum\
{\
    mainCity=1;//主城\
    branchCity=2;//分城\
    fort=3;//要塞\
}\
\
//部队出征类型枚举\
enum CountryWarAtkTypeEnum\
{\
	NormalPointAtk		=1;//正常攻击\
	//NormalPointSweep	=2;//普通扫荡\
	RewardBoxSweep		=3;//宝箱扫荡\
	//OwnerPointMonsterAtk=4;//自己地块贼兵攻击\
	//WorldMonsterAtk		=5;//山贼攻击\
}\
\
//玩家收藏的地块\
message CountryWarPlayerCollectPoint\
{\
	required int32 pointId=1;//地块ID\
	required string des=2;//收藏说明\
	required int32 pointLv=4;//地块等级\
}\
\
//国战玩家数据\
message CountryWarPlayer\
{\
	required int32 uid=1;//玩家ID\
	required int32 marchingNum=2;//出征令数量\
	required int64 lastCalcMarchingTime=5;//最后计算出征令时间\
	required int32 controlMeLeagueId=6;//沦陷我的联盟ID\
	required int32 ore=8;//矿石\
	required int32 wood=9;//木材\
	repeated CountryWarPlayerCollectPoint countrywarPlayerCollectPoints=10;//收藏的地块\
	required int32 countryWarFightScore=11;//武勋值\
	required int32 countryWarPowerScore=12;//势力值\
	required int32 state=14;//国战玩家状态 0:已沦陷 1:正常\
	required int64 stateTime=15;//玩家状态开始时间\
	repeated CountryWarMapPoint ownerPoints=16;//自己的地块信息\
    repeated CountryWarCity ownerCitys=17;//城池信息\
    required int32 unOccupationNeedMoney=18;//反叛需要判金\
	required int32 curOccupationMoney=19;//当前反叛赎身判金\
	required int32 reservesNum=20;//预备役数量\
	optional string controlMeLeagueName=21;//沦陷我的联盟ID\
	optional CountryWarPlayerFightScoreRankInfo countryWarPlayerFightScoreRankInfo=22;//周武勋排行信息\
	optional int64 lastEscapeCountryWarTime=23;//最后逃亡时间\
	optional int32 escapeCountryWarTimes=24;//逃亡次数\
\
}\
//周武勋排行信息\
message CountryWarPlayerFightScoreRankInfo\
{\
	required int32 preWeekFightScore=1;//上周武勋分数\
	required int32 weekFightScoreRank=2;//周武勋排行\
	required int32 weekFightScoreLeagueRank=3;//周武勋联盟最高排行\
	required bool isTakeFightScoreRankReward=4;//是否领取周武勋排行个人奖励\
	required bool isTakeFightScoreRankLeagueReward=5;//是否领取周武勋排行联盟奖励\
}\
//周武勋排行信息推送\
message CountryWarPlayerFightScoreRankInfo_S2C_Push\
{\
	optional CountryWarPlayerFightScoreRankInfo countryWarPlayerFightScoreRankInfo=22;//周武勋排行信息\
	required int32 countryWarFightScore=11;//玩家当前武勋值\
}\
//武勋变化推送\
message CountryWarPlayerFightScoreChange_S2C_Push\
{\
	required int32 countryWarFightScore=11;//玩家当前武勋值\
}\
//简单国战玩家数据\
message SimpleCountryWarPlayer\
{\
	required int32 uid=1;//玩家ID	\
	optional SimplePlayer SimplePlayer=3;//玩家简单信息\
	required int32 controlMeLeagueId=4;//占领我的玩家\
	repeated CountryWarMapPoint ownerPoints=5;//该玩家的地块\
	repeated SimpleCountryWarCity ownerCitys=6;//该玩家的城池\
	optional int64 controlMeBeginTime=7;//沦陷开始时间(沦陷用)\
\
}\
\
//国战联盟信息\
message CountryWarLeague{\
	required int32 leagueId=1;//联盟ID\
	repeated int32 ownerWorldCityIds=2;//联盟拥有的城池\
}\
\
\
//地块信息\
message CountryWarMapPoint\
{\
	required int32 id=1;//地块ID,可与坐标互换\
	required CountryWarObjTypeEnum objType=2;//地块类型 1:地块 2:玩家城池 3:中立城池 4:资源点 \
	required int32 uid=6;//玩家ID,如果是空地则出生时为0 如果为玩家资源则为玩家ID\
	required int32 npcHardValue=7;//地块难度\
	required int32 durability=8;//耐久度\
	required int64 playerCityId=3;//城池ID\
	required int32 worldCityId=4;//中立城池ID\
	required int32 resId=11;//资源ID(资源点用)\
	required int64 lastHavsetTime=13;//最后征收时间\
	required int32 maxDurability=14;//满耐久\
	required int64 ownerTime=15;//占领时间\
	required bool hasStayFormation=16;//是否有守军\
	required int32 state=17;//地块状态 0:放弃 1:正常 \
	required int64 stateTime=18;//状态开始时间\
\
}\
\
//地块上的宝箱\
message CountryWarMapPointStandObj\
{\
	required int32 pointId=1;//地块ID\
	required int64 endTime=4;//宝箱或贼兵结束时间 用于计算持续时间\
	required int32 state=5;//0:未领取 1:已领取\
	required int32 sweepId = 6; // 宝箱或贼兵id\
}\
\
//国战中立城池驻守或调度的部队信息\
message CountryWarWorldCityFormation\
{\
	required int32 uid=1;//玩家ID\
	required int32 formationId=2;//布阵ID\
}\
//国战中立城池\
message CountryWarWorldCity\
{\
	required int32 Id=1;//中立城池ID\
	required int32 ownerId=2;//对应的所有者ID(玩家或者城池ID ,根据表判断)\
	required int32 curDurability=3;//当前耐久\
	repeated CountryWarWorldCityFormation stayFormation=4;//驻守的队伍\
	repeated CountryWarWorldCityFormation scheduleFormation=5;//调度的部队\
	optional string ownerName=6;//所有者名称\
	required int64 ownerTime=7;//占领时间\
	optional int32 disUserId=8;//展示玩家ID\
	optional string disUName=9;//展示玩家昵称\
\
}\
\
//简单国战中立城池\
message SimpleCountryWarWorldCity\
{\
	required int32 Id=1;//中立城池ID\
	required int32 ownerId=2;//对应的所有者ID(玩家或者城池ID ,根据WorldCastle Type判断 2:玩家 其他:联盟)\
	required int32 curDurability=3;//当前耐久\
	optional string ownerName=4;//所有者名称\
	required int64 ownerTime=5;//占领时间\
	optional int32 disUserId=8;//展示玩家ID\
	optional string disUName=9;//展示玩家昵称\
}\
\
//简单玩家城池信息\
message SimpleCountryWarCity\
{\
	required int64 objId=1;//对象ID\
	required CountryWarCityTypeEnum cityType=2;//城池类型	\
	required int32 durability=3;//耐久度\
	required int32 maxDurability=4;//耐久度\
    required int32 cityLevel=5;//城池等级\
	required int32 centerPointId=6;//中心点ID\
	required string cityName=7;//玩家定义的 \
	required int64 ownerTime=9;//占领时间\
	required int32 state=17;//地块状态 0:放弃 1:正常 2:建造 3:升级\
	required int64 stateTime=18;//状态开始时间\
	optional int32 uid=19;//所属玩家ID\
}\
\
//玩家城池\
message CountryWarCity\
{\
	required int64 objId=1;//对象ID\
	required CountryWarCityTypeEnum cityType=2;//城池类型	\
	required int32 durability=3;//耐久度\
	required int32 maxDurability=4;//耐久度\
    required int32 cityLevel=5;//城池等级\
	required int32 centerPointId=6;//中心点ID\
	required string cityName=7;//玩家定义的 \
	required int64 ownerTime=9;//占领时间\
	required int32 state=17;//地块状态 0:放弃 1:正常 2:建造 3:升级\
	required int64 stateTime=18;//状态开始时间\
\
}\
\
\
//国战武将\
message CountryWarLeader\
{\
	required int32 leaderId=1;//武将ID\
	required int32 soldierNum=2;//当前兵力\
	required int32 productSoldierNum=3;//本次征兵数量\
	required int64 beginProductSoldierTime=4;//开始征兵时间\
	required int32 position=5;//武将显示位置\
	required int32 skillSort=6;//出手顺序\
	required int32 state=7;//武将状态 0:重伤 1:正常\
	required int64 stateTime=8;//武将状态开始时间\
	required bool isMainLeader=9;//是否是主将\
	\
}\
\
\
\
//国战布阵信息\
message CountryWarFormation\
{\
	required int32 formationId=1;//布阵ID\
	repeated CountryWarLeader leaders=2;//布阵武将Id列表\
	required int32 uid=3;//玩家ID\
	required int64 cityObjId=4;//所在城池ID\
	required int32 state=5;//状态0:闲置 1:驻守 3:出征 4:返回 5:调度 (驻守 调度 走过去的时间 都读 beginTime)\
	required int32 defendType=7;//驻守类型 1:地块 2:中立城池\
	required int32 defendObjId=12;//对应驻守的对象ID 如果是地块则为地块ID 如果是中立城池则为中立城池ID\
	required int32 curPointId=8;//当前所在地块Id  状态为0用\
	required int32 beginPointId=9;//开始行军地块ID  状态为3/4用\
	required int32 endPointId=10;//攻击地块ID 状态为3/4用\
	required int64 stateTime=11;//出征时间	 状态为3/4用\
	required int32 seqeuence=13;//布阵排序(显示用)\
	required int32 scheduleType=16;//调度类型 1:玩家城池   2:中立城池\
	required int64 scheduleCityId=14;//调度的城池ID\
	required float speed=15;//行军速度\
	required CountryWarAtkTypeEnum atkType=17;//部队出征类型枚举 只状态为3-出征时使用 \
	optional int32 skillFunction=18;//布阵技能释放方式(0:智能 1:顺序 )\
	required float basicSpeed=19;//行军速度\
	required int64 endTime=20;//状态结束时间\
\
}\
\
//国战布阵信息(用于地图展示)\
message CountryWarSimpleFormation\
{\
	required int32 formationId=1;//布阵ID\
	repeated int32 disLeaderId=2;//显示的武将ID\
	required int32 uid=3;//玩家ID	\
	required int32 curPointId=4;//当前所在地块Id\
	required int32 beginPointId=5;//开始行军地块ID\
	required int32 endPointId=6;//攻击地块ID\
	required int64 beginTime=7;//出征时间\
	required float speed=8;//行军速度\
	required int32 state=9;//状态0:闲置 1:驻守 3:出征 4:返回 5:调度 (驻守 调度 走过去的时间 都读 beginTime)\
	optional int32 mainLeaderId=10;//本镇武将IW\
	required CountryWarAtkTypeEnum atkType=17;//部队出征类型枚举 只状态为3-出征时使用 \
	optional int32 leagueId=18;//联盟ID\
}\
//战报武将\
message CountryWarBattleLeader{\
	required int32 leaderId=1;//武将ID\
	required int32 leaderLevel=2;//武将等级\
	required int32 leaderStar=3;//武将星级\
	required int32 orgSoldierNum=4;//初始兵力\
	required int32 lastSoldierNum=5;//最终兵力\
	required int32 returnSoldierNum=6;//恢复兵力\
	required int32 atkHp=7;//造成伤害\
	required int32 loseHp=8;//承受伤\
	required int32 reHp=9;//治疗伤害\
	optional bool isBadly=10;//是否重伤\
	\
}\
//国战战报玩家\
message CountryWarBattlePlayer\
{\
	required int32 UID=2;//玩家ID\
	required string UName=4;//玩家昵称\
	required int32 DisLeaderId=6;//显示武将ID 为0:无队伍信息 直接显示无队伍\
	repeated CountryWarBattleLeader BattleLeaders=12;//武将详情\
	optional int32 leagueId=7;//联盟ID\
	optional string leagueName=8;//联盟名称\
	optional int32 addFightScore=9;//增加的武勋数量	\
}\
\
//战报\
message CountryWarBattle\
{\
	required int32 battleId=1;//战报ID	\
	required int32 winUID=2;//胜利方玩家ID\
	required int32 targetPointId=3;//进攻地块ID\
	required int32 targetLoseType=4;//防守方损失类型 0:无损失 1:耐久度 2:被拆除 3:被占领 4:被沦陷 \
	required int32 targetLoseDurabilityOrHP=5;//防守方损失耐久\
	required CountryWarBattlePlayer atkPlayer=6;//进攻方信息\
	optional CountryWarBattlePlayer targetPlayer=7;//防守方信息\
	required int32 state=8;//战报状态 0:未读 1:已读\
	required int64 battleTime=9;//战报时间\
	required CountryWarObjTypeEnum targetPointType=10;//地块类型枚举\
	required int32 targetPointObjId=11;//如果地块类型枚举为 中立城池:中立城池ID  玩家城皮:城皮ID 资源点:资源ID resourcePoint 主键ID 如果为BOSS则为bossId warBossRefresh主键ID ,如果为地块则直接读default表\
	optional string targetCityName=12;//如果为城池 则为城池名称\
	optional int32 targetOwnerId=14;//目标地块拥有者Id\
	optional string targetOwnerName=15;//目标地块拥有者名称\
	optional int32 battleOwnerId=16;//战报所属玩家ID\
	optional bool isSolderLessBattle=17;//是否是兵力不足攻打\
}\
\
\
//国战大区人数\
message AreaGroup\
{\
	required int32 groupId=1;//大区ID\
	required int32 playerNum=2;//可进入玩家数量\
}\
\
\
\
//联盟收藏的地块\
message LeagueCollectCountryWarPoint\
{\
	required int32 pointId=1;//地块ID\
	required string collectName=2;\
	required string collectDes=3;//说明\
	required int32 optUID=4;//收藏的玩家ID\
	required string optUName=5;//收藏的玩家昵称\
	required int64 collectTime=6;//收藏时间\
}\
\
\
\
//国战地块数据变化推送(可能是被人攻打)\
message CountryWarPointDataChange_S2C_Push\
{\
	required CountryWarMapPoint point=1;//地块信息\
}\
\
//地块地表数据变化推送\
message CountryWarMapPointStandObjChange_S2C_Push\
{\
	repeated CountryWarMapPointStandObj objs=3;//地表对象\
}\
\
\
\
//国战玩家数据变化推送\
message CountryWarPlayerDataChange_S2C_Push\
{\
	required CountryWarPlayer countryWarPlayerInfo=1;//同进入国战获取自己的国战信息\
}\
//国战玩家数城池据变化推送\
message CountryWarCityDataChange_S2C_Push\
{\
	required CountryWarCity warCity=1;//城池数据\
	required bool isDel=2;//是否是删除\
}\
//国战玩家布阵数据变化推送(可能是被人攻打)\
message CountryWarFormationDataChange_S2C_Push\
{\
	required CountryWarFormation formation=1;//布阵信息\
	required bool isDel=2;//是否是删除\
}\
\
\
//拖屏查看地块信息\
message GetMapAreaInfo\
{\
    repeated int32 tileIds=1;//要查看的地块信息   \
}\
//拖屏查看地块信息\
message GetMapAreaInfo_S2C\
{\
    required int32 errCode=1;\
    repeated SimpleCountryWarPlayer players=2;//玩家信息\
    repeated SimpleCountryWarWorldCity worldCitys=3;//中立城池信息\
	repeated CountryWarSimpleFormation atkFormations=4;//区域内出征的兵\
	repeated CountryWarMapPoint atkedNoneUserPoints=5;//被摸过的地块\
}\
\
\
\
//进入国战获取自己的国战信息 只会返回 调用无参数\
message GetCountryWarPlayerInfo_S2C{\
	required int32 errCode=1;\
	optional CountryWarPlayer countryWarPlayer=4;//自己的国战信息\
	repeated AreaGroup groupPlayers=5;//国战大区人数(只有玩家没参加国战才会有这条记录)\
	repeated CountryWarFormation formations=6;//自己的布阵信息\
	repeated CountryWarAtkMeInfo_Pojo atkMeInfo=7;//攻打我的人	\
	optional CountryWarLeague countryWarLeague=8;//自己的国战联盟信息\
	repeated SimpleCountryWarWorldCity simpleCountryWarWorldCitys=9;//中立城池列表\
	repeated CountryWarMapPointStandObj stanObjs=11;//地表对象 (宝箱)\
}\
//进入国战,选取 随机玩家位置\
message FirstEnterCountryWar\
{\
	required int32 areaGroupId=1;//大区ID\
}\
\
//进入国战,选取 随机玩家位置\
message FirstEnterCountryWar_S2C\
{\
	required int32 errCode=1;//如果errCode为0 则重新拉  GetCountryWarPlayerInfo_S2C  \
	required int32 curMoney=2;//当前判金\
}\
\
message CountryWarFormation_Pojo\
{\
	required int32 leaderId=1;//武将ID\
	required int32 position=2;//显示的位置\
	required int32 skillSort=3;//出手顺序\
	required bool isMainLeader=4;//是否是主将\
}\
\
//国战布阵\
message CountryWarFormationChanged\
{\
	required int32 formationId=1;//布阵ID(如果是新布阵则为0)\
	repeated CountryWarFormation_Pojo leaders=2;//武将列表\
	required int64 cityId=3;//城池ID\
	required int32 seqeuence=6;//布阵排序 (显示用,新布阵用)\
	optional int32 skillFunction=7;//布阵技能释放方式(0:智能 1:顺序 )\
}\
//国战布阵\
message CountryWarFormationChanged_S2C\
{\
	required int32 errCode=1;\
	optional CountryWarFormation countryWarFormation=2;//布阵	\
	required int32 curCoin=3;//当前铜币\
	required int32 curFood=4;//当前粮食\
	required int32 curWood=5;//当前木材\
	required int32 curOre=6;//当前铁矿\
	required bool isDel=7;//是否删除布阵\
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
	required int32 errCode=1;//错误号;\
	optional CountryWarFormation formation1=2;//最新部队1信息\
	optional CountryWarFormation formation2=3;//最新部队2信息\
}\
\
//国战布阵征兵是实体类\
message CountryWarFormationFormationProductSoldier_Pojo\
{\
	required int32 leaderId=1;//武将ID\
	required int32 productNum=2;//征兵数量\
}\
//国战布阵征兵\
message CountryWarFormationFormationProductSoldier\
{\
	required int32 formationId=1;//布阵ID	\
	repeated CountryWarFormationFormationProductSoldier_Pojo soldierPojo=2;//国战布阵征兵是实体类\
	required bool isUseReserves=3;//是否使用预备役\
}\
//国战布阵征兵\
message CountryWarFormationFormationProductSoldier_S2C\
{\
	required int32 errCode=1;\
	required CountryWarFormation countryWarFormation=2;//布阵	\
	required int32 curCoin=3;//当前铜币\
	required int32 curFood=4;//当前粮食\
	required int32 curWood=5;//当前木材\
	required int32 curOre=6;//当前铁矿\
	required int32 curReservesNum=7;//当前预备役数量\
}\
\
\
\
//国战出征\
message CountryWarAttack{\
	required int32 atkPointId=1;//攻击的地块ID(如果是boss则必须为boss中心点)\
	required int32 formationId=2;//布阵ID\
	required CountryWarAtkTypeEnum atkEnum=4;//攻击类型	\
}\
//国战出征\
message CountryWarAttack_S2C{\
	required int32 errCode=1;\
	required int32 atkPointId=2;//攻击的地块ID\
	optional CountryWarFormation formation=3;//攻击的布阵\
	optional int32 atkState=4;//攻击状态\
\
}\
//国战撤军\
message CountryWarFormation_Back{\
	required int32 formationId=1;//布阵ID\
}\
//国战撤军\
message CountryWarFormation_Back_S2C{\
	required int32 errCode=1;\
	optional CountryWarFormation formation=2;//攻击的布阵\
}\
\
\
//国战出征开始攻打前获取当前信息\
message CountryWarBeginAttack\
{\
	required int32 formationId=1;//出征队伍ID	\
}\
//国战出征开始攻打前获取当前信息\
message CountryWarBeginAttack_S2C\
{\
	required int32 errCode=1;\
	//攻打状态 0:对方免战 直接返回 1:已属于自己 直接返回 2:可攻打  4:(排队)等待 5:地块已超出上限 等待 6:直接赢 7:没有加入联盟 不可攻打 直接返回 8:地块已处于保护期 等待\
	required int32 atkState=2;\
	optional OtherPlayerAtkInfo formation=3;//国战攻打对象布阵 \
	optional CountryWarFormation atkformation=5;//自己的出征的布阵(如果不可打则直接返回)	\
	optional int64 lastAttackTime=6;//最后被攻打时间\
\
	optional CountryWarAtkResult_S2C atkResult=8;//直接赢结果\
	required int32 curMarchingNum=9;//当前出征令数量\
}\
\
\
\
//国战出征攻打结果打掉的武将兵力实体类\
message CountryWarAtkLeader_Pojo\
{\
	required int32 leaderId=1;//武将ID\
	required int32 deadSoldierNum=2;//死兵数\
	optional int32 atkHp=7;//造成伤害\
	optional int32 loseHp=8;//承受伤\
	optional int32 reHp=9;//治疗伤害\
}\
//国战攻打结果\
message CountryWarAtkResult\
{\
	required int32 formationId=1;//出征队伍ID\
	required int32 targetFormationId=2;//攻打布阵ID\
	required bool atkResult=3;//输赢\
	required int32 atkTimeLong=4;//攻打时间(秒)\
	repeated CountryWarAtkLeader_Pojo atkLeaderPojo_target=6;//打掉的武将兵力信息\
	repeated CountryWarAtkLeader_Pojo atkLeaderPojo_atker=7;//打掉的自己的武将兵力信息\
	repeated LeaderFightCheckProp LeaderFightCheckProp=8;//武将战斗属性校验\
\
}\
//国战攻打结果\
message CountryWarAtkResult_S2C\
{\
	required int32 errCode=1;\
	required int32 formationId=2;//出征队伍ID\
	required bool atkResult=3;//输赢\
	optional CountryWarFormation atkformation=4;//自己的出征的布阵\
	required int32 atkState=5;//攻打状态 0:对方免战 直接返回 1:已属于自己 直接返回  7:没有加入联盟 不可攻打 直接返回  8:地块已处于保护期 直接返回\
	optional CountryWarMapPoint point=6;//打下来的地块信息\
    optional int64 destoryCityId=8;//摧毁的城池信息\
	optional CountryWarPlayer countryWarPlayer=9;//自己的国战信息\
	optional Reward reward=10;//奖励信息\
	optional int32 atkDurability=14;//打掉的耐久\
	optional bool isSolderLessBattle=17;//是否是兵力不足攻打\
	\
}\
\
//攻打我的玩家信息通信类\
message CountryWarAtkMeInfo_Pojo\
{\
	required CountryWarSimpleFormation simplerFormation=1;//布阵简单信息	\
	required string uName=2;//玩家昵称\
	\
}\
//攻打我的玩家信息\
message CountryWarAtkMeInfo_S2C_Push\
{\
	required CountryWarAtkMeInfo_Pojo atkMeInfo=1;//\
	required bool isDel=2;//是否撤退\
}\
\
//获取布阵简单信息\
message GetCountryWarSimpleFormation{\
	required int32 uid=1;//玩家ID\
	required int32 formationId=2;//布阵ID\
}\
\
//获取布阵简单信息\
message GetCountryWarSimpleFormation_S2C{\
	optional CountryWarSimpleFormation simplerFormation=1;//\
}\
\
//获取地块守军信息\
message GetCountryWarPointStayFormation\
{\
	required int32 tileId=2;//地块ID\
}\
//获取地块守军信息\
message GetCountryWarPointStayFormation_S2C\
{\
	required int32 errCode=1;//地块ID\
	optional OtherPlayerAtkInfo formation=2;//国战攻打对象布阵 \
}\
\
//筑城\
message CreateCity\
{\
	required int32 centerPointId=1;//中心点ID\
	required CountryWarCityTypeEnum cityType=2;//城池类型\
	required string cityName=3;//城池名称\
}\
//筑城\
message CreateCity_S2C\
{\
	required int32 errCode=1;//错误号\
	optional CountryWarCity city=2;//城\
	required int32 curCoin=3;//当前铜钱\
	required int32 curFood=4;//当前粮食\
	required int32 curOre=5;//当前铁矿\
	required int32 curWood=6;//当前铁矿\
	required int32 curMarchingNum=7;//当前行军令\
	repeated CountryWarMapPoint point=8;//最新的地块信息\
}\
//城池升级\
message UpgradeCity\
{\
	required int64 cityId=1;//城池ID\
	\
}\
//城池升级\
message UpgradeCity_S2C\
{\
	required int32 errCode=1;//错误号\
	optional CountryWarCity city=2;//城\
	required int32 curCoin=3;//当前铜钱\
	required int32 curFood=4;//当前粮食\
	required int32 curOre=5;//当前铁矿\
	required int32 curWood=6;//当前铁矿\
	required int32 curMarchingNum=7;//当前行军令\
	repeated CountryWarMapPoint point=8;//最新的地块信息\
}\
\
//造城皮\
message CreateCitySide\
{\
	required int64 cityObjId=1;//城池ID\
	required int32 pointId=2;//城皮地块ID\
}\
//造城皮\
message CreateCitySide_S2C\
{\
	required int32 errCode=1;//错误号\
	optional CountryWarMapPoint point=2;//最新的地块信息\
	required int32 curCoin=3;//当前铜钱\
	required int32 curFood=4;//当前粮食\
	required int32 curOre=5;//当前铁矿\
	required int32 curWood=6;//当前铁矿\
}\
\
\
\
\
//国战驻守\
message CountryWarStayFormation\
{\
	required int32 formationId=1;//布阵ID\
	required int32 tileId=2;//地块ID\
}\
//国战驻守\
message CountryWarStayFormation_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 formationId=2;//布阵ID\
	required int32 tileId=3;//地块ID\
	required CountryWarFormation countryWarFormation=4;//最新的布阵消息\
}\
\
//国战调度\
message CountryWarScheduleFormation\
{\
	required int32 formationId=1;//布阵ID\
	required int32 cityType=2;//1:玩家城池 2:中立城池\
	required int64 cityId=3;//对应的调度的城池ID\
}\
//国战调度\
message CountryWarScheduleFormation_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 formationId=2;//布阵ID\
	required int32 cityType=3;//1:玩家城池 2:中立城池\
	required int64 cityId=4;//对应的调度的城池ID\
	required CountryWarFormation countryWarFormation=5;//最新的布阵消息\
}\
\
\
//放弃地块\
message GiveUpTile\
{\
	required int32 tileId=1;//地块ID\
}\
\
//放弃地块 如果是城池则只有哨岗才能放弃\
message GiveUpTile_S2C\
{\
	required int32 errCode=1;//错误号\
	repeated CountryWarMapPoint points=2;//放弃的自己的地块信息\
    optional CountryWarCity city=5;//放弃的城池信息\
	\
}\
\
//收藏地块\
message CollectCountryWarPoint\
{\
	required int32 pointId=1;//地块ID\
	required string des=2;//说明\
	required bool isDel=3;//是否是删除\
	required int32 pointLv=4;//地块等级\
}\
//收藏地块\
message CollectCountryWarPoint_S2C\
{\
	required int32 errCode=1;//错误号\
}\
\
\
//联盟收藏地块\
message AddLeagueCollectCountryWarPoint\
{\
	required int32 pointId=1;//地块ID\
	optional string collectName=2;//收藏名称\
	optional string collectDes=3;//说明\
	required bool isDel=4;//是否是删除\
}\
//联盟收藏地块\
message AddLeagueCollectCountryWarPoint_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 pointId=2;//地块ID\
	required bool isDel=4;//是否是删除\
}\
\
//获取联盟收藏地块列表\
message GetLeagueCollectCountryWarPoint_S2C\
{\
	repeated LeagueCollectCountryWarPoint leagueCollectCountryWarPoints=1;//收藏的地块列表\
}\
\
\
//国战势力值排行\
message CountryWarRank_Power\
{\
	required Rank rank=1;\
	required int32 BranchCityNum=2;//分成数量\
	required int32 forbCityNum=3;//要塞数量\
	required int32 totalTileNum=4;//总地块数量\
}\
\
//国战武勋值排行\
message CountryWarRank_FightScore\
{\
	required Rank rank=1;\
	required SimplePlayer simplePlayer=4;//对方玩家信息\
}\
\
//获取国战武勋排行\
message GetCountryWarRank_Fight_S2C\
{\
	repeated CountryWarRank_FightScore ranks=2;\
	repeated CountryWarRank_FightScore ranks_pre_week=3;//上周排行\
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
	required CountryWarBattle countryWarBattle=1;//战报\
}\
\
//国战战报已读\
message CountryWarBattle_Read\
{\
	repeated int32 battleId=1;//战报ID 如果length为0 则全部\
}\
\
//国战战报已读\
message CountryWarBattle_Read_S2C\
{\
	repeated int32 battleId=1;//战报ID\
}\
\
//国战预备役变化推送到客户端\
message CountryWarResChange_S2C_Push\
{\
	optional int32 ore=1;//当前铁矿\
	optional int32 wood=2;//当前木材\
	optional int32 marching=3;//当前行军令\
	optional int32 fightScore=4;//当前武勋\
	optional int32 reservesNum=5;//当前预备役数量\
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
	required int32 errCode=5;//错误号\
	optional Reward reward=1;//奖励信息\
	optional CountryWarPlayerFightScoreRankInfo CountryWarPlayerFightScoreRankInfo=2;//武勋领奖信息\
}\
\
//领取国战武勋联盟排行奖励\
message GetCountryWarFightScoreLeagueRankReward_S2C\
{\
	required int32 errCode=5;//错误号\
	optional Reward reward=1;//奖励信息\
	optional CountryWarPlayerFightScoreRankInfo CountryWarPlayerFightScoreRankInfo=2;//武勋领奖信息\
}\
\
\
//获取地块AI守军数量\
message GetMapPointAIFormationNum_S2C\
{\
	required int32 pointId=1;\
	required int32 maxFormationNum=2;//最高守军数量\
	required int32 curFormationNum=3;//当前AI守军数量\
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
	required int32 errCode=5;//错误号\
	repeated Rank soldierRanks=1;//杀兵排行\
	repeated Rank durabilityRanks=2;//耐久排行\
	optional string leagueOwnerName=3;//盟主名称\
	optional int32 leagueOwnerId=4;//盟主ID\
	optional string firstOwnerName=6;//首战联盟名称\
	optional int32 firstOwnerId=7;//首战联盟ID\
}\
\
\
//部队投降\
message CountryWarFormationSurrenderAtk\
{\
	required int32 formationId=1;//部队ID\
}\
\
//部队投降\
message CountryWarFormationSurrenderAtk_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 formationId=2;//部队ID\
	optional CountryWarFormation countryWarFormation=3;//最新部队信息\
}\
\
//城池完成建造或升级\
message CountryWarCityUpgradeOrCreateCoolingTime\
{\
	required int64 cityObjId=1;//城池ID\
	optional int32 costMoney = 2; // 消耗判金(客户端计算值)\
}\
\
//城池完成建造或升级\
message CountryWarCityUpgradeOrCreateCoolingTime_S2C\
{\
	required int32 errCode=1;//错误号\
	required int64 cityObjId=2;//城池ID\
	required int32 curMoney=3;//当前判金\
	optional CountryWarCity countryWarCity=4;//当前城池信息\
}\
\
//部队立即回城\
message CountryWarFormationFastBack\
{\
	required int32 formationId=1;//部队ID\
}\
\
//部队立即回城\
message CountryWarFormationFastBack_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 formationId=2;//部队ID\
	optional CountryWarFormation countryWarFormation=3;//最新部队信息\
	required int32 curMoney=4;//当前判金数\
}\
\
//取消放弃地块\
message CalcleGiveUpTile\
{\
	required int32 tileId=1;//地块ID\
}\
\
//取消放弃地块\
message CalcleGiveUpTile_S2C\
{\
	required int32 errCode=1;//错误号\
	repeated CountryWarMapPoint points=2;//放弃的自己的地块信息\
    optional CountryWarCity city=5;//放弃的城池信息	\
}\
\
//修改中立城池展示的玩家\
message ChangeCountryWarWorldCityDisUser\
{\
	required int32 worldCityId=2;//中立城池ID\
	required int32 disUserId=3;//展示的玩家ID\
}\
\
//修改中立城池展示的玩家\
message ChangeCountryWarWorldCityDisUser_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 worldCityId=2;//中立城池ID\
	optional SimpleCountryWarWorldCity countryWarWorldCity=3;//改变后的中立城池\
}\
\
//获取中立城池列表\
message GetCountrywarWorldCitys_S2C\
{\
	repeated SimpleCountryWarWorldCity simpleCountryWarWorldCitys=9;//中立城池列表(有主)\
}\
\
//沦陷玩家交罚金赎身\
message UnOccupation\
{\
	required int32 type = 1; // 反叛类型 1. 资源反叛 2.直接反叛扣道具\
	optional int32 food = 2; // 资源反叛 上缴 粮食\
	optional int32 coin = 3; // 资源反叛 上缴 铜钱\
	optional int32 ore = 4; // 资源反叛 上缴 矿石\
	optional int32 wood = 5; // 资源反叛 上缴 木材\
}\
\
//沦陷玩家交罚金赎身\
message UnOccupation_S2C\
{\
	required int32 errCode=1;//错误号\
	required bool isUnOccupation=2;//是否叛变成功\
	optional int32 food = 3; // 玩家当前粮食\
	optional int32 coin = 4; // 玩家当前铜钱\
	optional int32 ore = 5; // 玩家当前矿石\
	optional int32 wood = 6; // 玩家当前木材\
	optional CountryWarPlayer countryWarPlayer=7;//最新的国战玩家数据\
}\
\
//获取天下大事\
message GetSysEvents_S2C\
{\
	repeated SysEvent sysEvents=1;//天下大事\
}\
\
//天下大事完成推送\
message SysEvent_S2C_Push\
{\
	required SysEvent sysEvent=1;//天下大事\
}\
\
//领取天下大事奖励\
message TakeSysEventReward\
{\
	required int32 sysEventId=1;//事件ID\
}\
\
//领取天下大事奖励\
message TakeSysEventReward_S2C\
{\
	required int32 errCode=1;//错误号\
	required int32 sysEventId=2;//事件ID(错误号为0 则客户端自行增加已领取过的奖励ID)\
	optional Reward reward=3;//奖励信息\
}\
\
//国战产出\
message CountryWarOutPut\
{\
	required int32 coinOutPut=1;//铜钱产出\
	required int32 foodOutPut=2;//粮食产出\
	required int32 oreOutPut=3;//铁矿产出\
	required int32 woodOutPut=4;//木材产出\
}\
\
//获取国战玩家产出\
message GetPlayerOutPut_S2C\
{\
	optional CountryWarOutPut pointOutput=10;//领地产出\
	optional CountryWarOutPut playerCitySideOutput=20;//科技产出\
	optional CountryWarOutPut worldCityOutput=30;//中立城池产出	\
	optional CountryWarOutPut leagueScienceOutPut=31;//联盟科技产出	\
}\
\
// 行军令下次回复时间推送(推送)\
message PlayerMarchingNumNext_S2C\
{\
	required int64 nextTime=1;//下次恢复时间\
	required int64 lastTime=2;//上次恢复时间\
}\
\
// 武家每日俸禄领取\
message HeroLevelDayRewardGet_S2C {\
	required int32 errCode = 1; // 错误号\
	optional Reward reward = 2; // 奖励\
}\
\
// 武家升级\
message HeroLevelUpgrade_S2C {\
	required int32 errCode = 1; // 错误号\
	optional int32 powerLevel = 2; // 官职\
	optional int32 itemId = 3; // 剩余物品id\
	optional int32 itemNum = 4; // 剩余数量\
}\
\
//逃亡\
message EscapeCountry{\
	required int32 areaGroupId=1;//大区ID\
}\
//逃亡\
message EscapeCountry_S2C{\
	required int32 errCode=1;//如果errCode为0 则重新拉  GetCountryWarPlayerInfo_S2C \
}\
\
//获取国战大区人数信息\
message GetCountryWarAreaGroup_S2C{\
	repeated AreaGroup areaGroup=1;//大区信息\
}\
\
//领取首次进入国战奖励\
message TakeFirstEnterCountryWarReward_S2C\
{\
	required int32 errCode = 1; // 错误号\
	optional int32 curMoney=2;//当前判金\
	optional bool isTakeFirstEnterCountryWarReward=3;//是否领取过首次进入国战奖励\
}\
\
//获取联盟战报\
message GetLeagueBattles_S2C\
{\
	repeated CountryWarBattle countryWarBattles=1;//战报列表\
	optional int64 lastCheckLeagueBattleTime=19;//最后查看联盟战报时间\
}\
//有新的联盟战报\
message NewLeagueBattleNotice_S2C_Push\
{\
	required int64 leagueLastBattleTime=1;//最后联盟战报时间\
}\
\
\
"
return protoStr