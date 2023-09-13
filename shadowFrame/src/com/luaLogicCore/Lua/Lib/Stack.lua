--[[
 * FileName:    Stack
 * Author:      赵振
 * CreateTime:  1/23/2019 11:10:58 AM
 * Description:
 * 
]]--
--
-- Date: 2014-11-19 15:29:02
--


Stack = class(nil, "Stack")
function Stack:ctor()
    self.stack_table = {}
end
function Stack:push(element)
    local size = self:size()
    self.stack_table[size + 1] = element
end

function Stack:pop()
    local size = self:size()
    if self:isEmpty() then
        logTest("Error: Stack is empty!")
        return
    end
    return table.remove(self.stack_table,size)
end

function Stack:top()
    local size = self:size()
    if self:isEmpty() then
        logTest("Error: Stack is empty!")
        return
    end
    return self.stack_table[size]
end

function Stack:isEmpty()
    local size = self:size()
    if size == 0 then
        return true
    end
    return false
end

function Stack:size()
    return #self.stack_table or 0
end

function Stack:clear()
    self.stack_table = nil
    self.stack_table = {}
end

function Stack:printElement()
    local size = self:size()

    if self:isEmpty() then
        --logTest("Error: Stack is empty!")
        return
    end

    local str = "{"..self.stack_table[size]
    size = size - 1
    while size > 0 do
        str = str..", "..self.stack_table[size]
        size = size - 1
    end
    str = str.."}"
    log(str);
end
function Stack:GetItem(index)
    local size = self:size()
    if self:isEmpty() then
        logTest("Error: Stack is empty!")
        return nil
    end
    if size >= index then
        return self.stack_table[index]
    end
    return nil
end