local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
// ==========通讯协议===========\
\
//首次登录socket服务器\
message SocketLogin\
{\
	required int32 uid = 1;\
	required string token = 2;\
	// optional int64 seatCode = 3;//座位号, 修改于 2021 05 27\
	// optional PlayerChatInfo playerChatInfo = 4;// 增加于 2021.8.3\
	optional DeviceInfo deviceInfo = 5;// 设备信息\
	optional string clientVersion = 6;//客户端版本 \
}\
\
message SocketLogin_S2C\
{\
	// required int32 errorCode = 1;//	错误码 \
	optional int32 serverType = 2;//服务器类型\
	optional int32 worldChannelNum = 3;//世界聊天所在线\
	optional int32 maxLineNum = 4;//频道最大线\
	optional int32 currentLineNum = 5;//所在线当前人数\
	optional ServerInfo suitServerInfo = 6;//聊天服务器结构信息, 当连接失败的时候会重新分配一个其他聊天服， 修改于 20201 .6 .12\
	repeated int32 chatBlacklistInfo = 7;//聊天黑名单列表，增加于 2021.8.3\
	optional TotalLoginSecond totalLoginSecond = 8;//今日在线时长信息\
}\
\
//频道发送消息\
message ChatMessage\
{\
	required string message = 1; // 消息内容\
	required int32 channel = 2;  //	频道（1：世界 2：公会）\
	// optional PlayerChatInfo playerChatInfo = 4;// 增加于 2021.8.3\
}\
//频道发送消息\
message ChatMessage_S2C\
{\
	required int32 errorCode = 1;//	错误码\
}\
\
//频道消息推送\
message ChatMessage_S2C_Push\
{\
	required string message = 2; // 消息内容\
	required int32 channel = 3;  // 频道（1：世界 2：公会）\
	optional PlayerChatInfo info = 4;\
	required int32 time = 5;	 // 发言时间\
}\
\
//系统时间聊天\
message SystemMessage_S2C_Push\
{\
	repeated SystemChatMessage message = 1;\
	required int32 time = 2;//结束时间\
}\
\
//跑马灯\
message NoticeMessage_S2C\
{\
	required int32 type = 1;	// 公告类型\
	required int32 noticeId = 2;// 公告ID\
	optional int32 time = 3;	// 结束时间\
	repeated string params = 4; // 参数\
}\
\
//玩家更改世界线\
message ChangeWorldChannel\
{\
	required int32 worldChannelNum = 1;\
	required int32 oldWorldChannelNum = 2;\
}\
\
//玩家更改世界线返回\
message ChangeWorldChannel_S2C\
{\
	// required int32 errorCode = 1;//	错误码\
	optional int32 newLineNum = 2;//切换后的世界频道线\
	optional int32 currentLineNum = 3;//所在线当前人数\
}\
\
//长连接心跳包返回\
message SocketHeartBeat_S2C\
{\
	optional int32 currentlineNum=1;//当前所在频道线人数\
	optional int32 time=2;//服务器当前时间戳\
	optional int32 totalLoginSecond =3;//今天累计的登录时间(秒)\
}\
\
\
//获取频道信息返回\
message GetWorldChannel_S2C\
{\
	repeated ProtoHashInt2Int chatChannels=1;//频道信息：key=频道id value=频道人数\
}\
\
//服务功能开关集合推送\
message ServerFunction_S2C_Push\
{\
	required string serverFunctionS = 1; // 集合转换成的字符串\
}\
\
//公告更新推送\
message ClientAnnounce_S2C_Push\
{\
	required int32 id = 1;//公告id暂时传0（预留用的）\
}\
\
//聊天举报\
message chatReport\
{\
	required int32 accusedId=1;//被举报人(被告)Id\
	repeated int32 reportContentIdS=2;//举报内容Id 集合 1. 外挂，2.辱骂性言论，3.广告，4.传播反动，色情等违法犯罪内容\
}\
\
//聊天举报返回\
message chatReport_S2C\
{\
	required int32 errorCode = 1;//	错误码\
}\
\
// 统一开关时间 推送\
message ServerActivityTimeMoudle_Push\
{\
	repeated ServerActivityTimeMoudle activityTime=1;// 开关时间集合\
\
\
}\
\
// 发送玩家登录聊天服，切换房间 协议前 需要先发这条消息到GameSever\
// message GetChatServerData_C2S\
// {\
// 	required int32 type = 1;// 类型, type= 1： 登录聊天服， type = 2:  切换房间\
// 	required int32 channelId = 2;// 目标channelId（房间号），登录连接可以用默认 1\
// }\
\
// // 发送给客户端 能连接的 聊天服信息\
// message GetChatServerData_S2C\
// {\
// 	required int32 errorCode = 1;//错误号\
// 	optional ConnectChatServerInfo chatServerData = 2;//聊天服务器信息\
// 	optional int32 status = 3;// 状态 1： 正常连接  2：已加入排队队列（随着心跳进行连接信息检查） 3: 排队队列已满（N 分钟后再试）， （等迪康想出结果）\
// 	optional int32 nextTime = 4;// 下次允许的请求时间， 单位：分钟  ， （等迪康想出结果）\
// }\
\
// API LB 开关状态\
message APILBMessage_Push\
{\
	required int32 status = 1;// API LB 开关状态 0: 关闭， 1： 开启\
}\
\
\
//首次登录战斗服务器\
message BattleLogin\
{\
	required int32 uid = 1;\
	required string token = 2;\
	//之后可能有房间号以及小队id等\
}\
\
//首次登录战斗服务器\
message BattleLogin_S2C\
{\
	required int32 errorCode = 1;//	错误码 \
}\
\
//战斗中的角色移动\
message BattleMove\
{\
	required int32 uid = 1;\
	required int32 leaderId=2;//武将id\
	required int32 battleTime=3;//当前时间\
	//增加位置结构\
}\
\
//战斗中的角色移动\
message BattleMove_S2C\
{\
	required int32 errorCode = 1;//	错误码 \
}\
\
//战斗正常结束\
message BattleOver\
{\
	required int32 uid = 1;\
}\
\
//战斗正常结束\
message BattleOver_S2C\
{\
	required int32 errorCode = 1;//	错误码 \
}\
\
// 战斗异常结束 推送\
message BattleErrorEnd_Push\
{\
	required int32 errorCode = 1;//	错误码 \
}\
"
return protoStr