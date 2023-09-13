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
    optional DeviceInfo deviceInfo = 5;// 设备信息\
    optional string clientVersion = 6;//客户端版本\
}\
\
message SocketLogin_S2C\
{\
    // required int32 errorCode = 1;//  错误码\
    optional int32 serverType = 2;//服务器类型\
    optional int32 worldChannelNum = 3;//世界聊天所在线\
    optional int32 maxLineNum = 4;//频道最大线\
    optional int32 currentLineNum = 5;//所在线当前人数\
    optional ServerInfo suitServerInfo = 6;//聊天服务器结构信息, 当连接失败的时候会重新分配一个其他聊天服， 修改于 20201 .6 .12\
    repeated int32 chatBlacklistInfo = 7;//聊天黑名单列表，增加于 2021.8.3\
    optional TotalLoginSecond totalLoginSecond = 8;//今日在线时长信息\
    optional FriendInfo friendInfo = 9;//玩家个人的好友杂项信息 （弃用）\
    repeated FriendRecordInfo friendInfoList = 10;// 玩家的好友记录信息 （弃用）\
    repeated int32 applyUidList = 11;// 玩家的好友申请记录 （弃用）\
}\
\
//频道发送消息\
message ChatMessage\
{\
    required string message = 1; // 消息内容\
    required int32 channel = 2;  // 频道（1：世界 2：公会）\
\
}\
//频道发送消息\
message ChatMessage_S2C\
{\
    required int32 errorCode = 1;// 错误码\
}\
\
// 统一开关时间 推送\
message ServerActivityTimeMoudle_Push\
{\
    repeated ServerActivityTimeMoudle activityTime=1;// 开关时间集合\
}\
\
//频道消息推送\
message ChatMessage_S2C_Push\
{\
    required string message = 2; // 消息内容\
    required int32 channel = 3;  // 频道（1：世界 2：公会 3：好友 4： 组队 5： 特殊组队 ）\
    optional PlayerChatInfo info = 4;\
    required int32 time = 5;     // 发言时间\
    required int32 roomId = 6;     // 房间号\
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
    required int32 type = 1;    // 公告类型\
    required int32 noticeId = 2;// 公告ID\
    optional int32 time = 3;    // 结束时间\
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
    // required int32 errorCode = 1;//  错误码\
    optional int32 newLineNum = 2;//切换后的世界频道线\
    optional int32 currentLineNum = 3;//所在线当前人数\
}\
\
// 长连接心跳\
message SocketHeartBeat\
{\
\
}\
//长连接心跳包返回\
message SocketHeartBeat_S2C\
{\
    optional int32 currentlineNum=1;//当前所在频道线人数\
    optional int32 time=2;//服务器当前时间戳\
    required CurActivityInfo curActivityInfo = 3;// GM 活动表版本\
    repeated BattlePassGMInfo battlePassGMInfos = 4;// GM 控制的通行证数据\
}\
\
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
    required int32 errorCode = 1;// 错误码\
}\
\
\
// 发送玩家登录聊天服，切换房间 协议前 需要先发这条消息到GameSever\
// message GetChatServerData_C2S\
// {\
//  required int32 type = 1;// 类型, type= 1： 登录聊天服， type = 2:  切换房间\
//  required int32 channelId = 2;// 目标channelId（房间号），登录连接可以用默认 1\
// }\
\
// // 发送给客户端 能连接的 聊天服信息\
// message GetChatServerData_S2C\
// {\
//  required int32 errorCode = 1;//错误号\
//  optional ConnectChatServerInfo chatServerData = 2;//聊天服务器信息\
//  optional int32 status = 3;// 状态 1： 正常连接  2：已加入排队队列（随着心跳进行连接信息检查） 3: 排队队列已满（N 分钟后再试）， （等迪康想出结果）\
//  optional int32 nextTime = 4;// 下次允许的请求时间， 单位：分钟  ， （等迪康想出结果）\
// }\
\
//更改聊天黑名单\
message ChangeChatBlacklist\
{\
    required int32 type=1;//操作类型 1=增加黑名单，2=移除黑名单\
    repeated int32 uids=2;//玩家id\
}\
\
//更改聊天黑名单\
message ChangeChatBlacklist_S2C\
{\
    optional int32 type=2;//操作类型 1=增加黑名单，2=移除黑名单\
    repeated int32 chatBlacklist = 3;//黑名单列表， 修改过后的Id 集合\
}\
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
    required int32 errorCode = 1;// 错误码\
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
    required int32 errorCode = 1;// 错误码\
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
    required int32 errorCode = 1;// 错误码\
}\
\
// 战斗异常结束 推送\
message BattleErrorEnd_Push\
{\
    required int32 errorCode = 1;// 错误码\
}\
\
// 申请好友\
message ApplyFriend\
{\
    required int32 targetUid = 1;// 被申请的 uid\
}\
\
// 申请好友\
message ApplyFriend_S2C\
{\
    required int32 targetUid = 1;// 被申请的 uid\
}\
\
// 好友申请 推送消息\
message ApplyFriendMsgPush\
{\
    // required FriendMsgInfo friendMsgInfo = 1;\
    required PlayerChatInfo friendMsgInfo = 1;\
}\
\
// 同意好友 / 拒绝好友 推送结构\
message HandleApplyFriendMsgPush\
{\
    // required FriendMsgInfo friendMsgInfo = 1;\
    required PlayerChatInfo friendMsgInfo = 1;\
    optional int32 passApply = 2;// 是否通过  1：通过  2：拒绝\
}\
\
// 删除好友 推送结构\
message DeleteFriendMsgPush\
{\
    required int32 deleteUid = 1; // 删除的  好友的Uid\
}\
\
// 处理好友申请\
message HandleApplyFriend\
{\
    required int32 handleUid = 1;// 处理的 对方玩家uid\
    required int32 passApply = 2;// 是否通过  1：通过  2：拒绝\
}\
\
// 处理好友申请\
message HandleApplyFriend_S2C\
{\
    required int32 handleUid = 1;// 处理的 对方玩家uid\
    required int32 passApply = 2;// 是否通过  1：通过  2：拒绝\
}\
\
// 删除好友\
message DeleteFriend\
{\
    required int32 handleUid = 1;//删除的好友uid\
}\
\
// 删除好友\
message DeleteFriend_S2C\
{\
    required int32 handleUid = 1;//删除的好友uid\
}\
\
// 拉黑好友\
message FriendJoinBlacklist\
{\
    required int32 handleUid = 1;//拉黑的好友uid\
    required int32 handleType = 2;// 操作 1：拉黑， 2： 解除拉黑\
}\
\
// 拉黑好友\
message FriendJoinBlacklist_S2C\
{\
    required int32 handleUid = 1;//拉黑的好友uid\
    required int32 handleType = 2;// 操作 1：拉黑， 2： 解除拉黑\
}\
\
// 好友推荐\
message RecommendFriend\
{\
\
}\
\
// 好友推荐\
message RecommendFriend_S2C\
{\
    repeated int32 recommendUid = 1;// 推荐uid 数据\
}\
\
// 举报好友\
message TrashReport\
{\
    required int32 targetUid       = 1;// 举报uid\
    repeated int32 trashIdList     = 2;// 举报模板 Id 集合\
    optional string extraReasonMsg = 3;// 其他补充举报内容\
    optional string trashMsg       = 4;// 被举报的 消息内容\
}\
// 举报好友\
message TrashReport_S2C\
{\
    required int32 targetUid       = 1;// 举报uid\
}\
\
// 好友在线状态\
message FriendOnlineState\
{\
    repeated int32 friendUidList = 1;// 好友uid 集合\
}\
\
// 好友在线状态\
message FriendOnlineState_S2C\
{\
    repeated int32 onlineFriendUidList = 1;// 在线的好友uid 集合， 不在线的不在这里面\
    repeated ProtoHashInt2Int offlineFriendTime = 2;// 离线的好友 离线时间戳集合， key= uid, value = 时间戳\
}\
\
// 好友状态推送消息\
message FriendStatePush\
{\
    required int32 targetUid = 1;// 玩家uid\
    required int32 state = 2;// 1: 上线  2： 下线\
    required int32 timestamp = 3;// 操作时间戳\
}\
// 好友聊天\
message FriendChat\
{\
    required string message = 1; // 消息内容\
    optional int32 toUid = 2;// 指定uid, 私聊用\
}\
\
message FriendChat_S2C\
{\
    required int32 toUid = 1;// 指定uid, 私聊用\
    required string message = 2; // 消息内容(过滤后)\
}\
\
//好友聊天消息推送\
message FriendChat_S2C_Push\
{\
    required string message = 1; // 消息内容\
    required int32 toUid = 2;// 指定uid, 私聊用\
    required int32 fromUid = 3;    // 消息来源uid\
    required int32 time = 4;     // 发言时间\
}\
\
// 队伍聊天\
message TeamChat\
{\
    required string message = 1; // 消息内容\
    required int32 toTeamId = 2;// 指定teamId\
    required int32 channel = 3;  // 频道（1： 组队 2： 特殊组队 ）\
}\
\
message TeamChat_S2C\
{\
    required int32 toTeamId = 1;// 指定teamId\
    required int32 channel = 2;  // 频道（1： 组队 2： 特殊组队 ）\
    required string message = 3; // 消息内容(过滤后)\
}\
\
//队伍聊天消息推送\
message TeamChat_S2C_Push\
{\
    required string message = 1; // 消息内容\
    required int32 toTeamId = 2;    // 指定teamId\
    required int32 fromUid = 3;    // 消息来源uid\
    required int32 channel = 4;  // 频道（1： 组队 2： 特殊组队 ）\
    required int32 time = 5;     // 发言时间\
    optional int32 type = 6;\
    optional PlayerChatInfo playerChatInfo = 7;\
}\
\
//获取好友离线消息\
message GetFriendOfflineChat\
{\
\
}\
\
//获取好友离线消息\
message GetFriendOfflineChat_S2C\
{\
    repeated FriendChatOfflineMsg friendOfflineMsg = 1;\
}\
\
//获取组队离线消息\
message GetTeamOfflineChat\
{\
    required int32 teamId = 1;\
    required int32 teamType = 2;  //频道（2： 特殊组队 , 其他的再加）\
}\
\
//获取好友离线消息\
message GetTeamOfflineChat_S2C\
{\
    repeated TeamChatOfflineMsg teamOfflineMsg = 1;\
    required int32 teamType = 2;  //频道（2： 特殊组队 , 其他的再加）\
    required int32 toTeamId = 3; // 接受消息组队Id\
}\
\
// 禁止的聊天渠道推送\
message ChatChannel_Push\
{\
    repeated int32 forbidChannelIds = 1;// 全量值，客户端可直接覆盖\
}\
\
// 修改好友备注名\
message ChangeFriendDesc\
{\
    required int32 targetUid = 1;\
    required string desc = 2;// 备注名\
}\
\
// 修改好友备注名\
message ChangeFriendDesc_S2C\
{\
    required int32 targetUid = 1;\
    required string desc = 2;// 备注名\
}\
\
// 获取玩家的所有好友信息\
message GetAllFriendInfo\
{\
    required int32 uid = 1;//玩家uid\
}\
\
message GetAllFriendInfo_S2C\
{\
    repeated PlayerChatInfo friendInfoList = 1;//好友所有信息\
}\
\
// 获得其他 玩家需要的信息\
message GetOtherPlayerInfo\
{\
    required int32 uid = 1;//玩家uid\
    required int32 type = 2;//  （1，添加， 2， 黑名单， 3，推荐， 4，最近组队）\
    optional TeamType teamType = 3;\
}\
\
// 获得其他 玩家需要的信息\
message GetOtherPlayerInfo_S2C\
{\
    repeated PlayerChatInfo friendInfoList = 1;\
    required int32 type = 2;//  （1，添加， 2， 黑名单， 3，推荐， 4，最近组队）\
    optional TeamType teamType = 3;\
}\
\
// 好友信息变化推送消息\
message FriendInfoChangePush\
{\
    required PlayerChangeInfo playerChangeInfo = 1;\
}\
"
return protoStr