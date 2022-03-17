local Constants = require("constants")

if mods["bullet-trails"] then
    local BulletTrails = require("__bullet-trails__/data-updates")
    BulletTrails.add_trail_to_ammo(Constants.magazine, "bullet-beam-olive")
end
