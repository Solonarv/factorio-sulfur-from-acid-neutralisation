data:extend({
    {
        type = "int-setting",
        name = "sulfur-from-acid-neutralisation-amount",
        setting_type = "startup",
        default_value = 25,  -- 1000 sulfuric acid is made from 100 sulfur
        localised_name = {"setting-name.sulfur-from-acid-neutralisation-amount"},
        localised_description = {"setting-description.sulfur-from-acid-neutralisation-amount"},
        minimum_value = 0,
        maximum_value = 100,
    },
    {
        type = "bool-setting",
        name = "sulfur-from-acid-neutralisation-vent-steam",
        setting_type = "startup",
        default_value = true,
        localised_name = {"setting-name.sulfur-from-acid-neutralisation-vent-steam"},
        localised_description = {"setting-description.sulfur-from-acid-neutralisation-vent-steam"}
    }
})