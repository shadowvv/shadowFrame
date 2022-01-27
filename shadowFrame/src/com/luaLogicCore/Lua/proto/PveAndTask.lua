local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
\
// //pve创建地图并进入地图\
// message InitPVEMap\
// {\
// 	required int32 id=1;//Map_Level主键id\
// 	repeated int32 formationIds=2;//阵型id\
// }\
// //pve创建地图并进入地图\
// message InitPVEMap_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMapInfo pveMapInfo=2;//pve地图信息\
// 	optional Rewards reward=3;//奖励(扣除体力参数)\
// }\
\
// //pve地图上的移动队伍\
// message PVEMoveFormation\
// {\
// 	required int32 formationId=1;//阵型id\
// 	repeated ProtoHashInt2Int routes = 2;//寻路路线（寻路位置要有序，不包含当前所在位置，index-1为终点）\
// }\
// //pve地图上的移动队伍（）\
// message PVEMoveFormation_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMapInfo pveMapInfo=2;//pve地图信息\
// }\
\
// //pve地图遇敌逃跑\
// message PVEMeetMonsterEscape\
// {\
// 	required int32 formationId=1;//阵型id\
// }\
// //pve地图遇敌逃跑\
// message PVEMeetMonsterEscape_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional int32 formationId=2;//阵型id\
// 	optional bool isEscape=3;//是否逃跑成功\
// }\
\
\
// //退出pve地图(删除地图)\
// message ExitPVEMap\
// {\
// 	required int32 pveId=1;//关卡ID\
// }\
// //退出pve地图(删除地图)\
// message ExitPVEMap_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	required int32 pveId=2;//关卡ID\
// }\
\
// //pve地图信息发生改变\
// message ChangePVEMapInfo_Push\
// {\
// 	optional int32 type=1;//0=不退出1=小队全部死亡2=boss死亡\
// 	optional PVEMapInfo pveMapInfo=2;//pve地图信息\
// }\
\
\
// //pve信息发生改变(全地图结束)\
// message ChangePVEMap_Push\
// {\
// 	optional PVEMap pveMap=1;//已完成pve信息\
// 	repeated int32 starIds=2;//首次获得奖励的星星id集合(可能为空)\
// 	optional Rewards starReward=3;//首星奖励信息(可能为空)\
// }\
\
// //处理副本地图中的事件(暂只处理了宝箱)\
// message EventHandlePVE\
// {\
// 	required int32 x=1;//地图位置信息\
// 	required int32 y=2;//地图位置信息\
// 	required int32 option = 3;//选项\
// 	optional int32 formationId=4;//小队id\
// 	optional bool result=5;//npc小队战斗模式下战斗结果\
// }\
// //处理副本地图中的事件(暂只处理了宝箱)\
// message EventHandlePVE_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional int32 type=2;// 1=宝箱奖励 2= 事件中奖励 3=事件buff 4=事件装置 5=装置宝箱 6 = pve NPC战斗\
// 	optional PVEMapInfo pveMapInfo=3;//pve地图信息\
// 	optional Rewards reward=4;//奖励\
// 	optional int32 typeId=5;//根据type获取是谁的id\
// }\
\
\
// //开始攻打关卡前\
// message StartAttackPVE\
// {\
// 	required int32 pveId=1;//关卡ID（battleLevelId）\
// 	required int32 formationId=2;//阵型id（测试提交）\
// 	required ProtoHashInt2Int postionId = 3;//攻打位置信息 key=x value=y\
// }\
// //开始攻打关卡前\
// message StartAttackPVE_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//扣除的东西（压力）\
// 	repeated PriorReward priorRewardS=3;//用于实现事先计算好的奖励(怪物宝箱)\
// 	repeated BattleAttribute battleAttributes = 4;//战斗内带出的属性值已武将为单位\
// }\
\
// //攻打关卡\
// message AttackPVE\
// {\
// 	required int32 pveId=1;//关卡ID（battleLevelId）\
// 	required bool result=2;//攻打结果\
// 	optional int32 attackTime=3;//攻打时长(秒)\
// 	repeated int32 starArray=4;//战斗星级列表（1，2,3） good  1颗星   great 2颗星  ex3颗星\
// 	required int32 formationId=5;//阵型id\
// 	required int32 pressurePoint=6;// 压力点\
// 	required ProtoHashInt2Int postionId = 7;//攻打位置信息 key=x value=y\
// 	optional FightPar fightPar=8;//战斗参数\
// 	required int32 option = 9;//事件选项（如果是非事件类战斗此值为0）\
// 	repeated int32 rewardBoxS=10;//战斗中获得的宝箱中的indexid组\
// 	repeated BattleAttribute battleAttributes = 11;//战斗内带出的属性值已武将为单位\
// 	repeated ProtoHashInt2Int battleStateMap = 12;//战斗中触发的状态类型 ：key=1.冷冻2.爆炸 3.共鸣  value=状态值\
// 	optional int32 battleTime=13;//战斗持续时间包括进场和出场特效时间（秒）\
// 	optional string verification=14;//验证信息（json串用于验证初始属性列表是否一致）\
// 	optional int32 useSkillNum=15;//战斗内使用技能次数\
// 	optional string skyBox=16;//天空盒类型\
// 	optional int32 monsterScore=17;//本场战斗怪物得分\
// 	repeated int32 deathS=18;//战斗中死亡的武将id列表\
// 	// repeated LeaderFightCheckProp leaderFightCheckProp=7;//武将战斗属性校验\
// }\
// //攻打关卡返回\
// message AttackPVE_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional int32 pveId=2;//关卡ID\
// 	optional bool result=3;//攻打结果\
// 	optional Rewards reward=4;//奖励(战斗中获得的宝箱奖励包含在这个属性中)\
// 	// repeated LeaderUpExp leaderUpExps=5;//武将经验集合\
// 	repeated int32 starArray=6;//战斗星级列表（1，2,3）\
// 	optional bool mapOver=7;//true=整个地图结束\
// }\
\
\
// //设置pve默认显示小队信息(编队需求修改没有默认小队了，整体关卡和编队完成后删除此协议)\
// message PVEDefFormation\
// {\
// 	repeated int32 formationIds=1;//阵型id集合\
// }\
// //设置pve默认显示小队信息\
// message PVEDefFormation_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	repeated int32 formationIds=2;//阵型id集合\
// }\
\
\
// //更改章节红点\
// message UpRedDot\
// {\
// 	required int32 redDotChapterId=1;//已经不显示红点的章节ID\
// }\
// //更改章节红点返回\
// message UpRedDot_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	repeated int32 redDotChapterIdS=2;//章节红点集合\
// }\
\
// //领取章节奖励\
// message GetChaperReward\
// {\
// 	required int32 charperRewardId=1;//章节奖励ID\
// }\
// //领取章节奖励返回\
// message GetChaperReward_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//奖励\
// 	repeated int32 ChatperRewardList=3;//领取过的章节奖励\
// }\
\
\
//任务状态数据变更推送\
message TaskStateChange_S2C\
{\
	optional Task  task=1;		//任务结构\
}\
\
//提交任务\
message CommitTask\
{\
	required int32 taskId=1;//任务ID\
}\
\
//提交任务返回\
message CommitTask_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards reward=2;//奖励\
	optional Task  task=3;	//任务结构\
}\
\
//领取日常活跃点奖励\
message GetDayTaskPoint\
{\
	repeated int32 id=1;//表ID\
}\
//领取日常活跃点奖励返回\
message GetDayTaskPoint_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards reward=2;//奖励\
	optional Task  task=3;	//任务结构\
}\
\
// //领取成就点奖励id\
// message GetAchievementsTask\
// {\
// 	required int32 id=1;//表ID\
// }\
// //领取成就点奖励id返回\
// message GetAchievementsTask_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//奖励\
// 	optional Task  task=3;	//任务结构\
// }\
\
// //势力改变推送\
// message ChangePower_S2C_Push\
// {\
// 	required Power power=1;//势力信息\
// }\
\
// //小队压力点改变推送\
// message ChangePressurePoint_S2C_Push\
// {\
// 	repeated ProtoHashInt2Int pressurePoints=1;//压力点集合（key = 小队id value = 压力点）\
// }\
\
// //通过剧情关卡\
// message AdoptPlotPVE\
// {\
// 	required int32 id=1;//地图唯一id map_level\
// }\
// //通过剧情关卡\
// message AdoptPlotPVE_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMap pveMap=2;//地图信息\
// 	optional Rewards reward=3;//奖励\
// } \
\
\
// //通过地图id获取参战武将（武将信息为初始化地图时的信息）\
// message GetMapLeaderS\
// {\
// 	required int32 mapId=1;//地图id\
// }\
// //通过地图id获取参战武将（武将信息为初始化地图时的信息）\
// message GetMapLeaderS_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	repeated LeaderInfo LeaderInfo=2;//初始化副本时的小队武将信息\
// 	repeated WeaponInfo weaponInfos=3;//初始化副本时的小队武将式仗信息\
// }\
\
\
// //地图结束 保存/丢弃 扫荡信息\
// message SaveOrExitBattle\
// {\
// 	required int32 mapId=1;//地图id\
// 	required int32 type=2;//1=保存2=丢弃\
// 	required string fileName=3;//文件名字\
// 	required string sweepMD5=4;//扫荡文件的md5码（用于判断客户端文件是否是最新）\
// }\
// //地图结束 保存/丢弃 扫荡信息\
// message SaveOrExitBattle_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMap pveMap=2;//已完成pve信息\
// }\
\
\
\
// //地图结束,保存本场扫荡信息，不包括扫荡文件和名字，删除记录在本场的场次信息（删除pvemapInfo）\
// message SaveOrExitPVE\
// {\
// 	required int32 mapId=1;//地图id\
// 	required int32 type=2;//1=保存2=丢弃\
// }\
// //返回 地图结束,保存本场扫荡信息，不包括扫荡文件和名字，删除记录在本场的场次信息（删除pvemapInfo）\
// message SaveOrExitPVE_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMap pveMap=2;//已完成pve信息\
// }\
\
// //上传扫荡文件完成/失败后(上传有时效性)\
// message UpLoadMopUp\
// {\
// 	required int32 mapId=1;//地图id\
// 	required int32 error=2;//1=成功，2=oss报错，3=尝试多次后一直失败，4=扫荡文件不存在 ， 5= 超时deault_value=10192\
// 	required string fileName=3;//文件名字\
// 	required string sweepMD5=4;//扫荡文件的md5码（用于判断客户端文件是否是最新）\
// 	required string showName=5;//显示文件名字，用于显示在邮件中的文件名\
// }\
// //返回 上传扫荡文件完成/失败后(上传有时效性)\
// message UpLoadMopUp_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional int32 mapId=2;//mapId\
// 	required int32 error=3;//1=成功，2=oss超时，3=尝试多次后一直失败，4=扫荡文件不存在\
// 	optional PVEMap pveMap=4;//已完成pve信息\
// }\
\
\
// //开始扫荡\
// message StartSweeping\
// {\
// 	required int32 mapId=1;//地图id\
// }\
\
// //开始扫荡返回\
// message StartSweeping_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMapVideotape pveMapVideotape=2;//副本扫荡信息\
// 	optional Rewards reward=3;//扣除的体力需要同步到体力属性\
// }\
\
// //执行走步骤（执行此房发会解析一个步骤结构）\
// message ExecuteWalking\
// {\
// 	required int32 mapId=1;//地图id\
// 	required int32 formationId=2;//战斗步骤发送id用于验证数据\
// 	repeated BattleAttribute battleAttributes = 3;//战斗内带出的属性值已武将为单位\
// }\
\
// //执行走步骤（执行此房发会解析一个步骤结构）\
// message ExecuteWalking_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMapInfo pveMapInfo=2;//地图信息信息\
// 	optional Rewards reward=3;//奖励最后一次增加经验\
// 	repeated BattleAttribute battleAttributes = 4;//战斗内带出的属性值已武将为单位\
// }\
\
\
// //玩家扫荡中接手扫荡\
// message TakeOverSweep\
// {\
// 	required int32 mapId=1;//地图id\
// }\
\
// //玩家扫荡中接手扫荡\
// message TakeOverSweep_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMapInfo pveMapInfo=2;//地图信息\
// }\
\
// //pve地图首次完美通关奖励\
// message OnceReward_Push\
// {\
// 	optional int32 mapLevelId=1;//mapLevel唯一id\
// 	optional Rewards reward=2;//奖励\
// }\
\
// //战斗结束后给与指挥官经验和完美通关奖励\
// message addPVEOverLeaderEXP_Push\
// {\
// 	optional RewardItem playerExp=1;//指挥官经验\
// 	optional Rewards perfectReward=2;//完美通关奖励（已废弃需删除）\
// 	optional Rewards overGiftBag=3;//地图最后一场战斗结束s级评价给予一个宝箱\
// }\
\
// //获取地图首次通关奖励\
// message GetFirstAdoptReward\
// {\
// 	required int32 mapLevelId=1;//副本地图id\
// }\
// //获取地图首次通关奖励返回\
// message GetFirstAdoptReward_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//奖励\
// 	optional PVEMap pveMap=3;//副本信息\
// }\
\
// //获取地图百分百通关奖励\
// message GetPercentAdoptReward\
// {\
// 	required int32 mapLevelId=1;//副本地图id\
// }\
// //获取地图百分百通关奖励返回\
// message GetPercentAdoptReward_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//奖励\
// 	optional PVEMap pveMap=3;//副本信息\
// }\
\
// //添加事件章节\
// message AddEventChapter\
// {\
// 	required int32 id=1;//事件章节id\
// }\
// //获取地图百分百通关奖励返回\
// message AddEventChapter_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional int32 id=2;//事件章节id\
// }\
\
// //添加剧情对话\
// message AddPlotDialogue\
// {\
// 	required string plotData=1;//剧情对话内容\
// }\
// //添加剧情对话返回\
// message AddPlotDialogue_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional string plotData=2;//剧情对话内容\
// }\
\
// //摧毁未使用的装置\
// message KillDevice\
// {\
// 	required int32 rank=1;//排序位置1,2,3\
// }\
// //摧毁未使用的装置返回\
// message KillDevice_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	repeated ProtoHashInt2Int deviceList = 2;//可使用的装置id集合key=排序位置1,2,3,value=装置id\
// }\
\
// //使用装置/替换buff\
// message UseReplaceDevice\
// {\
// 	required int32 id=1;//装置ID/buffid\
// 	required int32 type=2;//1=装置 2=buff\
// 	required int32 squadId=3;//小队id\
// 	required int32 replaceId=4;//要替换的buffId\
// }\
// //使用摧毁=装置/buff 返回\
// message UseReplaceDevice_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional PVEMapInfo pveMapInfo=2;//副本信息\
// }\
\
\
//获取阿里云临时钥匙\
message GetAliyunOSSKey\
{\
}\
//阿里云临时钥匙 返回\
message GetAliyunOSSKey_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional AliyunOSSKeyInfo oSSKeyInfo=2;//阿里云临时钥匙(用户存储副本扫荡信息)\
}\
\
\
// //发放剧情对话奖励\
// message SendDialogueReward\
// {\
// 	required int32 id=1;//剧情对话组id\
// 	required int32 x=2;//坐标点位置x\
// 	required int32 y=3;//坐标点位置y\
// 	required int32 dialogType=4;///坐标点剧情类型 0=没有剧情1=战斗前剧情2=战斗后剧情\
// }\
// //发放剧情对话奖励 返回\
// message SendDialogueReward_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional bool isNotShow=2;//是否有展示的奖励数据\
// 	optional PVEMapPositionInfo pveMapPositionInfo = 3;//操作坐标位置\
// }\
\
// //获取已经发放的剧情对话奖励\
// message GetDialogueReward\
// {\
// 	required int32 id=1;//剧情对话组id\
// }\
// //获取已经发放的剧情对话奖励 返回\
// message GetDialogueReward_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//奖励(此奖励已发放)\
// }\
\
// //记录地图内对话（目前写为id只能是唯一的）\
// message SavePVEPlot\
// {\
// 	required int32 id=1;//对话组id\
// }\
// //记录地图内对话（目前写为id只能是唯一的） 返回\
// message SavePVEPlot_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	repeated int32 plots=2;//完成的对话集合\
// }\
\
// //开始战斗活动前\
// message StartPVEActivity\
// {\
// 	required int32 battleId=1;//关卡活动ID（special_Battle.Id）\
// 	required int32 formationId=2;//阵型id\
// }\
\
// //开始战斗活动前\
// message StartPVEActivity_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	optional Rewards reward=2;//扣除的东西\
// }\
\
// //结束战斗活动后\
// message OverPVEActivity\
// {\
// 	required int32 battleId=1;//关卡活动ID（special_Battle.Id）\
// 	required bool result=2;//攻打结果\
// 	repeated int32 starArray=3;//战斗星级列表（1，2,3）\
// 	required int32 formationId=4;//阵型id\
// 	optional FightPar fightPar=5;//战斗参数\
// }\
// //结束战斗活动后返回\
// message OverPVEActivity_S2C\
// {\
// 	required int32 errCode=1;//错误号\
// 	required int32 battleId=2;//关卡活动ID（special_Battle.Id）\
// 	optional bool result=3;//攻打结果\
// 	optional Rewards reward=4;//奖励\
// 	repeated int32 starArray=5;//战斗星级列表（1，2,3）\
// 	optional PVEActivityInfo pveActivityInfo=6;//活动战斗对象\
// }\
\
// //活动战斗对象发生改变\
// message ChangePVEActivity_Push\
// {\
// 	optional PVEActivityInfo pveActivityInfo=1;//活动战斗对象\
// }\
\
\
//开始MainLevel战斗前\
message StartMainLevel\
{\
	required int32 battleId=1;//关卡ID（MainLevel.Id）\
	required int32 formationId=2;//阵型id\
}\
\
//开始MainLevel战斗前返回\
message StartMainLevel_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional WarCheckInfo warCheckInfo=2;//战验结构\
	repeated LeaderInfo LeaderInfoList=3;//开始副本时的小队武将信息\
	optional int64 stageUniqueId=4;//副本关卡唯一Id\
}\
\
//结束MainLevel战斗后\
message OverMainLevel\
{\
	required int32 battleId=1;//关卡ID（MainLevel.Id）\
	required bool result=2;//攻打结果\
	repeated int32 starArray=3;//战斗星级列表（1，2,3）\
	required int32 formationId=4;//阵型id\
	optional FightPar fightPar=5;//战斗参数\
	required int32 fightNum=6;//挑战次数 仅在3：训练章节卡有效（MainChapter.ChapterType）\
}\
//结束MainLevel战斗后返回\
message OverMainLevel_S2C\
{\
	// required int32 errCode=1;//错误号\
	required int32 battleId=2;//关卡ID（MainLevel.Id）\
	optional bool result=3;//攻打结果\
	// optional Rewards firstReward=4;//首次奖励\
	repeated Rewards rewards=5;//一般奖励下标0=主线关卡首次三星奖励/训练模式为战斗次数奖励 1=普通奖励\
	repeated int32 starArray=6;//修改未首次星级列表\
	optional MainPVEInfo mainPVEInfo=7;//战斗对象\
}\
\
//上传战斗验证信息完成\
message OverVerification\
{\
	required string uuid=1;//战斗验证唯一id\
	required string fileName=2;//上传的战斗日志文件名\
	required string md5Code=3;//上传的战斗日志文件md5码\
}\
\
//上传战斗验证信息完成返回\
message OverVerification_S2C\
{\
	// required int32 errCode=1;//错误号\
	required string uuid=2;//战斗验证唯一id\
}\
\
//添加MainLevel剧情对话\
message AddMainLevelPlot\
{\
	required string plotData=1;//剧情对话内容\
}\
//添加MainLevel剧情对话返回\
message AddMainLevelPlot_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional string plotData=2;//剧情对话内容\
}\
\
//领取mainLevel星星数奖励\
message GetMainStarReward\
{\
	required int32 mainStarRewardId=1;//main星星奖励ID\
}\
//领取mainLevel星星数奖励返回\
message GetMainStarReward_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards reward=2;//奖励\
	repeated int32 starRewardList=3;//领取过的星星奖励\
	optional int32 mainStarRewardId=4;//main星星奖励ID\
}\
\
//mainLevel通过剧情关卡\
message AdoptPlotMainLevel\
{\
	required int32 id=1;//地图唯一id map_level\
}\
//mainLevel通过剧情关卡返回\
message AdoptPlotMainLevel_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional MainPVEInfo mainPVEInfo=2;//关卡信息\
	optional Rewards reward=3;//奖励\
} \
\
\
//==============================================开始雷达图协议==============================================================\
//雷达图=创建塔对象 并创建当前层的雷达图\
message CreateRadarChart\
{\
	required int32 id=1;//Map_Level主键id\
	repeated LeaderFormationInfo formation=2;//阵容信息\
	optional int32 layer=3;//楼层默认为1\
}\
//雷达图=创建塔对象 并创建当前层的雷达图 返回\
message CreateRadarChart_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RadarChartInfo radarChartInfo=2;//雷达图结构信息\
	optional Rewards reward=3;//奖励(扣除爬塔体力)\
}\
\
//雷达图上的队伍移动\
message RadarMoveFormation\
{\
	required int32 formationId=1;//阵型id （目前是单个小队不需要传小队id，扩展用）\
	repeated ProtoHashInt2Int routes = 2;//寻路路线（寻路位置要有序，不包含当前所在位置，index-1为终点）\
}\
//雷达图上的队伍移动\
message RadarMoveFormation_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RadarChartInfo radarChartInfo=2;//雷达图结构信息\
}\
\
//开始攻打雷达图上的战斗坐标点\
message StartAttackRadar\
{\
	required int32 pveId=1;//关卡ID（battleLevelId）\
	required ProtoHashInt2Int postionId = 3;//攻打位置信息 key=x value=y\
}\
//开始攻打雷达图上的战斗坐标点\
message StartAttackRadar_S2C\
{\
	// required int32 errCode=1;//错误号\
	repeated PriorReward priorRewardS=2;//用于实现事先计算好的奖励(怪物宝箱)\
	repeated BattleAttribute battleAttributes = 3;//战斗内带出的属性值已武将为单位\
	optional WarCheckInfo warCheckInfo=4;//战验结构\
	repeated LeaderInfo LeaderInfoList=5;//初始化副本时的小队武将信息\
}\
\
//结束攻打雷达图上的战斗坐标点\
message OverAttackRadar\
{\
	required int32 pveId=1;//关卡ID（battleLevelId）\
	required bool result=2;//攻打结果\
	optional int32 attackTime=3;//攻打时长(秒)\
	required ProtoHashInt2Int postionId = 4;//攻打位置信息 key=x value=y\
	optional FightPar fightPar=5;//战斗参数\
	required int32 option = 6;//事件选项（如果是非事件类战斗此值为0）\
	repeated int32 rewardBoxS=7;//战斗中获得的宝箱中的indexid组\
	repeated BattleAttribute battleAttributes = 8;//战斗内带出的属性值已武将为单位\
	repeated ProtoHashInt2Int battleStateMap = 9;//战斗中触发的状态类型 ：key=1.冷冻2.爆炸 3.共鸣  value=状态值\
	optional int32 battleTime=10;//战斗持续时间包括进场和出场特效时间（秒）\
	optional int32 useSkillNum=11;//战斗内使用技能次数\
	optional string skyBox=12;//天空盒类型\
	optional int32 monsterScore=13;//本场战斗怪物得分\
	repeated int32 deathS=15;//战斗中死亡的武将id列表\
}\
//结束攻打雷达图上的战斗坐标点\
message OverAttackRadar_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 pveId=2;//关卡ID\
	optional bool result=3;//攻打结果\
	optional Rewards reward=4;//加入背包的奖励\
	optional RadarChartInfo radarChartInfo=8;//雷达图结构信息 包含物品包\
}\
\
//处理雷达图中的事件\
message RadarEvent\
{\
	required int32 x=1;//地图位置信息\
	required int32 y=2;//地图位置信息\
	required int32 option = 3;//选项\
	optional bool result=4;//npc小队战斗模式下战斗结果\
}\
//处理副本地图中的事件(暂只处理了宝箱)\
message RadarEvent_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 type=2;// 1=宝箱奖励 2= 事件中奖励 3=事件buff 4=事件装置 5=装置宝箱 6 = pve NPC战斗\
	optional RadarChartInfo radarChartInfo=3;//雷达图结构信息\
	optional Rewards reward=4;//加入背包的奖励\
	optional int32 typeId=5;//根据type获取是谁的id\
}\
\
//雷达图 爬塔跳转到下一层\
message NextFloorRadar\
{\
	repeated LeaderFormationInfo formation=1;//阵容信息\
}\
//雷达图 爬塔跳转到下一层 返回\
message NextFloorRadar_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RadarChartInfo radarChartInfo=2;//雷达图结构信息\
	// optional Rewards reward=3;//本层雷达图奖励\
}\
\
//退出爬塔（退出整个雷达图塔）\
message ExitRadarChart\
{\
\
}\
//退出爬塔（退出整个雷达图塔）\
message ExitRadarChart_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional int32 pveId=2;//关卡ID\
	optional RadarPagodaInfo radarPagodaInfo=3;//关卡ID\
	optional Rewards reward=4;//本层雷达图奖励\
}\
\
//雷达图使用装置\
message RadarUseDevice\
{\
	required int32 id=1;//装置ID\
}\
//雷达图使用装置 返回\
message RadarUseDevice_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RadarChartInfo radarChartInfo=2;//雷达图结构信息\
}\
\
//雷达图每层选择一次buff\
message RadarChoiceBuffId\
{\
	required int32 buffId = 1;//buffID\
}\
//雷达图每层选择一次buff 返回\
message RadarChoiceBuffId_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RadarChartInfo radarChartInfo=2;//雷达图结构信息\
}\
\
//雷达图 进入下一层前领取本次奖励\
message FloorRewardRadar\
{\
}\
//雷达图 进入下一层前领取本次奖励 返回\
message FloorRewardRadar_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional RadarChartInfo radarChartInfo=2;//雷达图结构信息\
	optional Rewards reward=3;//本层雷达图奖励\
}\
\
//==============================================结束雷达图协议==============================================================\
\
// 初心者任务协议\
message FirstThought\
{\
	required int32 typeId=1; // 任务类型 1， 签到，2，初心者任务， 3， 阅读红点 \
	optional int32 taskId=2; // 只有typeId 为2 的时候才会有任务Id\
}\
\
// 初心者任务协议\
message FirstThought_S2C\
{\
	// required int32 errorCode=1;//错误码\
	optional int32 typeId=2; // 任务类型 1， 签到，2，初心者任务， 3， 阅读红点 \
	optional Rewards rewards=3;// 领取的奖励信息\
	optional FirstThoughtInfo thoughtInfo=4; // 初心者全部信息\
	optional int32 taskId=5; // type为2 的时候才会传 ，完成的初心者任务id \
	optional int32 isAllOver=6; // 三种类型的任务是否全部 完成\
}\
\
//新版任务协议\
//提交任务\
message SubmitTask\
{\
	required int32 taskId=1;//任务ID\
}\
\
//提交任务返回\
message SubmitTask_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards reward=2;//奖励\
\
	// optional TaskProgressInfo taskProgressInfo=3;	//任务进度条件 ， 20210716 待弃用\
	// optional TaskInfo taskInfo=4;	//任务完成结构  ， 20210716 待弃用\
