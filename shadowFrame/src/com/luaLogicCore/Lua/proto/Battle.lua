local protoStr = { }
protoStr.str = "import 'msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
// 战斗服错误提示\
message BattleErrorMessage\
{\
  optional int32 errorCode = 1;  // 错误码\
  optional int32 headCode = 2;  // 消息号（对应消息号返回的错误码）\
  optional string errorMsg = 3;  // 错误文字(有errorMsg读errorMsg的文字，没有读errorCode对应的文字)\
}\
\
//战斗服心跳\
message BattleHeartBeat\
{\
  required int64 clientTime = 1;// 客户端时间（ms）\
}\
\
message BattleHeartBeat_S2C\
{\
  required int64 clientTime = 1;// 客户端时间（ms）\
  required int64 serverTime = 2;// 服务器时间（ms）\
}\
\
//首次登录战斗服务器\
message BattleLogin\
{\
  required int32 uid = 1;  // 玩家id\
  required string token = 2;  // 游戏服的登录token\
}\
\
//登录成功才有SC返回，登录失败直接断开Socket连接\
message BattleLogin_S2C\
{\
}\
\
//请求进入场景（暂时不用）\
message BattleScenePreEnter\
{\
}\
\
//请求进入场景\
message BattleScenePreEnter_S2C\
{\
  required int32 sceneMapId = 1; // 地图id\
  optional int32 raidId = 2;  // 副本id\
  // required NetVector3 pos=2; // TODO 暂时不知道客户端坐标点的pb需要传什么\
  // TODO 客户端加载场景所需参数\
}\
\
//进入场景\
message BattleSceneEnter\
{\
}\
\
message BattleSceneEnter_S2C\
{\
  required int32 sceneId = 1;  // 服务器场景id\
}\
\
//重连进入场景\
message BattleSceneReconnect\
{\
  optional int32 raidId = 1;  // 如果有副本id，需要传当前副本id\
}\
\
message BattleSceneReconnect_S2C\
{\
  required bool result = 1;  // 重连场景结果\
}\
\
// 副本玩家加载完成\
message RaidPlayerLoadFinish_Push\
{\
  required int32 uid = 1;  // 加载完成的玩家id\
}\
\
// 副本所有玩家加载完成\
message RaidAllPlayerLoadFinish_Push\
{\
}\
\
// 战斗服副本开始进行\
message BattleRaidRunStart_Push\
{\
}\
\
// 战斗服通知战斗结束\
message NotifyBattleOverResult_Push\
{\
  required BattleResult result = 1;  // 胜利或失败\
}\
\
// 战斗结束(如果结算需要的数据中，有服务器搜集不到的数据，需要客户端发，没有的话就可以删掉这个消息)\
message BattleOver\
{\
}\
\
// 推送战斗结算数据\
message BattleOver_Push\
{\
  required BattleResult result = 1;  // 胜利或失败\
  // TODO 结算界面需要展示什么内容待定\
}\
\
// 客户端请求游戏服战斗结算\
message BattleSettle\
{\
}\
\
message BattleSettle_S2C\
{\
  required bool result = 1;// 结算结果\
  // TODO 结算结果，需要返回什么根据需求再定\
}\
\
// 离开战斗服\
message BattleLeave\
{\
}\
\
// 不需要了\
//// KCP登录协议\
//message KcpLogin {\
//  required int32 uid = 1;        // 玩家id\
//}\
//\
//message KcpLogin_S2C {\
//  required int32 uid = 1;        // 玩家id\
//}\
\
// 单人战斗测试协议\
message BattleSoloTest\
{\
  required int32 mainLevelId = 1;//关卡id：注意正式的协议不能让玩家传关卡id，容易有作弊风险\
  required int32 formationId = 2;//武将阵型id\
}\
\
message BattleSoloTest_S2C\
{\
  required bool result = 1; // 是否成功开始\
  required BattleEnterInfo battleEnterInfo = 2; // 战斗进入数据\
  optional ServerInfo server = 3; // 战斗服信息\
  required int32 kcpConvId = 4;  // kcp唯一id\
}\
\
// 测试战斗结束（机器人自测用）\
message TestBattleOver\
{\
}\
\
// 测试战斗协议\
message TestBattleDemo\
{\
  required int32 param1 = 1;\
  required int64 param2 = 2;\
  required float param3 = 3;\
  required double param4 = 4;\
  required bool param5 = 5;\
  required string param6 = 6;\
  optional bytes param7 = 7;\
  optional BattleResult param8 = 8;\
  optional ClientLog param9 = 9;\
  repeated LevelExp param10 = 10;\
  repeated int32 param11 = 11;\
}\
\
message TestBattleDemo_S2C\
{\
  required int32 param1 = 1;\
  required int64 param2 = 2;\
  required float param3 = 3;\
  required double param4 = 4;\
  required bool param5 = 5;\
  required string param6 = 6;\
  optional bytes param7 = 7;\
  optional BattleResult param8 = 8;\
  optional ClientLog param9 = 9;\
  repeated LevelExp param10 = 10;\
  repeated int32 param11 = 11;\
}\
\
// KCP测试协议\
message TestKcp {\
  required int64 clientTime = 1;\
  required int32 msgIndex = 2;\
  optional string content = 3;\
}\
\
// KCP测试协议\
message TestKcp_S2C {\
  required int64 clientTime = 1;\
  required int64 serverTime = 2;\
  required int32 msgIndex = 3;\
  optional string content = 4;\
}\
\
// 通知显示层创建玩家角色\
message CreatePlayerCharacter2View\
{\
  repeated PlayerShowBasicInfo playerInfo = 1;\
}\
\
// 战斗lua通知事件\
message BattleLuaEvent_Push {\
  required int32 battleEvent = 1; // 战斗事件枚举，参照Msg.BattleEvent\
  optional string params = 2;     // 事件参数\
}\
\
// 玩家移动消息\
message PlayerMoveInput\
{\
  required Vector3 moveParam = 1;\
  required Vector3 cameraParam = 2;\
}\
\
// 玩家切换角色消息\
message PlayerChangeLeaderInput\
{\
  required int32 leaderNetId = 1; // 要切换的角色id\
}\
\
// 战斗同步数据\
message BattleOutputData\
{\
  repeated BattleUnitOutputData info = 1;\
}\
"
return protoStr