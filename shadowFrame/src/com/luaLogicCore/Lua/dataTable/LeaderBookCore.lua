---@class LeaderBookCore_Xls : table 
LeaderBookCore_Xls =
{
    ["200100101"]={id=200100101,des="",coreType="碳酸晶系",corePressure="7.5",coreTemperature="3.2W/m2·K",coreText="融合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情况有所变化应立刻上报。",coreFuse="76.3%",coreRune="Esloe",coreRuneDes="[天空中最后的羽翼]\n[如果抓住它，重返天空或许还能够有一丝期许]\n[于此刻向着远方祈祷]"},
    ["200200101"]={id=200200101,des="",coreType="半泽晶系",corePressure="6.7",coreTemperature="3.7W/m2·K",coreText="融合率正常，现阶段影响不明，未发现不良现象。\n    极奏情况较为特殊，有待观察，如情况有所变化应立刻上报。\n",coreFuse="69.3%",coreRune="Soimёn",coreRuneDes="「陨落的神迹」\n「深入骨髓的愤怒灼烧了一座故城，流亡之歌在此唱响」\n「借以此抵达彼岸」"},
    ["200300101"]={id=200300101,des="",coreType="半泽晶系",corePressure="7.9",coreTemperature="4.0W/m2·K",coreText="融合率正常，声音中枢受明显影响，现阶段可判断为，通过发出具有一定旋律的声音可吸引异生体。\n    融合率趋于正常阈值，需密切关注具体情况，如果情况有所变化应立刻上报。",coreFuse="80.3%",coreRune="Tilpon",coreRuneDes="「记忆海的边界」\n「梦境幻化作现实，将所有不真实统一」\n「挽歌回荡在浩瀚天空」"},
    ["200400101"]={id=200400101,des="",coreType="碳酸晶系",corePressure="9",coreTemperature="50C",coreText="融合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情况有所变化应立刻上报。\n",coreFuse="81%",coreRune="EVAYYDS",coreRuneDes="这里是一段谜语人文字\n换行之后可以保证更好看一些，字数填充的不能多不能少\n以上，临时数据"},
    ["200500101"]={id=200500101,des="",coreType="临时晶系",corePressure="2.33",coreTemperature="233linshi",coreText="融临时资源合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情临时资源况有所变化应立刻上报。\n",coreFuse="23.3%",coreRune="LinShi",coreRuneDes="这里临时资源是一段谜语人文字\n换行之后可以保证更好看一些，字数填充的不能多不能少\n以上，临时数据"},
    ["200600101"]={id=200600101,des="",coreType="临时晶系",corePressure="2.33",coreTemperature="233linshi",coreText="融临时资源合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情临时资源况有所变化应立刻上报。\n",coreFuse="23.3%",coreRune="LinShi",coreRuneDes="这里临时资源是一段谜语人文字\n换行之后可以保证更好看一些，字数填充的不能多不能少\n以上，临时数据"},
    ["200700101"]={id=200700101,des="",coreType="临时晶系",corePressure="2.33",coreTemperature="233linshi",coreText="融临时资源合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情临时资源况有所变化应立刻上报。\n",coreFuse="23.3%",coreRune="LinShi",coreRuneDes="这里临时资源是一段谜语人文字\n换行之后可以保证更好看一些，字数填充的不能多不能少\n以上，临时数据"},
    ["200800101"]={id=200800101,des="",coreType="临时晶系",corePressure="2.33",coreTemperature="233linshi",coreText="融临时资源合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情临时资源况有所变化应立刻上报。\n",coreFuse="23.3%",coreRune="LinShi",coreRuneDes="这里临时资源是一段谜语人文字\n换行之后可以保证更好看一些，字数填充的不能多不能少\n以上，临时数据"},
    ["200900101"]={id=200900101,des="",coreType="临时晶系",corePressure="2.33",coreTemperature="233linshi",coreText="融临时资源合率正常，出现少量可控影响，未发现不良现象。\n但还是需要注意不要过多使用极奏，如果情临时资源况有所变化应立刻上报。\n",coreFuse="23.3%",coreRune="LinShi",coreRuneDes="这里临时资源是一段谜语人文字\n换行之后可以保证更好看一些，字数填充的不能多不能少\n以上，临时数据"},
}
--生成获取数据的方法
---@return LeaderBookCore
function GetLeaderBookCoreData(id)
    return LeaderBookCore_Xls[tostring(id)]
end
--自动生成注释
---@class LeaderBookCore : table 
---@field id number
---@field des string
---@field coreType string
---@field corePressure string
---@field coreTemperature string
---@field coreText string
---@field coreFuse string
---@field coreRune string
---@field coreRuneDes string
