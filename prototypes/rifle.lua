local Constants = require("constants")
local Recipe = require("__stdlib__/stdlib/data/recipe")

-- Item --
local container = {}
local item = table.deepcopy(data.raw["gun"]["submachine-gun"])
item.name = Constants.rifle
item.icon = "__" .. Constants.modName .. "__/graphics/" .. Constants.rifle ..
                ".png"
item.icon_size = 64
item.attack_parameters.ammo_category = Constants.category
item.attack_parameters.cooldown = 60
item.attack_parameters.damage_modifer = 6
item.attack_parameters.range = 60
item.order = "a[basic-clips]-c[" .. Constants.rifle .. "]"
table.insert(container, item)
data:extend(container)

-- Recipe --
data:extend({
    {
        enabled = false,
        energy_required = 15,
        ingredients = {
            {"copper-plate", 10}, {"iron-gear-wheel", 15}, {"iron-plate", 15}
        },
        name = Constants.rifle,
        result = Constants.rifle,
        type = "recipe"
    }
})
Recipe(Constants.rifle):add_unlock("military-2")
