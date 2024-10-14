function raindrops(num)
    local str = ""
    if num % 3 == 0 then
        str = str.."Pling"
    end
    if num % 5 == 0 then
        str = str.."Plang"
    end
    if num % 7 == 0 then
        str = str.."Plong"
    end
    
    if str == "" then return tostring(num)
    end

    return str
end

return raindrops
