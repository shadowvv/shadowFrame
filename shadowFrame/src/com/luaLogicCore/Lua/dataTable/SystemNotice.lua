local default = {id=0,styleId=0,text=""}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SystemNotice_Xls : table 
SystemNotice_Xls =
{
    ["1"]=setmetatable({id=1,styleId=1,text="货币不足"},mt),
    ["2"]=setmetatable({id=2,styleId=1,text="货{1}币不{2}足"},mt),
    ["3"]=setmetatable({id=3,styleId=2,text="武装升级成功"},mt),
    ["4"]=setmetatable({id=4,styleId=3,text="律{1}叶升级成{2}功"},mt),
    ["5"]=setmetatable({id=5,styleId=1,text="货<color=#CE4B4B>币</color>不足"},mt),
    ["99"]=setmetatable({id=99,styleId=3,text="占位"},mt),
    ["100"]=setmetatable({id=100,styleId=1,text="{1}"},mt),
    ["101"]=setmetatable({id=101,styleId=3,text="配置已应用"},mt),
    ["102"]=setmetatable({id=102,styleId=3,text="配置应用失败！"},mt),
    ["103"]=setmetatable({id=103,styleId=3,text="部分配置下次战斗后生效"},mt),
    ["104"]=setmetatable({id=104,styleId=3,text="已恢复默认"},mt),
    ["105"]=setmetatable({id=105,styleId=3,text="UID复制成功！"},mt),
    ["106"]=setmetatable({id=106,styleId=1,text="功能正在施工，暂不开放，敬请谅解"},mt),
    ["201"]=setmetatable({id=201,styleId=1,text="武装数量过多，建议整理"},mt),
    ["202"]=setmetatable({id=202,styleId=1,text="镜像数量过多，建议整理"},mt),
    ["203"]=setmetatable({id=203,styleId=1,text="该道具不可分解"},mt),
    ["204"]=setmetatable({id=204,styleId=1,text="已达到可选道具种类上限"},mt),
    ["205"]=setmetatable({id=205,styleId=3,text="感知已补充"},mt),
    ["206"]=setmetatable({id=206,styleId=1,text="武装不能被分解"},mt),
    ["207"]=setmetatable({id=207,styleId=1,text="武装上锁中，解锁后可进行分解"},mt),
    ["208"]=setmetatable({id=208,styleId=1,text="该武装正在被{1}装备，卸下后可分解"},mt),
    ["209"]=setmetatable({id=209,styleId=1,text="已达到可选武装上限"},mt),
    ["210"]=setmetatable({id=210,styleId=1,text="仓库已达上限"},mt),
    ["300"]=setmetatable({id=300,styleId=1,text="{1}不足，请补充{1}"},mt),
    ["301"]=setmetatable({id=301,styleId=1,text="无斯露德升级素材"},mt),
    ["302"]=setmetatable({id=302,styleId=3,text="经验值提升成功！"},mt),
    ["303"]=setmetatable({id=303,styleId=1,text="斯露德突破所需素材不足"},mt),
    ["304"]=setmetatable({id=304,styleId=1,text="未选择任何升级素材"},mt),
    ["305"]=setmetatable({id=305,styleId=1,text="所选材料可以使斯露德达到满级，无法继续添加"},mt),
    ["401"]=setmetatable({id=401,styleId=1,text="具现潜能觉醒所需素材不足"},mt),
    ["402"]=setmetatable({id=402,styleId=3,text="具现潜能觉醒成功"},mt),
    ["501"]=setmetatable({id=501,styleId=3,text="位阶晋升成功"},mt),
    ["551"]=setmetatable({id=551,styleId=3,text="技能镶嵌成功"},mt),
    ["601"]=setmetatable({id=601,styleId=1,text="所选材料可以使武装达到满级，无法继续添加素材"},mt),
    ["602"]=setmetatable({id=602,styleId=1,text="已达到可选材料上限，无法继续添加素材"},mt),
    ["603"]=setmetatable({id=603,styleId=1,text="武装已锁定，解除锁定后可作为素材使用。"},mt),
    ["604"]=setmetatable({id=604,styleId=1,text="无武装升级素材"},mt),
    ["605"]=setmetatable({id=605,styleId=3,text="经验值提升成功！"},mt),
    ["606"]=setmetatable({id=606,styleId=1,text="武装改装所需素材不足"},mt),
    ["607"]=setmetatable({id=607,styleId=3,text="武装更换成功"},mt),
    ["608"]=setmetatable({id=608,styleId=1,text="所选材料可以使武装达到精炼满级，无法继续添加素材"},mt),
    ["609"]=setmetatable({id=609,styleId=1,text="未选择任何升级素材"},mt),
    ["610"]=setmetatable({id=610,styleId=1,text="未选择任何升级素材"},mt),
    ["651"]=setmetatable({id=651,styleId=1,text="所选材料可以使镜像达到满级，无法继续添加素材"},mt),
    ["652"]=setmetatable({id=652,styleId=1,text="已达到可选材料上限，无法继续添加素材"},mt),
    ["653"]=setmetatable({id=653,styleId=1,text="镜像已锁定，解除锁定后可作为素材使用。"},mt),
    ["654"]=setmetatable({id=654,styleId=1,text="无镜像升级素材"},mt),
    ["655"]=setmetatable({id=655,styleId=3,text="经验值提升成功！"},mt),
    ["656"]=setmetatable({id=656,styleId=3,text="镜像更换成功"},mt),
    ["657"]=setmetatable({id=657,styleId=1,text="未选择任何强化素材"},mt),
    ["658"]=setmetatable({id=658,styleId=1,text="未选择任何精炼素材"},mt),
    ["660"]=setmetatable({id=660,styleId=1,text="请先完成当次重构"},mt),
    ["661"]=setmetatable({id=661,styleId=1,text="该斯露德镜像位置未解锁，无法装备镜像"},mt),
    ["701"]=setmetatable({id=701,styleId=3,text="已成功任命{1}为助手"},mt),
    ["801"]=setmetatable({id=801,styleId=1,text="{1}：{2}：{3}后开启"},mt),
    ["802"]=setmetatable({id=802,styleId=1,text="任务完成数量不足"},mt),
    ["803"]=setmetatable({id=803,styleId=1,text="{1}天后开启"},mt),
    ["804"]=setmetatable({id=804,styleId=1,text="{1}小时后开启"},mt),
    ["805"]=setmetatable({id=805,styleId=1,text="{1}分钟后开启"},mt),
    ["806"]=setmetatable({id=806,styleId=1,text="{1}分钟内开启"},mt),
    ["901"]=setmetatable({id=901,styleId=1,text="昵称超过规定字数"},mt),
    ["902"]=setmetatable({id=902,styleId=1,text="昵称不符合要求"},mt),
    ["951"]=setmetatable({id=951,styleId=3,text="已领取/已读所有邮件"},mt),
    ["954"]=setmetatable({id=954,styleId=1,text="无可领取/已读的邮件"},mt),
    ["952"]=setmetatable({id=952,styleId=3,text="已将已读邮件删除。"},mt),
    ["953"]=setmetatable({id=953,styleId=1,text="无可删除的已读邮件"},mt),
    ["1000"]=setmetatable({id=1000,styleId=1,text="功能暂未开放"},mt),
    ["1001"]=setmetatable({id=1001,styleId=1,text="网络异常，请稍后再试"},mt),
    ["2000"]=setmetatable({id=2000,styleId=1,text="需通关前置关卡"},mt),
    ["2001"]=setmetatable({id=2001,styleId=1,text="{1}"},mt),
    ["2002"]=setmetatable({id=2002,styleId=1,text="每{1}，请留意开放时间"},mt),
    ["3001"]=setmetatable({id=3001,styleId=1,text="完成{1}后解锁"},mt),
    ["3002"]=setmetatable({id=3002,styleId=1,text="该任务尚未完成/该任务仍在进行中"},mt),
    ["3003"]=setmetatable({id=3003,styleId=1,text="导师达到{1}级解锁"},mt),
    ["3004"]=setmetatable({id=3004,styleId=3,text="新的挑战关卡已解锁"},mt),
    ["3005"]=setmetatable({id=3005,styleId=1,text="导师达到{1}级解锁"},mt),
    ["3006"]=setmetatable({id=3006,styleId=3,text="出现突袭作战!"},mt),
    ["3007"]=setmetatable({id=3007,styleId=1,text="超过时限，点位信息失效，请返回"},mt),
    ["3008"]=setmetatable({id=3008,styleId=1,text="通关一次角色断章任务后解锁"},mt),
    ["4000"]=setmetatable({id=4000,styleId=1,text="点位已刷新，请返回"},mt),
    ["4001"]=setmetatable({id=4001,styleId=3,text="新的高压行动已解锁"},mt),
    ["10001"]=setmetatable({id=10001,styleId=1,text="时间剩余1分钟"},mt),
    ["10002"]=setmetatable({id=10002,styleId=1,text="时间剩余30秒"},mt),
    ["21001"]=setmetatable({id=21001,styleId=1,text="支付失败"},mt),
    ["21499"]=setmetatable({id=21499,styleId=1,text="支付失败"},mt),
    ["40018"]=setmetatable({id=40018,styleId=1,text="服务器繁忙，请稍后再试"},mt),
    ["80000"]=setmetatable({id=80000,styleId=1,text="——"},mt),
    ["80100"]=setmetatable({id=80100,styleId=1,text="当前状态不可使用"},mt),
    ["80101"]=setmetatable({id=80101,styleId=1,text="当前状态不可更改队伍配置"},mt),
    ["80102"]=setmetatable({id=80102,styleId=1,text="当前状态不可调整此配置"},mt),
    ["80103"]=setmetatable({id=80103,styleId=1,text="您已获取过该奖励"},mt),
    ["80104"]=setmetatable({id=80104,styleId=1,text="本关奖励已全部获取，无法再次挑战"},mt),
    ["80105"]=setmetatable({id=80105,styleId=1,text="请点选要出场的斯露德"},mt),
    ["80106"]=setmetatable({id=80106,styleId=1,text="两个队伍都需要安排要出场的斯露德"},mt),
    ["80107"]=setmetatable({id=80107,styleId=1,text="存档点已过期，已将关卡进度重置"},mt),
    ["80108"]=setmetatable({id=80108,styleId=1,text="请先通关前序关卡"},mt),
    ["80109"]=setmetatable({id=80109,styleId=1,text="导师达到{1}级时解锁"},mt),
    ["80151"]=setmetatable({id=80151,styleId=1,text="此道具需要{1}后解锁合成"},mt),
    ["80152"]=setmetatable({id=80152,styleId=1,text="材料不足，无法合成"},mt),
    ["80153"]=setmetatable({id=80153,styleId=1,text="{1}不足，无法合成"},mt),
    ["81000"]=setmetatable({id=81000,styleId=1,text="操作失败"},mt),
    ["81001"]=setmetatable({id=81001,styleId=1,text="你创建了小队"},mt),
    ["81002"]=setmetatable({id=81002,styleId=1,text="先取消准备才可以更换斯露德"},mt),
    ["81003"]=setmetatable({id=81003,styleId=1,text="{1}进入小队"},mt),
    ["81004"]=setmetatable({id=81004,styleId=1,text="{1}离开小队"},mt),
    ["81005"]=setmetatable({id=81005,styleId=1,text="该小队已解散"},mt),
    ["81006"]=setmetatable({id=81006,styleId=1,text="{1}成为了队长"},mt),
    ["81007"]=setmetatable({id=81007,styleId=1,text="匹配时无法做此操作"},mt),
    ["81008"]=setmetatable({id=81008,styleId=1,text="{1}处于离线状态，不可转移为队长"},mt),
    ["81009"]=setmetatable({id=81009,styleId=1,text="{1}已离开小队"},mt),
    ["81010"]=setmetatable({id=81010,styleId=1,text="你成为了队长"},mt),
    ["81011"]=setmetatable({id=81011,styleId=1,text="小队已满，无法邀请"},mt),
    ["81012"]=setmetatable({id=81012,styleId=1,text="操作过于频繁，请稍候再试"},mt),
    ["81013"]=setmetatable({id=81013,styleId=1,text="{1}还有正在确认中的邀请，请稍候"},mt),
    ["81014"]=setmetatable({id=81014,styleId=1,text="{1}已有小队"},mt),
    ["81015"]=setmetatable({id=81015,styleId=1,text="{1}尚未解锁此玩法"},mt),
    ["81016"]=setmetatable({id=81016,styleId=1,text="{1}正在战斗中"},mt),
    ["81017"]=setmetatable({id=81017,styleId=1,text="当前已有小队，无法同意"},mt),
    ["81018"]=setmetatable({id=81018,styleId=1,text="{1}拒绝了小队邀请"},mt),
    ["81019"]=setmetatable({id=81019,styleId=1,text="请输入正确的队伍编号"},mt),
    ["81020"]=setmetatable({id=81020,styleId=1,text="你还没有解锁小队当前的目标：{1}"},mt),
    ["81021"]=setmetatable({id=81021,styleId=1,text="该小队人数已满"},mt),
    ["81022"]=setmetatable({id=81022,styleId=1,text="已申请加入{1}的小队"},mt),
    ["81023"]=setmetatable({id=81023,styleId=1,text="已复制小队编号"},mt),
    ["81024"]=setmetatable({id=81024,styleId=1,text="体力不足，请补充体力或选择为协助作战"},mt),
    ["81025"]=setmetatable({id=81025,styleId=1,text="已准备，等待队长开始"},mt),
    ["81026"]=setmetatable({id=81026,styleId=1,text="已取消准备"},mt),
    ["81027"]=setmetatable({id=81027,styleId=1,text="队伍正在匹配中，无法做此操作"},mt),
    ["81028"]=setmetatable({id=81028,styleId=1,text="请等待队员全部进入准备状态"},mt),
    ["81029"]=setmetatable({id=81029,styleId=1,text="小队人数不足"},mt),
    ["81030"]=setmetatable({id=81030,styleId=1,text="{1}拒绝了你的召回"},mt),
    ["81031"]=setmetatable({id=81031,styleId=1,text="{1}尚未解锁{2}"},mt),
    ["81032"]=setmetatable({id=81032,styleId=1,text="小队目标已变更为：{1}"},mt),
    ["81033"]=setmetatable({id=81033,styleId=1,text="当前处于小队组队状态，无法进行此操作"},mt),
    ["81034"]=setmetatable({id=81034,styleId=1,text="{1}拒绝了入队申请"},mt),
    ["81035"]=setmetatable({id=81035,styleId=1,text="队伍中有重复的斯露德，无法准备"},mt),
    ["81036"]=setmetatable({id=81036,styleId=1,text="当前处于小队组队状态，无法进行此操作"},mt),
    ["81037"]=setmetatable({id=81037,styleId=1,text="已准备时禁止此操作，请等待队长开始或取消准备"},mt),
    ["81038"]=setmetatable({id=81038,styleId=1,text="已超时，对方未响应"},mt),
    ["81039"]=setmetatable({id=81039,styleId=1,text="不可操控队友的斯露德"},mt),
    ["81045"]=setmetatable({id=81045,styleId=1,text="当前还没有目标，需要队长选择小队玩法"},mt),
    ["81046"]=setmetatable({id=81046,styleId=1,text="当前还没有目标，请手动选择任一小队玩法"},mt),
    ["81047"]=setmetatable({id=81047,styleId=1,text="队伍中有重复的斯露德，无法开始战斗"},mt),
    ["81048"]=setmetatable({id=81048,styleId=1,text="您已被队长移出小队"},mt),
    ["81049"]=setmetatable({id=81049,styleId=1,text="当前所在界面无法响应召回，请返回主界面再前往小队"},mt),
    ["81050"]=setmetatable({id=81050,styleId=1,text="当前所在界面无法跳转小队，请返回主界面再前往"},mt),
    ["81090"]=setmetatable({id=81090,styleId=1,text="开始匹配"},mt),
    ["81091"]=setmetatable({id=81091,styleId=1,text="已取消匹配"},mt),
    ["81092"]=setmetatable({id=81092,styleId=1,text="匹配成功，已加入小队"},mt),
    ["81093"]=setmetatable({id=81093,styleId=1,text="匹配人数过少，匹配失败"},mt),
    ["81094"]=setmetatable({id=81094,styleId=1,text="只有队长有权做此操作"},mt),
    ["81095"]=setmetatable({id=81095,styleId=1,text="行动已过期，匹配结束"},mt),
    ["82001"]=setmetatable({id=82001,styleId=1,text="该玩家数据不存在"},mt),
    ["82002"]=setmetatable({id=82002,styleId=1,text="对方好友数量已达上限"},mt),
    ["82003"]=setmetatable({id=82003,styleId=1,text="对方已经在好友列表中"},mt),
    ["82004"]=setmetatable({id=82004,styleId=1,text="好友数量已达上限"},mt),
    ["82005"]=setmetatable({id=82005,styleId=1,text="添加{1}为好友成功"},mt),
    ["82006"]=setmetatable({id=82006,styleId=1,text="UID不存在"},mt),
    ["82007"]=setmetatable({id=82007,styleId=1,text="已经玩家{1}移出黑名单"},mt),
    ["82008"]=setmetatable({id=82008,styleId=1,text="举报成功"},mt),
    ["82009"]=setmetatable({id=82009,styleId=1,text="{1}拒绝了你的好友申请"},mt),
    ["82010"]=setmetatable({id=82010,styleId=1,text="命名不符合规范"},mt),
    ["82011"]=setmetatable({id=82011,styleId=1,text="输入的UID不能为空"},mt),
    ["82012"]=setmetatable({id=82012,styleId=1,text="请输入规范的UID"},mt),
    ["82013"]=setmetatable({id=82013,styleId=1,text="好友申请已发送"},mt),
    ["82014"]=setmetatable({id=82014,styleId=1,text="无法添加自己为好友"},mt),
    ["82021"]=setmetatable({id=82021,styleId=1,text="成功删除好友 {1}"},mt),
    ["82101"]=setmetatable({id=82101,styleId=1,text="功能已关闭"},mt),
    ["82102"]=setmetatable({id=82102,styleId=1,text="您因为{1}被禁言，无法发送消息"},mt),
    ["82103"]=setmetatable({id=82103,styleId=1,text="您已被该玩家拉黑"},mt),
    ["82104"]=setmetatable({id=82104,styleId=1,text="您的发言频率过快"},mt),
    ["82105"]=setmetatable({id=82105,styleId=1,text="消息过长"},mt),
    ["82901"]=setmetatable({id=82901,styleId=1,text="{1}不足请补充，或者修改体力设置"},mt),
    ["82902"]=setmetatable({id=82902,styleId=1,text="已选择为默认模式"},mt),
    ["82903"]=setmetatable({id=82903,styleId=1,text="已选择为倍率模式"},mt),
    ["82904"]=setmetatable({id=82904,styleId=1,text="已选择为助战模式"},mt),
    ["82905"]=setmetatable({id=82905,styleId=1,text="通关过一次之后，开启倍率模式"},mt),
    ["83000"]=setmetatable({id=83000,styleId=1,text="——"},mt),
    ["83101"]=setmetatable({id=83101,styleId=1,text="不在开放时间范围内，行动已关闭"},mt),
    ["83102"]=setmetatable({id=83102,styleId=1,text="本周奖励次数已达上限，选为协助作战才可参加"},mt),
    ["84000"]=setmetatable({id=84000,styleId=1,text="将于{1}后开启"},mt),
    ["84001"]=setmetatable({id=84001,styleId=1,text="活动已结束"},mt),
    ["84002"]=setmetatable({id=84002,styleId=1,text="需先通关：主线 {1}"},mt),
    ["84003"]=setmetatable({id=84003,styleId=1,text="将于{1}开启"},mt),
    ["84004"]=setmetatable({id=84004,styleId=1,text="商城已关闭，购买失败"},mt),
    ["85000"]=setmetatable({id=85000,styleId=1,text="——"},mt),
    ["86000"]=setmetatable({id=86000,styleId=1,text="——"},mt),
    ["87000"]=setmetatable({id=87000,styleId=1,text="——"},mt),
    ["90000"]=setmetatable({id=90000,styleId=1,text="——"},mt),
    ["99901"]=setmetatable({id=99901,styleId=1,text="{1}不足，将在每周一登录时获取"},mt),
    ["99902"]=setmetatable({id=99902,styleId=1,text="该活动为当期限定活动，无法参加"},mt),
    ["99990"]=setmetatable({id=99990,styleId=1,text="——"},mt),
    ["100000"]=setmetatable({id=100000,styleId=1,text="仓库容量已达上限"},mt),
    ["100001"]=setmetatable({id=100001,styleId=1,text="兑换次数已达上限"},mt),
    ["120006"]=setmetatable({id=120006,styleId=1,text="至少上阵一名斯露德"},mt),
    ["130000"]=setmetatable({id=130000,styleId=1,text="兑换次数已达上限"},mt),
    ["130001"]=setmetatable({id=130001,styleId=1,text="{1}不足，无法兑换"},mt),
    ["130002"]=setmetatable({id=130002,styleId=1,text="没有选择任何道具"},mt),
    ["130003"]=setmetatable({id=130003,styleId=1,text="感知兑换成功"},mt),
    ["130004"]=setmetatable({id=130004,styleId=1,text="您已达到感知获取上限"},mt),
    ["130005"]=setmetatable({id=130005,styleId=1,text="感知已补充"},mt),
    ["140000"]=setmetatable({id=140000,styleId=1,text="看完所有内容后，可关闭"},mt),
    ["140001"]=setmetatable({id=140001,styleId=1,text="没有更多内容了"},mt),
    ["150000"]=setmetatable({id=150000,styleId=1,text="尝试无效，无法修改导师名称"},mt),
    ["150001"]=setmetatable({id=150001,styleId=1,text="昵称过长"},mt),
    ["150002"]=setmetatable({id=150002,styleId=1,text="请输入合法昵称"},mt),
    ["150003"]=setmetatable({id=150003,styleId=3,text="导师昵称修改成功"},mt),
    ["150004"]=setmetatable({id=150004,styleId=3,text="头像更新成功"},mt),
    ["150005"]=setmetatable({id=150005,styleId=1,text="收集角色——{1}解锁该头像"},mt),
    ["150006"]=setmetatable({id=150006,styleId=3,text="生日更换成功"},mt),
    ["150007"]=setmetatable({id=150007,styleId=3,text="签名更换成功"},mt),
    ["150008"]=setmetatable({id=150008,styleId=1,text="复制成功"},mt),
    ["150009"]=setmetatable({id=150009,styleId=1,text="请输入合法签名"},mt),
    ["150010"]=setmetatable({id=150010,styleId=3,text="头像框更新成功"},mt),
    ["150011"]=setmetatable({id=150011,styleId=3,text="名片更新成功"},mt),
    ["150012"]=setmetatable({id=150012,styleId=1,text="名片未解锁"},mt),
    ["150013"]=setmetatable({id=150013,styleId=1,text="名片正在使用中"},mt),
    ["150014"]=setmetatable({id=150014,styleId=1,text="功能尚未解锁"},mt),
    ["160001"]=setmetatable({id=160001,styleId=1,text="好感度到达{1}级解锁"},mt),
    ["160002"]=setmetatable({id=160002,styleId=1,text="获得角色后解锁"},mt),
    ["170001"]=setmetatable({id=170001,styleId=1,text="无法购买，请清理仓库"},mt),
    ["170002"]=setmetatable({id=170002,styleId=1,text="货币不足，无法购买"},mt),
    ["180001"]=setmetatable({id=180001,styleId=1,text="获得武装后解锁"},mt),
    ["180002"]=setmetatable({id=180002,styleId=1,text="通关{1}后解锁"},mt),
    ["180003"]=setmetatable({id=180003,styleId=1,text="获得镜像后解锁"},mt),
    ["180004"]=setmetatable({id=180004,styleId=1,text="击败{1}后解锁"},mt),
    ["180005"]=setmetatable({id=180005,styleId=1,text="请先在世界中开启章节"},mt),
    ["180006"]=setmetatable({id=180006,styleId=1,text="当前版本暂不开放"},mt),
    ["190001"]=setmetatable({id=190001,styleId=1,text="获得此斯露德后解锁"},mt),
    ["190002"]=setmetatable({id=190002,styleId=1,text="未发现可选定的天赋"},mt),
    ["190003"]=setmetatable({id=190003,styleId=2,text="天赋已选定"},mt),
    ["190004"]=setmetatable({id=190004,styleId=1,text="未发现可重置的天赋"},mt),
    ["190005"]=setmetatable({id=190005,styleId=1,text="全部天赋已重置"},mt),
    ["190006"]=setmetatable({id=190006,styleId=1,text="努力制作中，尽请期待"},mt),
    ["190007"]=setmetatable({id=190007,styleId=1,text="好感度等级已达最大"},mt),
    ["190008"]=setmetatable({id=190008,styleId=1,text="请先选择要赠送的礼物"},mt),
    ["200001"]=setmetatable({id=200001,styleId=1,text="请完成当前引导任务"},mt),
    ["210001"]=setmetatable({id=210001,styleId=1,text="连接超时"},mt),
    ["220001"]=setmetatable({id=220001,styleId=1,text="未能找到该玩家"},mt),
    ["220002"]=setmetatable({id=220002,styleId=1,text="该玩家未开启巡检任务"},mt),
    ["220003"]=setmetatable({id=220003,styleId=1,text="未能找到该巡检编队"},mt),
    ["220004"]=setmetatable({id=220004,styleId=1,text="请选择4名角色开启脉流巡检任务"},mt),
    ["220005"]=setmetatable({id=220005,styleId=1,text="该巡检任务不在开放周期内"},mt),
    ["220006"]=setmetatable({id=220006,styleId=1,text="请选择4名角色进入编队执行清理任务"},mt),
    ["220007"]=setmetatable({id=220007,styleId=1,text="请选择2名角色进入编队执行清理任务"},mt),
    ["220008"]=setmetatable({id=220008,styleId=1,text="任务时间已到期"},mt),
    ["220009"]=setmetatable({id=220009,styleId=1,text="{1}开启了未满员时自动开启快速邀请"},mt),
    ["220010"]=setmetatable({id=220010,styleId=1,text="{1}关闭了未满员时自动开启快速邀请"},mt),
    ["220011"]=setmetatable({id=220011,styleId=1,text="{1}开启了快速邀请"},mt),
    ["220012"]=setmetatable({id=220012,styleId=1,text="{1}关闭了快速邀请"},mt),
    ["220013"]=setmetatable({id=220013,styleId=1,text="寻找队伍中..."},mt),
    ["220014"]=setmetatable({id=220014,styleId=1,text="停止寻找队伍"},mt),
    ["220015"]=setmetatable({id=220015,styleId=1,text="{1}在{2}年{3}月{4}日 {5} 开启"},mt),
    ["221003"]=setmetatable({id=221003,styleId=1,text="{1} 进入巡检小队"},mt),
    ["221004"]=setmetatable({id=221004,styleId=1,text="{1} 离开巡检小队"},mt),
    ["221005"]=setmetatable({id=221005,styleId=1,text="该巡检小队已解散"},mt),
    ["221009"]=setmetatable({id=221009,styleId=1,text="{1} 已离开巡检队伍"},mt),
    ["221011"]=setmetatable({id=221011,styleId=1,text="当前巡检小队已满，无法邀请"},mt),
    ["221018"]=setmetatable({id=221018,styleId=1,text="{1} 拒绝了巡检小队的邀请"},mt),
    ["221022"]=setmetatable({id=221022,styleId=1,text="已申请加入队伍"},mt),
    ["250000"]=setmetatable({id=250000,styleId=1,text="请先通关{1}"},mt),
    ["250001"]=setmetatable({id=250001,styleId=1,text="当期异空战线已结束"},mt),
    ["250002"]=setmetatable({id=250002,styleId=1,text="已完成自动作战"},mt),
    ["250003"]=setmetatable({id=250003,styleId=1,text="当前不在战斗阶段"},mt),
    ["300001"]=setmetatable({id=300001,styleId=1,text="还未完成聚餐计划的制定"},mt),
    ["300002"]=setmetatable({id=300002,styleId=1,text="指引力不足"},mt),
    ["300003"]=setmetatable({id=300003,styleId=1,text="已在执行其他任务"},mt),
    ["300004"]=setmetatable({id=300004,styleId=1,text="已达同时派出上限"},mt),
    ["300005"]=setmetatable({id=300005,styleId=1,text="已达指引力上限"},mt),
    ["300006"]=setmetatable({id=300006,styleId=1,text="未选中任何探索指令"},mt),
    ["300007"]=setmetatable({id=300007,styleId=2,text="指引力补充成功"},mt),
    ["310001"]=setmetatable({id=310001,styleId=1,text="兑换成功！奖励已发送至邮箱。"},mt),
    ["320001"]=setmetatable({id=320001,styleId=1,text="超出可购买天数上限！无法购买。"},mt),
    ["330001"]=setmetatable({id=330001,styleId=1,text="请先选择物品"},mt),
    ["330003"]=setmetatable({id=330003,styleId=1,text="已达单次最大使用上限"},mt),
    ["340001"]=setmetatable({id=340001,styleId=1,text="物品已售罄"},mt),
    ["350001"]=setmetatable({id=350001,styleId=1,text="物品已拥有"},mt),
    ["360001"]=setmetatable({id=360001,styleId=2,text="天赋已激活"},mt),
    ["360002"]=setmetatable({id=360002,styleId=1,text="未选择任何成员"},mt),
    ["360003"]=setmetatable({id=360003,styleId=1,text="已达到最大选择数量"},mt),
    ["360004"]=setmetatable({id=360004,styleId=1,text="所需条件不足"},mt),
    ["360005"]=setmetatable({id=360005,styleId=1,text="{1}进行中"},mt),
    ["360006"]=setmetatable({id=360006,styleId=1,text="至少选择一位未重伤的斯露德"},mt),
    ["360007"]=setmetatable({id=360007,styleId=1,text="次数已耗尽"},mt),
    ["360008"]=setmetatable({id=360008,styleId=1,text="未选中任何加成效果"},mt),
    ["360009"]=setmetatable({id=360009,styleId=1,text="未拥有足够的迷宫符石"},mt),
    ["990000"]=setmetatable({id=990000,styleId=1,text="{1}"},mt),
    ["1004"]=setmetatable({id=1004,styleId=1,text="{1}不足，无法补签"},mt),
    ["995555"]=setmetatable({id=995555,styleId=1,text="该符灵上锁中，无法分解"},mt),
    ["995556"]=setmetatable({id=995556,styleId=1,text="该符灵正在被{1}使用，无法分解"},mt),
    ["995557"]=setmetatable({id=995557,styleId=1,text="购买成功，进阶版奖励已解锁！"},mt),
    ["995558"]=setmetatable({id=995558,styleId=1,text="航迹等级购买成功"},mt),
    ["995559"]=setmetatable({id=995559,styleId=1,text="{1}后解锁"},mt),
    ["995560"]=setmetatable({id=995560,styleId=1,text="航迹等级达到{1}时解锁"},mt),
    ["995561"]=setmetatable({id=995561,styleId=1,text="该斯露德与天赋限制类型不符合，无法装备"},mt),
    ["996000"]=setmetatable({id=996000,styleId=1,text="同一符灵不可镶嵌同种拓板在两个槽位上"},mt),
    ["996001"]=setmetatable({id=996001,styleId=1,text="词缀已满级"},mt),
    ["996002"]=setmetatable({id=996002,styleId=1,text="拓板数量不足"},mt),
    ["996003"]=setmetatable({id=996003,styleId=1,text="已解除重塑"},mt),
    ["996004"]=setmetatable({id=996004,styleId=1,text="已成功重塑为{1}"},mt),
    ["996005"]=setmetatable({id=996005,styleId=1,text="该形态暂未解锁，无法重塑"},mt),
    ["996006"]=setmetatable({id=996006,styleId=1,text="所需消耗不足"},mt),
    ["996007"]=setmetatable({id=996007,styleId=1,text="已激活的符灵，剥离后才分解"},mt),
    ["996008"]=setmetatable({id=996008,styleId=1,text="当前无槽位可激活"},mt),
    ["996009"]=setmetatable({id=996009,styleId=1,text="{1}提升至{2}级"},mt),
    ["996010"]=setmetatable({id=996010,styleId=1,text="已镶嵌符灵无法分解"},mt),
    ["100002"]=setmetatable({id=100002,styleId=1,text="当前已穿戴"},mt),
    ["100003"]=setmetatable({id=100003,styleId=1,text="换装成功"},mt),
    ["995562"]=setmetatable({id=995562,styleId=1,text="{1}后可开启航迹玩法"},mt),
    ["995563"]=setmetatable({id=995563,styleId=1,text="{1}后开启"},mt),
    ["1100"]=setmetatable({id=1100,styleId=1,text="请选择您的游戏环境"},mt),
    ["995564"]=setmetatable({id=995564,styleId=1,text="航迹等级已满级"},mt),
    ["330002"]=setmetatable({id=330002,styleId=1,text="当前活动处于维护中"},mt),
    ["400001"]=setmetatable({id=400001,styleId=1,text="导师达到{1}级解锁"},mt),
    ["400002"]=setmetatable({id=400002,styleId=1,text="将于{1}开启"},mt),
    ["400003"]=setmetatable({id=400003,styleId=1,text="通关{1}后解锁"},mt),
    ["400004"]=setmetatable({id=400004,styleId=1,text="天空战令已满级"},mt),
    ["400005"]=setmetatable({id=400005,styleId=1,text="物品已过期，无法购买"},mt),
    ["400006"]=setmetatable({id=400006,styleId=1,text="获得战斗胜利解锁外派作战"},mt),
    ["400007"]=setmetatable({id=400007,styleId=1,text="达成三星条件解锁外派作战"},mt),
    ["400008"]=setmetatable({id=400008,styleId=1,text="外派作战进行中，请停止外派后再次尝试"},mt),
    ["400009"]=setmetatable({id=400009,styleId=1,text="外派状态已更新，请重新打开该弹窗。"},mt),
    ["400010"]=setmetatable({id=400010,styleId=1,text="未消耗{1}已返还。"},mt),
    ["400011"]=setmetatable({id=400011,styleId=1,text="无可领取奖励"},mt),
    ["400012"]=setmetatable({id=400012,styleId=1,text="请先点击选择想要的奖励"},mt),
    ["1101"]=setmetatable({id=1101,styleId=1,text="所需道具消耗不足"},mt),
    ["500001"]=setmetatable({id=500001,styleId=1,text="挑战次数已耗尽，无法挑战"},mt),
    ["500002"]=setmetatable({id=500002,styleId=1,text="该斯露德并未配置符灵"},mt),
    ["500003"]=setmetatable({id=500003,styleId=1,text="该斯露德并未配置航迹天赋"},mt),
    ["500004"]=setmetatable({id=500004,styleId=1,text="没有进行过裂隙封锁战斗，无法查看阵容"},mt),
    ["500005"]=setmetatable({id=500005,styleId=1,text="历史上未解锁该强敌的最高难度，无法战术自理"},mt),
    ["500006"]=setmetatable({id=500006,styleId=1,text="裂隙封锁结算中，无法查看排行榜"},mt),
    ["500007"]=setmetatable({id=500007,styleId=1,text="无法对最高难度的强敌使用战术自理"},mt),
    ["500008"]=setmetatable({id=500008,styleId=1,text="该强敌没有锁定记录，无法重置"},mt),
    ["500009"]=setmetatable({id=500009,styleId=1,text="重置强敌成功"},mt),
    ["1111"]=setmetatable({id=1111,styleId=1,text="已锁定属性"},mt),
    ["1112"]=setmetatable({id=1112,styleId=1,text="已解锁属性"},mt),
    ["1113"]=setmetatable({id=1113,styleId=1,text="需要至少保留一条属性为解锁状态"},mt),
    ["1102"]=setmetatable({id=1102,styleId=1,text="内容开发中"},mt),
    ["995565"]=setmetatable({id=995565,styleId=1,text="当前正在{1}，无法进行该操作"},mt),
    ["995566"]=setmetatable({id=995566,styleId=1,text="队伍名称不能为空"},mt),
    ["995567"]=setmetatable({id=995567,styleId=1,text="缺少队伍名称"},mt),
    ["995568"]=setmetatable({id=995568,styleId=1,text="接受邀请成功"},mt),
    ["995569"]=setmetatable({id=995569,styleId=1,text="申请入队成功"},mt),
    ["995570"]=setmetatable({id=995570,styleId=1,text="退出队伍成功"},mt),
    ["995571"]=setmetatable({id=995571,styleId=1,text="创建队伍成功"},mt),
    ["995572"]=setmetatable({id=995572,styleId=1,text="踢出玩家成功"},mt),
    ["995573"]=setmetatable({id=995573,styleId=1,text="申请的队伍人数已满"},mt),
    ["995574"]=setmetatable({id=995574,styleId=1,text="邀请玩家成功"},mt),
    ["995575"]=setmetatable({id=995575,styleId=1,text="转让队长成功"},mt),
    ["995576"]=setmetatable({id=995576,styleId=1,text="任命副队成功"},mt),
    ["995577"]=setmetatable({id=995577,styleId=1,text="一键同意成功"},mt),
    ["995578"]=setmetatable({id=995578,styleId=1,text="一键拒绝成功"},mt),
    ["995579"]=setmetatable({id=995579,styleId=1,text="队伍名称过长，不能超过12个字符"},mt),
    ["995580"]=setmetatable({id=995580,styleId=1,text="没有可以处理的申请"},mt),
    ["995581"]=setmetatable({id=995581,styleId=1,text="无法搜索空队伍ID"},mt),
    ["995582"]=setmetatable({id=995582,styleId=1,text="该斯露德正在配置中"},mt),
    ["995583"]=setmetatable({id=995583,styleId=1,text="未输入导师ID，无法搜索"},mt),
    ["995584"]=setmetatable({id=995584,styleId=1,text="今日已进行过点赞，无法重复点赞"},mt),
    ["995585"]=setmetatable({id=995585,styleId=1,text="该功能暂未开启，敬请期待"},mt),
    ["995586"]=setmetatable({id=995586,styleId=1,text="没有可以借用的同行者，无法挑战联行关卡"},mt),
    ["1114"]=setmetatable({id=1114,styleId=1,text="已达到单次分解数量上限，无法添加"},mt),
    ["470066"]=setmetatable({id=470066,styleId=1,text="有尚未完成的重组，请先选择属性"},mt),
    ["662"]=setmetatable({id=662,styleId=3,text="符灵更换成功"},mt),
    ["663"]=setmetatable({id=663,styleId=3,text="符灵已卸下"},mt),
}
--生成获取数据的方法
---@return SystemNotice
function GetSystemNoticeData(id)
    return SystemNotice_Xls[tostring(id)]
end
--自动生成注释
---@class SystemNotice : table 
---@field id number
---@field styleId number
---@field text string