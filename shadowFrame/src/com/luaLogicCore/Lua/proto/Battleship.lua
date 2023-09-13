local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
//创建并进入当前战舰\
message CreateBattleship\
{\
	required int32 id=1;//战舰配置表主键id\
}\
//创建并进入当前战舰 返回\
message CreateBattleship_S2C\
{\
	optional BattleshipInfo battleshipInfo=1;//战舰结构信息\
	repeated BattleshipTask battleshipTasks=2;//战舰任务集合信息\
	repeated BattleshipStory battleshipStorys=3;//战舰剧情结构集合\
	repeated int32 menuId=4;//菜单id WarshipDinnerMenu.id\
	repeated BattleshipDishesEatenInfo dishesEatenInfo =5;//吃过喜欢菜的结构集合\
	repeated BattleshipDispatchInfo dispatchInfoS =6;//战舰派遣任务的结构集合\
}\
\
//战舰上的移动\
message BattleshipMove\
{\
	repeated BattleshipPositionInfo routes = 1;//寻路路线（寻路位置要有序，不包含当前所在位置）\
}\
//战舰上的移动 返回\
message BattleshipMove_S2C\
{\
	optional BattleshipInfo battleshipInfo=1;//战舰结构信息\
}\
\
//战舰地图上的传送门跳转到下一层\
message NextFloorBattleship\
{\
	required int32 id=1;//战舰配置表主键id\
}\
//战舰跳转到下一层 返回\
message NextFloorBattleship_S2C\
{\
	optional BattleshipInfo battleshipInfo=1;//战舰结构信息\
}\
\
//退出战舰\
message ExitBattleship\
{\
\
}\
//退出战舰 返回\
message ExitBattleship_S2C\
{\
	optional BattleshipInfo battleshipInfo=1;//战舰结构信息\
	//退出战舰可能有奖励会附加在子包中\
}\
\
//需要在战舰场景内显示的所有npc信息 返回推送\
message BattleshipAppearNpc_S2C_PUSH\
{\
	repeated BattleshipNPC battleshipNPCList=1;//npc结构集合\
}\
\
//修改npc信息 返回推送\
message BattleshipChangeNpc_S2C_PUSH\
{\
	repeated BattleshipNPC battleshipNPCList=1;//npc结构集合\
}\
\
//删除npc信息 返回推送\
message BattleshiDeleteNpc_S2C_PUSH\
{\
	repeated BattleshipNPC battleshipNPCList=1;//npc结构集合\
}\
\
//战舰接受任务\
message BattleshipAcceptTask\
{\
	repeated int32 id=1;//WarshipMissionSub.id\
}\
//战舰接受任务 返回\
message BattleshipAcceptTask_S2C\
{\
	repeated BattleshipTask battleshipTask=1;//战舰任务信息\
	repeated BattleshipNPC battleshipNPCList=2;//npc结构集合\
	optional BattleshipInfo battleshipInfo=3;//战舰结构信息\
}\
\
//修改战舰任务进度\
message BattleshipChangeTaskProgress\
{\
	required int32 id=1;//WarshipMissionSub.id\
	repeated int32 paramIds=2;//WarshipMissionParam.id集合\
}\
//修改战舰任务进度 返回\
message BattleshipChangeTaskProgress_S2C\
{\
	optional BattleshipTask battleshipTask=1;//战舰任务信息\
}\
\
//提交战舰任务 之后需要增加进度推送协议\
message BattleshipSubmitTask\
{\
	required int32 id=1;//WarshipMissionSub.id  之后需要改成集合\
}\
//提交战舰任务 返回\
message BattleshipSubmitTask_S2C\
{\
	optional BattleshipTask battleshipTask=1;//战舰任务信息\
	optional BattleshipTask nextBattleshipTask=2;//自动接取的下一个战舰任务信息\
	repeated BattleshipNPC battleshipNPCList=3;//npc结构集合(只有接受的任务和完成的任务再同一组才会有此参数)\
	optional BattleshipInfo battleshipInfo=4;//战舰结构信息(只有接受的任务和完成的任务再同一组才会有此参数)\
}\
\
//战舰任务追踪\
message BattleshipTaskTrace\
{\
	required int32 id=1;//WarshipMissionSub.id 如果发0代表取消任务追踪\
}\
//战舰任务追踪 返回\
message BattleshipTaskTrace_S2C\
{\
	repeated BattleshipNPC battleshipNPCList=1;//npc结构集合\
	optional BattleshipInfo battleshipInfo=2;//战舰结构信息\
}\
\
//修改任务状态gm使用 返回推送\
message BattleshipTaskGM_S2C_PUSH\
{\
	required int32 type=1;//1=增加任务，3=删除任务 4=4= 完成任务的当前阶段\
	repeated BattleshipTask battleshipTask=2;//战舰任务信息\
}\
\
//战舰剧情选项协议\
message BattleshipStoryOption\
{\
	required int32 id=1;//StoryShow.id\
	required int32 optionIndex=2;//WarshipStory.option 从1开始工3个只有1,2，3三个值\
	required int32 storySubId=3;//WarshipStorySub.id 句子id\
}\
//战舰剧情选项协议 返回\
message BattleshipStoryOption_S2C\
{\
	required int32 id=1;//StoryShow.id\
}\
\
//战舰剧情结束协议\
message BattleshipStoryOver\
{\
	required int32 id=1;//StoryShow.id\
}\
//战舰剧情结束协议 返回\
message BattleshipStoryOver_S2C\
{\
	required BattleshipStory shipStory=1;//战舰剧情结构\
}\
\
//战舰开始剧情的推送协议\
message BattleshipBeginStory_PUSH\
{\
	required int32 id=1;//StoryShow.id\
	required int32 type=2;//增加类型1=sub前2=sub后\
}\
\
//修改任务进度推送\
message ChangeTaskCondition_S2C_PUSH\
{\
	repeated BattleshipTask battleshipTask=1;//战舰任务信息（仅为被修改的任务进度，不是全量）\
}\
\
//战舰聚餐\
message BattleshipDine\
{\
	required int32 menuId=1;//菜单id WarshipDinnerMenu.id\
	repeated int32 npcIdList=2;//Npcid集合WarshipNpc.id\
}\
//战舰聚餐 返回\
message BattleshipDine_S2C\
{\
	repeated BattleshipNPC battleshipNPCList=1;//npc结构集合\
	optional BattleshipInfo battleshipInfo=2;//战舰结构信息\
	repeated BattleshipDishesEatenInfo dishesEatenInfos =3;//吃过喜欢菜的结构集合 增量值\
}\
\
//获得了新的开放菜单 返回推送\
message BattleshipMenu_S2C_PUSH\
{\
	repeated int32 menuId=1;//全部菜单id WarshipDinnerMenu.id\
}\
\
// 间隔轮训获取当前战舰体力\
message GetShipStrength\
{\
}\
//间隔轮训获取当前战舰体力 返回\
message GetShipStrength_S2C\
{\
	optional int32 curShipStrength=1;//当前体力\
	optional int64 lastCalcShipStrengthTime=2;//最后计算体力时间\
}\
\
// 获取天赋树激活奖励\
message GetTalentTreeReward\
{\
	required int32 id=1;// WarshipTalentShow.id\
}\
//获取天赋树激活奖励 返回\
message GetTalentTreeReward_S2C\
{\
	required BattleshipInfo battleshipInfo=1;//战舰结构信息\
}\
\
// 战舰派遣角色\
message BattleshipDispatchLeaer\
{\
	repeated ProtoHashInt2Int taskAndLeaderIdS = 1;// key = WarshipDispatchTask.id value = leaderId\
}\
//战舰派遣角色 返回\
message BattleshipDispatchLeaer_S2C\
{\
	repeated BattleshipDispatchInfo dispatchInfoS =1;//战舰派遣任务的结构集合\
}\
\
// 战舰取消派遣任务\
message BattleshipDispatchCancel\
{\
	repeated int32 taskIdS = 1;// WarshipDispatchTask.id集合\
}\
//战舰取消派遣任务 返回\
message BattleshipDispatchCancel_S2C\
{\
	repeated BattleshipDispatchInfo dispatchInfoS =1;//战舰派遣任务的结构集合\
}\
\
// 领取战舰派遣任务奖励\
message BattleshipDispatchReward\
{\
	repeated int32 taskIdS = 1;// WarshipDispatchTask.id集合\
}\
//领取战舰派遣任务奖励 返回\
message BattleshipDispatchReward_S2C\
{\
	repeated BattleshipDispatchInfo dispatchInfoS =1;//战舰派遣任务的结构集合\
}\
"
return protoStr