--------------------
--kun 2022.04.19
--------------------
-- ref: https://stackoverflow.com/questions/18843610/fast-implementation-of-queues-in-lua
local Queue = {}

function Queue.New()
    local instance = {
        first = 1,
        last = 0,
    }
    Queue.__index = Queue
    setmetatable(instance, Queue)
    return instance
end

function Queue:pushfront(value)
    local first = self.first - 1
    self.first = first
    self[first] = value
end

function Queue:pushback(value)
    local last = self.last + 1
    self.last = last
    self[last] = value
end

function Queue:popfront()
    local first = self.first
    if first > self.last then
        return nil
    end
    local value = self[first]
    self[first] = nil
    self.first = first + 1
    return value
end

function Queue:popback()
    local last = self.last
    if self.first > last then
        return nil
    end
    local value = self[last]
    self[last] = nil
    self.last = last - 1
    return value
end

function Queue:clear()
    for i=self.first, self.last do
        self[i] = nil
    end
    self.first = 1
    self.last = 0
end

function Queue:insert(pos, value)
    if pos < self.first then
        self:pushfront(value)
    elseif pos > self.last then
        self:pushback(value)
    else
        local len = self:count()>>1
        if pos < len then
            for i=self.first-1, pos-1 do
                self[i]=self[i+1]
            end
            self.first = self.first-1
        else
            for i=self.last+1, pos+1, -1 do
                self[i]=self[i-1]
            end
            self.last = self.last+1
        end
        self[pos]=value
    end
end

function Queue:count()
    return self.last - self.first + 1
end

return Queue