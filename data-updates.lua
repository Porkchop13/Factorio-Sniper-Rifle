local Constants = require("constants")

if mods["bullet-trails"] then
    require("__bullet-trails__/data-updates")
    add_trail_to_ammo(Constants.magazine, "bullet-beam-orange")
end
