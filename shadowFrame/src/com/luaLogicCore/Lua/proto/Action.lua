local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
enum ActionEnum\
{\
\
	//暂定每个模块分配100个操作枚举值 101-200为关卡\
	Main_Attack 							=101;//攻打main关卡\
	Main_ChaperReward						=102;//领取main章节奖励\
	Main_PlotReward 						=103;//领取main剧情奖励\
	Activity_Attack                         =131;//攻打活动关卡\
	Train_Attack 							=104;//攻打训练关卡\
	Weapon_Attack							=105;//攻打武器关卡\
	LimitedTime_Attack							=106;//攻打限时关卡\
	MultiPveBoss_Attack							=107;//攻打多人pve boss战\
	GuildWar_Attack							=108;//攻打团战\
\
	Radar_Create                            =201;//雷达图=创建塔对象\
	Radar_Next                              =202;//雷达图=爬塔跳转到下一层\
	Radar_Attack                            =203;//雷达图=战斗\
	Radar_Event                             =204;//雷达图=执行事件\
	Radar_Layer                             =205;//雷达图=关卡层奖励\
	Radar_Exit                              =206;//退出雷达图\
	Radar_Reward                            =207;//进入下一层前领取本次奖励\
\
	Pve     								=1;//副本\
	defaultCreate                           =2;//创角默认增加\
	AutoAddSkillPoint						=3;//技能点自动增长\
	PressurePoint   						=4;//压力点自动增长\
	AutoAddStrength							=26;//体力自动增长\
	PlayerUpLevel							=27;//玩家升级\
	Recharge 								=32;//充值\
	SysSendMail								=35;//系统邮件\
	defaultAdd								=45;//系统初始化\
	Attack_PVE 								=2001;//攻打关卡\
	ChaperReward							=2003;//领取章节奖励\
	compositionLeader						=39;//武将合成\
	upgradeLeaderStar						=41;//武将升星\
	upgradeLeaderTalentSkill				=42;//升级武将技能\
	upgradeArchivesLevel    				=43;//升级武将履历等级\
	buyShop         						=46;//购买商城物品\
	refreshShopItem							=47;//商城刷新\
	ShopDataChange_S2C_Push             	=48;//商城变化推送\
	Cost_S2C_Push               			=49;//扣除信息变化推送\
	ShopRefresh             				=50;//商城刷新\
	// BuyShopItem             				=51;//购买商城物品\
	RechargeTaskShop						=52;//充值任务商店兑换物品\
	UseGoods                                =53;//使用物品道具\
	SellGoods                               =72;//出售物品\
	TimeOutGoods                            =73;//道具过期\
	ComminTask                              =1001;//提交任务\
	DayTaskPoint                            =1002;//领取活跃点奖励\
	AchievementsTask                        =1003;//领取成就点奖励\
	MonthSign                               =54;//月签到\
	DaySign                                 =55;//七日签到\
	SwearHero                               =56;//抽卡\
	BuyStrength 							=57;//购买体力\
	ExchangeFragment						=58;//兑换武将碎片\
	OverflowLeaderEXP						=59;//增加武将经验移除部分转换成物品\
	GM              						=60;//系统gm操作\
	PVESweep                                =61;//副本扫荡\
	UpgradeLeaderBreach						=62;//提升武将突破等级\
	ExchangeWeaponEquip						=63;//武装碎片合成武装装备\
	WearEquip                               =64;//镶嵌武装装备\
	UpgrageWeapon                           =65;//武装升级\
	PVEDialogue                             =66;//剧情对话\
\
	FirstThoughtTask						=68;//初心者任务\
	RevelationUpgrade						=69;//镜像升级\
	RevelationBreach						=70;//镜像突破\
	Handbook								=71;//图鉴\
	UpgradeWeaponRefine                		=81;//提升精炼等级\
	UpgradeWeaponBreach						=82;//提升律叶突破等级\
	UpgradeLeader							=83;//武将升级\
	UpgradeLeaderExpGiveBack				=84;//武将升级经验返还\
	upgradeLeaderStarLevel					=85;//武将升星等级\
	UpgradeWeaponExpGiveBack				=86;//律叶升级经验返还\
	itemTimeOver                    =87;//道具过期\
	SignBingo								=88;//bingo 领奖\
	UpgradeRevelationExpGiveBack			=89;//镜像升级经验返还\
	BattleshipTask							=90;//战舰任务\
	GetTowerPoint         =91;// 获取爬塔道具\
	GetHelpCenterReward						=92;// 领取帮助中心奖励\
	BattleshipStory							=93;//战舰剧情\
	BountyMissions							=94;//悬赏任务关卡\
	TowerLevel							=95;//爬塔关卡\
	EquipRevelation                         =96;//装备镜像\
	GetWeaponLevelReward				=97;//领取武器关卡\
	BattleshipDine							=98;//战舰聚餐\
	AutoAddShipStrength						=99;//战舰体力自动增长\
	AutoAddShipExp   						=100;//战舰经验消耗战舰体力的增长\
    RefineEquipProp         				=110;//镜像精炼属性\
    PatrolLevel					     		=111;//乌拉拉活动关卡\
	PatrolTalentReward			     		=112;//乌拉拉天赋树激活奖励\
	ShipDispatch		    	     		=113;//战舰派遣\
	ShipDispatchCancel		    	     	=129;//战舰派遣取消\
	ShipDispatchReward			     		=114;//战舰派遣奖励\
	TakeOffRevelation                       =115;//卸下镜像\
	ExchangeRevelation                      =116;//镜像互换\
	ExchangeWeapon                          =117;//律叶互换\
	PayShopBuyCost                       =118;// 商店购买消耗\
	PayShopBuyCommonGet                        =119;// 商店购买获得\
	PayShopBuyCommonExtraGet                   =120;// 商店购买额外获得\
	PayShopBuyPayGet                        =124;// 商店购买获得\
	PayShopBuyPayExtraGet                   =125;// 商店购买额外获得\
	SendFavorGift                        =123;// 送 好感度经验 礼物\
	FirstRechargeGet                       =1230;// 首冲奖励奖励\
	SmallBattleGround                    =126;// 小战场\
    DecomposePerk                          =127;// 分解Perk\
	BuyMonthCardGet                        =121;// 商店购买月卡获得\
	DayMonthCardGet                        =122;// 每天领取月卡奖励\
	PeriodCardDailyGet                      =128;// 每天领取周期卡奖励\
	SignActivity                            =301;// 签到活动\
	TaskActivity                            =302;// 任务活动\
	SingleActivity                          =303;// 个人进度活动\
	SignActivitySupply                      =304;// 签到活动补签\
	ActivityOverReward                      =305;// 活动结束未领奖励\
	LeaderDebrisTrans                       =306;// 角色碎片超限转化\
    BuyBattlePassLevel                      =407;// 购买通行证等级\
    OpenBattlePassHighReward                =408;// 开启高级通行证\
    GetBattlePassLevelReward                =409;// 领取通行证等级奖励\
    GetBattlePassBoxReward                  =410;// 通行证宝箱奖励\
    ActivityReplay                          =411;// 玩法复玩功能\
\
	Main_Attack_FirstPass_Reward 							=500;//攻打main关卡首通奖励\
	Main_Attack_CommonPass_Reward 							=501;//攻打main关卡一般奖励\
	Train_Attack_FirstPass_Reward 							=502;//攻打train关卡首通奖励\
	Train_Attack_CommonPass_Reward 							=503;//攻打train关卡一般奖励\
\
	AbyssFront                    =307;// 大战场\
	BuySeasonExp                            =601;//购买赛季经验\
	SeasonLevelReward                       =602;// 赛季等级领奖\
	OpenSeasonHighReward                    =603;// 开启进阶版赛季进度条\
\
\
	RecastingWeapon                         =610;//武装洗练\
	HangUpCost                              =700;// 挂机消耗\
	HangUpSpeedUpCost                       =701;// 挂机加速消耗\
	HangUpGet                               =702;// 挂机获得\
	HangUpCancelBack                        =703;// 挂机返还\
	HangUpUserExpGet                        =704;// 挂机经验产出\
	//perk\
	WearPerkUpLevel                         =801;//符灵 镶嵌升词缀/升级词缀\
	DecomposePerkAffix                      =802;//符灵 剥离返还词缀/分解词缀\
	DeformationPerk                         =803;//符灵变形\
	SwitchPerk                              =804;// 切换perk\
\
	// 道具\
	ItemCraft                              	=800;//道具合成\
\
	GuildWarCreatTeam                       =604;//创建团本队伍扣钻石\
	GuildWarRename                          =605;//团本改名扣钻石\
	GuildWarStageReward                     =606;//团本关卡奖励领取\
	GuildWarLikes                           =607;//点赞领取\
\
    RogueLevelAttack                    	=608;// Rogue关卡\
    RogueTalentConsume                 		=609;// Rogue局外天赋养成消耗\
    GetRogueLikeHandbookReward              =611;// 获取Rogue 图鉴收集奖励\
    GetRogueLikeEventHandbookReward         =612;// 获取Rogue 事件图鉴收集奖励\
    RogueAutoOver                           =613;//  Rogue 打完了（失败或成功）自动结束\
    RogueHandOver                           =614;// Rogue 手动结束，不想玩了\
    RogueActiveReward                       =615;// Rogue 活跃点奖励\
    OperateItemEvent                        =616;// Rogue 事件操作\
    RogueFirstOverReward                    =617;// Rogue 首通奖励\
    RogueSeasonOver                         =618;// Rogue 赛季结束\
    RogueResetBuffConsume                   =619;// Rogue buff 重置消耗\
    RogueActiveOver                         =620;// Rogue 活跃周期 结束\
\
    WeaponDecompose                         =621;// 武装分解\
    OpenBrandBingo                          =622;// 随机Bingo 活动 翻牌\
    ColumnBingoReward                       =623;// 竖向Bingo 奖励\
    RowBingoReward                          =624;// 横向Bingo 奖励\
    ObliqueBingoReward                      =625;// 斜向Bingo 奖励\
    AllBingoReward                          =626;// 所有Bingo 大奖励\
}\
\
//角色技能类型\
enum PlayerPropEnum\
{\
	ActionMax   							=1001;//基础行动力上限\
	ActionNum                               =1002;//基础行动力追回\
	FriendPointMax		     				=1003;//基础友情点上限\
	PVELeaderEXP		     				=1004;//基础斯露德经验提高\
	PVECoin     		     				=1005;//基础米特拉100002经验提高\
}\
\
//语言邮件枚举\
enum MailLanguageEnum\
{\
    cn   							=1;//简中语言\
	tw   							=2;//繁中语言\
	en   							=3;//英语语言\
	jp   							=4;//日语语言\
}\
\
//聊天类型枚举\
enum ChatTypeEnum\
{\
    World  							=1;//世界全频道\
	WorldLine						=2;//世界单频道\
	League 							=3;//联盟频道\
	Friend 							=4;//好友频道\
	Private							=5;//私聊频道\
	Team							=6;//组队频道\
	SpecialTeam						=7;//特殊组队频道\
    GuildWar            =8;//团本\
}\
// 小战场阶段枚举\
enum SmallBattleEnum\
{\
		MATCHING_PERIOD = 1; // 匹配期\
		BATTLE_PERIOD = 2;   // 战斗期\
		SETTLEMENT_PERIOD =3; // 结算期\
}\
\
\
//功能红点\
enum RedDot\
{\
    Weapon  							=1;//式仗\
	Leader						        =2;//角色\
	Notice						        =3;//公告\
    HandBook						    =4;//图鉴\
    Chapter								=5;//章节\
    Radar 								=6;//雷达图\
	ChapterStart                        =7;//章节开始\
	MainLevel                           =1001;//管钱的沈德符\
	InBattleGuide						=8;//战斗内新手引导\
}\
\
//服务器模块开关\
enum ServerFunction\
{\
    ShowServer  					=1;//显示服务器列表\
	ShowIpWhite				        =2;//白名单是否显示服务器\
	InvitationCode				    =3;//客户端是否显示邀请码输入框，服务器是否开启邀请码验证逻辑\
	BattleAccelerate    		    =4;//关闭战斗加速验证\
	openStep                    =5;//跳过新手引导\
	openLog                     =6;//log日志关服是保存\
	APILBStatus						=7;//API 聊天服分配功能开关\
	SHOPStatus            =8; //商店功能是否开启\
\
	CDKIosOPEN            =10;//cdk ios 开关\
	CDKAndroidOPEN            =11;//cdk ios 开关\
\
	PaySwitch             =9; // 支付开关\
	Sensitive             =12; // sdk验证敏感词开关1=不验证\
}\
\
\
\
// 聊天举报内容选项\
enum ChatReportIdEnum\
{\
    UsePlugIn            = 1; //使用外挂\
    Abuse                = 2; //辱骂言论\
    advertisement        = 3; //广告\
    SpreadBadInfo        = 4; //传播反动，色情等违法犯罪内容\
}\
\
// 掉落类型\
enum DropEnum\
{\
	Dropgood			=1;//掉落子\
	Dropgroup			=2;//掉落组\
	Dropset				=3;//掉落集合\
}\
\
// 道具类型枚举\
enum ItemTypeEnum\
{\
	Equip				=16;//镜像类型\
}\
\
\
// 编队预设类型枚举\
enum TeamPresetEnum\
{\
	LastPreset = 999;// 上一次预设\
	PresetNewLevel = 1000;//新手副本预设\
	PresetMainLevel = 1001;//主线副本预设\
	PresetScoreLevel = 1002;//积分副本预设\
	PresetResourceLevel = 1003;//资源副本预设\
	PresetSmallBattleLevel = 1004;//小战场预设\
	PresetRogueBattleLevel = 1005;//Rogue预设\
}\
\
// 确认弹窗按钮功能类型\
enum ConfirmButtonFunctionType\
{\
	// 关闭弹窗\
	CLOSE = 0;\
	// 返回登录\
	BACK_TO_LOGIN = 3;\
}\
\
"
return protoStr