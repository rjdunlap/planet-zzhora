local utils = require("__any-planet-start__.utils")

utils.set_prerequisites("tungsten-carbide", nil)
utils.set_prerequisites("calcite-processing", nil)


utils.set_trigger("tungsten-carbide", {type = "mine-entity", entities = {"big-volcanic-rock"}})

utils.set_prerequisites("foundry", {"tungsten-carbide","concrete", "lubricant"})
-- Starting here must not depend on Gleba: farming (biochamber, needed for Biocalcite) and heating towers
-- were locked behind "Planet discovery Gleba". Their mining triggers (stromatolites) exist on Zzhora.
utils.set_prerequisites("agriculture", nil)
utils.set_prerequisites("heating-tower", nil)
