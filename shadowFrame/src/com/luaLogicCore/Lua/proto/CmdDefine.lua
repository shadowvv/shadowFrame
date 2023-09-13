local protoStr = { }
protoStr.str = "package msg;\
\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//协议定义\
enum CmdEnum\
{\
\
// ========================心跳消息9999=====================================\
\
    HeartBeat               =9999;//心跳 会刷新服务器时间戳（废弃）\
\
// ========================推送消息协议(900000-1000000) ==============================\
\
    OpenFuctionSetPush              =900001;// 获得模块开启的推送消息 （推送）\
    LeaderSkillChanged              =900002;// 武将技能开启信息发生变化 服务器推送 （推送）\
    ConditionSet_S2C_Push           =900003;// 获得小功能模块开启的推送消息（推送）\
    ChangeFormationS2CPush          =900004;// 修改预设信息后的 推送\
    ShopDataChange_S2C_Push         =900005;// 商城变化推送 （推送）\
    NewMail_Push                    =900006;// 新邮件(推送)\
    TaskProgress_Push               =900007;// 任务数据变化（推送）\
    HandBookMonsterKillPush         =900008;// 推送累计击杀的怪物数据\
    ShowItem_Push                   =900009;// 展示推送消息\
    TaskConditionClientPush         =900010;// 客户端附加推送任务消息 （客户端向服务器推送）\
    Data_Push                       =900011;// 获取道具 (推送)\
    ErrorCode_Push                  =900012;// 错误弹窗\
    RemoveConditionSet_Push          =900013;// 删除小功能模块开启ID的推送消息 （推送）\
    ComputeConditionSet_S2C_Push     =900014;// 检查计算出来功能模块开启的推送消息\
	PackPush                        = 900015;//推送礼包消息数据\
// ========================玩家操作部分协议(0-100;10000-10100)=========================\
\
    RegisterUser                    =100;  // 注册、登录账号[dev环境下充当SDK的功能] （不压测）\
    PlayerLogin                     =10000;// 玩家登录\
    PlayerLoginGetInfo              =10002;// 玩家获取信息\
	  GetPrologue     		            =10003;// 玩家获取序章\
	  SetPrologue     		            =10004;// 玩家设置序章\
    GetNextDayUpdateData            =10005;// 获取跨天（凌晨四点）后修改的玩家数据需要客户端主动获取\
    GetRevelationInfoListPage       =10006;// 登录分批镜像请求数据\
    GetWeaponListPage               =10007;// 登录分批请求武器数据\
    Recharge_Otaku                  =10037;// OTAKU客户端充值验证 （不压测）\
    StartRecharge                   =10040;// 开始充值 （不压测）\
    GetSignReward                   =10051;// 领取月签到奖励（未使用已确认 21.06.24）\
    ChangeFunctionRedDot            =10052;// 通过类型修改功能红点\
    GetShowPlayerData               =10053;// 通过id获取玩家显示对象\
    ChangeAutograph                 =10054;// 更换签名\
    ChangeHeadId                    =10056;// 更换头像\
    ChangeSecretary                 =10057;// 更换秘书\
    GetPlayerStrength               =10069;// 获取玩家当前体力\
    ChangeStep                      =10073;// 新手引导步骤 （不压测）\
    buyRechargeBanShu               =10074;// 版署测试充值接口 （不压测）\
    ChangeBirthday                  =10075;// 更换玩家生日\
    CheckPlayerName                 =10076;// 检查指挥官名字\
    ChangePlayerName                =10077;// 更换指挥官名字\
    ChangeShowLeaderInfo            =10078;// 更换导师详情中展示斯露德信息\
    ChangeShowBgImg                 =10079;// 更换导师详情背景板\
    ChangeSex                       =10080;// 更换性别(目前仅注册后的新手步骤使用)\
    ChangeVoiceSetting              =10083;// 修改声音设置\
    ChangeBattleGuideStep           =10084;// 新手战斗引导步骤\
    GetOtherPlayerData              =10085;// 通过id或名字获取其他玩家简单信息  （未使用）（不压测）\
    ForceGuidePush                  =10086;// 强制跳过新手引导数据推送 （不压测）\
    AppleRecharge                   =10099;// 苹果支付 （不压测）\
    ClientDataOverLogin             =10100;// 客户端数据初始化完成\
    ChangeHeadFrame                 =10101;// 更换头像框\
    GetOpenFunctionData             =10102;// 获取模块开启条件信息(此消息需要在获取完所有模块后触发)\
\
// ========================武将协议(1000-1099)=========================\
\
    UpgradeLeader                   =1001;// 武将升级\
    UpgradeLeaderStar               =1002;// 提升角色适性品质\
    UpgradeLeaderStarLevel          =1003;// 提升角色适性等级\
    UpgradeLeaderTalentSkill        =1004;// 升级武将被动技能\
    UpgradeLeaderBreach             =1005;// 提升武将突破等级\
    UpgradeLeaderArchives           =1006;// 提升武将履历等级\
    SwitchClothing                  =1007;// 切换服装\
    UpgradeLeaderActiveSkill        =1008;// 升级武将主动技能\
    ChangeLeaderArchives            =1009;// 修改档案语音或故事id（应和客户端协调取消）\
    ChangeStickSkill                =1010;// 武将式杖技能槽切换\
    ResetStickSkill                 =1011;// 武将式杖技能槽重置\
    CompositionLeader               =1012;// 合成武将\
//========================武将装备(镜像)(1100-1199)=============================\
\
    UpgrageRevelation               =1100;// 镜像升级\
    UpgrageRevelationBreach         =1101;// 提升镜像突破等级\
    SwitchRevelation                =1102;// 切换镜像,包含装备和拆卸\
    RevelationLock                  =1103;// 镜像上锁解锁\
    DecomposeRevelation             =1104;// 分解镜像\
    RefineRevelation                =1105;// 镜像精炼\
    SaveRefineRevelation            =1106;// 镜像精炼保存\
\
\
\
// ========================武将武器协议(1200-1299)========================\
\
    UpgrageWeaponBreach             =1201;// 提升武装突破等级\
    UpgrageWeapon                   =1202;// 武装升级\
    SwitchWeapon                    =1203;// 切换武装\
    DecomposeWeapon                 =1204;// 分解武装\
    ChangeWeaponLock                =1205;// 修改武装物品锁状态\
    SwitchWeaponSkin                =1206;// 切换式仗服装\
    UpgradeWeaponRefineLevel        =1207;// 律叶精炼等级提升\
    RecastingWeapon                 =1208;// 武装洗练  属性 或 技能\
    SelectWeaponRandomInfo          =1209;// 选择保留的 属性 或 技能\
\
\
//  =======================抽卡协议(2000-2100)============================\
\
    SwearHero                       =2000;// 武将抽卡\
    SelectSwearChange               =2001;// 选择抽卡概率 up的池子\
    GetSwearRecord                  =2002;// 抽卡记录查询，一次100 条\
\
\
\
// ========================pve副本协议(3000-3099)=========================\
\
    GetChapterReward                =3000;// 领取章节奖励\
    AdoptPlotMainLevel              =3001;// mainLevel通过剧情关卡\
    TestBattleSettle                =3003;// 测试战斗结算\
    OverMainLevel                   =3004;// 主线关卡结算\
    OverTrainLevel                  =3005;// 训练关卡结算\
    OverGuildWarLevel               =3006;// 团本关卡结算\
\
\
\
// ========================商城协议(3100-3199)=========================\
\
    ShopRefresh                     =3100;// 商城刷新\
    BuyShopItem                     =3101;// 购买商城物品\
    GetRechargeTask                 =3102;// 领取充值任务商城 （不压测）\
    UseGoods                        =3103;// 使用物品道具\
    BuyExchangeItem                 =3104;// 购买兑换物品\
    SellGoods                       =3105;// 出售物品道具\
\
\
\
// ========================邮件协议(3200-3299)=========================\
\
    ReadSysMail                     =3200;// 邮件已读\
    GetMailRes                      =3201;// 领取邮件，领取附件\
    DelMail                         =3202;// 删除邮件\
    AllMailRes                      =3203;// 获取全部的邮件\
    GetMail                         =3204;// 获取邮件\
\
\
// =======================任务(3300-3399)=============================\
\
    FirstThought                    =3301;// 初心者任务\
    GetActivePointReward            =3302;// 新版领取活跃奖励协议号\
    SubmitTask                      =3303;// 提交任务： 点击领奖或者通知后端此任务已完成\
    SetSpecialTaskProgress          =3304;// 特殊任务类型 设置进度协议号，比如秘书互动任务\
    SignBingoReward                 =3306;// bingo 领奖\
    ChangeFirstThought              =3307;// 初心者任务修改值后的推送协议\
    BatchSubmitTask                 =3308;// 任务一键领取\
    GetWeekActivePointReward        =3309;// 领取周活跃点奖励\
\
\
\
//========================图鉴(3400-3499)=============================\
\
    GetHandbookReward               =3400;// 领取图鉴奖励\
\
\
\
//========================爬塔(3600-3699)================================\
\
    EnterTower                      =3600;//进入爬塔\
    OverTower                       =3601;//结束爬塔\
    GetTowerReward                  =3602;//获取爬塔奖励\
    GiveUpTower                     =3603;//放弃爬塔进度\
    OpenTower                       =3604;//打开爬塔界面\
    OpenTowerZone                   =3605;//打开分组界面\
    OpenTowerRanking                =3606;//打开排名界面\
    OverTowerWeekDeciding           =3607;//直接定级\
\
//========================好感度(3700-3799)================================\
\
    SelectTalent                     =3700;// 选择天赋\
    SendFavorGift                    =3701;// 送 好感度经验 礼物\
\
// ========================公告问卷调查(3800-3899)=============================\
    GetQuestion                      =3800;//获取问卷调查\
\
    // ========================好友(3900-3999)=============================\
    ApplyFriend                      =3900;// 申请好友\
    HandleApplyFriend                =3901;// 处理好友申请\
    ApplyFriendMsgPush               =3902;// 申请好友消息推送   （chat）\
    DeleteFriend                     =3903;// 删除好友\
    HandleApplyFriendMsgPush         =3904;// 处理 好友申请的消息推送  （chat）\
    DeleteFriendMsgPush              =3905;// 删除好友 的消息推送   （chat）\
    FriendJoinBlacklist              =3906;// 拉黑好友\
    RecommendFriend                  =3907;// 好友推荐    （弃用）\
    TrashReport                      =3908;// 举报好友\
    FriendOnlineState                =3909;// 好友状态信息 （弃用）\
    FriendStatePush                  =3910;// 好友状态推送信息  (chat)\
    ChangeFriendDesc                 =3911;// 修改好友备注\
    GetAllFriendInfo                 =3912;// 获取所有好友信息\
    GetOtherPlayerInfo               =3913;// 获取其他人信息 （1，添加， 2， 黑名单， 3，推荐， 4，最近组队）\
\
    // =========================cdk 兑换码(4000-4100)======================\
    ExchangeCdk                      =4000;\
    VersionCdk                       =4001;\
\
    /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
