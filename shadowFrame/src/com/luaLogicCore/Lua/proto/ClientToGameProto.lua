local protoStr = { }
protoStr.str = "import 'Msg.proto';\
package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
message ClientToGame\
{\
  required int32 type = 1;\
}\
"
return protoStr