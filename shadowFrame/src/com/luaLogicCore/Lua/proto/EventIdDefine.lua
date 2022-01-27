local protoStr = { }
protoStr.str = "package msg;\
option java_package = 'com.server.logic.socket.netmsg';// (生成Java类时包名；C#类的命名空间)\
\
enum EventIdEnum\
{\
    SavePlayerInfo_EventId		 =1001;//用户信息\
    \
    Register_EventId			 =1002;//创建角色\
    \
    Login_EventId				 =1003;//角色登录\
    \
    Logout_EventId				 =1004;//角色登出\
    \
    Charge_EventId				 =1005;//充值	\
    \
    AccountLogin_EventId		 =1006;//账号登录\
    \
    GetMoney_EventId			 =1007;//获取判金\
    \
    StoreBuy_EventId			 =1008;//商城购买\
   \
    Online_EventId				 =1009;//统计在线信息\
   \
    Lottery_EventId				 =1010;//抽奖\
    \
    ConsumeMoney_EventId		 =1011;//消耗代币\
   \
    NewGuide_EventId			 =1012;// 新手引导\
    \
    Action_EventId				 =1013;//行为轨迹\
    \
    GetItem_EventId				 =1014;//获取道具\
    \
    ConsumeItem_EventId			 =1015;// 消耗道具\
    \
    EXPChange_EventId			 =3001;//经验变化\
    \
    LevelChange_EventId			 =3002; //级别变化\
    \
	LeaderEXPChange_EventId		 =3003; //武将变化\
    \
    LeaderLevelChange_EventId	 =3004;// 武将等级变化\
  \
    TalentSkillChange_EventId	 =3005; //天赋变化\
	\
    StrengthChange_EventId		 =3006;//体力变化 \
    \
	TaskLog_EventId				 =4001;//任务记录\
}\
\
enum MoneyTypeEnum\
{\
    Coin		 		=1; //铜钱\
	MoneyType 			=2; //判金\
    Currency 			=3;//神秘结晶-金字塔-新充值货币\
}\
"
return protoStr