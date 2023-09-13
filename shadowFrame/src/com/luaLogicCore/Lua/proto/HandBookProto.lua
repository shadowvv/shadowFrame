local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
\
\
 //图鉴收集数目达标领奖协议\
message GetHandbookReward\
{\
	repeated int32 ids=1;//领奖的Id集合 \
}\
//图鉴收集数目达标领奖协议\
message GetHandbookReward_S2C\
{\
	optional Rewards reward=2;//奖励\
	optional HandbookInfo HandbookInfo=3;//图鉴数据，暂时只有奖励领取信息\
}\
"
return protoStr