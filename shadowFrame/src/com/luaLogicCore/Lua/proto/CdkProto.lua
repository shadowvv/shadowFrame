local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
message ExchangeCdk\
{\
  required string cdk = 1;//cdk码\
}\
\
message ExchangeCdk_S2C{\
  required string cdk = 1;\
}\
\
message VersionCdk\
{\
  required string channelId =1; // 渠道\
  required string version = 2;//版本\
}\
\
\
message VersionCdk_S2C{\
  required int32 showCdk = 1; // 展示cdk\
}\
"
return protoStr