\
// ========================通知客户端消息===========================\
\
    ClientToGame                     = 3500;// 客户端到game服\
    ShowConfirm                      = 3502;// 服务器通知客户端显示确认弹窗\
\
\
// ========================聊天协议(30000-30999)=========================\
\
    SocketLogin                     =30001;//登录聊天服\
    ChatMessage                     =30002;//聊天消息\
    SystemMessagePush               =30003;//系统消息 （推送）\
    NoticeMessagePush               =30004;//通知消息（推送）\
    ChangeWorldChannel              =30005;//更换频道\
    ChatMessagePush                 =30006;//聊天消息推送 （推送）\
    NotLogin                        =30007;//未登录【主要是用于socket返回连接错误】\
    ChangeChatBlacklist             =30008;//更改黑名单列表\
    SocketHeartBeat                 =30009;//长连接心跳包\
    GetWorldChannel                 =30010;//获取频道信息\
    ServerFunctionPash              =30011;//服务功能开关集合(推送)\
    ClientAnnouncePush              =30012;//公告更新(推送)\
    ChatReport                      =30013;//举报聊天违规\
    APILBMessagePush                =30014;//推送 API聊天服务 开关状态\
    ServerActivityTimeMoudle        =30015;//推送统一开关时间（不压测）\
    FriendChat                      =30016;//好友聊天\
    TeamChat                        =30017;//组队聊天\
    GetFriendOfflineChat            =30018;//获取好友离线消息\
    GetTeamOfflineChat              =30019;//获取组队离线消息\
    FriendChat_S2C_Push             =30020;//好友消息推送\
    TeamChat_S2C_Push               =30021;//组队聊天消息推送\
    ChatChannel_Push                =30022;//聊天频道关闭消息\
    FriendInfoChangePush            =30023;//好友信息变化推送\
\
    // 约定30100-30199为队伍协议\
    //=================================组队开始==================================//\
