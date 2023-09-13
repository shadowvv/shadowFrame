local protoStr = { }
protoStr.str = "package msg;\
\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//错误号分两类\
//1.小于等于五万走systemConfirm\
//1.1 大于四万小于五万的做强制退出到登录界面处理\
//2.大于五万走 NetErrorMsg\
//错误定义（文字对应WindowTips.xlsx表）\
enum ErrorEnum\
{\
	Success 				            =0; // 操作成功\
//#################################################小于等于五万走systemConfirm#################################################\
\
	ServerStateError	            	=40001;//服务器状态错误\
	ResVersionError		    	        =40002;//前端资源版本号错误\
	TokenGetData			     	    =40003;//token已经访问过10002获取全部消息的协议了\
	KickPlayer				     	    =40004;//相同账号登录\
	TokenTimeOut				        =40005;//Token超时（目前超时时间为24小时）\
	ServerKickPlayerErr    	            =40006;//服务器踢人(客户端逻辑中为205)\
	ChatServerCloseState	            =40007;//聊天服务器状态维护中\
	ChatKickPlayer				     	=40008;//聊天长链接相同账号登录（1）\
	ChatTokenTimeOut				    =40009;//聊天服Token超时\
	ChatServerKickPlayerErr    	        =40010;//聊天服务器踢人(客户端逻辑中为205)\
	SDKLoginSignErr                     =40011;//sdk登录验证秘钥超时\
	ServerBusyError                     =40012;//服务器正忙，请稍后再试（逻辑消息列队已满）\
	SocketHeartKickPlayer               =40013;//聊天长链接相同账号登录（2）\
	ChannelLimitRegister                =40014;// 注册拦截-该渠道运营不允许注册了\
	ChannelLimitLogin                   =40015;// 登录拦截-该渠道运营不允许登录了\
	HttpAckPacketMaxError        	    =40017;//http幂等性确认包超过三个\
	ServerGlobalBusyError               =40018;//服务器繁忙，请稍后再试（全局限流器qps状态已满）\
    AppVersionError		                =40019;//前端app版本号错误\
//#################################################小于等于五万走systemConfirm#################################################\
\
\
\
//#################################################大于五万走 NetErrorMsg#################################################\
	//=======================系统报错==================\
	GameHeartBeatNotLogin           	=300001;// 游戏服心跳错误（排错用）\
	SysError			        	    =300002;//服务器错误\
	TimeOutError		                =300003;//客户端与服务器时间不一致\
	HeartBeatNotUser   	            	=300005;//还没有账号不需要发送心跳协议\
	NotRedisLock	                	=300006;//没有拿到redis锁权限（此错误客户端不做消息提醒=进行消息重发）\
	NotLoginCodeErr	                 	=300007;//玩家未登录 协议号不对\
\
	PlayerLiveNull                      =300009;//玩家数据不正确（存疑）\
	// ServerError 	        		    =300010; // 服务器错误\
	NoPlayer 	        			    =300011; // 没有这个玩家(多处调用)\
	PlatformIdNull		                =300012; // 平台ID为空(多处调用)\
	PlatformUIDNull		                =300013; // 平台UID为空(多处调用)\
	SysAutographError	            	=300014;//消息头签名不合法 md5验证\
	ServerGMError		                =300015;//服务器GM接口异常\
	ServerIsOpen		                =300016;//服务器没有启动完毕\
	NotWhiteList		                =300017;//不在白名单\
	PlayerOffline										=300018;//玩家已离线\
	LimitLen                        =300019;//消息包超过128K\
	RedisCMDError		                =300020;//redis执行命令错误\
	//=======================系统报错==================\
	PlayerExists 		        	    =300215; // 玩家已存在（存疑）\
	ActivationCodeUse	            	=300216; // 激活码已经被使用，不能重复使用\
	ActivationCodeNot	            	=300217; // 激活码不存在\
	//=======================指挥官-设置==================\
	VoiceSwitchInvalid		        	=310001;// 声音开关设置类型错误\
	ParamRangeInvalid		        	=300218;// 参数范围非法\
	//=======================指挥官-设置==================\
	//=======================指挥官-生日==================\
	BirthdayError  			            =310101; // 玩家生日错误\
	BirthdayCDTimeError	                =310102; // 修改玩家生日的CD时间未到\
	//=======================指挥官-生日==================\
	//=======================指挥官-性别==================\
	SexCodeError     	        	    =310201; //性别标识码错误\
	//=======================指挥官-性别==================\
	//=======================指挥官-签名==================\
	AutographNull               	    =310301; //签名为空\
	AutographMax        	            =310302; //签名过长\
	AutographHasBlackWord	            =310303; //签名中含有敏感字符\
	AutographSQLSpecial                 =310304; //签名含有sql特殊字符\
	SDKAutographHasBlackWord	        =310305; //sdk签名中含有敏感字符\
	//=======================指挥官-签名==================\
	//=======================指挥官-改名昵称==================\
	NameHasBlackWord	            	=310401; //昵称中含有敏感字符\
	NameIsEmpty     	            	=310402; //昵称为空\
	NameSpecial      	            	=310403; //昵称含有特殊字符\
	NameWhitespace      	            =310404; //昵称含有空格或换行\
	NameSQLSpecial     		            =310405; //昵称含有sql特殊字符\
	UNameCoolingTime            		=310406; //玩家修改昵称的冷却时间未到\
	UNameNotChange 		                =310407; //玩家昵称未改变\
	HeadImageIdNotExit 	            	=310408; //头像id不存在\
	UNameMaxError   		            =310409; //昵称过长\
	SdkNameHasBlackWord	            	=310410; //sdk接口昵称中含有敏感字符\
	//=======================指挥官-改名昵称==================\
\
	//=======================头像==================\
	HeadImageIdNoChange             	=310501; //头像id没变化\
	HeadImageIdNotUnlock            	=310502; //头像id未解锁\
	//=======================头像==================\
\
	//=======================头像框==================\
	HeadFrameIdNotExist             	=310801; //头像框id不存在\
	HeadFrameIdUnlocked            	  =310802; //头像框id未解锁\
	//=======================头像框==================\
\
	//=======================秘书==================\
	SecretaryIdNotExit 	                =310601; //秘书id不存在\
	SecretaryIdNotUnlock                =310602; // 秘书id未解锁\
	//=======================秘书==================\
\
	//=======================查询其他玩家==================\
	SeeNoPlayer 		         	    =310701; // 查找的玩家不存在（目前主要用在通过接口查看玩家信息）\
	SeePlayerListNull 	                =310702; // 查找的玩家列表为空（目前主要用在通过接口查看玩家信息）\
	SeePlayerListMax 	                =310703; // 查找的玩家列表过长（目前主要用在通过接口查看玩家信息）\
	SeeUidError 		         	    =310704; // 查找的玩家uid错误\
	//=======================查询其他玩家==================\
\
	//=======================序章(需要修改协议把平台信息和用户信息删除)==================\
	PrologueDataNull		            =330001; // 序章数据为空\
	PrologueDataLengthMax	            =330002; // 序章数据长度过长\
	//=======================序章==================\
\
	//=======================注册账号（仅dev和版署使用）==================\
	UserNameNull                        =340001;  // 用户名为空\
	UserNameLengthMax                   =340002;  // 用户名长度过长\
	PasswordNull                        =340003;  // 密码为空\
	PasswordLengthMax                   =340004;  // 密码长度过长\
	UserOrPwdERR	        		    =340005; // 账号或密码错误（目前仅用于版署注册中）\
	PlatformKeyNull                     =340006;  // platformKey为空\
	UserAlreadyExists                   =340007; // 用户已存在\
	InsertUserAlreadyExists             =340008; // 插入时冲突：用户已存在\
	//=======================注册账号（仅dev和版署使用）==================\
\
	//=======================充值==================\
	Recharged				            =350001; //该充值已经处理\
	RechargNotExit			            =350002; //无效的单号\
	RechargBugMaxNum		            =350003; //物品购买次数达到上限\
	AlReadyRecharged		            =350004; //已经充值过该项目\
	AppleVerfyError		            	=350005; //苹果充值验证错误\
	RechargeTaskNotConfig               =350006; //充值成就配置不存在\
	RechargeTaskReward                  =350007; //充值成就已领取\
	//=======================充值==================\
\
	//=======================签到==================\
	GetSign7DayReward	        		=360001; //今天已经领取7日签到奖励\
	GetSignMonthReward		            =360002; //今天已经领取月签到奖励\
	Sign7DayRewardNotExit	            =360003; //7日签到奖励不存在\
	SignMonthRewardNotExit	            =360004; //月签到奖励不存在\
	SignNotOpen	                        =360005; //签到模块未开放\
	SignMonthRewardError		        =360006; //领取月签到奖励不满足条件\
	SignMonthNotConfig   	            =360007; //月签到配置表找不到\
	//=======================签到==================\
\
	//=======================物品==================\
	MaterialLess			            =370001; //材料不足\
	NoneStrength			            =370002; //体力不足(多处调用)\
	NotItem     			            =370003; //物品不存在\
	NotItemConfig     	    	        =370004; //物品配置不存在(多处调用)\
	ItemTypeNotuse			            =370005; //物品类型不能被使用\
	TimeItemIsError                     =370006; //物品过期\
	ConsumeItemNumError	        	    =370007; //消耗物品数量不对\
	ConsumeItemListSizeMax		        =370008; //消耗物品集合长度过长\
	ConsumeItemListNull		            =370009; //消耗物品集合为空\
	NoMoney					            =370010; //金币不足\
	NoCoin 					            =370011; // 铜钱不足\
	NotItemTypeConfig     	    	    =370012; //物品配置不存在(多处调用)\
	NotItemTypeEnum     	    	    =370013; //物品配置了鑫类型但没有加到枚举内\
	NotItemOperation     	    	    =370014; //道具处理器不存在\
	ItemOnlyIdOrIdNull     	    	    =370015; //道具唯一id或者配置id为空\
	UsePartParameterError               =370016; //使用物品时客户端传来的参数错误\
	UsePartRepeat                       =370017; //使用物品时客户端传来的物品id重复\
	UsePartParameterNull                =370018; //使用物品时客户端传来的参数为空\
	UsePartNumError    	    	        =370019; //使用物品时客户端传来物品数量小于1\
	UsePartUUidError   	    	        =370020; //使用物品时客户端传来物品唯一id错误\
	ItemUseTypeError   	    	        =370021; // 物品使用类型错误\
	UseOperationError                 =370022; //使用物品失败\
	UseBattlePassOperationError        =370023; //使用通行证激活物品失败，不存在开启的对应类型通行证\
	//=======================物品==================\
\
	//=======================商店==================\
	ShopFieldNotOpen                    =380001;//商店功能模块未开启\
	ShopNotExists		            	=380002;//没有这个商城\
	ShopItemNotExists	            	=380003;//商城没有这个物品\
	NoneBuyTimes		                =380004;//已经没有购买次数\
	ModuleNotOpen	        		    =380005;//功能模块未开启\
	ShopNotConfig     	    	        =380006; //商店物品类型配置不存在\
	ShopGoodNotConfig     	    	    =380007; //商店物品配置没有此类型的商品\
	ShopGoodConfigNotId    	    	    =380008; //商店物品配置没有要购买的物品Id\
	ExchangeNotConfig    	    	    =380009; //兑换商城物品配置id不存在\
	ExchangeNumError    	    	    =380010; //兑换商城物品数量小于1\
	ExchangeMinimum    	    	        =380011; //兑换商城物品购买次数不足\
	ShopRefreshTypeError          	    =380012;//商城刷新类型错误\
	ShopRefreshNotExists		        =380013;//刷新的商城不存在\
	ShopBuyTimesError	                =380014;//客户端商店购买物品次数小于1\
	ShopMinimum    	    	            =380015; //商店物品购买次数达到上限\
	//=======================商店==================\
\
	//=======================邮件==================\
    DelMailNotRead   	            	=390001; //删除的邮件未读\
    DelMailNotReceive		            =390002; //删除的邮件未领取附件\
    MailTypeError			            =390003; //邮件类型不对(不是附件邮件，没有可能去的物品)\
    MailReceive 	    	            =390004; //邮件附件已领取过了\
    MailNotExitError	       	        =390005; //邮件不存在(多处调用)\
    BeforeMailTime			            =390006; //未到邮件可读取时间(多处调用)\
    AfterMailTime			            =390007; //已超邮件可读取时间(多处调用)\
    MailAlreadyRead     	            =390008; //已经读取过此邮件(多处调用)\
    MailIdError			                =390009; //邮件id错误(多处调用)\
    MailDeleted			                =390010; //邮件已经被删除了\
	ItemIsFullNotGet			        =390011; //道具满了不能领取(多处调用)\
//=======================邮件==================\
\
//=======================角色武将==================\
    NotLeader       		            =400001; //玩家没有该武将\
    LeaderExists 			            =400002; //武将已经存在\
    LeaderMaxStarLv 		            =400003; //武将达到最大星级\
    LeaderMaxBreachLv 		            =400004; //武将达到当前最大突破等级\
    NotLeaderSkill  		            =400005; //角色技能不存在\
    LeaderSkillMaxLe  		            =400006; //角色技能已达到最大等级\
    LeaderMinStarLvNot 		            =400007; //角色等级不满足提升适性条件\
    LeaderSkillLimit  		            =400008; //角色技能限制条件未达到开启条件\
    LeaderArchiveStory  	            =400009; //档案已经查看过此故事\
    LeaderArchiveSound  	            =400010; //档案已经查看过此语音\
    LeaderIdInvalid  	   	            =400011; //武将配置Id非法\
    LeaderLevelConsume                  =400012; //武将升级错误\
    LeaderBreakConfig	                =400013; //武将突破配置错误\
    LeaderCurMaxLevel			        =400014; //武将已达到当前最大等级\
    LeaderBreachConditionErr	        =400015; //不满足突破条件\
    LeaderBreachLevelErr    	        =400016; //等级不满足突破条件\
    SkillLvBeyondBreachLevel         	=400017; //技能等级超过了突破等级\
	NotLeaderClothingConfig            	=400018; //角色服装不存在\
	NotLeaderExpUseParam       		    =400019; //角色经验配置表道具使用参数错误\
	LeaderStarNotConfig 		        =400020; //武将升星配置表不存在\
	LeaderExpConsume                    =400021; //武将增加经验错误\
	StarNotDBLeader    		            =400022; //升位阶时玩家没有该武将\
	UpgradeNotDBLeader    		        =400023; //升级时玩家没有该武将\
	BreachNotDBLeader    		        =400024; //突破时玩家没有该武将\
	SkillNotDBLeader    		        =400025; //升级技能等级时玩家没有该武将\
	NotConfLeader                       =400026;// 物品检查时玩家没有该武将\
	ExpNotDBLeader    		            =400027; //增加经验时玩家没有该武将\
	FavorabilityNotDBLeader    		    =400028; //增加好感度经验时玩家没有该武将\
	WandSkillNotExist                   =400029;// 式杖技能不存在 这个技能组里\
	WandSlotIdNotExist                  =400030;// 武将没有这个技能槽\
	WandSlotIdRepeat                    =400031;// 武将技能槽技能重复\
	LeaderUpgradeConsumeItemTypeErr     =400032;// 武将升级消耗的道具类型错误\
	LeaderMinBreakLvNot 		        =400033; //角色等级不满足提升突破等级\
\
//=======================角色武将==================\
\
//=======================任务==================\
\
    TaskEnded			          	    =410001;//任务已经完成(多处调用)\
    TaskPreNoneEnd			            =410002;//前置任务未完成(多处调用)\
    TaskEnough				            =410003;//任务条件不足\
    TaskPointNot			            =410004;//日常任务活跃点不足\
    TaskAPPointNot			            =410005;//任务成就点不足\
    SetSpecialTaskError	            	=410006;//特殊任务类型设置错误\
    TaskNotOpen				            =410007;//任务未开启\
    TaskDataNotExist		            =410008;//任务数据不存在\
    TaskNotConfig			            =410009;//任务Id未配置\
    ActivePointRewardNull	        	=410010;//活跃度奖励不存在\
    DailyBatchSubmitTaskIdErr	        =410011;// 每日任务 一键完成 任务Id错误\
    DailyBatchSubmitStateErr	        =410012;// 每日任务 一键完成 任务状态错误\
    MainBatchSubmitTaskIdErr	        =410013;// 主线任务 一键完成 任务Id错误\
    MainBatchSubmitStateErr	            =410014;// 主线任务 一键完成 任务状态错误\
    BatchSubmitParamErr                 =410015;// 一键完成 参数非法\
    BatchActiveTaskParamErr             =410016;// 一键领取活跃 参数非法\
\
\
//=======================任务==================\
\
//=======================小队==================\
    SquadRepeat                         =420001;  // 小队上的角色重复\
    SquadNotFormation                   =420002;  // 没有选择的小队\
    RepeatPostion                       =420003; // 武将位置重复\
    PositionNotActive	                =420004; // 武将位置未激活\
    MainLeaderCanNotDown                =420005;  // 第一阵法只有一个主武将时不能下阵\
    FormationNull       	            =420006; // 阵型预设为空\
    FormationTypeError                  =420007; // 阵型预设类型错误\
    FormationLeaderNot                  =420008; // 预设武将不存在\
//=======================小队==================\
\
//=======================聊天==================\
    ChannelLimit                        =430001;//该线达上限\
    Gag			                        =430002;//被禁言\
    NumLimit							=430003;//字数限制不符\
    ChannelSame							=430004;//同样的频道\
    ChannelOld							=430005;//旧频道不符\
    NotReportContentId			 		=430006;//没有举报内容Id\
    NotConnectType				 		=430007;//没有此连接类型， 用于分配聊天服务器信息\
    EntryWaitingQueue			 		=430008;//当前无空位，进等待队列\
    RejectConnect				 		=430009;//当前等待队列已满，拒绝连接，请XX分钟后重连\
    ExistPlayer					 		=430010;//已存在玩家连接\
    ServerLimit					 		=430011;//该服已达到上限\
    ChatConnectTimeOut			 		=430012;//聊天服连接超时 （用于前端做排错提示）\
    SocketPlayerNotExist		 		=430013;//聊天连接不存在(多处调用)\
    ChatNotLoginSendMsg			 		=430014;// 聊天未登录，不能发消息\
    ChatNotLoginReadData		 		=430015;// 聊天未登录，socket数据清空\
    ChatHeartBeatTokenTimeOut	 		=430016;// 聊天心跳检查token 超时\
    ChatLoginTokenError				    =430017;//聊天服登录Token错误\
	NoPlayerEntry 	        			=430018; // 全局表中找不到这个玩家\
	ChatServerIsOpen		            =430019;//聊天服务器没有启动完毕\
    ReportNotPlayer 			 		=430020;//举报的玩家不存在\
//=======================抽卡==================\
    NotSwearType     			  	    =440001;// 抽卡类型不存在\
    SwearNumMax     				  	=440002;// 抽卡次数已达上限\
    SwearActivityTimeError  	  	    =440003;// 卡池不在开启时间内\
    SelectSwearError     		 	    =440004;// 抽卡up选择错误\
    NotSwearInfoError     	    	    =440005;// 抽卡信息不存在（几率很小）\
    NotSwearRecord						=440006;// 没有抽卡记录（几率很小）\
    NotCardBoxInstance					=440007;// 卡池不存在\
    SwearTimesError   					=440008;// 抽卡次数错误\
    ActiveTimeConfigErr					=440009;// 活动时间配置错误\
	NotConfigLotteryInstance			=440010;// 卡池配置不存在\
//=======================抽卡==================\
\
\
//======================pve=======================\
    MainPVENot       			       =450001;//pve副本地图不存在\
    ActivityPVENot     			       =450002;//活动副本地图不存在\
    PVEMapTimeOut   		           =450003;//副本超时\
    EventChapterExisting	           =450004;//事件章节id已存在\
    InitNotPVEMap                      =450005;//未初始化地图副本\
    ChapterRewardExisting	           =450006;//章节奖励已领取\
    PVEEventNotPostion		           =450007;//地图事件位置不存在\
    PlotPVEAlreadyExist		           =450008;//剧情关卡已通过\
    Accelerate    		               =450009;//使用加速\
    VerificationNot       		       =450010;//战斗日志文件未找到\
    VerificationUpOver     		       =450011;//战斗日志文件已经上传过了\
    MainChapterNull	    		       =450012;//章节配置不存在\
    TrainChapterFightNumError	       =450013;//训练章节战斗次数错误\
    MainLevelNull	    		       =450014;//关卡配置不存在\
    MainPVELocked				       =450015;//关卡未解锁\
    NoneAttackTime  			       =450016;//攻打次数已达上限\
    MainPVEStarNum	    		       =450017;//关卡章节奖励因星星数量不足不能领取\
    NotMainPVEStar	    		       =450018;//关卡章节星级奖励不存在\
	NotConfigMainLevel      		   =450019;// 关卡MainLevel配置不存在\
	NotConfigTrainLevel      		   =450020;// 关卡TrainLevel配置不存在\
//======================pve地图=======================\
\
//=======================律叶==================\
\
    NoneEquip                          =460001;// 律叶配置不存在\
    WeaponMaxLevel                     =460002;// 式仗改造次数已达上限\
    EquipAlreadyInLeader	           =460003;// 律叶已经装备在角色身上\
    EquipNotFull     	               =460004;// 式仗镶嵌位置没有装满\
    EquipWrongful     	               =460005;// 镶嵌的式仗装备不在可镶嵌列表\
    IdenticalWeapon     	           =460006;// 不能装备同一个式仗\
    NotWeapon     	                   =460007;// 律叶不存在\
    InconsistentTypeWeapon             =460008;// 式仗类型和武将类型不一致\
    DefaultWeaponNotDel                =460009;// 默认式仗不能分解\
    WeaponMaxNum    	               =460010;// 式仗达到上限\
    WeaponNotEqual				       =460011;// 律叶不是同一种\
    WeaponSkillNotExist			       =460012;// 律叶技能不存在\
    WeaponLevelUpperLimit		       =460013;// 律叶技能等级达到上限\
    WeaponBaseLevelUpperLimit	       =460014;// 律叶当前等级达到上限\
    WeaponGrowConfigNotExit	           =460015;// 律叶升至该等级的成长配置不存在\
    ConsumeWeaponListSizeMax	       =460016;// 消耗律叶集合长度过长\
    WeaponBeEquiped	                   =460017;// 律叶被装备了\
    ModifyWeaponLockStateError	       =460018;// 修改的律叶的锁状态值错误\
    WeaponLockStateError	    	   =460019;// 该律叶锁状态错误\
    WeaponLocked	                   =460020;// 律叶被锁定了\
    DecomposeWeaponObtainItemErr       =460021;// 律叶分解得到的结果和客户端计算结果不匹配\
    WeaponOnlyIdInvalid			       =460022;// 律叶Id非法\
    WeaponIdInvalid				       =460023;// 律叶配置id非法\
    WeaponSkinIdInvalid			       =460024;// 律叶皮肤配置Id非法\
    WeaponSkinNotExist			       =460025;// 没有律叶皮肤\
    WeaponSkinNotMatch			       =460026;// 律叶皮肤不匹配\
    ConsumeWeaponIdParamErr		       =460027;// 消耗的律叶Id参数错误\
    ConsumeWeaponIdNotExist		       =460028;// 消耗的律叶不存在\
    DecomposeWeaponNull                =460029;// 分解的律叶为空\
    DecomposeWeaponListMax             =460030;// 分解的律叶列表过长\
    WeaponLevelNoBreach                =460031;// 式仗等级不满足突破条件\
	NotWeaponUseParam                  =460032;//律叶经验道具配置表道具使用参数错误\
	BreachNotConfWeapon                =460033;// 式仗突破等级配置文件不存在\
	BreachNotDBWeapon                  =460034;// 式仗突破等级配置文件不存在\
	UpgradeNotDBWeapon                 =460035;// 式仗升级等级式仗不存在\
	UpgradeNotConfWeapon               =460036;// 式仗升级等级配置文件不存在\
	SwitchNotDBWeapon                  =460037;// 切换式仗等级式仗不存在\
	SwitchNotConfWeapon                =460038;// 切换式仗等级配置文件不存在\
	SwitchPassiveNotDBWeapon           =460039;// 被切换式仗等级式仗不存在\
	SwitchNotConfLeader                =460040;// 切换式仗的角色配置文件不存在\
	DecomposeNotDBWeapon               =460041;// 分解式仗式仗不存在\
	DecomposeNotConfWeapon             =460042;// 分解式仗式仗配置文件不存在\
	DecomposeWeaponBeEquiped           =460043;// 分解律叶被装备了\
	RefineWeaponNull                   =460044;// 精炼式仗式仗id列表为空\
	RefineWeaponBeEquiped              =460045;// 精炼式仗律叶被装备了\
	RefineNotDBWeapon                  =460046;// 精炼式仗式仗不存在\
	RefineNotConfWeapon                =460047;// 精炼式仗配置文件不存在\
	SkinNotDBWeapon                    =460048;// 服装式仗不存在\
	SkinNotConfWeapon                  =460049;// 服装式仗配置文件不存在\
	WeaponSkinDBNot                    =460050;// 式仗服装db不存在\
	WeaponSkinNot                      =460051;// 式仗服装不存在\
	IdenticalWeaponSkin                =460052;// 式仗服装不能装备同一个\
	WeaponSkinMismatch                 =460053;// 式仗服装类型不匹配\
	LockNotDBWeapon                    =460054;// 精炼式仗式仗不存在\
	LockNotConfWeapon                  =460055;// 精炼式仗配置文件不存在\
	WeaponCannotRefine                 =460056;// 律页不支持精炼\
	ConsumeWeaponLockErr               =460059;// 消耗的武装被锁定了\
	CanNotSelectRandomData             =460060;// 没有可选的随机数据\
	RefineConsumeConfigErr             =460061;// 精炼消耗的道具和配置不符\
//=======================律叶==================\
\
\
//=======================七日任务==================\
\
SignInvalid				               =50001;//签到天数非法\
TaskReceiveInvalid	                   =50002;//任务奖励领取非法\
ReadRedInvalid		 	               =50003;//阅读红点非法\
FirstThoughTasksAllOver		 	       =50004;//七日任务已经全部完成了\
FirstThoughTaskNull	                   =50005;//七日任务不存在\
SignBingoConfigErr			           =50006;//bingo 配置不存在\
FirstTaskNotReachedNum                 =50007;//七日任务数量未达到bingo 格子开启条件\
BingoLineConnectNumNotEnough           =50008;//bingo连线数量不足\
BingoProfixRewardErr                   =50009;// bingo 连线前置奖励未领\
BingoRewardAleadyReveived              =50010;// bingo 奖励已经领取\
FirstTaskNotTimeUnlock                 =50011;//初心者任务不满足天数解锁\
NotFirstThoughtHandlerType             =50012;//初心者任务枚举操作类型不存在\
FirstTaskDBNull                        =50013;//七日任务数量未达到bingo 格子开启条件，数据库中没有任务信息\
//=======================七日任务==================\
\
//=======================装备/镜像==================\
NoRevelation	    		                     =60001; // 玩家没有该镜像\
NoConsumeRevelation	    	                     =60002; // 消耗的镜像不存在\
UpgradeEquipLevel	    	                     =60003; // 镜像已到当前等级最高级\
UpgradeBreachLevel	    	                     =60004; // 镜像已到当前突破的最高级\
NoEquipConfigInfo	    	                     =60005; // 没有镜像配置信息\
UpgradeBreachError	    	                     =60006; // 没有达到突破升级条件\
EquipOnLeader	    		                     =60007; // 该镜像已经装备在此武将身上\
EquipLockStateError	    	                     =60008; // 该镜像锁状态错误\
EquipMaxLimit		    	                     =60009; // 镜像数量达到上限\
RevelationIdError	    		                 =60010; // 镜像id错误\
ConsumeRevelationListSizeMax                     =60011; // 消耗镜像集合长度过长\
ModifyRevelationLockStateError	    	         =60012; // 修改的镜像的锁状态值错误\
SwitchRevelationTypeError	    	             =60013; // 未知的切换镜像的操作类型\
DefaultRevelationNotDel                          =60016;// 默认镜像不能分解\
RevelationLocked			                     =60017;// 镜像为上锁状态\
DecomposeObtainItemErr		                  	 =60018;// 镜像分解得到的结果和客户端计算结果不匹配\
RevelationTypeError                              =60019;//镜像装备类型存在问题\
NotRevelationExPConfig                           =60020;//镜像经验道具配置表中不存在\
NotRevelationUseParam                            =60021;//镜像经验道具配置表道具使用参数错误\
DecomposeRevelationNoneEquip                     =60022;//分解镜像，镜像不存在\
UpgradeNotDBRevelation                           =60023;// 镜像升级镜像db不存在\
UpgradeNotConfRevelation                         =60024;// 镜像升级等级配置文件不存在\
OffRevelationIdError                             =60025;// 卸下镜像id错误\
OffNotDBRevelation                               =60026;// 卸下镜像镜像db不存在\
OffNotConfRevelation                             =60027;// 卸下镜像配置文件不存在\
OffNotWearRevelation                             =60028;// 卸下镜像角色身上没有穿戴指定镜像\
OffNotPositionRevelation                         =60029;// 卸下镜像位置对应的镜像不一致\
OffLeaderNotRevelation                           =60030;// 卸下镜像角色身上没有镜像\
OffRevelationLeaderErr                           =60031;// 卸下镜像角色错误\
EquipNotDBRevelation                             =60032;// 装备镜像镜像db不存在\
EquipNotConfRevelation                           =60033;// 装备镜像配置文件不存在\
EquipRevelationLeaderErr                         =60034;// 装备镜像角色错误\
LockNotDBRevelation                              =60035;// 上锁解锁镜像镜像db不存在\
DecomposeNotDBRevelation                         =60036;// 分解镜像镜像db不存在\
DecomposeEquipOnLeader                           =60037;// 分解镜像该镜像已经装备在此武将身上不能分解\
UpgradeNoConsumeRevelation                       =60038;// 镜像升级镜像消耗的镜像db不存在\
UpgradeEquipOnLeader                             =60039;// 镜像升级该镜像已经装备在此武将身上\
SaveRefineParamError                             =60040;// 镜像精炼数据保存参数错误\
CurLevelIsToSmall                                =60041;// 镜像等级过低\
CurEquipCannotConsume                            =60042;// 镜像不能消耗\
EquipSlotNotOpen                                 =60043;// 镜像槽位未开启\
EquipOnLeaderBodyCanNotConsume                   =60044;// 镜像已穿在斯露德身上，不能被消耗\
//=======================装备/镜像==================\
\
\
//======================雷达图=======================\
RadarNot         			=70001;//雷达图地图不存在（配置表不对/或客户端发送id错误）\
RadarLayerNot       		=70002;//雷达图要进行的层不存在\
RadarJumpLayerNot    		=70003;//雷达图此层不可跳过\
RadarTopFloor       		=70004;//雷达图要调过的层没有被打过不能跳过\
RadarNotFinished 	    	=70005;//存在为结束的雷达图，结束后才能创建新的\
RadartCreateMaxNum	    	=70006;//雷达图今天的挑战次数已达上限\
RadarNotCreate 		    	=70007;//雷达图没有创建不可操作（跳到下一层,战斗,操作事件,退出塔,使用装置，选择buff）\
RadarTimeOut 		    	=70008;//雷达图超时\
RadarWalkPositionMin        =70009;//雷达图行走位置太小（小于1）\
RadarIllegalPostion  		=70010;//雷达图行走位置非法\
RadarEventNotPostion        =70011;//雷达图事件位置不存在\
RadarEventPostionEnd        =70012;//雷达图事件已经处理过了不能重复处理\
RadarNotDevice              =70013;//雷达图装置不存在\
RadarBuffRepeat             =70014;//雷达图本次扫塔已经选择过此类型的buff不可重复选择\
RadarNotreviveNum           =70015;//雷达图复活次数不够\
//======================雷达图=======================\
\
//======================图鉴=========================\
HandbookRewardNotExist      =80001;//图鉴奖励已领取\
HandbookBeanNotExist   	   	=80002;//玩家图鉴数据不存在\
HandbookCollectNotExist     =80003;//图鉴奖励不存在\
//======================图鉴=========================\
\
//======================API==========================\
APILBConnectTimeOut			=90001;// API 分配聊天服接口 访问超时（用于前端做排错提示）\
APILBNoContent				=90002;// API 分配聊天服接口 内容为空（用于前端做排错提示）\
APILBSwitchClose			=90003;// API 分配聊天服接口 已关闭\
APILBInputParamError		=90004;// API 分配聊天服接口 入参错误\
APILBChatConnectTimeOut 	=90005;// API 分配的 聊天服 连接超时 （用于前端做排错提示）\
//======================API==========================\
\
//======================导师详情展示=========================\
\
InstallLeaderAlreadyInShowList    = 100001; // 添加的斯露德已在展示列表里了\
UninstallLeaderNotInShowList		  = 100002; // 卸下的斯露德并不在展示列表里\
ShowBgImgEquals			              = 100003; // 当前已展示此背景\
ShowBgImgNotExist		              = 100004; // 此背景图不存在\
ShowLeaderOperateTypeError		    = 100005; // 修改导师详情中展示的斯露德的操作类型错误\
NotShowSeat							          = 100006; // 没有武将展示位置了\
ShowNotLeader         		        = 100007; // 展示角色信息为空\
PlayerCardIdNotUnlock            	= 100008; // 玩家名片id未解锁\
\
//======================导师详情展示=========================\
\
//======================引导================================\
\
GuideStepNotExist		=110001; // 新手引导步骤不存在\
GuideStepIsRepeated		=110002;// 新手引导数据重复\
\
GuideBattleStepNotExist		=111001; // 新手战斗引导步骤不存在\
GuideBattleStepTriggerMax	=111002; // 新手战斗引导步骤触发次数达到上限\
\
//======================引导================================\
\
//======================战斗错误码=========================\
BattleRaidCountFull								=120001;//战斗服副本创建满\
BattleDropMsg											=120002;//战斗服丢弃消息\
BattleStateError									=120003;//战斗服玩家状态错误\
BattleLoginError									=120004;//战斗服登录失败\
BattleServerInfoNull							=120005;//战斗服信息空错误\
BattleBuildDataError							=120006;//构建战斗数据错误（多处调用）\
BattleSettleServerError 					=120007;//服务器结算错误（多处调用）\
BattleSettleDataExpire  					=120008;//战斗服结算,战斗数据过期（多处调用）\
BattleStartParamError  						=120009;//战斗开始参数错误\
NoBattleServerAvailable						=120010;//无可用战斗服\
BattleStartPlayerLiveNull					=120011;//战斗开始玩家数据不存在\
BattleStartServerError 						=120012;//战斗开始服务器错误\
BattleStartXlsDataError						=120013;//战斗开始表数据错误\
BattleStartPreLevelNullError			=120014;//战斗开始未通关前置关卡\
BattleDataNoLeader								=120015;//战斗数据错误，没有武将\
BattleDataNoCurLeader							=120016;//战斗数据错误，没有当前武将\
BattleStartTeamTypeError  				=120017;//战斗开始错误：TeamType错误\
BattleStartFormationError 				=120018;//战斗开始错误：客户端和服务器编队数据不对应（多处调用）\
BattleStartEmptyFormationError 		=120019;//战斗开始错误：没有编队数据\
BattleStartNoLevelData						=120020;//战斗开始没有关卡开始数据（服务器内部错误）\
BattleStartNoPlayerData						=120021;//战斗开始没有玩家开始数据（服务器内部错误）\
BattleStartBattleTypeError 				=120022;//战斗开始战斗类型错误（多处调用）\
BattleStartBattleTypeNoOper 			=120023;//战斗开始战斗类型没有Oper（服务器内部错误）\
BattleSettleXlsDataError 					=120024;//战斗结算表数据错误（多处调用）\
BattleStartInMatching							=120025;//战斗开始错误：匹配中\
BattleStartInBattle							  =120026;//战斗开始错误：已经在战斗中\
BattleStartSoloInTeam							=120027;//战斗开始错误：队伍中不能开始单人战斗\
BattleSettleNotInGuild = 120028;//战斗结算错误：没有工会\
//======================战斗错误码=========================\
\
//======================黑名单错误码=======================\
AddBlackUidNotExist 	=130001;//添加uid已在黑名单存在\
RemoveBlackUidNotExist 	=130002;//删除的uid在黑名单中不存在\
//======================黑名单错误码=======================\
\
//======================服装==============================\
ClothIdInvalid			=140001;//服装配置Id非法\
ClothTypeNotMatch		=140002;//服装与武将不匹配\
ClothIdNotExist			=140003;//玩家没有此皮肤Id\
NotSwitchClothingConfig 	=140004; //切换服装配置Id非法\
SwitchClothingNotLeader 	=140005; //切换服装角色不存在\
//======================服装==============================\
\
//======================模块开启==========================\
OpenFuctionDataErr		            =150001;//模块开启数据不存在\
OpenFunctionErr                     =150002;//功能开启错误\
OpenProtoErr                        =150003;//协议开关错误\
OpenFunctionLockErr                 =150004;//功能开启lock错误\
OpenFunctionConfErr                 =150005;//功能开启配置错误\
OpenFunctionSetErr                  =150006;//功能开启集合没有值\
OpenFunctionUnopened                =150007;//功能开启条件id未开启\
//======================模块开启==========================\
\
//======================战舰=======================\
BattleshipNot         		=160001;//战舰不存在（配置表不对/或客户端发送id错误）\
BattleshipJumpNot       	=160002;//要传送的战舰不存在\
BattleshipJumpError    		=160003;//此战舰不可跳过\
BattleshipNotFinished    	=160004;//存在未结束的战舰，结束后才能创建新的\
BattleshipTimeOut 	    	=160005;//战舰超时\
BattleshipWalkPositionMin   =160006;//战舰行走位置太小（小于1）\
BattleshipIllegalPostion 	=160007;//战舰行走位置非法\
\
BattleshipTaskNot      		=160008;//战舰子任务不存在（配置表不对/或客户端发送id错误）\
BattleshipSubTaskNot      	=160009;//战舰任务不存在（配置表不对/或客户端发送id错误）\
BattleshipTaskPreNoneEnd    =160010;//前置任务未完成\
BattleshipTaskEnough		=160011;//任务条件不足\
BattleshipTaskNotOpen       =160012;//战舰任务未开启\
BattleshipTaskNoOver		=160013;//战舰任务未完成\
BattleshipTaskNotProgress	=160014;//战舰任务进度条件不存在\
BattleshipTaskNotLastTask	=160015;//战舰任务未完成\
BattleshipTaskLimit	        =160016;//战舰任务达到限制次数\
BattleshipTaskTraceRepeat   =160017;//战舰任务追踪id和修改前相同\
BattleshipStoryNot      	=160018;//战舰剧情id不存在\
StoryRewardReceived      	=160019;//战舰剧情奖励已领取\
StoryRewardAllReceived      =160020;//战舰剧情奖励全部已领取\
StoryIndexError             =160021;//战舰剧情下标错误\
StorySubmitOption           =160022;//本次已经提交过对话选项了\
BattleshiprologueIn         =160023;//战舰序章进行中不能退出\
BattleshipAccepRepeat       =160024;//战舰接受任务id重复\
WarshipMissionTableNot      =160025;//战舰任务配置表错误\
WarshipMissionSubTableNot   =160026;//战舰子任务配置表错误\
BattleshipTaskTimeError     =160027;//战舰任务限制次数达上限\
BattleshipTimeConfigErr     =160028;//战舰任务时间配置表错误\
MoveNotDBBattleship         =160029;// 移动战舰db不存在\
NextFloorNotDBBattleship    =160030;// 跳转到下一层战舰db不存在\
ExitNotDBBattleship         =160031;// 退出战舰db不存在\
InitBattleshipTask      	=160032;//初始化时战舰子任务不存在\
InitNotconfWarshipMissionSub     =160033;//初始化时战舰子任务配置表错误\
InitBattleshipTaskLimit	     =160034;//初始化时战舰任务达到限制次数\
ProgressShipSubTaskNot       =160035;//战舰任务不存在\
ProgressNotDBShipTask        =160036;// 修改进度战舰任务db不存在\
SubmitNotDBShipTask          =160037;// 提交战舰任务db不存在\
NotConfWarshipStorySub     	 =160038;//战舰剧情选项配置表不存在\
OverBattleshipStoryNot       =160039;//结束剧情时战舰剧情id不存在\
OverStoryRewardAllReceived   =160040;//结束战舰剧情奖励全部已领取\
DineNotDBBattleship          =160041;// 聚餐战舰db不存在\
DineNumUpperLimit            =160042;// 聚餐次数已达上限\
DineMenuNotConfig            =160043;// 聚餐菜单配置不存在\
DineMenuNotOpen              =160044;// 聚餐菜单配置未开放\
DineMenuErrLeaderNum         =160045;// 聚餐菜单npc数量错误\
DineMenuErrLeader            =160046;// 聚餐菜单npc两个id一样\
DineMenuNotAvailable         =160047;// 聚餐菜单npc未激活\
DineMenuNotLeader            =160048;// 聚餐菜单npc不存在\
NoneShipStrength			 =160049; //战舰体力不足\
NoneShipTalentNum			 =160050; //战舰天赋点数不足\
ShipTalentNotConfig			 =160051; //战舰天赋树激活奖励配置不存在\
ShipTalentNotEnter			 =160052; //战舰天赋树激活奖励没有进入战舰\
ShipTalentAlreadyReward      =160053; //战舰天赋树激活奖励已经领取奖励\
\
NotConfigDispatchTask        =160060; //战舰派遣没有配置任务\
NotOpenDispatchTask          =160061; //战舰派遣任务没有开放\
NotConfigDispatchRegion      =160062; //战舰派遣没有配置区域\
NotOpenDispatchRegion        =160063; //战舰派遣区域没有开放\
RepeatDispatchTask           =160064; //战舰派遣任务id重复\
RepeatLeaderIdDispatch       =160065; //战舰派遣角色id重复\
DispatchNotDBLeader          =160066; //战舰派遣的角色id不在身上\
DispatchTaskNoOver           =160067; //战舰派遣任务正在派遣中\
DispatchAssigned             =160068; //战舰派遣角色已经被派遣\
DispatchMaxCount             =160069; //战舰派遣派遣任务超过上限\
\
DispatchCancelNotDB          =160070; //取消战舰派遣不在db中\
DispatchCancelState          =160071; //取消战舰派遣状态不在进行中\
\
DispatchRewardNotDB          =160072; //领奖战舰派遣不在db中\
DispatchRewardState          =160073; //取消战舰派遣状态不在进行中\
MaxShipStrength			     =160074; //战舰体力达到上限\
ShipStrengthNotOpen  		 =160075; //没有参加战舰获得了体力\
//======================战舰=======================\
\
//======================爬塔=======================\
TowerError          =170001; //爬塔客户端参数错误（多处调用）\
TowerTeamError      =170002; //爬塔队伍重复（多处调用）\
TowerDataError          =170003; //爬塔表\
TowerBeforeError    =170004;//爬塔前置id错误\
TowerTypeError          =170005; //领取错误的副本类型\
TowerScoreError          =170006; //分数错误\
TowerGetError            =170007; //已经领取过奖励\
TowerTimeError           =170008; //爬塔时间错误\
TowerStartNoBattleMirrorAndNoLeaderSquad = 170009;// 爬塔开始错误，既没有镜像存档，也没有阵型数据\
TowerBeforeCheckTowerError    =170010;//爬塔前置 不存在未通过副本\
TowerTimeOutError      =170011;//爬塔的超时\
TowerTimeIsEnd         =170012;//爬塔超过规定时间\
TowerClientTimeError   =170013;//爬塔数据错误\
TowerIsOver		         =170014;//爬塔未开启\
TowerIsOverTime        =170015;//爬塔已经定级\
TowerIsEnding          =170016;//爬塔正在定级\
//================技能============================\
TalnetSkillNotExist		=180001;// 被动技能不存在\
//================技能============================\
\
//================帮助============================\
HelpIdNotActive			=190001;//此帮助尚未激活\
HelpIdRewardOver	    =190002;//此帮助奖励已领取\
HelpIdIsActivated 		=190003;//此帮助ID 已设置为激活状态\
HelpIdActiveError		=190004;// 非战斗中触发， 帮助激活错误，\
HelpIdNotExist			=190005;// 帮助ID不存在\
//================帮助============================\
\
//======================好感度=======================\
FavorNotGain                          =200001; //好感度还未获得\
TalentLocked                          =200002; //天赋未解锁\
NotFavorUseParam                      =200003; //好感度道具配置表道具使用参数错误\
FavorNotLeader                        =200004; //好感度角色不存在\
//======================好感度=======================\
\
//======================公告弹窗=======================\
QuestionIdError                       =210001;// 当前问卷调查id错误\
QuestionIsGet                         =210002;// 问卷id 已经获得\
QuestionLevelError                    =210003;// 问卷奖励 等级错误\
//======================公告弹窗=======================\
//======================悬赏任务=======================\
BountyMissionError          =220001; //悬赏关卡客户端参数错误\
BountyMissionTeamError      =220002; //悬赏关卡队伍重复\
BountyMissionNotTable       =220003; //悬赏关卡配置表不存在\
BountyMissionNotData        =220004; //悬赏关卡不在列表中不能挑战\
\
//================悬赏任务============================\
//======================组队=======================\
\
TeamNotExist                    =230001; //队伍不存在\
TeamIsFull                      =230002; //队伍已经满员\
TeamTargetIsLocked              =230003; //未解锁该队伍目标\
TeamIsReplaced                  =230004; //队伍id已经更新了，不是之前的那个了\
CheckSameLeader                 =230005; //和 已准备的队友 选择了同一个斯露德\
AlreadyInTeam                   =230006; //已经有队伍了\
NotInTeam                   		=230007; //已经离开队伍了\
CheckedLeaderNumError           =230008; //选择 上阵的斯露德 数量不对\
NotCaptain                      =230009; //你不是队长\
AlreadyInTeamApplyDemand        =230010; //已经在该队伍的入队申请中了\
NotInTeamApplyDemand            =230011; //不在该队伍的入队申请中\
OtherSideAlreadyInTeam          =230012; //对方已经有队伍了\
OtherSideNotOnline              =230013; //对方不在线\
OtherSideStateError             =230014; //对方的状态暂时不能被邀请\
OverSendInviteDemandMaxNum      =230015; //超过发出去但是未确认的 入队邀请 的最大数量\
AlreadyInvite                   =230016; //你已经邀请过该玩家了\
OtherSizeNotInTeam              =230017; //对方已经离开队伍了\
NotInInviteDemand               =230018; //不在对方发出的入队邀请中\
InMatch                         =230019; //匹配中，不允许手动组队\
TryLockFail                     =230020; //队伍信息有变，请重新获取队伍信息[不能同时进队、出队，这个不是错误码，玩家重试就好了]\
InBattle                        =230021; //战斗中，不允许组队\
InBattleSettle                  =230022; //战斗结算界面，不允许组队\
NotReady                        =230023; //有队员未准备\
StrengthNotEnough               =230024; //体力不够，清选择助战\
TeamTargetIdNull                =230025; //队伍的战斗目标id是空的\
OtherSideAlreadyInTeamPanel     =230026; //对方已经在队伍面板了\
NotInTeamPanel                  =230027; //你不在队伍面板\
AlreadyInTeamPanel              =230028; //已经在队伍面板了\
NotInSameTeam                   =230029; //不在同一个队伍中\
TeamParamError 				          =230030; //参数错误\
OtherSideAlreadyInBattle    		=230031; //对方在战斗中\
OtherSideAlreadyInBattleSettle  =230032; //对方在战斗结算中\
OtherSideAlreadyInMatch 		    =230033; //对方在匹配中\
TeamDataNull 	            	    =230034; //队伍数据为空\
OtherTeamDataNull 	            =230035; //对方队伍数据为空\
TeamMemberNull                  =230036; //队员不存在\
CaptainNotNeedReady             =230037; //队长不需要点准备\
TeamIdError 				            =230038; //队伍id错误\
BlackListCanNotTeam 				    =230039; //黑名单之间不能组队\
InviterNotInTeam 				        =230040; //邀请者已经离开队伍了\
MemberAlreadyInvite             =230041; //队友已经邀请过该玩家了\
TeamInMatch                     =230042; //队伍处于匹配状态\
AlreadyMatchSuccess             =230043; //已经匹配成功了\
MemberNumNotEnough              =230044; //小队人数不足\
TargetIdNull                    =230045; //还设置队伍目标\
\
TeamReplaceLeaderNotLeader			=230046; //队伍替换角色时替换的角色不存在\
TeamReplaceLeaderRepeat	        =230047; //队伍替换角色，角色重复\
TeamReplaceLeaderNotChange      =230048; //队伍替换角色，角色和上一次没有改变\
ReadyNotLeaveTeamPanel          =230049; //准备状态不允许退出队伍面板\
ReadyNotReplaceLeader           =230050; //准备状态不允许更换斯露德\
\
\
\
OverTeamApplyDemandMaxNum       =230101; //超过 队伍 接到的 入队申请 列表的 最大长度\
OverPlayerInviteDemandMaxNum    =230102; //超过 玩家 接到的 入队邀请 列表的 最大长度\
SelfNotOpenTeamTarget           =230103; //您尚未解锁小队当前的目标\
MemberNotOpenTeamTarget         =230104; //有队员尚未解锁此玩法，无法选择\
OtherNotOpenTeamTarget          =230105; //对方尚未解锁此玩法，无法邀请\
\
//================组队============================\
//================匹配============================\
StartMatchBattleTypeError				=240001; // 开始匹配：战斗类型参数错误\
StartMatchLevelXlsError					=240002; // 开始匹配：战斗关卡表错误\
StartMatchTypeNotSupport				=240003; // 开始匹配：玩法不支持匹配\
InMatching											=240004; // 开始匹配：在匹配中\
StateCannotStartMatch						=240005; // 开始匹配：玩家状态不能进入匹配\
MatchTeamNotExist								=240006; // 开始匹配：队伍不存在\
StartMatchLevelNotSupport				=240007; // 开始匹配：关卡不支持匹配\
StartMatchTeamNotLeader 				=240008; // 开始匹配：玩家不是队长\
NotInMatching										=240009; // 取消匹配：玩家不在匹配中\
StateCannotCancelMatch					=240010; // 取消匹配：玩家状态不能取消匹配\
MatchObjectExpire				 				=240011; // 取消匹配：匹配对象已过期\
StartMatchInBattle							=240012; // 开始匹配：战斗中不能开始匹配\
StartMatchInBattleSettle				=240013; // 开始匹配：战斗结算中不能开始匹配\
StartMatchTeamMaxMember					=240014; // 开始匹配：队伍人满不能开始匹配\
StartMatchMaxPlayerSize					=240015; // 开始匹配：散客列表已满\
StartMatchMaxTeamSize						=240016; // 开始匹配：队伍列表已满\
//================匹配============================\
//================好友============================\
TargetFriendNotExist        =250001;//对方数据不存在\
TargetFriendInBlacklist     =250002;// 对方在黑名单中\
InTargetFriendBlacklist     =250003;// 在对方黑名单中\
TargetFriendCountMax        =250004;// 对方好友数量达到上限\
FriendCountMax              =250005;// 好友数量达到上限\
InTargetFriendApplyList     =250006;// 已经在对方申请列表里\
AlreadyFriend               =250007;// 已经是对方的好友\
ApplyRecordNotExist         =250008;// 对方申请记录不存在\
TargetNotFriend             =250009;// 对方不是好友\
AlreadyInBlacklist          =250010;// 对方已被拉黑\
JoinBlackFriendNotExist     =250011;// 拉黑的数据不存在\
TargetBlacklistNotFriend    =250012;// 拉黑的对方不是好友\
FriendRecommendTimeColdDown =250013;// 好友推荐时间冷却中\
NotHandleAuthority          =250014;// 没有通过权限\
CanNotApplySelf             =250015;// 不可以加自己为好友\
TargetApplyRecordMaxLimit   =250016;// 对方好友申请已满\
BlackListMaxLimit           =250017;// 黑名单已满\
RemarkContainSensitiveWord  =250018;// 备注中含有敏感词\
TrashReportWordOutLimit     =250019;// 举报描述字数超长\
FriendDescMaxLength         =250020;// 好友备注字数超长\
SearchUidNotExist           =250021;// 搜索的UID不存在\
//================好友============================\
//================武器关卡============================\
GetWeaponLevelRewardAlready         =260000;// 已经领取过奖励\
GetWeaponLevelRewardNotPass         =260001;// 还没通关\
GetWeaponLevelRewardXlsDataError		=260002;// 数据错误\
StartWeaponLevelRewardAlready				=260003;// 开始关卡：已领取奖励\
StartWeaponLevelMaxCount						=260004;// 开始关卡：已达到最大通关次数\
//================武器关卡============================\
//================限时关卡============================\
LimitedTimeLevelOutTime          		=270000;// 限时关卡已超时\
//================限时关卡============================\
\
//================乌拉拉============================\
PatrolTaskConfigErr			=280001;//乌拉拉 赛季配置不存在\
PatrolTaskTimeConfigErr     =280002;//乌拉拉任务时间配置表错误\
PatrolAlreadyActive         =280003;//乌拉拉已经在活动中\
PatrolNotActive             =280004;//乌拉拉还没有参加活动\
PatrolCreateLeaderErr       =280005;//乌拉拉创建队伍角色数量不符合规范\
PatrolCreateLeaderRepeat    =280006;//乌拉拉创建队伍角色重复\
PatrolInviteTeamNotActive   =280007;//乌拉拉邀请还没有参加活动\
PatrolQuitTeamOnlyMembers   =280008;//乌拉拉退出队伍只有一个成员\
PatrolBattleErrTeamId       =280009;//乌拉拉战斗队伍id错误\
PatrolBattleNotTeamData     =280010;//乌拉拉战斗队伍信息不存在\
PatrolBattleLeaeerNotMember =280011;//乌拉拉战斗阵型上的角色不是队伍中的队员角色\
PatrolBattTeamNotLeader     =280012;//乌拉拉战斗阵型上的角色不在队伍中\
PatrolBattleEpeatLeader     =280013;//乌拉拉战斗阵型上的角色重复\
PatrolBattleLeaderNumErr    =280014;//乌拉拉战斗阵型角色不满不是四个角色\
PatrolBattleLeaderNumTwo    =280015;//乌拉拉战斗阵型角色数量不是2(aabb)\
PatrolBattleNotMemberLeader =280016;//乌拉拉战斗有队员的角色没有上阵\
PatrolBattleDBNotLeader     =280017;//乌拉拉战斗库总没有查到参战角色\
PatrolCheckNotSpeedUp       =280018;//乌拉拉检查没有加速信息\
PatrolChecklreadySpeedUp    =280019;//乌拉拉检查此关卡已经存在了此玩家的加速\
PatrolCheckFullSpeedUp      =280020;//乌拉拉检查此关卡加速人数超过4人不能再加速了\
PatrolChecklreadyTeamLevel  =280021;//乌拉拉检查队伍关卡已经有队友帮我完成了\
PatrolCheckNotTeamLevel     =280022;//乌拉拉检查没有队伍关卡信息\
PatrolCheckNotTeam          =280023;//乌拉拉检查没有队伍\
PatrolCheckSpeedUpNotConf   =280024;//乌拉拉检查没有加速配置信息\
PatrolNotSpeedUpReward      =280025;//乌拉拉没有加速奖励\
PatrolSpeedUpReceived       =280026;//乌拉拉当前加速奖励已领取\
PatrolSingleTeamErrLeader   =280027;//乌拉拉单人队伍模式时上阵角色不是2个\
PatrolSearchNotUid          =280028;//乌拉拉搜索未找到玩家\
PatrolSearchNotActivity     =280029;//乌拉拉搜索玩家未参加乌拉拉活动\
PatrolSearchNotTeamId       =280030;//乌拉拉搜索的队伍不存在\
PatrolMembersNumError       =280031;//乌拉拉队伍成员不是单人不能接受别人邀请\
PatrolSearchThisUId         =280032;//乌拉拉搜索的玩家id是自己\
PatrolSearchThisTeamId      =280033;//乌拉拉搜索的队伍id是自己的队伍\
PatrolMembersGreaterThan1   =280034;//乌拉拉同意申请时 申请人的队伍已经不是单人队伍了，不能同意\
\
PatrolTeamNotExist          =280035; //队伍不存在\
PatrolTeamIsFull            =280036; //队伍已经满员\
PatrolAlreadyInTeam         =280037; //乌拉拉自己已经有队伍了\
PatrolNotInTeam       		=280038; //已经离开队伍了\
PatrolAlreadyInTeamApplyDemand =280039; //已经在该队伍的入队申请中了\
PatrolNotInTeamApplyDemand  =280040; //不在该队伍的入队申请中\
PatrolOtherSideAlreadyInTeam=280041; //对方已经有队伍了\
PatrolOtherSizeNotInTeam    =280042; //对方已经离开队伍了\
PatrolNotInSameTeam         =280043; //不在同一个队伍中（暂不需要）\
PatrolTeamMemberNull        =280044; //队员不存在\
PatrolTeamIdError 			=280045; //队伍id错误\
PatrolSessionUnopened    	=280046; //乌拉拉赛季没有开启\
PatrolSessionDelTeamErr    	=280047; //乌拉拉赛季删除队伍时再同一赛季内\
//================乌拉拉============================\
\
//================多人PVE Boss战============================\
MultiPveBossOpenTimeOut 		= 290001;//多人Pve Boss战不在开放时间\
//================乌拉拉============================\
//================活动============================\
TotalSignNumError               = 500001;//签到总数达到当前上限\
SignError                       = 500002;// 签到失败\
ActivityVersionIsNew            = 500003;//活动版本已是最新\
ActivityTypeNotExist            = 500004;//活动类型不存在\
ActivityClose                   = 500005;//活动已关闭\
CanNotPlayerActivity            = 500006;//活动条件不足\
TargetActivityTypeNotExist      = 500007;//指定活动类型不存在\
TargetCanNotPlayerActivity      = 500008;//指定活动条件不足\
SingleActivityNotConfigStage    = 500009;//个人进度活动配置无此阶段\
SingleActivityCanNotReward      = 500010;//个人进度活动进度已领取\
ActivityTaskNotData             = 500011;// 任务数据不存在\
ActivityTaskConditionErr        = 500012;// 活动任务条件不足\
ActivityTaskIsOver              = 500013;// 活动任务已经领奖\
ActivityBeforeTaskNotOver       = 500014;// 活动前置任务未完成\
ActivitySignCanNotJump          = 500015;// 签到活动 不能跳着补签\
ActivitySingleNotEnough         = 500016;// 进度不足\
AlreadySignErr                  = 500017;// 已签到\
SupplySignErr                   = 500018;// 补签失败，一次只能发一个补签\
CanNotOpenCommonBingo           = 500019;// Bingo 奖励已领完，无法翻牌\
NotBigBingo                     = 500020;// 没有大 Bingo 奖励\
NotGetBigBingo                  = 500021;// 还没有 领取大 Bingo 奖励\
AlreadyMaxBingoBound            = 500022;// 已经到最大轮次\
AlreadyOverBigBingo             = 500023;// 已经领取本轮大奖\
//================活动============================\
\
\
//================CDK==============================\
CDKReceived                 =291000;//兑换码已经领取过\
CDKBatchReceived            =291006;//兑换码批次已经领取\
CDKNotNum                   =291001;//兑换码没次数了\
CDKNotTime									=291002;//兑换码过期\
CDKChannelError             =291003;//兑换码渠道不正确\
CDKError                    =291004;//无效兑换码\
CDKMailError                =291005;//兑换码道具错误\
CDKNotBegin                 =291007;//兑换码未到开启时间\
	//#################################################大于五万走 NetErrorMsg#################################################\
//================支付商店============================\
NotPayRedisLock 		     =470001;//没有拿到支付redis锁权限\
PayNotOrderData 		     =470002;//没有找到支付订单\
PayStateWait    		     =470003;//已经是待发货状态,不需要回调了\
PayHandGMStateError    		 =470004;//运营只允许把状态改为手动处理\
PayHandGMNotOrderData  		 =470005;//运维查询处理的订单报错\
PayHandGMStateNotHand     	 =470006;//运维处理的订单状态不是手动状态\
PayHandGMUpdateStateError  	 =470007;//运维执行mysql语句时候状态已经不对了\
PayOverNotOrderData  		 =470008;//支付发货时订单不存在\
PayOverStateError    		 =470009;//当前状态不允许发货\
PayOverStateParError    	 =470031;//当前参数状态不允许发货\
PayOverStatePar2Error    	 =470032;//发货状态不能直接设置为运维发货状态\
PayOverStatePar3Error    	 =470033;//运维发货状态不能设置为正常发货状态\
PayNotifyMoneyError     	 =470034;//sdk回调时对比money参数不一致\
PayNotifyGameMoneyError      =470035;//sdk回调时对比gameMoney参数不一致\
PayNotifyPlatFormError       =470036;//sdk回调时PayPlatFormEnum错误\
PayNotifySignError           =470037;//sdk回调时签名参数错误\
PayOrderServerBusy           =470038;// 订单服务器繁忙，请稍后再试\
PayFail                      =470039;// 支付失败\
PayUnityNotSendBox           =470040;// 正式支付环境不能用unity购买\
PayChannelError 		     =470044;//此渠道暂时不能支付（仅开发内部提示）\
FirstRechargeNullErr         =470043;// 首冲对象找不到不能领取\
FirstRechargeStateErr        =470041;// 首冲状态不能领取\
FirstRechargeNotOpen         =470042;// 首冲活动未开放\
\
PayShopItemStateErr    	        =470010;// 商店商品已下架\
PayBuyCommonItemErr             =470011;// 普通商品购买错误\
PayBuyPayItemErr                =470012;// 付费商品购买错误\
PayBuyItemTimeErr               =470013;// 商品不在售卖时间内\
PayBuyItemLock                  =470014;// 商品未解锁\
PayBuyItemShopLock              =470015;// 商品所在的商店未解锁\
PayBuyItemHaveLimit             =470016;// 商品道具拥有达上限\
PayBuyItemLimit                 =470017;// 商品道具拥有达上限--弃用\
SkinOwnerLimit                  =470018;// 皮肤已拥有\
PayPreItemNoBuy                 =470019;// 前置商品没有购买\
PushPackNotFind                 =470020;// 推送礼包商品找不到\
PayShopTimeErr                  =470021;// 支付商城商店未开启（未到开启时间）\
PayShopPushPackNotOpen          =470022;// 推送商店未开启\
PayShopNotOpen                  =470023;// 支付商城商店未开启（开关未开启）\
\
MonthCardChecklimitError       =470050;// 月卡当前已购买的天数达到上限\
MonthCardCheckItemError        =470051;// 月卡检查时候物品表错误\
MonthCardCheckConfError        =470052;// 月卡检查时候MonthlyCard表错误\
MonthCardAddItemError          =470053;// 月卡增加天数时候物品表错误\
MonthCardAddConfError          =470054;// 月卡增加天数时候MonthlyCard表错误\
MonthCardAddNullError          =470055;// 没有购买过月卡\
MonthCardAddTimeOut            =470056;// 月卡已过期\
MonthCardLastRewardError       =470057;// 月卡过期了，还有未领取的月卡不能购买月卡\
MonthCardGeDayError            =470058;// 领取月卡奖励时候天数小于1\
\
PayPCQRcodeTimeOut             =470060;// pc二维码过期，请刷新\
PayPCQRcodeDecryptErr          =470061;// pc二维码解析报错\
PayPCQRcodeTableErr            =470062;// pc二维码配置信息报错\
PayPCQRcodeUserd               =470063;// pc二维码已经被扫过了\
PayPCQRcodeDeviceError         =470064;// pc二维码设备和登录设备类型不一致\
PayPCQRcodeAccountError        =470065;// pc二维码账号和登录账号不一致\
\
PlayerInBlackListEndTimeErr    =470067;//您的账号存在违规行为无法登录此游戏， 将于{1}后解封。\
PlayerInBlackListForeverErr    =470068;//您的账号存在违规行为无法登录此游戏，已永久封停。\
\
PeriodCardCheckItemError       =470080;// 周期卡检查时候物品表错误\
PeriodCardCheckConfError       =470081;// 周期卡检查时候PeriodCard表错误\
PeriodCardAddNullError         =470082;// 没有购买过周期卡\
PeriodCardNotReward            =470083;// 领取奖励时候天数小于1\
PeriodCardDayLimit             =470084;// 当前已购买的天数达到上限\
PeriodCardIdListErr            =470085;// 奖励领取列表为空\
//================支付商店============================\
\
//===================挂机============================\
HangUpIng                           =471000;// 正在挂机中\
HangUpTypeErr                       =471001;// 挂机类型错误\
HangUpSweepTypeErr                  =471002;// 扫荡类型错误\
HangUpNotInState                    =471003;// 不在挂机状态\
HangUpAlreadyEnd                    =471004;// 挂机已结束\
HangUpTimesErr                      =471005;// 不能加速那么多次\
HangUpNoRewards                     =471006;// 当前没有挂机奖励\
HangUpNoConfig                      =471007;// 当前关卡不能挂机\
HangUpOnlySweep                     =471008;// 当前关卡只能扫荡\
HangUpCanNotSweep                   =471009;// 当前关卡不能扫荡\
HangUpNotPass                       =471010;// 没有通关不能挂机\
HangUpStarLess                 			=471011;// 通关星级不足\
HangUpTimeThreshold            			=471012;// 挂机次数超过阈值\
HangUpSweepTimeThreshold            =471013;// 扫荡次数超过阈值\
HangUpSpeedUpTimeErr                =471014;// 加速次数错误\
HangUpCanNotSpeedUp                 =471015;// 加速功能未开启\
HangUpIngCanNotBattle               =471016;// 挂机中，不能进行其他战斗\
HangUpNotPassTime                   =471017;// 通关时间为0秒，无法执行外派作战。\
\
\
//===================perk============================\
SwitchPerkNotConfLeader               =490001;// 切换perk的角色配置文件不存在\
SwitchNotDBPerk                       =490002;// 切换Perk db Perk不存在\
SwitchNotConfPerk                     =490003;// 切换Perk perk配置文件不存在\
IdenticalPerk        	              =490004;// 不能装备同一个Perk\
SwitchPassiveNotDBPerk                =490005;// 被切换Perk, perk不存在\
PerkAddItemError                      =490006;// 增加perk时候物品表错误\
PerkAddConfError                      =490007;// 增加perk时候Perk表错误\
DecomposeNotDBPerk                    =490008;// 分解Perk Perkdb不存在\
DecomposePerkOnLeader                 =490009;// 分解perk该Perk已经装备在此武将身上不能分解\
DecomposePerkLocked			          =490010;// perk为上锁状态\
DecomposePerkNotConf                  =490011;//分解Perk，perk配置不存在\
LockNotDBPerk                         =490012;// 上锁解锁perk perkdb不存在\
ModifyPerkLockStateError	    	  =490013; // 修改的perk的锁状态值错误\
PerkLockStateError	    	          =490014; // 该perk锁状态和修改前一样不需要修改\
WearPerkItemIdError	    	          =490015; // 升级或镶嵌使用的物品错误\
WearPerkNotDBPerk                     =490016;// 升级或镶嵌Perk db Perk不存在\
WearPerkNotConfPerk                   =490017;// 升级或镶嵌Perk perk配置文件不存在\
WearPerkFullError                     =490018;// 卡槽已经满了不能再镶嵌了\
WearPerkLevelFullError                =490019;// 卡槽升级次数已经大于升级上限\
WearPerkLevelDataError                =490020;// 卡槽升级的配置信息找不到\
WearPerkItemNumError                  =490021;// 卡槽升级的道具数量不存在\
DecomposeAffixNotDBPerk               =490022;//分解词缀Perk db Perk不存在\
DecomposeAffixNotConfPerk             =490023;// 分解词缀Perk perk配置文件不存在\
DecomposeAffixNotAffix                =490024;// 分解的卡槽内词缀是否存在\
DecomposeAffixItemNull                =490025;// 后缀分解道具集合为空或者小于1\
DeformationErrorAppearance            =490026;// 变形配置id不存在\
DeformationPerkNotOpenLock            =490027;// 变形id没有解锁\
DeformationPerkNotDBPerk              =490028;//变形Perk db Perk不存在\
DeformationPerkNotConfPerk            =490029;// 变形Perk perk配置文件不存在\
DeformationPerkNotChange              =490030;// 变形id是一样的不需要修改\
AlreadyDeformationPerk                =490031;// 已经重置变形完成\
//===================perk============================//================普通活动============================\
NormalShopActivityNotOpen      =600001;// 普通商店活动没开\
//================普通活动============================\
//================赛季===============================\
\
CurCompetitionSeasonNotExist    =666001;// 当前没有赛季配置\
BuySeasonExpOutMaxLimit         =666002;// 购买经验超出可购买限制\
WatchSeasonPlotIdNotExist       =666003;// 当前查看的剧情不存在\
SeasonTaskNotExist              =666004;// 赛季任务不存在\
SeasonPlotNotOpen               =666005;// 剧情未解锁\
SeasonLevelLowLimit             =666006;// 未达到剧情要求赛季等级\
SeasonLevelNotReach             =666010;// 赛季等级达x级时，并且看完前置剧情后解锁\
ArtifactSkillNotExist           =666011;// 选择的赛季天赋技能 不存在\
ElementLimit                    =666012;// 选择的赛季天赋技能 不符合元素类型限制\
WeaponTypeLimit                 =666013;// 选择的赛季天赋技能 不符合武器类型限制\
CompetitionSeasonIsNull         =666014;// 赛季数据为空\
NormalRewardIsOver              =666015;// 此普通奖励已领取\
SeniorRewardIsOver              =666016;// 此高级奖励已领取\
SeniorRewardAlreadyOpen         =666017;// 高级奖励条已是解锁状态\
NotInSeasonTime                 =666018;// 不在观看剧情时间\
\
//================赛季===============================\
//================通行证===============================\
BattlePassNotOpen               =667001;// 通行证未开启\
BattlePassNotConfig             =667002;// 通行证配置不存在\
BattlePassNotData               =667003;// 通行证数据不存在\
BattlePassTaskNotConfig         =667004;// 通行证任务数据不存在\
BattlePassLevelOutLimit         =667005;// 通行证等级奖励超出可领上限\
BattlePassAlreadyBuy            =667006;// 高级通行证超出购买上限\
BattlePassBoxAlreadyOver        =667007;// 通行证自选宝箱已领取\
BattlePassBoxRewardErr          =667008;// 通行证自选宝箱 要求的等级不够\
BattlePassHighNotOpen           =667009;// 通行证 高级版未开启\
BattlePassBoxItemNotExist       =667010;// 通行证 宝箱中道具配置不存在\
BattlePassBoxNotExist           =667011;// 通行证 宝箱不存在\
//================通行证===============================\
\
\
	//================小战场===========================\
NotBeginSmallBattle   = 480000;//小战场未开放\
BeginSmallBattleTeamError = 480001;//小战场队伍位置错误\
SmallBattleLeaderSquadError = 480002; //小战场leader重复\
SmallBattleNoLeaderError=480003;  //小战场没有leader\
SmallBattleNotBegin	 =480004; // 小战场匹配的战场\
SmallBattleAutoLevelError = 480005;// 小战场关卡数据错误\
SmallBattleAutoLevelOverError =480006;//小战场关卡已经扫荡\
SmallBattleAutoError = 480007;//上期没有数据无法扫荡\
SmallBattleOverTimeOut =  480008;//结算超时\
	SmallBattleBeginError = 480010;//小战场活动未开启\
	//================大战场===========================\
AbyssFrontBossError   = 481000;//大战场未开放\
AbyssFrontBossTimeOver = 481001;//大战场超时\
AbyssFrontBossBeginError = 481002;//大战场次数错误\
AbyssFrontBossDataError = 481003;//数据错误\
AbyssFrontBossBattleIdError = 481004;//大战场的战场id错误\
AbyssFrontBossTeamError = 481005;//大战场战斗队伍错误\
AbyssFrontSweepError   = 481006;//大战场扫荡失败\
AbyssDataNotInit  = 481007;//大战场数据未初始化重新登录\
AbyssDataLeaderId = 481008;//大战场角色到上限\
AbyssDataWeaponId = 481009;//大战场武器到上限\
AbyssDataLeaderOnlyIdError=481010;//大战场boss未绑定角色;\
NotFunctionRedDot   	=480009;//模块功能红点类型过多\
\
//==============道具合成==========================\
	ItemCraftConfigError = 483000; //道具合成配置错误\
  //================小战场===========================\
	//================Roguelike===========================\
	StartRogueLevelNotCurStage   						= 482000;//非当前阶段关卡\
	StartRogueLevelLastStageNotPass   			        = 482001;//上阶段未通关\
	StartRogueLevelNotInRandomLevels 				    = 482002;//关卡不在随机的关卡中\
	StartRogueLevelNotOpen								= 482003;//当前未开启玩法\
	StartRogueLevelAlreadyPass 							= 482004;//关卡已打过\
	EventIdNotInRogueLevel                              = 482005;//事件在肉鸽关卡配置中不存在\
	SelectThrudNotExist                                 = 482006;//肉鸽选择的斯露德不存在\
	RogueThemeDiffNotExist                              = 482007;//肉鸽选择的主题 难度 不存在\
	RogueSelectThrudOutLimit                            = 482008;//肉鸽选择的斯露德超出上限\
	RogueDataNotExist                                   = 482009;//玩家肉鸽数据不存在\
	RogueOpenBuffPanelErr                               = 482010;//玩家开启肉鸽随机buff 面板位置错误\
	SelectBuffIdErr                                     = 482011;//玩家选择的肉鸽buffID 不在上次随出的结果中\
	CanNotSelectExtraBuffErr                            = 482012;//玩家不能选择 肉鸽的 额外累计 加成 buff\
	SelectExtraBuffIdExist                              = 482013;//玩家 选择的肉鸽的 额外累计 加成 buff 已存在\
	NotReachSelectExtraRequired                         = 482014;//玩家 未达到 可以选择的肉鸽的 额外累计 加成 buff Id 的条件\
	OverRogueLevelNotStart                              = 482015;//rouge关卡未开始\
	RogueBuffHandbookNotReachNum                        = 482016;//rouge Buff 图鉴收集数量 未达到要求\
	RogueBuffHandbookRewardIsOver                       = 482017;//rouge Buff 图鉴收集 奖励已领取=\
	RoguePlotIsOver                                     = 482018;//rouge 剧情已 查看\
	RogueActivePointRewardIsOver                        = 482019;//rouge 活跃点奖励已 领取\
	RogueActivePointRewardNotReach                      = 482020;//rouge 活跃点奖励 未达到领取条件\
	RogueActivePointRewardNotEqualLevel                 = 482021;//rouge 活跃点奖励 不匹配 肉鸽开始等级\
	RogueEventOptionNotConfig                           = 482022;//rouge 事件ID不存在\
	RogueEventOptionConditionNotReach                   = 482023;//rouge 事件 开启条件不满足\
	RogueEventPerOptionNotReach                         = 482024;//选择的rouge 事件 分支前置 不对\
	RogueSelectBuffTypeErr                              = 482025;//不可以选择指定的rouge buff 类型\
	RoguePlotIdNotOpenErr                               = 482026;//rouge 剧情未观看\
	GetOpenPlotRewardIsOver                             = 482027;//rouge 剧情奖励已领取\
	GetEventHandbookRewardIsOver                        = 482028;//rouge 事件图鉴奖励已领取\
	EventHandbookNotReach                               = 482029;//rouge 事件图鉴 未激活\
	RoguePlotNotOpen                                    = 482030;//rouge 剧情未解锁\
	CurRogueNotOver                                     = 482031;//rouge 未结算\
\
\
  //================团本===========================\
  GuildWarTeamNameRepeat             = 320000;//该团队名已经有人用了\
  DiamondNotEnough                   = 320001;//钻石不足\
  GuildWarSeasonUnOpen               = 320003;//赛季没开\
  GuildWarPeopleLimit                = 320004;//满员了\
  GuildWarInviteLimit                = 320005;//超过邀请上限了\
  GuildWarApplyLimit                 = 320006;//超过申请上限了\
  StageRewardAlreadyReceived         = 320010;//团本关卡奖励已领取\
  NotTeamState                       = 320011;//非组队阶段\
  GuildWarTeamLikesExist             = 320012;//今日已点赞\
  BattleStartNotInGuild              = 320013;//战斗开始错误：没有工会\
  BattleStartNotUnlock               = 320014;//战斗开始错误：团本暂未开启\
  StageRewardNoRecordExists          = 320015;//团本关卡奖励领取错误，不存在关卡三星通关记录\
  GuildWarPlayerNotExist             = 320016;//搜索的玩家不存在\
  GuildWarTeamNotExist               = 320017;//搜索的队伍不存在\
  GuildWarRejectInvite               = 320018;//该玩家拒绝邀请\
  GuildWarLevelAlreadyUsedPlayer     = 320019;//已经借用过该玩家的角色\
  GuildWarPlayerNotTeam              = 320020;//玩家还没有队伍，此操作无效\
  PlayerHaveTeam                     = 320021;//对方已有队伍\
  NotPermission                      = 320022;//没有队长或副队长权限\
  GuildWarTeamDisbanded              = 320023;//已经解散\
  GuildWarNameMaxError               = 320024;//队伍名字太长\
  GuildWarPlayerLeft                 = 320025;//该玩家已经离开队伍\
  InviteYourSelf                     = 320026;//邀请的是玩家自己\
  CurTeamPeopleLimit                 = 320027;//当前队伍已经满员,无法发起邀请\
  GuildWarTeamLimit                  = 320028;//队伍超过总上限，无法创建队伍\
  PlayerCancelApply                  = 320029;//该队员已取消申请\
  GuildWarAccessLimit                = 320030;//当前队伍可接受的申请达到上限\
  TryAgainLater                      = 320031;//请稍后重试\
	IllegalOperation                   = 320032;//非法移除操作（比如移除自己，委派自己做副队长）\
	MyTeamAlreadyExist                 = 320033;//我的队伍已存在 不让申请或者加入其他队伍了\
  //================团本===========================\
\
\
\
\
//#################################################大于五万走 NetErrorMsg#################################################\
\
	// Frequentoperation		  =998;//操作过于频繁（未使用220923）\
	// GameVersionError		  =999;//不兼容的客户端版本号（未使用220923）\
	// PreIng					      =1004;//请完成上一次操作（未使用220923）\
	// Locked					      =1006;//锁定中（未使用220923）\
	// ServerVersionChange		=1007;//服务器版本号变化 请重新登录（未使用220923）\
	// TokenFeignDeath			  =1008;//Token假死超时（切入后台超过两个小时）（未使用220923）\
	// NotFunctionRedDot   	=1010;//模块功能红点类型不存在（未使用220923）\
\
	// OpreateRedDotErr	   	=1017;//功能红点操作类型错误（未使用220923）\
	// PlayerNotExit 			  =1    ; // 玩家不存在（登录的时候，客户端接到此错误码，去进行注册）（未使用220923）\
	// ServerMaintenance		  =1022;//服务维护中\
\
	// RedisError	          =10073; // Redis缓存错误\
\
	// PlayerNameExists 		  =10003; // 玩家昵称已经存在\
\
\
	// PlayerLevelLow			  =10009; // 玩家等级不足\
\
\
	// PlayerMaxExp					=10101; // 玩家最大等级\
\
	// NotLeaderBuyFragment	=10070;//没有武将不能兑换碎片\
\
	// SexNotUpdate     		    =10063; //性别没有修改\
\
	// AutographSpecial        =10064; //签名含有特殊字符\
\
\
\
	// VoiceSettingNotUpdate      =10092; //声音设置没有修改\
\
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