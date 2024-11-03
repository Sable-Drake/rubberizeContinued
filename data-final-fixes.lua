
local IR2RB = require("__black-rubber-belts-continued__.code.functions")

local alternate_bases = mods["IndustrialRevolution3"] and settings.startup["ir3-materials"].value and not settings.startup["ir2rb-rails"].value
local function getbase(tier)
    if not alternate_bases then return "steel" end
    if tier <= 1 then return "copper" end
    if tier == 2 then return "iron" end
    return "steel"
    
end

for belt, prototype in pairs(data.raw["transport-belt"]) do
    local beltlook = prototype.beltlook
    if beltlook then
        local tint = beltlook.color or { r=1, b=1, g=1, a=1 }
        local base = getbase(beltlook.tier or 3)
        prototype.belt_animation_set.animation_set = IR2RB.get_belt_animation_set(tint, base)
        prototype.corpse = "small-remnants"
        IR2RB.replace_item_icon(belt, "rubber-belt-"..base)
        if settings.startup["ir2rb-arrows"].value then IR2RB.add_mask_to_item_icon(belt, "rubber-belt-mask", tint) end
        if settings.startup["ir2rb-rails"].value then IR2RB.add_mask_to_item_icon(belt, "rubber-rail-mask", tint) end
        IR2RB.copy_item_icons_to_entity("transport-belt", belt)
    end
end
