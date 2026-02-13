function Animation(p1)
    local v2 = memory_read("uintptr_t", p1.Address + 1576)
    if not v2 or v2 == 0 then
        return nil
    end
    local v3 = memory_read("uintptr_t", v2)
    local v4 = 0
    while v3 ~= 0 and v3 ~= v2 do
        v4 = v4 + 1
        local v5 = memory_read("uintptr_t", v3 + 16)
        if v5 and v5 ~= 0 then
            local v6 = nil
            local v7 = memory_read("uintptr_t", v5 + 208)
            if v7 and v7 ~= 0 then
                local v8 = v7 + 208
                local v9 = memory_read("uintptr_t", v8 + 16)
                if v9 and v9 > 0 then
                    if v9 < 16 then
                        return memory_read("string", v8)
                    end
                    local v10 = memory_read("uintptr_t", v8)
                    if v10 and v10 ~= 0 then
                        v6 = memory_read("string", v10)
                    end
                end
            end
            return v6
        end
    end
end

return Animation
