local palette = require("catppuccin.palettes").get_palette "macchiato"
local presets = require "catppuccin.utils.reactive"
local darken = require("catppuccin.utils.colors").darken

local preset = presets.cursorline("catppuccin-macchiato-cursorline", palette)

preset.static.winhl.inactive.CursorLine = { bg = darken(palette.surface0, 0.8) }
preset.static.winhl.inactive.CursorLineNr = { bg = darken(palette.surface0, 0.8) }

return preset
