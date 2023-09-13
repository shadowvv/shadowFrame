--------------------
--一定是很底层的工具才往这里放
luautil = {}

--------------------
--避免call func时出现error或exception导致lua调用栈异常;
function luautil.SafeInvoke(invoker, func, ...)
    local ok, err
    if invoker then
        ok, err = pcall(func, invoker, ...)
    else
        ok, err = pcall(func, ...)
    end
    if not ok then
        error("pcall error:", table.dump(err))
    end
end