\
    CreateTeam                      =30101;//创建队伍\
    GetTeamInfo                     =30103;//获取队伍信息\
    TeamInfo_push                   =30104;//队伍信息-推送[TCP]\
    InviteTeam                      =30105;//邀请者：邀请入队\
    InviteTeamShowTips_push         =30106;//给被邀请者推送：邀请入队提示-推送[TCP]\
    InviteTeamResult                =30107;//被邀请者：邀请入队选择结果[拒绝、同意]\
    InviteTeamResult_push           =30108;//给邀请者推送：邀请入队选择结果[拒绝、同意]-推送[TCP]\
    ApplyTeam                       =30113;//申请入队\
    ApplyTeamShowTips_push          =30116;//申请入队提示-推送[TCP]\
    ApplyTeamResult                 =30117;//申请入队结果\
    ApplyTeamResult_push            =30120;//申请入队结果-推送[TCP]\
    ClickBattleReady                =30121;//点击战斗准备\
    ClickBattleReady_push           =30124;//点击战斗准备-推送[TCP]\
    TeamCaptainKick                 =30125;//队长踢人\
    TeamCaptainKick_push            =30128;//队长踢人-推送[TCP]\
    ReplaceLeader                   =30129;//更换斯露德\
    ReplaceLeader_push              =30132;//更换斯露德-推送[TCP]\
    QuitTeam                        =30133;//退队\
    QuitTeam_push                   =30134;//退队-推送[TCP]\
    DissolveTeam                    =30137;//解散队伍\
    DissolveTeam_push               =30140;//解散队伍-推送[TCP]\
//    SetStrength                     =30141;//体力设置[默认、倍率、助战]\
//    SetStrength_push                =30142;//体力设置-推送[TCP]\
    ReplaceTeamTarget               =30143;//更换队伍目标\
    ReplaceTeamTarget_push          =30144;//更换队伍目标-推送[TCP]\
    BattleStart                     =30145;//战斗开始\
    AccessTeamPanel                 =30146;//进出队伍面板\
    AccessTeamPanel_push            =30148;//进出队伍面板-推送[TCP]\
    TeamCallBack                    =30149;//队长：召回\
    TeamCallBackShowTips_push       =30150;//给被召回者推送：召回提示-推送[TCP]\
    TeamCallBackResult              =30151;//被召回者：召回选择结果[拒绝、同意]\
    TeamCallBackResult_push         =30152;//给队长推送：召回选择结果[拒绝、同意]-推送[TCP]\
    ReplaceTeamCaptain              =30153;//转移队长\
    ReplaceLeaderState              =30154;//更换斯露德[状态]\
    ReplaceLeaderState_push         =30156;//更换斯露德[状态]-推送[TCP]\
    RecentInOneTeamPlayer           =30157;//最近组队人员\
    MemberStateChange_push          =30158;//队员状态变化-推送[TCP]\
    MemberPropChange_push           =30160;//队员单个属性变化-推送[TCP]\
\
\
    //=================================组队结束==================================//\
\
    //=================================匹配开始==================================//\
    StartMatch                      = 30200;//開始匹配\
    QuitMatch                       = 30201;//取消匹配\
    MatchEnter_push                 = 30202;//进入匹配隊列[TCP]\
    MatchExit_push                  = 30203;//退出匹配隊列[TCP](包括一切正常的，异常的退出)\
    //=================================匹配结束==================================//\
\
    //=================================付费商城开始==================================//\
    GetPayShopData                  = 30300;// 获取商店数据\
    BuyPayItem                      = 30301;// 购买付费道具\
    BuyCommonItem                   = 30302;// 购买普通道具\
    GetPayOrderReward               = 30303;// 获取付费订单奖励\
    GetPayShopDataAfterLogin        = 30304;// 获取商店数据-登录后专用\
    GetPeriodCardReward             = 30310;//获得周期卡奖励(月卡、周卡等)（当天和上次月卡奖励）\
    BuyPeriodCardPush               = 30311;//购买周期卡后推送消息\
\
\
  //===================================付费商城结束==================================//\
\
  //=================================  挂机  ==================================//\
    GetHangUpInfo                  = 30400;// 获取玩家挂机信息\
    StartHangUp                    = 30401;// 开始挂机\
    HangUpSpeedUp                  = 30402;// 挂机加速\
    ReceiveHangUpReward            = 30403;// 领取挂机奖励\
    HangUpCancel                   = 30404;// 挂机取消\
    HangUpSweep                    = 30405;// 挂机扫荡\
  //===============================  挂机结束  ================================//\
\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////\
\
    //========================战斗服务协议=============================\
    BattleErrorMessage                                  =11000;//战斗服错误提示\
    BattleHeartBeat                                     =11001;//战斗服心跳\
    BattleHeartBeat_S2C                                 =11002;//战斗服心跳\
    BattleLogin                                         =11003;//首次登录战斗服务器\
    BattleLogin_S2C                                     =11004;//首次登录战斗服务器\
    BattleScenePreEnter                                 =11005;//请求进入场景\
    BattleScenePreEnter_S2C                             =11006;//请求进入场景\
    BattleSceneEnter                                    =11007;//进入场景\
    BattleSceneEnter_S2C                                =11008;//进入场景\
    BattleSceneReconnect                                =11009;//重连进入场景（暂时不用）\
    BattleSceneReconnect_S2C                            =11010;//重连进入场景（暂时不用）\
    RaidPlayerLoadFinish_Push                           =11011;// 副本玩家加载完成\
    RaidAllPlayerLoadFinish_Push                        =11013;// 副本所有玩家加载完成\
    BattleRaidRunStart_Push                             =11014;// 战斗服副本开始进行\
    BattleSettle                                        =11018;// 客户端请求游戏服战斗结算\
    BattleLeave                                         =11019;// 离开战斗服\
    BattleSoloTest                                      =11020;// 单人战斗测试协议\
    TestBattleOver                                      =11021;// 测试战斗结束（机器人自测用）\
    KcpLogin                                            =11022;// KCP登录协议\
    KcpLogin_S2C                                        =11023;// KCP登录协议\
    NotifyTcpDisconnect                                 =11024;//通知TCP断开\
    KcpNetClose                                         =11025;//KCP网络关闭\
    KcpConnect													                =11026;//KCP握手\
    KcpConnect_S2C											                =11027;//KCP握手\
    StartSoloBattle                                     =11028;// 开始单人战斗\
    NotifyKcpNetReconnect                               =11029;//通知客户端KCP重建\
    StartBattle_Push                                    =11030;//开始战斗[服务器推送]\
    CloseBattleSettle                                   =11031;//关闭战斗结算界面\
    BattleLeaveFinish_S2C                               =11032;//完成退出战斗\
    MainTcpNetClose                                     =11033;//主TCP网络关闭\
    ClientMainTcpNetClose                               =11034;//客户端主动断开主TCP网络\
\
    //========================战斗服务协议=============================\
