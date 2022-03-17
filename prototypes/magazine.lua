local Constants = require("constants")
local Recipe = require("__stdlib__/stdlib/data/recipe")

-- Item --
local container = {}
item = table.deepcopy(data.raw["ammo"]["piercing-rounds-magazine"])
item.name = Constants.magazine
item.icon = "__" .. Constants.modName .. "__/graphics/" .. Constants.magazine ..
                ".png"
item.icon_size = 64
item.ammo_type.category = Constants.category
item.ammo_type.action.action_delivery.target_effects = {
    {
        type = "create-entity",
        entity_name = "explosion-hit",
        offsets = {{0, 1}},
        offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
    }, {type = "damage", damage = {amount = 120, type = "physical"}}
}
item.order = "a[basic-clips]-d[" .. Constants.magazine .. "]"
table.insert(container, item)
data:extend(container)

-- Recipe --
data:extend({
    {
        enabled = false,
        energy_required = 3,
        ingredients = {
            {"iron-plate", 5}, {"copper-plate", 5}, {"steel-plate", 2}
        },
        name = Constants.magazine,
        result = Constants.magazine,
        type = "recipe"
    }
})
Recipe(Constants.magazine):add_unlock("military-2")
