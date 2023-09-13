local default = {id="",confirmType=0,titleText="",contentText="",aBtnBG="",aBtnText="",aBtnEvent=0,bBtnBG="",bBtnText="",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=0,defaultCheck=0,paramIds=xlsNilTable}
local mt = {}
mt.__index = function(table, key)
    local val = rawget(table, key)
    if val then
        return val
    else
        return default[key]
    end
end
---@class SystemConfirm_Xls : table 
SystemConfirm_Xls =
{
    ["1"]=setmetatable({id="1",confirmType=1,titleText="系统提示test",contentText="带标题的默认提示！",aBtnBG="",aBtnText="确定test",aBtnEvent=0,bBtnBG="",bBtnText="取消test"},mt),
    ["2"]=setmetatable({id="2",confirmType=1,titleText="",contentText="不带标题的默认提示！左右按钮调换了位置",aBtnBG="",aBtnText="确定在左",aBtnEvent=0,bBtnBG="",bBtnText="取消在右",bBtnEvent=0,isInvertBtn=1},mt),
    ["3"]=setmetatable({id="3",confirmType=1,titleText="",contentText="不带标题的提示！只有一个按钮左对齐文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多文字超多",aBtnBG="",aBtnText="确定"},mt),
    ["4"]=setmetatable({id="4",confirmType=1,titleText="系统提示4",contentText="不允许点确定！",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=6},mt),
    ["5"]=setmetatable({id="5",confirmType=1,titleText="",contentText="不允许点取消！",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=3},mt),
    ["6"]=setmetatable({id="6",confirmType=1,titleText="系统提示6",contentText="自动点确定！",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=6},mt),
    ["7"]=setmetatable({id="7",confirmType=1,titleText="",contentText="自动点取消！",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=3},mt),
    ["8"]=setmetatable({id="8",confirmType=1,titleText="系统提示8",contentText="带勾选项的，默认勾上",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=2,defaultCheck=1},mt),
    ["9"]=setmetatable({id="9",confirmType=1,titleText="",contentText="带勾选项的，默认不勾",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=2},mt),
    ["10"]=setmetatable({id="10",confirmType=2,titleText="系统提示10",contentText="高优先级的强提示！不会被覆盖",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["99"]=setmetatable({id="99",confirmType=2,titleText="系统提示10",contentText="高优先级的强提示！不会被覆盖",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["100"]=setmetatable({id="100",confirmType=2,titleText="提示",contentText="请选择操作",aBtnBG="",aBtnText="返回更新",aBtnEvent=5,bBtnBG="",bBtnText="返回登录",bBtnEvent=3},mt),
    ["101"]=setmetatable({id="101",confirmType=1,titleText="",contentText="确定要恢复为默认设置吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["102"]=setmetatable({id="102",confirmType=1,titleText="",contentText="确定要返回启动页吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["103"]=setmetatable({id="103",confirmType=1,titleText="提示",contentText="确定要重新开始吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["104"]=setmetatable({id="104",confirmType=1,titleText="提示",contentText="确定要退出战斗吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["105"]=setmetatable({id="105",confirmType=1,titleText="",contentText="确定要注销吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["106"]=setmetatable({id="106",confirmType=1,titleText="提示",contentText="提高此设置将可能会导致游戏卡顿，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["107"]=setmetatable({id="107",confirmType=1,titleText="提示",contentText="当前修改尚未保存，是否保存并退出自定义布局？",aBtnBG="",aBtnText="保存",aBtnEvent=0,bBtnBG="",bBtnText="不保存"},mt),
    ["108"]=setmetatable({id="108",confirmType=1,titleText="",contentText="确定要退出游戏吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["201"]=setmetatable({id="201",confirmType=1,titleText="提示",contentText="是否开始检测游戏文件完整性？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["202"]=setmetatable({id="202",confirmType=1,titleText="",contentText="当前需要更新{1}MB内容，系统建议您在wifi环境下更新，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["204"]=setmetatable({id="204",confirmType=2,titleText="",contentText="网络异常，连接已断开",aBtnBG="",aBtnText="确定"},mt),
    ["205"]=setmetatable({id="205",confirmType=2},mt),
    ["40001"]=setmetatable({id="40001",confirmType=2,titleText="提示",contentText="服务器维护中，详见公告",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40002"]=setmetatable({id="40002",confirmType=2,titleText="提示",contentText="检测到新版本，是否立即更新？",aBtnBG="",aBtnText="确定",aBtnEvent=5,bBtnBG="",bBtnText="",bBtnEvent=5},mt),
    ["40003"]=setmetatable({id="40003",confirmType=2,titleText="提示",contentText="数据异常，请重新登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40004"]=setmetatable({id="40004",confirmType=2,titleText="提示",contentText="账号已在异地重复登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40005"]=setmetatable({id="40005",confirmType=2,titleText="提示",contentText="与服务器失去连接，请重新登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40006"]=setmetatable({id="40006",confirmType=2,titleText="提示",contentText="您的账号存在违规行为无法登录此游戏，将于{1}解封。",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40007"]=setmetatable({id="40007",confirmType=2,titleText="提示",contentText="服务器维护中，详情请见公告",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40008"]=setmetatable({id="40008",confirmType=2,titleText="提示",contentText="您的账号已在异地重复登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40009"]=setmetatable({id="40009",confirmType=2,titleText="提示",contentText="与服务器连接断开，请重新登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40010"]=setmetatable({id="40010",confirmType=2,titleText="提示",contentText="账号数据异常，请重新登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40011"]=setmetatable({id="40011",confirmType=2,titleText="提示",contentText="sdk登录验证秘钥超时",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40012"]=setmetatable({id="40012",confirmType=2,titleText="提示",contentText="服务器正忙，请稍后再试",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40013"]=setmetatable({id="40013",confirmType=2,titleText="提示",contentText="连接异常，已在异地重复登录",aBtnBG="",aBtnText="确定",aBtnEvent=3,bBtnBG="",bBtnText="",bBtnEvent=3},mt),
    ["40014"]=setmetatable({id="40014",confirmType=1,titleText="亲爱的导师：",contentText="感谢您前来参与本次测试，当前注册人数已满，注册通道已关闭。欢迎关注我们接收最新消息，愿下次测试与您并肩作战。",aBtnBG="",aBtnText="确定"},mt),
    ["40015"]=setmetatable({id="40015",confirmType=1,titleText="亲爱的导师：",contentText="感谢您的到来，服务器维护中，详情请见官方公告。",aBtnBG="",aBtnText="确定"},mt),
    ["40017"]=setmetatable({id="40017",confirmType=1,titleText="提示",contentText="网络连接异常，请重新登录",aBtnBG="",aBtnText="确定",aBtnEvent=3},mt),
    ["301"]=setmetatable({id="301",confirmType=1,titleText="经验溢出",contentText="经验溢出{1}点，溢出部分所对应素材将被返还，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["501"]=setmetatable({id="501",confirmType=1,titleText="",contentText="当前位置已选择了技能，是否替换？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["502"]=setmetatable({id="502",confirmType=1,titleText="",contentText="是否卸下所有的技能？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["601"]=setmetatable({id="601",confirmType=1,titleText="",contentText="武装锁定后将无法作为武装改装、精炼素材使用，是否确认锁定？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["602"]=setmetatable({id="602",confirmType=1,titleText="",contentText="该武装<color=#6D85AE>【{1}】</color>装备中，是否卸下？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["603"]=setmetatable({id="603",confirmType=1,titleText="",contentText="所选素材包含高品质武装，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["604"]=setmetatable({id="604",confirmType=1,titleText="",contentText="所选素材包含已经强化的武装，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["605"]=setmetatable({id="605",confirmType=1,titleText="",contentText="所选素材包含已经精炼的武装，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["606"]=setmetatable({id="606",confirmType=1,titleText="",contentText="经验溢出{1}点，溢出部分将返还素材，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["607"]=setmetatable({id="607",confirmType=1,titleText="",contentText="该服装已被<color=#6D85AE>【{1}】</color>穿戴，继续穿戴服装将从原始人物上卸下，确认穿戴吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["651"]=setmetatable({id="651",confirmType=1,titleText="",contentText="镜像锁定后将无法作为镜像升级素材使用，是否确认锁定？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["652"]=setmetatable({id="652",confirmType=1,titleText="",contentText="该镜像<color=#6D85AE>【{1}】</color>装备中，是否替换？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["653"]=setmetatable({id="653",confirmType=1,titleText="",contentText="所选素材包含高品质镜像，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["654"]=setmetatable({id="654",confirmType=1,titleText="",contentText="所选素材包含已经强化的镜像，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["655"]=setmetatable({id="655",confirmType=1,titleText="",contentText="所选素材包含已经强化的高品质镜像，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["656"]=setmetatable({id="656",confirmType=1,titleText="经验溢出",contentText="经验溢出{1}点，溢出部分将返还素材，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["661"]=setmetatable({id="661",confirmType=1,titleText="",contentText="所选素材包含已经强化的镜像，是否确认将其作为素材使用？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["701"]=setmetatable({id="701",confirmType=1,titleText="",contentText="即将分解的道具中包含可使用道具，是否继续分解？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["702"]=setmetatable({id="702",confirmType=1,titleText="",contentText="确定要分解选中的道具吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["703"]=setmetatable({id="703",confirmType=1,titleText="",contentText="确定要分解选中的武装吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["704"]=setmetatable({id="704",confirmType=1,titleText="",contentText="分解的武装中包含养成过的武装，经验会按照一定比例返还，突破和精炼消耗的道具不会返还，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["710"]=setmetatable({id="710",confirmType=1,titleText="提示",contentText="{1} 确认消耗以上物品，合成：{2}吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["801"]=setmetatable({id="801",confirmType=1,titleText="",contentText="即将跳转到链接界面，是否跳转？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["901"]=setmetatable({id="901",confirmType=1,titleText="提示",contentText="您有未领取附件的邮件即将过期，请及时领取，过期系统将删除邮件",aBtnBG="",aBtnText="确定"},mt),
    ["902"]=setmetatable({id="902",confirmType=1,titleText="",contentText="是否确认删除已读邮件？（未领取附件的已读邮件不会被删除）",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1001"]=setmetatable({id="1001",confirmType=1,titleText="提示",contentText="<color=#000000>缺少<color=#72222b>{1}</color>个{2}，是否消耗<color=#72222b>{3}</color>{4}购买?</color>",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1002"]=setmetatable({id="1002",confirmType=1,titleText="提示",contentText="源晶钻不足，是否前往商城进行充值？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1003"]=setmetatable({id="1003",confirmType=1,titleText="提示",contentText="该卡池已关闭",aBtnBG="",aBtnText="确定"},mt),
    ["1005"]=setmetatable({id="1005",confirmType=1,titleText="提示",contentText="本次补签需要消耗<color=#72222b>{2}</color>{1}</color>购买?",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1101"]=setmetatable({id="1101",confirmType=2,titleText="提示",contentText="网络连接失败，请重新登录",aBtnBG="",aBtnText="返回登录"},mt),
    ["1102"]=setmetatable({id="1102",confirmType=1,titleText="提示",contentText="网络连接失败无法结算，即将离开战斗",aBtnBG="",aBtnText="确认"},mt),
    ["1200"]=setmetatable({id="1200",confirmType=1,titleText="提示",contentText="当前队伍等级偏低，是否要继续开始作战？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1201"]=setmetatable({id="1201",confirmType=1,titleText="提示",contentText="当前队伍的平均共鸣峰值为{1}，小于推荐值，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1202"]=setmetatable({id="1202",confirmType=1,titleText="提示",contentText="敌方包含<color=#d64233>{1}</color>，当前队伍中没有斯露德装备克制该类型异种的航迹天赋，关卡难度较高，是否继续",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1203"]=setmetatable({id="1203",confirmType=1,titleText="提示",contentText="当前队伍的平均共鸣峰值为<color=#d64233>{1}</color>，小于推荐值。关卡中敌人的强度将提升\n敌方包含{1}，当前队伍中没有斯露德装备克制该类型异种的航迹天赋，关卡难度较高，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1300"]=setmetatable({id="1300",confirmType=1,titleText="提示",contentText="是否跳过此段剧情？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1401"]=setmetatable({id="1401",confirmType=1,titleText="提示",contentText="请按下你要绑定的按键",aBtnBG="",aBtnText="",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1402"]=setmetatable({id="1402",confirmType=1,titleText="提示",contentText="此按键已与其他动作绑定，是否覆盖？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1501"]=setmetatable({id="1501",confirmType=1,titleText="提示",contentText="退出战斗将会以当前进度进行结算，是否确定？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1502"]=setmetatable({id="1502",confirmType=1,titleText="提示",contentText="结束探索将以当前进度进行结算，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1503"]=setmetatable({id="1503",confirmType=1,titleText="提示",contentText="部分剧情内容可能涉及剧透，建议优先在活动中体验，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["1504"]=setmetatable({id="1504",confirmType=1,titleText="提示",contentText="队伍中还有可用的位置，继续进入将不可反悔，是否确认？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["2000"]=setmetatable({id="2000",confirmType=1,titleText="提示",contentText="当前感知不足，是否消耗道具进行补充？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["3000"]=setmetatable({id="3000",confirmType=2,titleText="维护公告",contentText="{1}",aBtnBG="",aBtnText="确定"},mt),
    ["3001"]=setmetatable({id="3001",confirmType=2,titleText="提示",contentText="{1}",aBtnBG="",aBtnText="确定"},mt),
    ["4000"]=setmetatable({id="4000",confirmType=1,titleText="提示",contentText="是否消耗{1}个{2}兑换{3}{4}？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["5000"]=setmetatable({id="5000",confirmType=1,titleText="提示",contentText="是否修改昵称为{1}？（每24小时仅可修改一次导师昵称）",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["5001"]=setmetatable({id="5001",confirmType=1,titleText="提示",contentText="是否修改生日为<color=#72222b>{1}</color>月<color=#72222b>{2}</color>日？（仅可修改一次生日）",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["6001"]=setmetatable({id="6001",confirmType=1,titleText="提示",contentText="是否消耗{1}刷新商店？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["6002"]=setmetatable({id="6002",confirmType=1,titleText="提示",contentText="是否跳转至商店购买{1}？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["7001"]=setmetatable({id="7001",confirmType=1,titleText="提示",contentText="主线进程已更新，是否回到舰桥？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["7002"]=setmetatable({id="7002",confirmType=1,titleText="提示",contentText="中途取消不会获得任务奖励，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8001"]=setmetatable({id="8001",confirmType=1,titleText="提示",contentText="源晶碎不足，是否将<color=#F17C36>{1}</color>源晶钻转换为等量源晶碎？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8002"]=setmetatable({id="8002",confirmType=1,titleText="提示",contentText="源晶钻不足，是否跳转购买？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8003"]=setmetatable({id="8003",confirmType=1,titleText="提示",contentText="距离本期天空战令结束剩余不到{1}小时，可能无法获取所有奖励，确定购买？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8004"]=setmetatable({id="8004",confirmType=1,titleText="提示",contentText="即将消耗{1} *<color=#267546>{2}</color>，加速<color=#267546>{3}</color>次。\n<color=#696a6e>（当前持有{4}：{5}）}</color>",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8005"]=setmetatable({id="8005",confirmType=1,titleText="提示",contentText="当前持有的{1}不足。",aBtnBG="",aBtnText="",aBtnEvent=0,bBtnBG="",bBtnText="仍要加速"},mt),
    ["8006"]=setmetatable({id="8006",confirmType=1,titleText="提示",contentText="当前持有的{1}不足加速1次。",aBtnBG="",aBtnText="",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8007"]=setmetatable({id="8007",confirmType=1,titleText="提示",contentText="确定取消外派？\n已完成战斗次数：{1}/{2}\n将结算已完成次数，并返还未消耗{3}*{4}。",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8008"]=setmetatable({id="8008",confirmType=1,titleText="提示",contentText="未持有该战装对应的斯露德，确定购买？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8009"]=setmetatable({id="8009",confirmType=1,titleText="提示",contentText="外派中的战斗将无法进入，直至外派结束或中途召回。确定执行外派？\n（外派后可随时召回，未消耗{1}也会返还）",aBtnBG="",aBtnText="开始外派",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=0,autoCdB=0,checkText=1},mt),
    ["8010"]=setmetatable({id="8010",confirmType=1,titleText="提示",contentText="澄空之旅已解锁，无法使用{1}。",aBtnBG="",aBtnText="确定"},mt),
    ["8011"]=setmetatable({id="8011",confirmType=1,titleText="提示",contentText="对应的天空战令尚未开启，无法使用{1}。",aBtnBG="",aBtnText="确定"},mt),
    ["8012"]=setmetatable({id="8012",confirmType=1,titleText="提示",contentText="确定使用{1}*1，解锁澄空之旅？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["8013"]=setmetatable({id="8013",confirmType=1,titleText="提示",contentText="检测到持有{1}*{2}\n是否使用{1}*1，免费解锁澄空之旅？",aBtnBG="",aBtnText="使用",aBtnEvent=0,bBtnBG="",bBtnText="不使用"},mt),
    ["8014"]=setmetatable({id="8014",confirmType=1,titleText="提示",contentText="确定购买{1}吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["80000"]=setmetatable({id="80000",confirmType=1,titleText="提示",contentText="出战队伍尚未满编，是否就以当前这个选择开始挑战？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["80100"]=setmetatable({id="80100",confirmType=1,titleText="提示",contentText="选<color=#F17C36>离开</color>可以退出挑战\n选<color=#F17C36>重新挑战</color>可以立即重新开始本场战斗挑战",aBtnBG="",aBtnText="离开",aBtnEvent=0,bBtnBG="",bBtnText="重新挑战"},mt),
    ["80101"]=setmetatable({id="80101",confirmType=1,titleText="提示",contentText="选<color=#F17C36>离开</color>可以自动保存当前的挑战进度。下次进入时可以从该进度继续挑战\n选<color=#F17C36>重新挑战</color>可以立即重新开始本场战斗挑战。",aBtnBG="",aBtnText="离开（保存进度）",aBtnEvent=0,bBtnBG="",bBtnText="重新挑战"},mt),
    ["80102"]=setmetatable({id="80102",confirmType=1,titleText="提示",contentText="检测到有未完成的挑战记录，上次离开时正在进行<color=#F17C36>{1}</color>第<color=#F17C36>{2}</color>战\n选<color=#F17C36>从保存点继续</color>可以从这个未完成的进度继续挑战\n选<color=#F17C36>放弃保存点</color>可以忽略保存点，重新开始",aBtnBG="",aBtnText="从保存点继续",aBtnEvent=0,bBtnBG="",bBtnText="放弃保存点"},mt),
    ["80103"]=setmetatable({id="80103",confirmType=1,titleText="提示",contentText="虚空已重构，无法挑战【虚空·解构】关卡",aBtnBG="",aBtnText="确定"},mt),
    ["80150"]=setmetatable({id="80150",confirmType=1,titleText="提示",contentText="战术自理会消耗一次挑战次数且只能获得该难度最高分的一半，且无法代理最高难度，请确认是否继续",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["80151"]=setmetatable({id="80151",confirmType=1,titleText="提示",contentText="当前积分低于本期最高积分，即使选择保存也无法改变积分且会消耗挑战次数，是否继续？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["80152"]=setmetatable({id="80152",confirmType=1,titleText="提示",contentText="放弃保存后不会消耗挑战次数，且本次战斗的积分不会被记录，是否放弃？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["80153"]=setmetatable({id="80153",confirmType=1,titleText="提示",contentText="{1}",aBtnBG="",aBtnText="确定"},mt),
    ["80154"]=setmetatable({id="80154",confirmType=1,titleText="提示",contentText="裂隙封锁已结算，结算期内无法进入战斗且获得的积分无效，即将退出",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=30},mt),
    ["80155"]=setmetatable({id="80155",confirmType=1,titleText="提示",contentText="当前强敌{1}积分为{2}，重置后当前强敌中锁定的斯露德、武装将解除锁定，对应的积分也会重置为0，消耗的次数不会返还，请确认是否重置",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["82001"]=setmetatable({id="82001",confirmType=1,titleText="提示",contentText="是否确定要退出当前小队？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["82002"]=setmetatable({id="82002",confirmType=1,titleText="提示",contentText="是否将该玩家移出小队？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["82003"]=setmetatable({id="82003",confirmType=1,titleText="提示",contentText="是否将{1}设为队长？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["82004"]=setmetatable({id="82004",confirmType=1,titleText="提示",contentText="队长{1}，正在邀请你参加{2}，是否同意前往？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=9},mt),
    ["82005"]=setmetatable({id="82005",confirmType=1,titleText="提示",contentText="当前已组成小队，无法进行此操作\n是否要退出小队？",aBtnBG="",aBtnText="回到小队",aBtnEvent=0,bBtnBG="",bBtnText="退出小队",bBtnEvent=0,isInvertBtn=1},mt),
    ["82006"]=setmetatable({id="82006",confirmType=1,titleText="提示",contentText="匹配成功，是否前往小队做战斗准备",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=0,forbidCdA=0,forbidCdB=0,autoCdA=9},mt),
    ["82007"]=setmetatable({id="82007",confirmType=1,titleText="提示",contentText="当前正在匹配状态，无法进行此操作\n是否要取消匹配？",aBtnBG="",aBtnText="取消匹配",aBtnEvent=0,bBtnBG="",bBtnText="继续匹配"},mt),
    ["83001"]=setmetatable({id="83001",confirmType=1,titleText="提示",contentText="是否移除好友{1}",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["83002"]=setmetatable({id="83002",confirmType=1,titleText="提示",contentText="是否将好友{1}移除至黑名单",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["84001"]=setmetatable({id="84001",confirmType=1,titleText="提示",contentText="是否清除与好友{1}的聊天记录",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["90000"]=setmetatable({id="90000",confirmType=1,titleText="提示",contentText="带标题的默认提示！",aBtnBG="",aBtnText="确定test",aBtnEvent=0,bBtnBG="",bBtnText="取消test"},mt),
    ["99901"]=setmetatable({id="99901",confirmType=1,titleText="提示",contentText="确认消耗{1}×1，激活{2}吗？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["99990"]=setmetatable({id="99990",confirmType=1,titleText="提示",contentText="带标题的默认提示！",aBtnBG="",aBtnText="确定test",aBtnEvent=0,bBtnBG="",bBtnText="取消test"},mt),
    ["110001"]=setmetatable({id="110001",confirmType=1,titleText="提示",contentText="是否消耗{1}解锁进阶版奖励？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["110002"]=setmetatable({id="110002",confirmType=1,titleText="提示",contentText="本航迹已经结束，点击确定关闭本航迹",aBtnBG="",aBtnText="确认"},mt),
    ["85001"]=setmetatable({id="85001",confirmType=1,titleText="乱流现象",contentText="{1}：{2}",aBtnBG="",aBtnText="确认"},mt),
    ["120001"]=setmetatable({id="120001",confirmType=1,titleText="提示",contentText="<color=#C6DCD3>是否消耗<color=#8BDFBC>{1}{2}</color>刷新商店？</color>",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["120002"]=setmetatable({id="120002",confirmType=1,titleText="提示",contentText="该符灵{1}正在使用中，是否替换？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["120003"]=setmetatable({id="120003",confirmType=1,titleText="提示",contentText="本次剥离需要消耗<color=#239040>{1}</color>X<color=#239040>{2}</color>，确认剥离该符灵中的<color=#239040>{3}</color>吗？",aBtnBG="",aBtnText="确认",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["85002"]=setmetatable({id="85002",confirmType=1,titleText="提示",contentText="异空战线已结束，本次作战不计入总分中",aBtnBG="",aBtnText="确认"},mt),
    ["7003"]=setmetatable({id="7003",confirmType=1,titleText="提示",contentText="中途取消不会获得任务奖励，是否继续？\n将返还巡视任务的道具消耗。超出上限的道具将以邮件形式发送。",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["7004"]=setmetatable({id="7004",confirmType=1,titleText="提示",contentText="该武器为预设效果，是否仍要进行重组",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消",bBtnEvent=0,isInvertBtn=1},mt),
    ["7005"]=setmetatable({id="7005",confirmType=1,titleText="提示",contentText="您选择的重组结果装备等级较低，是否继续",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210001"]=setmetatable({id="210001",confirmType=1,titleText="提示",contentText="是否退出当前队伍",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210002"]=setmetatable({id="210002",confirmType=1,titleText="提示",contentText="是否确认将{1}取消副队职位",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210003"]=setmetatable({id="210003",confirmType=1,titleText="提示",contentText="是否确认将{1}任命为副队",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210004"]=setmetatable({id="210004",confirmType=1,titleText="提示",contentText="是否确认将{1}踢出队伍",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210005"]=setmetatable({id="210005",confirmType=1,titleText="提示",contentText="修改队伍名称将消耗{1}源晶碎，请确认是否修改",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210006"]=setmetatable({id="210006",confirmType=1,titleText="提示",contentText="是否确认转让队长给{1}？",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["210007"]=setmetatable({id="210007",confirmType=1,titleText="提示",contentText="创建队伍将消耗{1}源晶碎，请确认是否创建",aBtnBG="",aBtnText="确定",aBtnEvent=0,bBtnBG="",bBtnText="取消"},mt),
    ["40018"]=setmetatable({id="40018",confirmType=1,titleText="提示",contentText="当前游戏版本过低请更新客户端",aBtnBG="",aBtnText="确定",aBtnEvent=5},mt),
    ["91000"]=setmetatable({id="91000",confirmType=1,titleText="提示",contentText="当前脉流巡检任务已过期，请返回舰桥后重新开启脉流巡检任务",aBtnBG="",aBtnText="返回舰桥"},mt),
    ["40019"]=setmetatable({id="40019",confirmType=1,titleText="提示",contentText="当前游戏版本非最新版本请更新客户端",aBtnBG="",aBtnText="确定",aBtnEvent=5},mt),
}
--生成获取数据的方法
---@return SystemConfirm
function GetSystemConfirmData(id)
    return SystemConfirm_Xls[tostring(id)]
end
--自动生成注释
---@class SystemConfirm : table 
---@field id string
---@field confirmType number
---@field titleText string
---@field contentText string
---@field aBtnBG string
---@field aBtnText string
---@field aBtnEvent number
---@field bBtnBG string
---@field bBtnText string
---@field bBtnEvent number
---@field isInvertBtn number
---@field forbidCdA number
---@field forbidCdB number
---@field autoCdA number
---@field autoCdB number
---@field checkText number
---@field defaultCheck number
---@field paramIds table
