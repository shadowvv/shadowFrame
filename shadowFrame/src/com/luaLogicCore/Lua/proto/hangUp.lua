local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
// 获取挂机信息\
message GetHangUpInfo {\
}\
\
// 玩家挂机信息 返回\
message GetHangUpInfo_S2C {\
	required HangUpInfo info = 1;// 挂机信息\
}\
\
// 开始挂机\
message StartHangUp {\
	required int32 type = 1;// 挂机类型, 使用之前BattleType枚举\
	required int32 levelId = 2;// 挂机关卡, 使用战斗时的字段, 战斗表id(不同关卡的表id)\
	required int32 times = 3;// 挂机次数\
}\
\
// 开始挂机 返回\
message StartHangUp_S2C {\
	required HangUpInfo info = 1;// 挂机信息\
}\
\
// 挂机加速\
message HangUpSpeedUp {\
	required int32 times = 1;\
}\
\
// 挂机加速 返回\
message HangUpSpeedUp_S2C {\
	required HangUpInfo info = 1;// 挂机信息\
}\
\
// 领取挂机奖励\
message ReceiveHangUpReward {\
\
}\
\
// 领取挂机奖励返回\
message ReceiveHangUpReward_S2C {\
	required HangUpInfo info = 1;// 挂机信息\
	required HangUpSettle settleInfo = 2;// 挂机结算关卡信息\
}\
\
// 取消挂机\
message HangUpCancel {\
}\
\
// 取消挂机返回\
message HangUpCancel_S2C {\
	required HangUpInfo info = 1;// 挂机信息\
	required HangUpSettle settleInfo = 2;// 挂机结算关卡信息\
}\
\
// 挂机扫荡\
message HangUpSweep {\
	required int32 type = 1;// 挂机扫荡类型, 使用之前BattleType枚举\
	required int32 levelId = 2;// 挂机扫荡关卡, 使用战斗时的字段, 战斗表id(不同关卡的表id)\
	required int32 times = 3;// 挂机扫荡次数\
}\
\
// 挂机扫荡 返回，这个待定\
message HangUpSweep_S2C {\
	required HangUpSettle settleInfo = 1;// 挂机结算关卡信息\
}\
"
return protoStr