local rc = {}

function rc.color_code(color)
    local value = nil
    local colors = {"black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"}

    for n = 1, 10 do
        if colors[n] == color then 
            value = n - 1
        end
    end

    return value
end

return rc