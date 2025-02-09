--data.lua
local asteroid_util = require("__space-age__.prototypes.planet.asteroid-spawn-definitions")
require("zzhora")

--START MAP GEN
function MapGen_Zzhora()
    local map_gen_setting = table.deepcopy(data.raw.planet.nauvis.map_gen_settings)
    map_gen_setting.property_expression_names =
    {
        elevation = "gleba_elevation",
        aux = "gleba_aux",
        moisture = "gleba_moisture",
        temperature = "gleba_temperature",
        cliffiness = "gleba_cliffiness",
        cliff_elevation = "cliff_elevation_from_elevation",
        enemy_base_radius = "gleba_enemy_base_radius",
        enemy_base_frequency = "gleba_enemy_base_frequency",
        ["decorative:red-desert-bush:probability"] = "gleba_red_desert_bush_probability",
        ["decorative:white-desert-bush:probability"] = "gleba_white_desert_bush_probability",
        ["decorative:red-pita:probability"] = "gleba_red_pita_probability",
        ["decorative:green-bush-mini:probability"] = "gleba_green_bush_probability",
        ["decorative:green-croton:probability"] = "gleba_green_cronton_probability",
        ["decorative:green-pita:probability"] = "gleba_green_pita_probability",
        ["decorative:green-pita-mini:probability"] = "gleba_green_pita_mini_probability",
        ["decorative:lichen-decal:probability"] = "gleba_orange_lichen_probability",
        ["decorative:shroom-decal:probability"] = "gleba_carpet_shroom_probability",
        ["decorative:cracked-mud-decal:probability"] = "gleba_cracked_mud_probability",
        ["decorative:light-mud-decal:probability"] = "gleba_light_mud_probability",
        ["decorative:dark-mud-decal:probability"] = "gleba_dark_mud_probability",
        ["decorative:green-carpet-grass:probability"] = "gleba_green_carpet_grass_probability",
        ["decorative:green-hairy-grass:probability"] = "gleba_green_hairy_grass_probability",
        ["entity:tungsten-ore:probability"] = "vulcanus_tungsten_ore_probability",
        ["entity:tungsten-ore:richness"] = "vulcanus_tungsten_ore_richness",
        ["entity:sulfuric-acid-geyser:probability"] = "vulcanus_sulfuric_acid_geyser_probability",
        ["entity:sulfuric-acid-geyser:richness"] = "vulcanus_sulfuric_acid_geyser_richness",
    }
    map_gen_setting.autoplace_controls = {
        
        ["gleba_stone"] = {},
        ["gleba_plants"] = {},
        ["gleba_enemy_base"] = {},
        ["gleba_water"] = {},
        ["gleba_cliff"] = {},

        ["sulfuric_acid_geyser"] = {},
        ["tungsten_ore"] = {},
        ["vulcanus_volcanism"] = {},
    }

    map_gen_setting.territory_settings = {
        units = {"small-demolisher", "medium-demolisher", "big-demolisher"},
        territory_index_expression = "demolisher_territory_expression",
        territory_variation_expression = "demolisher_variation_expression",
        minimum_territory_size = 10
      }
    map_gen_setting.cliff_settings = {
        name = "cliff-gleba",
        control = "gleba_cliff",
        cliff_elevation_0 = 40,
        cliff_elevation_interval = 60,
        richness = 0.80,
        cliff_smoothing = 0 -- Not critical but looks better
    }

    map_gen_setting.autoplace_settings["tile"] =
    {
        settings =
        {
            ["natural-yumako-soil"] = {},
            ["natural-jellynut-soil"] = {},
            ["wetland-yumako"] = {},
            ["wetland-jellynut"] = {},
            ["wetland-blue-slime"] = {},
            ["wetland-light-green-slime"] = {},
            ["wetland-green-slime"] = {},
            ["wetland-light-dead-skin"] = {},
            ["wetland-dead-skin"] = {},
            ["wetland-pink-tentacle"] = {},
            ["wetland-red-tentacle"] = {},
            ["gleba-deep-lake"] = {},
            ["lowland-brown-blubber"] = {},
            ["lowland-olive-blubber"] = {},
            ["lowland-olive-blubber-2"] = {},
            ["lowland-olive-blubber-3"] = {},
            ["lowland-pale-green"] = {},
            ["lowland-cream-cauliflower"] = {},
            ["lowland-cream-cauliflower-2"] = {},
            ["lowland-dead-skin"] = {},
            ["lowland-dead-skin-2"] = {},
            ["lowland-cream-red"] = {},
            ["lowland-red-vein"] = {},
            ["lowland-red-vein-2"] = {},
            ["lowland-red-vein-3"] = {},
            ["lowland-red-vein-4"] = {},
            ["lowland-red-vein-dead"] = {},
            ["lowland-red-infection"] = {},
            ["midland-turquoise-bark"] = {},
            ["midland-turquoise-bark-2"] = {},
            ["midland-cracked-lichen"] = {},
            ["midland-cracked-lichen-dull"] = {},
            ["midland-cracked-lichen-dark"] = {},
            ["midland-yellow-crust"] = {},
            ["midland-yellow-crust-2"] = {},
            ["midland-yellow-crust-3"] = {},
            ["midland-yellow-crust-4"] = {},
            ["highland-dark-rock"] = {},
            ["highland-dark-rock-2"] = {},
            ["highland-yellow-rock"] = {},
            ["pit-rock"] = {},

            ["volcanic-soil-dark"] = {},
            ["volcanic-soil-light"] = {},
            ["volcanic-ash-soil"] = {},
            --end of nauvis tiles
            ["volcanic-ash-flats"] = {},
            ["volcanic-ash-light"] = {},
            ["volcanic-ash-dark"] = {},
            ["volcanic-cracks"] = {},
            ["volcanic-cracks-warm"] = {},
            ["volcanic-folds"] = {},
            ["volcanic-folds-flat"] = {},
            ["lava"] = {},
            ["lava-hot"] = {},
            ["volcanic-folds-warm"] = {},
            ["volcanic-pumice-stones"] = {},
            ["volcanic-cracks-hot"] = {},
            ["volcanic-jagged-ground"] = {},
            ["volcanic-smooth-stone"] = {},
            ["volcanic-smooth-stone-warm"] = {},
            ["volcanic-ash-cracks"] = {}
        }
    }

    map_gen_setting.autoplace_settings["decorative"] =
    {
      settings =
      {
        ["yellow-lettuce-lichen-1x1"] = {},
        ["yellow-lettuce-lichen-3x3"] = {},
        ["yellow-lettuce-lichen-6x6"] = {},
        ["yellow-lettuce-lichen-cups-1x1"] = {},
        ["yellow-lettuce-lichen-cups-3x3"] = {},
        ["yellow-lettuce-lichen-cups-6x6"] = {},
        ["green-lettuce-lichen-1x1"] = {},
        ["green-lettuce-lichen-3x3"] = {},
        ["green-lettuce-lichen-6x6"] = {},
        ["green-lettuce-lichen-water-1x1"] = {},
        ["green-lettuce-lichen-water-3x3"] = {},
        ["green-lettuce-lichen-water-6x6"] = {},
        ["honeycomb-fungus"] = {},
        ["honeycomb-fungus-1x1"] = {},
        ["honeycomb-fungus-decayed"] = {},
        ["split-gill-1x1"] = {},
        ["split-gill-2x2"] = {},
        ["split-gill-dying-1x1"] = {},
        ["split-gill-dying-2x2"] = {},
        ["split-gill-red-1x1"] = {},
        ["split-gill-red-2x2"] = {},
        ["veins"] = {},
        ["veins-small"] = {},
        ["mycelium"] = {},
        ["coral-water"] = {},
        ["coral-land"] = {},
        ["black-sceptre"] = {},
        ["pink-phalanges"] = {},
        ["pink-lichen-decal"] = {},
        ["red-lichen-decal"] = {},
        ["green-cup"] = {},
        ["brown-cup"] = {},
        ["blood-grape"] = {},
        ["blood-grape-vibrant"] = {},
        ["brambles"] = {},
        ["polycephalum-slime"] = {},
        ["polycephalum-balloon"] = {},
        ["fuchsia-pita"] = {},
        ["wispy-lichen"] = {},
        ["grey-cracked-mud-decal"] = {},
        ["barnacles-decal"] = {},
        ["coral-stunted"] = {},
        ["coral-stunted-grey"] = {},
        ["nerve-roots-veins-dense"] = {},
        ["nerve-roots-veins-sparse"] = {},
        ["yellow-coral"] = {},
        ["solo-barnacle"] = {},
        ["curly-roots-orange"] = {},
        ["knobbly-roots"] = {},
        ["knobbly-roots-orange"] = {},
        ["matches-small"] = {},
        ["pale-lettuce-lichen-cups-1x1"] = {},
        ["pale-lettuce-lichen-cups-3x3"] = {},
        ["pale-lettuce-lichen-cups-6x6"] = {},
        ["pale-lettuce-lichen-1x1"] = {},
        ["pale-lettuce-lichen-3x3"] = {},
        ["pale-lettuce-lichen-6x6"] = {},
        ["pale-lettuce-lichen-water-1x1"] = {},
        ["pale-lettuce-lichen-water-3x3"] = {},
        ["pale-lettuce-lichen-water-6x6"] = {},
        ["white-carpet-grass"] = {},
        ["green-carpet-grass"] = {},
        ["green-hairy-grass"] = {},

        --shared
        ["light-mud-decal"] = {},
        ["dark-mud-decal"] = {},
        ["cracked-mud-decal"] = {},
        ["red-desert-bush"] = {},
        ["white-desert-bush"] = {},
        ["red-pita"] = {},
        ["green-bush-mini"] = {},
        ["green-croton"] = {},
        ["green-pita"] = {},
        ["green-pita-mini"] = {},
        ["lichen-decal"] = {},
        ["shroom-decal"] = {},

        -- nauvis decoratives
        ["v-brown-carpet-grass"] = {},
        ["v-green-hairy-grass"] = {},
        ["v-brown-hairy-grass"] = {},
        ["v-red-pita"] = {},
        -- end of nauvis
        ["vulcanus-rock-decal-large"] = {},
        ["vulcanus-crack-decal-large"] = {},
        ["vulcanus-crack-decal-huge-warm"] = {},
        ["vulcanus-dune-decal"] = {},
        ["vulcanus-sand-decal"] = {},
        ["vulcanus-lava-fire"] = {},
        ["calcite-stain"] = {},
        ["calcite-stain-small"] = {},
        ["sulfur-stain"] = {},
        ["sulfur-stain-small"] = {},
        ["sulfuric-acid-puddle"] = {},
        ["sulfuric-acid-puddle-small"] = {},
        ["crater-small"] = {},
        ["crater-large"] = {},
        ["pumice-relief-decal"] = {},
        ["small-volcanic-rock"] = {},
        ["medium-volcanic-rock"] = {},
        ["tiny-volcanic-rock"] = {},
        ["tiny-rock-cluster"] = {},
        ["small-sulfur-rock"] = {},
        ["tiny-sulfur-rock"] = {},
        ["sulfur-rock-cluster"] = {},
        ["waves-decal"] = {},
      }
    }

    map_gen_setting.autoplace_settings["entity"] =  { 
        settings =
        {

        ["iron-stromatolite"] = {},
        ["copper-stromatolite"] = {},
        ["sulfuric-acid-geyser"] = {},
        ["tungsten-ore"] = {},
        ["huge-volcanic-rock"] = {},
        ["big-volcanic-rock"] = {},
        ["crater-cliff"] = {},
        ["vulcanus-chimney"] = {},
        ["vulcanus-chimney-faded"] = {},
        ["vulcanus-chimney-cold"] = {},
        ["vulcanus-chimney-short"] = {},
        ["vulcanus-chimney-truncated"] = {},
        ["ashland-lichen-tree"] = {},
        ["ashland-lichen-tree-flaming"] = {},
        }
    }
     

    return map_gen_setting