\
    //========================战斗Lua服务协议=============================\
    // 约定12000-13000位lua解析协议\
    //===================================================================\
    TestBattleDemo                                      =12000;// 测试战斗协议\
    TestBattleDemo_S2C                                  =12001;// 测试战斗协议\
    BattleLuaEvent_Push                                 =12002;// 战斗lua事件通知\
    PlayerChangeLeaderInput                             =12005;// 玩家切换角色\
    //GeneratePlayerNetId                                 =12006;//生成玩家netId\
    //GenerateMonsterNetId                                =12007;// 生成怪物netId\
    GotoNextBattleLevelStage                            =12008;// 进入下一个战斗关卡阶段\
    NotifyChangeBattleLevelStage                        =12009;// 通知切换战斗关卡阶段\
    PlayerChangeLeader_S2C                              =12010;// 服务器通知玩家切换角色\
    //UnitHurtInput                                     =12012; //Unit受到伤害\
    //UnitCureInput                                     =12013; //Unit受到治疗\
    UnitHurt_S2C                                        =12014; //Unit受伤广播\
    //UnitCure_S2C                                      =12015; //Unit治疗广播\
    UnitPatrol_S2C                                      =12016; //Unit开启巡逻\
    UnitPatrolCancel_S2C                                =12017; //Unit取消巡逻\
    MonsterMoveInput                                    =12018; //怪物移动输入(同步路点)\
    MonsterSyncPathPointList_S2C                        =12019; //服务器同步路点给所有客户端\
    BattlePlayAct_S2C                                   =12021; //服务端Logic -> 客户端Logic 战斗演出(通用)\
    BattlePlayActEnd                                    =12022; //客户端Logic -> 服务端Logic 战斗演出结束(通用)\
    BattlePlayPlot_S2C                                  =12023; //服务端Logic -> 客户端Logic 战斗演出(通用)\
    BattlePlayPlotEnd                                   =12024; //客户端Logic -> 服务端Logic 战斗演出结束(通用)\
    BattlePlayUi_S2C                                    =12025; //服务端Logic -> 客户端Logic 战斗UI(通用)\
    NotifyBattleOverResult_Push                         =12026;// 战斗服通知战斗结束\
    BattleOver                                          =12027;// 推送战斗结算数据;\
    BattleOver_Push                                     =12028;// 推送战斗结算数据;\
    PlayerPressKey                                      =12029;//玩家按键输入\
    UnitChaseTarget_S2C                                 =12030;//开始追逐目标\
    UnitStopChaseTarget_S2C                             =12031;//停止追逐目标\
    UnitEscapeTarget_S2C                                =12032;//开始远离目标\
    UnitStopEscapeTarget_S2C                            =12033;//停止远离目标\
    UnitMoveTowards_S2C                                 =12034;//开始指定移动\
    UnitStopMoveTowards_S2C                             =12035;//停止指定移动\
    MonsCastSkill_S2C                                   =12036;//怪物使用技能\
    BattleUnitCollision                                 =12037;//战斗单位碰撞协议\
    //UnitDead_S2C                                        =12038;//战斗单位死亡\
    PickUpDropFallObject                                =12039;//客户端Logic -> 服务端Logic 拾取掉落物\
    UnitFaceTarget_S2C                                  =12040;//开始转向目标\
    UnitStopFaceTarget_S2C                              =12041;//停止转向目标\
    BattleUnitMoveDataList                              =12042;//战斗单位移动数据\
    BattleUnitChangeDataList                            =12043;//战斗单位改变数据\
    BattleUnitKeyDataList                               =12044;//战斗单位关键数据\
    BattleFieldDataList                                 =12045;//战场数据\
    MonsPauseAi_S2C                                     =12046;//暂停怪物AI\
    MonsResumeAi_S2C                                    =12047;//恢复怪物AI\
    //OpenWarningUI_S2C                                   =12048;//打开高能预警\
    GenerateLevelTrigger_S2C                            =12049;//创建关卡触发器\
    UnitEnterLevelTrigger                               =12050;//单位进入关卡触发器\
    UnitLeaveLevelTrigger                               =12051;//单位离开关卡触发器\
    ServerBattlePlayActEnd_S2C                          =12052;//服务端Logic -> 客户端Logic 服务器停止战斗演出(通用)\
    ServerBattlePlayPlotEnd_S2C                         =12053;//服务端Logic -> 客户端Logic 服务器停止战斗剧情(通用)\
    BattleUnitTriggerEvent_V2S                          =12054;//显示层触发事件\
    //OpenBattleCommunicationUI_S2C                       =12055;//服务端Logic -> 客户端Logic 打开战斗内通讯\
    WeaponEnterOverLoad_S2C                             =12056;//武装进入过载(SL->CL)\
    WeaponExitOverLoad_S2C                              =12057;//武装退出过载(SL->CL)\
	UnitChangeStage_S2C        							=12058;//切换血量阶段\
    JizouChangeLeaderInput        						=12059;//极奏切换角色\
	BarrageTrigEvent_V2S                                  =12060;//弹幕触发事件输入\
	UnitEnterArea_V2S                                        =12061;//实体进入区域\
	UnitLeaveArea_V2S                                        =12062;//实体离开区域\
    UnitObjectDead_S2C                                  =12063;//object死亡\
    WeaponEnterRecoverEnergyState_S2C                   =12064;//武装进入能量恢复状态\
    WeaponExitRecoverEnergyState_S2C                    =12065;//武装退出能量恢复状态\
    CompleteBattleGuide                                 =12066;//完成战斗引导\
	TrigBattleGuide_S2C                                =12067;//触发战斗引导\
	LevelTrigUIOperate_S2C                                =12068;//关卡触发新手引导UI操作\
	LevelTrigControllerOperate_S2C                                =12069;//关卡触发玩家控制器操作\
    PlayerHitWall                                      =12070;//玩家撞墙\
	UnitChaseSubordinate_S2C                                 =12071;//开始跟随召唤者\
    UnitStopChaseSubordinate_S2C                             =12072;//停止跟随召唤者\
    ClientTimeSync                                      =12073;//客户端时间同步\
    GetMainLevelStarList_S2C                            =12074;//推送获取的三星列表\
	UnitMoveTowards_2_S2C                                 =12075;//开始平移行为\
    UnitStopMoveTowards_2_S2C                             =12076;//停止平移行为\
	UnitMoveNavPoints_S2C                                 =12077;//开始导航点移动\
    UnitStopMoveNavPoints_S2C                             =12078;//停止导航点移动\
    SyncLevelPauseTime_S2C                             =12079;//同步关卡暂停时间\
    DestroyBullet                             =12080;//消弹\
	BarrageBulletDead_V2S                             =12081;//可受击子弹死亡\
	UnitChangeBlockState_S2C                             =12082;//单位修改分块状态\
	BattleUnitHandleResult_S2C                           =12083;//单位交互结果\
	BattleUnitHandleInput_V2S                           =12084;//单位交互输入\
	LevelTrigNormalUIOperate_S2C                                =12085;//关卡触发一般UI操作\
	AutoFaceEnemy_V2S                                              =12086;//点击朝向目标\
  ChangeTag_S2C                                              =12087;//tag值改变\
  PlayerReconnectBattleRoomInfo_S2C                       =12088;//玩家断线重连恢复战场数据\
  ReloadBulletStart_S2C                                   =12089;// 换弹\
  ReloadBulletEnd_S2C                                     =12090;// 换弹\
  CallPathFind_S2C                        =12091;// 服务端发起寻路请求\
  CancelPathFind_S2C                        =12092;// 服务端取消寻路请求\
  LevelChangeTimeLimit_S2C                        =12093;// 关卡限制时间改变\
  BattleObjectHitWall                             =12094;//战斗单位碰撞\
  UnitPositionIllegal                             =12095;//战斗单位位置非法\
  AskBehaviorInfo									=12096;//获取行为树信息\
  PushBehaviorInfo_S2C				=12097; //行为树状态\
  WeaknessBroken_S2C				=12098; //弱点击破\
    UnitBornFinish_V2L									=12099;//unit创建完成通知逻辑核\
	UnitStartChangeStage_S2C        							=12101;//开始切换血量阶段\
    //========================战斗Lua服务协议=============================\
    // 约定13001-14000位战斗logic与view通讯协议\
    //===================================================================\
