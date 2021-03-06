local Constants = require("constants")

-- Category --
data:extend({{type = "ammo-category", name = Constants.category}})

-- Entities --
require("prototypes.magazine")
require("prototypes.rifle")

-- Technology --
local function addDamageEffect(technology)
    local effects = data.raw["technology"][technology].effects
    effects[#effects + 1] = {
        type = "ammo-damage",
        ammo_category = Constants.category,
        modifier = effects[#effects - (#effects - 1)].modifier
    }
end

addDamageEffect("physical-projectile-damage-1")
addDamageEffect("physical-projectile-damage-2")
addDamageEffect("physical-projectile-damage-3")
addDamageEffect("physical-projectile-damage-4")
addDamageEffect("physical-projectile-damage-5")
addDamageEffect("physical-projectile-damage-6")
addDamageEffect("physical-projectile-damage-7")

local function addSpeedEffect(technology)
    local effects = data.raw["technology"][technology].effects
    effects[#effects + 1] = {
        type = "gun-speed",
        ammo_category = Constants.category,
        modifier = effects[#effects - (#effects - 1)].modifier
    }
end

addSpeedEffect("weapon-shooting-speed-1")
addSpeedEffect("weapon-shooting-speed-2")
addSpeedEffect("weapon-shooting-speed-3")
addSpeedEffect("weapon-shooting-speed-4")
addSpeedEffect("weapon-shooting-speed-5")
addSpeedEffect("weapon-shooting-speed-6")
