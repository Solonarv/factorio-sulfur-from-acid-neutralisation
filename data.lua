require("util")

local sulfur_amount = settings.startup["sulfur-from-acid-neutralisation-amount"].value
if sulfur_amount > 0 then
    table.insert(
        data.raw["recipe"]["acid-neutralisation"].results,
        {type="item", name = "sulfur", amount = sulfur_amount}
    )
end

if settings.startup["sulfur-from-acid-neutralisation-vent-steam"].value then
    data:extend{
        {
            type = "recipe",
            name = "steam-venting",
            icon = "__base__/graphics/icons/fluid/steam.png",
            localised_name = {"recipe-name.sulfur-from-acid-neutralisation-steam-venting"},
            category = "chemistry",
            subgroup = "fluid-recipes",
            order = "d[other-chemistry]-b[steam-venting]",
            auto_recycle = false,
            enabled = false,
            energy_required = 5,
            ingredients = {{type = "fluid", name = "steam", amount = 10000}},
            allow_productivity = false,
            always_show_products = false,
            show_amount_in_title = false,
            allow_decomposition = false,
            crafting_machine_tint =  -- stolen from steam condensation
            {
              primary = {r = 0.409, g = 0.694, b = 0.895, a = 1.000}, -- #68b0e4ff
              secondary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000}, -- #fffefeff
              tertiary = {r = 0.540, g = 0.520, b = 0.520, a = 1.000}, -- #898484ff
              quaternary = {r = 0.750, g = 0.750, b = 0.750, a = 1.000}, -- #bfbfbfff
            }
        }
    }
    table.insert(data.raw["technology"]["calcite-processing"].effects, 3, {
        type = "unlock-recipe",
        recipe = "steam-venting"
    })
end