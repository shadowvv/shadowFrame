---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhaopuyang.
--- DateTime: 2021/12/22 18:04
--- 战斗逻辑向服务器输出的数据

require "Lib/class"

ServerOutputData = class(nil,'ServerOutputData');

function ServerOutputData:ctor()

end

function ServerOutputData:__add(_left,_right)
    return 5;
end

return ServerOutputData;

