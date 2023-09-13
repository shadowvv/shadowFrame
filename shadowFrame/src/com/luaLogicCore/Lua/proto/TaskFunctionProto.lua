local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
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
	optional int32 typeId=1; // 任务类型 1， 签到，2，初心者任务， 3， 阅读红点 \
	optional Rewards rewards=2; // 领取的奖励信息\
	optional FirstThoughtInfo thoughtInfo=3; // 初心者全部信息\
	optional int32 taskId=4; //type为2 的时候才会传 ，完成的初心者任务id \
	optional int32 isAllOver=5; //三种类型的任务是否全部 完成\
	optional int32 taskOverTime=6;//任务完成时间\
}\
\
//领取日常活跃度奖励\
message GetActivePointReward\
{\
	repeated int32 id=1;//表ID\
}\
//领取日常活跃度奖励返回\
message GetActivePointReward_S2C\
{\
	optional Rewards reward=1;//奖励\
	repeated int32 activePointId=2; //活跃奖励Id  2021.07.20 新增\
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
	optional Rewards reward=1;//奖励\
	optional int32 dayTaskPoint=2;				 //日常任务活跃点（每天清空）\
	optional int32 chapterIndex=3;				//主线任务章节\
    optional ProtoHashInt2Int overTask=4; // key= 当前操作的 任务Id， value=当前操作的任务完成时间\
    required int32 weekTaskPoint=5;				 //周任务活跃点（每周清空）\
}\
\
// 任务一键领取\
message BatchSubmitTask\
{\
    repeated int32 taskIds = 1;// 可领取的任务Id 集合\
    required int32 type = 2;// 1： 每日  2： 主线 3：周任务， 4：活动任务\
}\
\
// 任务一键领取\
message BatchSubmitTask_S2C\
{\
    optional int32 dayTaskPoint = 1;	//每日任务活跃点\
    optional int32 chapterIndex = 2;	//主线任务章节\
    repeated ProtoHashInt2Int overTask = 3; // key= 当前操作的 任务Id， value=当前操作的任务完成时间\
    required int32 weekTaskPoint=4;				 //周任务活跃点\
}\
\
// bingo 领奖协议\
message SignBingoReward\
{\
	required int32 signId=1;// signBingo 表中的 id 字段\
}\
\
// bingo 领奖协议\
message SignBingoReward_S2C\
{\
	required int32 signId=1;// signBingo 表中的 id 字段\
}\
\
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
// 初心者任务协议\
message ChangeFirstThought_S2C_PUSH\
{\
	optional FirstThoughtInfo thoughtInfo=3; // 修改初心者任务信息\
}\
\
\
// 获取周活跃点奖励\
message GetWeekActivePointReward\
{\
    repeated int32 id=1;//表ID\
}\
\
\
// 获取周活跃点奖励\
message GetWeekActivePointReward_S2C\
{\
    repeated int32 id=1;//表ID\
}\
"
return protoStr