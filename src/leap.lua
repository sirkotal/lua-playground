function is_leap_year(year)
    if year % 100 == 0 then
        if year % 400 == 0 then
            return true
        else
            return false
        end
    elseif year % 4 == 0 and year % 100 ~= 0 then
        return true
    else
        return false
    end
end

return is_leap_year