end
-- increse stone patch size in start area
-- data.raw["resource"]["stone"]["autoplace"]["starting_area_size"] = 5500 * (0.005 / 3)

--END MAP GEN

local nauvis = data.raw["planet"]["nauvis"]
local planet_lib = require("__PlanetsLib__.lib.planet")

local start_astroid_spawn_rate =
{
  probability_on_range_chunk =
  {
    {position = 0.1, probability = asteroid_util.nauvis_chunks, angle_when_stopped = asteroid_util.chunk_angle},
    {position = 0.9, probability = asteroid_util.nauvis_chunks, angle_when_stopped = asteroid_util.chunk_angle}
  },
  type_ratios =
  {
    {position = 0.1, ratios = asteroid_util.nauvis_ratio},
    {position = 0.9, ratios = asteroid_util.nauvis_ratio},
  }
}
local start_astroid_spawn = asteroid_util.spawn_definitions(start_astroid_spawn_rate, 0.1)


local zzhora = 
{
    type = "planet",
    name = "zzhora", 
    solar_power_in_space = 300,
    icon = "__planet-zzhora__/graphics/planet-zzhora.png",
    icon_size = 512,
    label_orientation = 0.55,
    starmap_icon = "__planet-zzhora__/graphics/planet-zzhora.png",
    starmap_icon_size = 512,
    magnitude = nauvis.magnitude,
    subgroup = "planets",
    surface_properties = {
        ["solar-power"] = 220,
        ["pressure"] = data.raw["planet"]["gleba"].surface_properties["pressure"],
        ["magnetic-field"] = nauvis.surface_properties["magnetic-field"],
        ["day-night-cycle"] = nauvis.surface_properties["day-night-cycle"],
    },
    map_gen_settings = MapGen_Zzhora(),
    asteroid_spawn_influence = 1,
    asteroid_spawn_definitions = start_astroid_spawn,
    pollutant_type = "pollution"
}

