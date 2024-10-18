local ArmstrongNumbers = {}

function ArmstrongNumbers.is_armstrong_number(number)
    local dgs = string.len(tostring(number))
    local cmp = number
    local final = 0

    while number > 0 do
        final = final + ((number % 10)^dgs)
        number = number // 10
    end

    if final == cmp then
        return true
    else 
        return false
    end
end

return ArmstrongNumbers