\
	// 修改后的结构\
	optional int32 dayTaskPoint=5;				 //日常任务活跃点（每天清空）\
	optional int32 chapterIndex=7;				//主线任务章节\
	// optional int32 overTaskId=8; //当前操作的 任务Id\
    // optional int32 overTaskTime=9; // 当前操作的任务完成时间\
    optional ProtoHashInt2Int overTask=10; // key= 当前操作的 任务Id， value=当前操作的任务完成时间\
}\
\
//改变的任务进度推送\
message TaskProgress_Push\
{\
	repeated ProtoHashInt2Int progressTaskIdS=1;//任务进度信息, 只推送变动部分\
}\
\
\
//在线跨天任务数据推送\
message OnlineTaskData_Push\
{\
	repeated ProtoHashInt2Int progressTaskIdS=1;//非初心者任务进度信息\
	optional int32 dayGroupIndex=2;				//日常任务分组\
}\
\
//角色属性/战力触发了任务 客户端附加推送给服务器的消息\
message TaskConditionClientPush\
{\
	required int32 leaderId=1;   //角色id\
	required int32 type=2;	//触发类型 1=属性触发，2=战力\
	required int32 value=3;	//属性值/战力值\
}\
\
//领取日常活跃度奖励\
message GetActivePointReward\
{\
	required int32 id=1;//表ID\
}\
//领取日常活跃度奖励返回\
message GetActivePointReward_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards reward=2;//奖励\
	// optional TaskInfo taskInfo=3;	//任务完成信息 结构,  2021.07.20 待删除\
