local darken = require("catppuccin.utils.colors").darken
local palette = require("catppuccin.palettes").get_palette "frappe"

return {
	name = "catppuccin-frappe-cursorline",
	static = {
		winhl = {
			inactive = {
				CursorLine = { bg = darken(palette.surface0, 0.85) },
				CursorLineNr = { bg = darken(palette.surface0, 0.85) },
			},
		},
	},
	modes = {
		i = {
			winhl = {
				CursorLine = { bg = darken(palette.sky, 0.4) },
				CursorLineNr = { bg = darken(palette.sky, 0.4) },
			},
		},
		n = {
			winhl = {
				CursorLine = { bg = palette.surface0 },
				CursorLineNr = { bg = palette.surface0 },
			},
		},
		no = {
			operators = {
				[{ "gu", "gU", "g~", "~" }] = {
					winhl = {
						CursorLine = { bg = palette.surface2 },
						CursorLineNr = { bg = palette.surface2 },
					},
				},
				-- delete operator
				d = {
					winhl = {
						CursorLine = { bg = darken(palette.red, 0.4) },
						CursorLineNr = { bg = darken(palette.red, 0.4) },
					},
				},
				-- yank operator
				y = {
					winhl = {
						CursorLine = { bg = darken(palette.peach, 0.4) },
						CursorLineNr = { bg = darken(palette.peach, 0.4) },
					},
				},
				-- change operator
				c = {
					winhl = {
						CursorLine = { bg = darken(palette.blue, 0.5) },
						CursorLineNr = { bg = darken(palette.blue, 0.5) },
					},
				},
			},
		},
		-- replace mode
		R = {
			winhl = {
				CursorLine = { bg = darken(palette.sapphire, 0.5) },
				CursorLineNr = { bg = darken(palette.sapphire, 0.5) },
			},
		},
		-- visual mode
		[{ "v", "V", "\x16" }] = {
			winhl = {
				Visual = { bg = darken(palette.mauve, 0.4) },
			},
		},
		-- select mode
		[{ "s", "S", "\x13" }] = {
			winhl = {
				Visual = { bg = darken(palette.pink, 0.4) },
			},
		},
	},
}