zzhora.orbit = {
    parent = {
        type = "space-location",
        name = "star",
    },
    distance = 15,
    orientation = 0.22
}

local zzhora_connection = {
    type = "space-connection",
    name = "nauvis-zzhora",
    from = "nauvis",
    to = "zzhora",
    subgroup = data.raw["space-connection"]["nauvis-vulcanus"].subgroup,
    length = 15000,
    asteroid_spawn_definitions = asteroid_util.spawn_definitions(asteroid_util.nauvis_vulcanus),
  }

PlanetsLib.borrow_music(data.raw["planet"]["vulcanus"], zzhora)

PlanetsLib:extend({zzhora})

data:extend{zzhora_connection}


data:extend {{
    type = "technology",
    name = "planet-discovery-zzhora",
    icons = PlanetsLib.technology_icon_constant_planet("__planet-zzhora__/graphics/planet-zzhora.png", 512),
    icon_size = 512,
    essential = true,
    localised_description = {"space-location-description.zzhora"},
    effects = {
        {
            type = "unlock-space-location",
            space_location = "zzhora",
            use_icon_overlay_constant = true
        },
        {
            type = "unlock-recipe",
            recipe = "biocalcite",
          }
    },
    prerequisites = {
        "space-science-pack",
    },
    unit = {
        count = 200,
        ingredients = {
            {"automation-science-pack",      1},
            {"logistic-science-pack",        1},
            {"chemical-science-pack",        1},
            {"space-science-pack",           1}
        },
        time = 60,
    },
    order = "ea[zzhora]",
}}

