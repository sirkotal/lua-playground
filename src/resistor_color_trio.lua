local rct = {}

function rct.color_code(color)
    local colors = {["black"] = 0, ["brown"] = 1, ["red"] = 2, ["orange"] = 3, ["yellow"] = 4, 
                    ["green"] = 5, ["blue"] = 6, ["violet"] = 7, ["grey"] = 8, ["white"] = 9}

    return colors[color]
end

function rct.decode(one, two, three)
    local value = 0
    local exp = 2
    local unit = "ohms"
    value = value + (rct.color_code(one) * 10^1)
    value = value + (rct.color_code(two) * 10^0)

    value = value * 10^(rct.color_code(three))

    if value >= 1000000000 then
        unit = "gigaohms"
        value = value // 1000000000
    elseif value >= 1000000 then
        unit = "megaohms"
        value = value // 1000000
    elseif value >= 1000 then
        unit = "kiloohms"
        value = value // 1000
    end

    return value, unit
end

return rct