\
    CreatePlayerUnitL2S                                 =13000;// logic 通知 view 创建playerUnit\
    CreateMonsterUnitL2S                                =13001;// logic 通知 view 创建monsterUnit\
    PathFindRequest                                     =13002;// logic通知view寻路\
    PathFindRequestCancel                               =13003;// logic通知view取消寻路\
    PathFindResult                                      =13004;// view通知logic寻路结果\
    PlayerChangeLeaderL2S                               =13005;//通知显示层玩家换英雄\
    UnitHurtL2S                                         =13006;//通知显示层战斗单位受伤\
    //UnitCureL2S                                       =13007;//通知显示层战斗单位受到治疗\
    BattlePlayAct_L2S                                   =13008;//客户端Logic -> 客户端View 战斗演出(通用)\
    BattlePlayActEnd_S2L                                =13009;//客户端View -> 客户端Logic 战斗演出(通用)\
    BattlePlayPlot_L2S                                  =13010;//客户端Logic -> 客户端View 战斗剧情(通用)\
    BattlePlayPlotEnd_S2L                               =13011;//客户端View -> 客户端Logic 战斗剧情(通用)\
    BattlePlayUi_L2S                                    =13012;//客户端Logic -> 客户端View 战斗UI(通用)\
    BattleShowRunUi_L2S                                 =13013;//客户端Logic -> 客户端View 显示战斗操作UI\
    BattleOver_L2V                                      =13014;//客户端Logic -> 客户端View 战斗结束\
    PickUpFallObject_L2S                                =13015;//客户端View -> 客户端Logic 拾取掉落物\
    PickUpFallObject_S2L                                =13016;// 客户端View -> 客户端Logic 拾取掉落物\
    DropFallObject_L2S                                  =13017;// 客户端Logic -> 客户端View 掉落\
    ElementReact_L2S                                    =13018;// 客户端Logic -> 客户端View 元素反应\
    ElementAttach_L2S                                   =13019;// 客户端Logic -> 客户端View 元素附着\
    ElementRemove_L2S                                   =13020;// 客户端Logic -> 客户端View 元素移除\
    ElementReduceWarning_L2S                            =13021;// 客户端Logic -> 客户端View 元素衰减警告\
    BattleLogicClose_L2S                                =13022;// 客户端Logic -> 客户端 关闭逻辑核\
    CreateEmitter_L2S                                   =13023;// 客户端Logic -> 客户端 创建弹幕发射器\
    DestroyEmitter_L2S                                  =13024;// 客户端Logic -> 客户端 销毁弹幕发射器\
    StopEmitter_L2S                                     =13025;// 客户端Logic -> 客户端 停止弹幕发射器\
    CreateElementLightningBall_L2S                      =13026;// 客户端Logic -> 客户端View 产生闪电球（电磁反应）\
    OpenWarningUI_L2S                                   =13027;//打开高能预警\
    BattleUnitStateChange_L2S                           =13028;//同步战斗单位状态到显示层\
    ServerBattlePlayActEnd_L2V                          =13029;//客户端Logic -> 客户端View 服务端停止战斗演出(通用)\
    ServerBattlePlayPlotEnd_L2V                         =13030;//客户端Logic -> 客户端View 服务端停止战斗剧情(通用)\
    UnitDead_L2V                                        =13031;//客户端Logic -> 客户端View 单位死亡\
    BattleUnitPropChange_L2V                            =13032;//客户端Logic -> 客户端View 单位属性改变\
    BattleUnitSkillData_L2V						 	                =13033;//通知显示层战斗单位技能数据\
    BattleUnitBuffData_L2V							                =13034;//通知显示层战斗单位buff数据\
    BattleUnitSkillCoolDownData_L2V		                  =13035;//通知显示层战斗单位技能cd\
    OpenBattleCommunicationUI_L2V                       =13036;//通知显示层打开战斗内通讯\
    BattleLogin_L2V        								              =13037;//通知显示层打开战斗内通讯\
    WeaponEnterOverLoad_L2V                             =13038;//武装进入过载(CL->View)\
    WeaponExitOverLoad_L2V                              =13039;//武装退出过载(CL->View)\
	CreateLevelTrigger_L2V        								=13040;//通知显示层创建战场触发器\
	RemoveLevelTrigger_L2V        								=13041;//通知显示层删除战场触发器\
	UnitChangeStage_L2V        								=13042;//通知显示层切换血量阶段\
	BarrageTrigEvent_L2V        								=13043;//通知显示层弹幕触发事件\
	CreateAreaTrig_L2V                                           =13044;//通知显示层创建区域\
	OpenAreaTrig_L2V                                           =13045;//通知显示层开启区域\
	CloseAreaTrig_L2V                                           =13046;//通知显示层关闭区域\
	DestroyAreaTrig_L2V                                           =13047;//通知显示层销毁区域\
    UnitObjectDead_L2V                                  =13048;//通知显示层object死亡\
    TurnToTarget_V2L                                  =13049;//转向目标\
	TrigBattleGuide_L2V                                  =13050;//通知显示层触发新手引导\
	LevelTrigUIOperate_L2V                                 =13051;//关卡触发新手引导UI操作\
	LevelTrigControllerOperate_L2V                                 =13052;//关卡触发玩家控制器操作\
	CreateSceneObj_L2V        								=13053;//通知显示层创建场景物件\
	RemoveSceneObj_L2V        								=13054;//通知显示层删除场景物件\
	ChangeSceneObjState_L2V        						=13055;//通知显示层切换场景物件状态\
	ChangeBattleBGM_L2V        						=13056;//通知显示层切换战斗BGM\
    ElementCancelReduceWarning_L2V        						=13057;// 客户端Logic -> 客户端View 元素取消衰减警告\
    CreateElementIceWindBall_L2V        						=13058;// 客户端Logic -> 客户端View 创建冰风球\
	CreateAreaTriggerUnitL2V                          =13059;// 客户端Logic -> 客户端View 创建区域\
	CreateSummonedMonsUnitL2V                          =13060;// 客户端Logic -> 客户端View 创建召唤物\
    GetMainLevelStarList_L2V                        =13061;//客户端Logic -> 客户端View 推送获取的三星列表\
    BattleObjectBuffTrigger_L2V                        =13062;//客户端Logic -> 客户端View 战斗buff触发\
	CreateTargetPointUnitL2V                          =13063;// 客户端Logic -> 客户端View 创建目标点\
    LevelTarget_L2V                          =13064;// 客户端Logic -> 客户端View 关卡目标数据\
	UnitTargetChange_L2V                          =13065;// 客户端Logic -> 客户端View 单位目标改变\
	CreateShieldUnitL2V                          =13066;// 客户端Logic -> 客户端View 创建护罩\
    BattleObjectChangeAimMode_L2V                          =13067;// 客户端Logic -> 客户端View 模式切换\
	BattleObjectLifeReset_L2V                          =13068;// 客户端Logic -> 客户端View 生命周期重置\
    ClientStartTimeline_V2L                          =13069;// 客户端View -> 客户端Logic 客户端开始播放Timeline\
    ClientStopTimeline_V2L                          =13070;// 客户端View -> 客户端Logic 客户端结束播放Timeline\
	AimTarget_V2L									=13071;// 客户端View -> 客户端Logic 瞄准的目标\
    DestroyBullet_V2L									=13072;// 客户端View -> 客户端Logic 消弹消息\
    SyncLevelPauseTime_L2V									=13073;// 客户端Logic -> 客户端View 同步关卡暂停时间\
	UnitOpenBlock_L2V                               =13074;// 客户端Logic -> 客户端View 开启分块\
	UnitCloseBlock_L2V                               =13075;// 客户端Logic -> 客户端View 关闭分块\
	UnitOpenWeakness_L2V                               =13076;// 客户端Logic -> 客户端View 开启弱点\
	UnitCloseWeakness_L2V                               =13077;// 客户端Logic -> 客户端View 关闭弱点\
	UnitWeaknessHpChange_L2V                               =13078;// 客户端Logic -> 客户端View 弱点血量变化\
	BattleUnitHandleResult_L2V                           =13079;//单位交互结果\
	BattleUnitHandleStateChange_L2V                           =13080;//单位交互状态变化\
	LevelTrigNormalUIOperate_L2V                                 =13081;//关卡触发一般UI操作\
	ChangeTag_L2V                                              =13082;//关卡tag变化\
	CollectorCoinPointsChange_L2V                       =13083;//采集玩法玩家金币积分变化\
  ReloadBulletStart_L2V                                   =13084;// 客户端Logic -> 客户端View 换弹成功\
  PlayerLeave_L2V                                     =13085;// 客户端Logic -> 客户端View 玩家离开\
  PlayerEnter_L2V                                     =13086;// 客户端Logic -> 客户端View 玩家进入\
  PlayerReconnectBattleRoomInfo_L2V                 =13087;// 客户端logic -> 客户端view\
  ReloadBulletEnd_L2V                 =13088;// 客户端logic -> 客户端view\
  LevelChangeTimeLimit_L2V            =13089;// 客户端logic -> 客户端view\
  UnitChangeWarriorState_L2V        =13090; // 客户端logic -> 客户端view 勇士状态改变\
  StartFaceTarget_L2V        =13091; // 客户端logic -> 客户端view 开始朝向目标\
  StopFaceTarget_L2V        =13092; // 客户端logic -> 客户端view 结束朝向目标\
  PushBehaviorInfo				=13093; //逻辑核传行为树状态给表现层\
  UnitHideBlock_L2V                               =13094;// 客户端Logic -> 客户端View 隐藏分块\
  UnitHideBlockEnd_L2V                        =13095;// 客户端Logic -> 客户端View 隐藏分块结束\
  UnitHideBlockMesh_L2V                     =13096;// 客户端Logic -> 客户端View 隐藏分块网格\
  UnitHideBlockMeshEnd_L2V              =13097;// 客户端Logic -> 客户端View 隐藏分块网格结束\
  WeaknessBroken_L2V				=13098; //弱点击破\
  NotifyChangeBattleLevelStage_L2V				=13099; //通知切换阶段\
  ElementValueChange_L2V				=13100; //客户端Logic -> 客户端View 元素值改变\
  CollectorCoinNumChange_L2V                       =13101;//采集金币数量变化\
  RogueUnitSkillOpenedChange_L2V                       =13102;//肉鸽主公技开启状态变化\
  UnitCoverShieldChange_L2V                       =13103;// 客户端Logic -> 客户端View unit覆盖护罩变化\
  UnitStartChangeStage_L2V        								=13105;//通知显示层开始切换血量阶段\
