-- Some mods (e.g. Angel's) remove autoplace controls inherited from Gleba such as "gleba_stone".
-- Drop controls that no longer exist so the planet does not make the game fail to load.
local planet = data.raw.planet["zzhora"]
local settings = planet and planet.map_gen_settings
if settings and settings.autoplace_controls then
  for name in pairs(settings.autoplace_controls) do
    if not data.raw["autoplace-control"][name] then
      settings.autoplace_controls[name] = nil
    end
  end
end
