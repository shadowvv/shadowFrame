local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
// ==========引用结构===========\
\
// 排行榜 存储数据\
message RankStoreData\
{\
    required string storeData = 1;         //排行榜 存储值\
    required int64 scoreCreateTime = 2;    //分数的产生时间\
}\
\
// 排行榜分数\
message RankScore\
{\
    required int32 uid = 1;          //玩家ID\
    required double score = 2;       //玩家分数\
}\
\
// ==========服务器之间的通讯协议===========\
\
// 增加排行榜积分\
message AddRankScore\
{\
    required int32 rankTypeId = 1;         //排行榜 类型Id\
    required int64 period = 2;             //排行榜 期数\
    required int32 level = 3;              //排行榜 段位\
    required int32 zoneId = 4;             //排行榜 小组id\
    required int32 uid = 5;                //玩家的uid\
    required double score = 6;             //分数\
    required int64 scoreCreateTime = 7;    //分数的产生时间\
    required string storeData = 8;         //排行榜 存储数据\
}\
// 增加排行榜积分-返回\
message AddRankScore_S2C\
{\
    required int32 rankTypeId = 1; //排行榜 类型id\
    required int64 period = 2;     //排行榜 期数\
    required int32 level = 3;      //排行榜 段位\
    required int32 zoneId = 4;     //排行榜 小组id\
    required int32 uid = 5;        //玩家的uid\
    required double score = 6;     //分数\
}\
\
// 查询排行榜 大榜 榜单\
message SelectRankList\
{\
    required int32 rankTypeId = 1;           //排行榜 类型id\
    required int64 period = 2;               //排行榜 期数\
}\
// 查询排行榜 大榜 榜单-返回\
message SelectRankList_S2C\
{\
    required int32 rankTypeId = 1;     //排行榜 类型id\
    required int64 period = 2;         //排行榜 期数\
    repeated RankScore rankScores = 3; //大榜 榜单 分数数据\
}\
\
// world服 同步redis中排行榜的数据到内存的发布、订阅\
message WorldSyncRedisRank2Cache_SUB\
{\
    required int32 rankTypeId = 1;           //排行榜 类型id\
    required int64 period = 2;               //排行榜 期数\
}\
\
// game服 同步redis中排行榜的数据到内存的发布、订阅\
message GameSyncRedisRank2Cache_SUB\
{\
    required int32 rankTypeId = 1;           //排行榜 类型id\
    required int64 period = 2;               //排行榜 期数\
}\
\
// 查询排行榜 小组 榜单\
message SelectRankZoneList\
{\
    required int32 rankTypeId = 1;                //排行榜 类型id\
    required int64 period = 2;                    //排行榜 期数\
    required int32 level = 3;                     //排行榜 段位\
    required int32 zoneId = 4;                    //排行榜 小组id\
}\
// 查询排行榜 小组 榜单-返回\
message SelectRankZoneList_S2C\
{\
    required int32 rankTypeId = 1;     //排行榜 类型id\
    required int64 period = 2;         //排行榜 期数\
    required int32 level = 3;          //排行榜 段位\
    required int32 zoneId = 4;         //排行榜 小组id\
    repeated RankScore rankScores = 5; //榜单 分数数据\
}\
\
// game服 同步redis中排行榜 小组 的数据到内存的发布、订阅\
message GameSyncRedisRankZone2Cache_SUB\
{\
    required int32 rankTypeId = 1;               //排行榜 类型id\
    required int64 period = 2;                   //排行榜 期数\
    required int32 level = 3;                    //排行榜 段位\
    required int32 zoneId = 4;                   //排行榜 小组id\
}\
\
// world服 同步redis中排行榜 小组 的数据到内存的发布、订阅\
message WorldSyncRedisRankZone2Cache_SUB\
{\
    required int32 rankTypeId = 1;               //排行榜 类型id\
    required int64 period = 2;                   //排行榜 期数\
    required int32 level = 3;                    //排行榜 段位\
    required int32 zoneId = 4;                   //排行榜 小组id\
}\
"
return protoStr