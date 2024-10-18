local Darts = {}

function Darts.score(x, y)
    if x^2 + y^2 <= 1^2 then
        return 10
    elseif x^2 + y^2 <= 5^2 then
        return 5
    elseif x^2 + y^2 <= 10^2 then
        return 1
    else
        return 0
    end
end

return Darts