\
	optional int32 activePointId=4; //活跃奖励Id  2021.07.20 新增\
}\
\
 //图鉴收集数目达标领奖协议\
message GetHandbookReward\
{\
	repeated int32 ids=1;//领奖的Id集合 \
}\
//图鉴收集数目达标领奖协议\
message GetHandbookReward_S2C\
{\
	// required int32 errCode=1;//错误号\
	optional Rewards reward=2;//奖励\
	optional HandbookInfo HandbookInfo=3;//图鉴数据，暂时只有奖励领取信息\
}\
\
//推送的图鉴名词数据\
message HandbookUnlockWordId_Push\
{\
	repeated int32 unlockWordIdS=1;//新增的 解锁 名词Id集合\
}\
\
//推送的图鉴遗物数据\
message HandbookunlockRemainId_Push\
{\
	repeated int32 unlockRemainIdS=2;//新增的 解锁遗物图鉴Id集合，雷达图掉落\
}\
 \
// 特殊的需要通过前端设置进度的 任务， 比如秘书互动\
message SetSpecialTaskProgress\
{\
	required int32 type=1;//任务类型号\
	required int32 num=2;//次数\
}\
\
// 特殊的需要通过前端设置进度的 任务， 比如秘书互动\
message SetSpecialTaskProgress_S2C\
{\
	required int32 errCode=1;//错误号\
}\
\
// 图鉴中击杀怪物次数信息推送\
message HandBookMonsterKill_Push\
{\
	repeated ProtoHashInt2Int monsterTypeKill = 1;//战斗中击杀的怪物类型以及次数 key=怪物类型Id(MonsterTemplate.id)  value=击杀次数\
}\
"
return protoStr