data:extend({{
    type = "recipe",
    name = "biocalcite",
    category = "organic",
    enabled = false,
    auto_recycle = false,
    energy_required = 12,
    surface_conditions =
    {
      {
        property = "pressure",
        min = 2000,
        max = 4000
      }
    },
    ingredients =
    {
      {type = "fluid", name="water", amount = 20},
      {type = "item", name = "nutrients", amount = 4},
      {type = "item", name = "spoilage", amount = 1},
    },
    results =
    {
      {type = "item", name = "calcite", amount = 1},
    },
    allow_productivity = true,
    icon = "__space-age__/graphics/icons/calcite.png",
    subgroup = "agriculture-processes",
    order = "e[calcite]-b[cultivation]",
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.457, b = 0.000, a = 1.000}, -- #ff7400ff
      secondary = {r = 1.000, g = 0.196, b = 0.000, a = 1.000}, -- #ff3100ff
    },
  }})

  for _,recipe in pairs (data.raw.recipe) do 
    if recipe.surface_conditions then
      for i, condition in pairs( recipe.surface_conditions ) do
        if condition.property == "pressure" and condition.min == 4000 then
          condition.min = 2000
        end

      end
    end 
  end 


APS.add_planet{name = "zzhora", filename = "__planet-zzhora__/zzhora.lua", technology = "planet-discovery-zzhora"}