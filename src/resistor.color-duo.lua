local rcd = {}

function rcd.color_code(color)
    local colors = {["black"] = 0, ["brown"] = 1, ["red"] = 2, ["orange"] = 3, ["yellow"] = 4, 
                    ["green"] = 5, ["blue"] = 6, ["violet"] = 7, ["grey"] = 8, ["white"] = 9}

    return colors[color]
end

function rcd.value(colors)
    local value = 0
    local exp = 2
    value = value + (rcd.color_code(colors[1]) * 10^1)
    value = value + (rcd.color_code(colors[2]) * 10^0)

    return value
end

return rcd