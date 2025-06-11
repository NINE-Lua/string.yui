function StringYui(...)
    local result = ""
    local args = {...}
    
    for _, num in ipairs(args) do
        if type(num) ~= "number" or num < 1 or math.floor(num) ~= num then
            error("yui expected positive integers.")
        end
        
        local index = num - 1
        local is_upper = index % 2 == 1
        local letter_pos = math.floor(index / 2)
        
        if letter_pos > 25 then
            error("Input " .. num .. " exceeds valid letter range.")
        end
        
        local ascii = is_upper and (65 + letter_pos) or (97 + letter_pos)
        result = result .. string.char(ascii)
    end
    
    return result
end