//========================战斗Lua服务协议=============================\
\
\
  EditorGMTools_V2L                   =13999;// 客户端view -> 客户端logic 战斗内GM工具\
\
\
	//========================战舰协议 =============================\
	CreateBattleship		                =14001;//创建并进入当前战舰\
	BattleshipMove  		                =14002;//战舰上的移动（不压测）\
	NextFloorBattleship		                =14003;//战舰地图上的传送门跳转到下一层（不压测）\
	ExitBattleship  		                =14004;//退出战舰\
\
    BattleshipAppearNpc  		            =14005;//战舰npc信息集合推送（不压测）\
    BattleshipChangeNpc  		            =14006;//战舰npc信息集合推送（不压测）\
    BattleshiDeleteNpc  		            =14007;//战舰npc信息集合推送（不压测）\
\
    BattleshipAcceptTask          		            =14008;//接受战舰任务\
    BattleshipChangeTaskProgress     		        =14009;//修改任务进度\
    BattleshipSubmitTask          		            =14010;//提交战舰任务\
    BattleshipTaskTrace        		                =14011;//战舰任务追踪\
    BattleshipTaskGM            		            =14012;//修改任务状态gm使用（不压测）\
    BattleshipStoryOption          		            =14013;//战舰剧情选项协议\
    BattleshipStoryOver          		            =14014;//战舰剧情结束协议\
    BattleshipBeginStory          		            =14015;//战舰开始剧情的推送协议（不压测）\
    ChangeTaskCondition          		            =14016;//修改战舰任务进度的推送协议（不压测）\
    BattleshipDine              		            =14017;//战舰聚餐\
    BattleshipMenu              		            =14018;//获得了新的开放菜单 返回推送\
    GetShipStrength                                 =14019;// 间隔轮训获取当前战舰体力\
    GetTalentTreeReward                             =14020;// 获取天赋树激活奖励\
    BattleshipDispatchLeaer                         =14021;// 战舰派遣角色\
    BattleshipDispatchCancel                        =14022;// 战舰取消派遣任务\
    BattleshipDispatchReward                        =14023;// 领取战舰派遣任务奖励\
	//========================战舰协议=============================\
