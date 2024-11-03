function addbeltlook(name, beltlook)
    local prototype = data.raw["transport-belt"][name]
    if prototype then
        prototype.beltlook = prototype.beltlook or beltlook
    end
end

addbeltlook("transport-belt", { color = { r = 1, g = 0.8, b = 0, a=1 }, tier = 1})
addbeltlook("fast-transport-belt", { color = { r = 1, g = 0.12, b = 0, a=1 }, tier = 2})
addbeltlook("express-transport-belt", { color = { r = 0, g = 0.78, b = 1, a=1 }, tier = 3})
addbeltlook("turbo-transport-belt", { color = { r = 0.64, g = 0.82, b = 0.30, a=1 }, tier = 6})

addbeltlook("se-space-belt", { color = { r=1, g=1, b=1, a=1 }, tier = 3})

addbeltlook("kr-advanced-transport-belt", { color = { r = 0.13, g = 0.93, b = 0.09, a=1 }, tier = 4})
addbeltlook("kr-superior-transport-belt", { color = { r = 0.83, g = 0, b = 0.97, a=1 }, tier = 5})