local palette = require("catppuccin.palettes").get_palette "latte"
local presets = require "catppuccin.utils.reactive"

local preset = presets.cursor("catppuccin-latte-cursor", palette)

preset.modes.R.hl.ReactiveCursor = { bg = palette.flamingo }

return preset