\
\
    //========================帮助中心=============================\
    GetHelpCenterReward                     =15001;//获取帮助ID奖励\
    HelpCenter_PUSH                         =15002;// 帮助中心数据推送\
    SetHelpIdActiveState                    =15003;// 设置帮助Id 为已激活未查看状态\
    //========================帮助中心=============================\
    //========================悬赏关卡=============================\
    OverBountyMisson                        =16001;//悬赏任务完成战斗\
    BountyMissionInfoPush                   =16002;//悬赏任务信息推送\
    //========================悬赏关卡=============================\
    //========================武器关卡=============================\
    OverWeaponLevel                         =17001;//武器关卡结算\
    GetWeaponLevelReward                    =17002;//领取武器关卡通关奖励\
    //========================武器关卡=============================\
    //========================限时关卡=============================\
    OverLimitedTimeLevel                    =18001;//限时关卡结算\
    RefreshLimitedTimeLevel_S2C             =18002;//刷新新的限时关卡任务\
    //========================限时关卡=============================\
    //========================多人pve关卡=============================\
    OverMultiPveBossLevel                   =19001;//多人pve关卡结算\
    //========================多人pve关卡=============================\
\
       //========================乌拉拉活动=============================\
       GetPatrol                                    =20001;//获取乌拉拉活动信息\
       JoinPatrol                                   =20002;//参加乌拉拉活动\
       GetPaceReward                                =20003;//领取进度奖励\
       OverBattlePatrol                             =20004;//乌拉拉战斗完成协议\
       OverBattlePatrolPush                         =20005;//乌拉商店拉退出战斗 单人关卡/队伍关卡 推送\
       CheckSpeedUpOrTeamLevel                      =20006;//检查到队友帮忙完成的个人加速关卡或者队伍关卡\
       GetQueryRecommendTeam                        =20007;//查询推荐队伍信息\
       PatrolQuitTeam                               =20008;//乌拉拉退队\
       GetSimpleTeamS                               =20009;//获取简单的队伍信息（目前仅用于推荐队伍）\
       GetPlayerInviteTeamData                      =20010;//获取乌拉拉邀请入队信息\
       GetPatrolTeam                                =20011;//获取乌拉拉队伍信息（用于打开乌拉拉面板时更新角色信息）\
       PatrolSeasonOver                             =20012;//乌拉拉赛季结束\
       //========================乌拉拉活动=============================\
       //========================运营活动=============================\
       GetAllActivity                               =21001;//获取所有活动简要信息以及第一个活动详细信息\
       GetTargetActivityInfo                        =21002;//获取指定活动详细信息\
       ActivityTaskPush                             =21003;//活动任务推送消息\
       GetTaskReward                                =21004;//领取活动任务奖励\
       ActivitySign                                 =21005;//活动签到\
       GetSingleActivityReward                      =21006;//个人进度活动领奖\
       SingleActivityPush                           =21007;//个人进度推送消息\
       SignActivityPush                             =21008;//签到活动推送消息\
       NormalActivityPush                           =21009;//玩法复玩推送\
       ActivityReplay                               =21010;//玩法复玩消耗\
       ActivityReplayRedDot                         =21011;//玩法复玩红点\
       GetBingo                                     =21012;// bingo 随机翻牌\
       GetBigBingoReward                            =21013;//领取大Bingo奖\
       ResetBingoRound                              =21014;//重置轮次\
       ActivityReplayReward                         =21015;//玩法复玩领奖\
       //========================运营活动=============================\
       //========================Rogue=============================\
       OverRogueLevel                               =22000;//Rogue关卡结算\
       //========================Rogue=============================\
\
  //========================排行榜-服务器内部通讯协议[注：来回消息号不能一样]=============================\
\
  AddRankScore_C2S                                      = 880001; //增加排行榜积分-请求\
  AddRankScore_S2C                                      = 880002; //增加排行榜积分-响应\
  SelectRankList_C2S                                    = 880003; //查询排行榜列表-请求\
  SelectRankList_S2C                                    = 880004; //查询排行榜列表-响应\
  GameSyncRedisRank2Cache_SUB                           = 880006; //game服 同步redis中排行榜的数据到内存的发布、订阅\
  WorldSyncRedisRank2Cache_SUB                          = 880008; //world服 同步redis中排行榜的数据到内存的发布、订阅\
  SelectRankZoneList_C2S                                = 880009; //查询排行榜列表-请求\
  SelectRankZoneList_S2C                                = 880010; //查询排行榜列表-响应\
  GameSyncRedisRankZone2Cache_SUB                       = 880012; //game服 同步redis中排行榜 小组 的数据到内存的发布、订阅\
  WorldSyncRedisRankZone2Cache_SUB                      = 880014; //world服 同步redis中排行榜 小组 的数据到内存的发布、订阅\
\
  //========================排行榜-服务器内部通讯协议=============================\
    //========================支付商店sdk支付协议=============================\
        PaymentOverPush                              =40001;//订单完成推送消息给客户端 推送\
        GetWaitOrderData                             =40002;//获取待发货的支付订单信息\
        PaymentResults                               =40003;//订单支付结果（目前只有dev模式下会发送）\
        QRcodeCheckPayPC                             =40004;//pc二维码信息验证接口\
        CancelPaymentPC                              =40005;//pc取消支付\
    //========================支付商店sdk支付协议=============================\
    GetFirstRechargeReward                               =40051;//领取首冲奖励\
    FirstRechargeStatePush                               =40052;//完成首冲后推送此消息\
\
    //========================perk协议=============================\
    DecomposePerk                                    =60001;//分解Perk\
    SwitchPerk                                       =60002;//SwitchPerk\
    GetPerkInfoListPage                              =60003;// 登录分批Perk请求数据\
    AddPerkPush                                      =60004;// 获得perk的推送\
    PerkLock                                         =60005;// perk锁\
    WearPerkUpLevel                                  =60006;// 符灵 镶嵌升词缀/升级词缀\
    DecomposePerkAffix                               =60007;// 符灵 剥离返还词缀/分解词缀\
    DeformationPerk                                  =60008;// 符灵变形\
    ResetDeformationPerk                             =60009;// 重置符灵变形\
    //========================perk协议=============================\
  //======================赛季===================================================================\
  BuySeasonExp                                          =890001;// 购买赛季经验\
  SwitchSeasonTalent                                    =890002;// 切换赛季天赋\
  GetSeasonTaskReward                                   =890003;// 获取赛季任务奖励\
  WatchSeasonPlot                                       =890004;// 查看赛季剧情\
  UpgradeSeasonLevel                                    =890005;// 领取赛季等级奖励\
  CompetitionSeasonPush                                 =890006;// 赛季信息推送\
  OpenSeasonHighReward                                  =890007;// 赛季高级版解锁\
  //======================赛季===================================================================\
   BuyBattlePassLevel                                   =890101;// 购买通行证等级\
   GetBattlePassLevelReward                             =890102;//领取通行证等级奖励\
   GetBattlePassTaskReward                              =890103;//获取通行证任务奖励\
   GetBattlePassInfoListPage                            =890105;// 登录分批通行证请求数据\
   BattlePassInfo_Push                                  =890106;//数据推送\
   GetBattlePassBox                                     =890107;//领取自选宝箱\
  //======================== 小战场 ==========================================\
    OpenSmallBattleGround                  = 9000001;  // 打开小战场\
    HistorySmallBattle                     = 9000002;  //查看往期数据\
    OverSmallBattle                        = 9000003;  //结束小战场\
    NowSmallBattle                         = 9000004;  //当期总榜数据\
    AutoStartSmallBattle                   = 9000005;  //小战场自动作战\
    OpenSmallBattlePanel                   = 9000006;  //打开小战场面板\
    LoginOpenSmallBattlePanel              = 9000007;  //登录小战场的时候返回时间\
