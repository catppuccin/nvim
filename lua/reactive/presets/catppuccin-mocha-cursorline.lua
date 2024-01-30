local palette = require("catppuccin.palettes").get_palette "mocha"
local presets = require "catppuccin.utils.reactive"

return presets.cursorline("catppuccin-mocha-cursorline", palette)