\
  // ============大战场 ============================\
  OpenAbyssFront  = 9100001;  // 打开大战场\
  HistoryAbyssFront = 9100002; //查看大战场\
  StartAbyssFront  = 9100003; //开始大战场\
  OverAbyssFront = 9100004; // 结束大战场\
  SaveAbyssFront = 9100005; // 保存大战场\
  SweepAbyssFront = 9100006; // 扫荡大战场\
  OpenRankAbyssFront = 910007; // 获取排行榜的玩家信息\
  ResetBossAbyssFront = 910008; // 重置某个boss的分数\
  //======================== 团本 ==========================================\
    CreateGuildWarTeam                                            =300001;//创建队伍\
    GetGuildWarInviteList                                         =300002;//队伍邀请列表请求\
    AgreeJoinGuildWarTeam                                         =300003;//玩家同意或拒绝队伍方发起的入队邀请\
    GetMyGuildWarTeam                                             =300004;//我的队伍-获取玩家列表\
    GuildWarTeamRename                                            =300005;//修改队伍名\
    AddGuildWarViceCaptain                                        =300006;//任命副队\
    MoveOutGuildWar                                               =300007;//将队友踢出队伍\
    TransferGuildWarCaptain                                       =300008;//转让队长\
    LeaveGuildWarTeam                                             =300009;//自己退出当前队伍\
    GetGuildWarTeamApplyList                                      =300010;//队伍内-获取入队申请列表\
    GuildWarToAgreeApply                                          =300011;//队伍内-单个同意或拒绝玩家的入队申请\
    GuildWarToBatchAgreeApply                                     =300012;//队伍内-批量同意或拒绝玩家的入队申请\
    ResetGuildWarTeamVerify                                       =300013;//修改入队权限\
    GetGuildWarTeamList                                           =300014;//获取未满员的队伍列表\
    SearchGuildWarTeam                                            =300015;//搜索团队根据编号\
    ApplyJoinGuildWarTeam                                         =300016;//申请加入队伍-需要审批\
    AddGuildWarTeam                                               =300017;//加入队伍-不需要审批\
    GetMyGuildWarApplyList                                        =300018;//我的申请列表\
    GetGuildWarUnInviteList                                       =300019;//可邀请的玩家列表\
    ToInvitePlayer                                                =300020;//发起邀请\
    CancelApply                                                   =300021;//取消申请\
    RejectInvite                                                  =300022;//拒绝任何邀请\
    CancelGuildWarViceCaptain                                     =300023;//取消副队长\
    SearchGuildWarTeamPlayer                                      =300024;//搜索玩家\
    //GetStageFirstClearList                                        =300025;//查询团本关卡三星首通等信息\
    SendStageReward                                               =300026;//玩家领取团本关卡奖励\
    SetCardPoolLeader                                             =300027;//更换共用卡池角色卡\
    SetMergeTeam                                                  =300028;//队伍合并开关 1允许合并 0不允许\
    SetAcceptTeam                                                 =300029;//接受组队开关 1开 0关\
    GetGuildWarLevelList                                          =300030;//团本主页关卡数据\
    ChoiceFormation                                               =300031;//进关选择的编队\
    GetGuildWarRank                                               =300032;//队伍排名\
    GetGuildWarRankStar                                           =300033;//队内星星数排名\
    GetGuildWarRankLeaderUse                                      =300034;//借用次数排名\
    AddGuildWarTeamLikesCount                                     =300035;//玩家对团本队伍排行前三点赞\
    GetGuildWarTeamLikesList                                      =300036;//玩家对团本队伍排行前三列表\
    GetRewardMailStage                                            =300037;//邮件-竞速结束阶段领取关卡奖励\
    GetRewardMailRank                                             =300038;//邮件-竞速结束阶段领取排行榜奖励\
    GuildWarApplyRedDot_Push                                      =300039;//申请数据更新提示\
    GuildWarInviteRedDot_Push                                     =300040;//邀请数据更新提示\
    GetGuildWarTeam                                               =300041;//根据guildID获取队伍数据\
    MoveOutGuildWar_Push                                          =300042;//踢出退伍消息推送\
    AgreeAddTeam_Push                                             =300043;//玩家的入队申请被队伍方同意消息推送\
    GuildWarStatusRedDot_Push                                     =300044;//团本状态切换推送\
  //======================== 团本 ==========================================\
\
\
  // =================== 道具合成 ========================\
  ItemCraft  = 9200001;\
\
  //============Roguelike=============================================\
  OpenNewGame                                            =9300001;//选完难度， 开局游戏\
  SelectBuff                                             =9300002;//选择buff\
  SelectEvent                                            =9300003;//选择事件\
  OpenExternalTalentSkill                                =9300004;//解锁局外养成天赋\
  GetRogueLikeHandbookReward                             =9300005;//获取图鉴奖励\
  OpenPlot                                               =9300006;//解锁剧情\
  SetBarrierStage                                        =9300007;//设置关卡阶段\
  SelectRogueLeaders                                     =9300008;//选择Rogue备战角色\
  GetRogueInfoListPage                                   =9300009;// 登录分批请求肉鸽数据\
  OpenBuffPanel                                          =9300010;// 打开指定的buff 类型面板\
  SelectExtraBuff                                        =9300011;// 选择 累计额外加成buff\
  SelectBuffType                                         =9300012;// 选择buff 类型，用于有指定天赋的时候 进行选择\
  StartRogueBattle                                       =9300013;// 开始肉鸽战斗\
  GetOpenPlotReward                                      =9300014;// 领取剧情奖励\
  HandOverRogue                                          =9300015;// 客户端主动结束 赛季\
  StartRogueEvent                                        =9300016;// 开始事件关\
  OverRogueEvent                                         =9300017;// 结束事件关\
  GetRogueLikeEventHandbookReward                        =9300018;// 领取 事件 图鉴奖励\
  BuffAddType_PUSH                                       =9300019;// buff 选择类型推送\
  GetRogueActivePointReward                              =9300020;// 领取肉鸽活跃点奖励\
  DestroyBuff_PUSH                                       =9300021;// 肉鸽消除buff 推送消息\
  RogueChangeJoinLevel_PUSH                              =9300022;// 肉鸽 活跃点匹配等级改变 推送消息\
  //============Roguelike=============================================\
\
}\
\
message NoneCmdMsg\
{\
    optional int64 none=1;\
}\
\
\
\
"
return protoStr