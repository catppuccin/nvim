--- Get the table of lualine colors if it is present (function or table)
---@param colors_override (CtpIntegrationLualineOverride | CtpIntegrationLualineOverrideFn)?
---@param colors CtpColors<string>
local function get_colors(colors_override, colors)
	if colors_override == nil then
		return {}
	elseif type(colors_override) == "function" then
		return colors_override(colors)
	else
		return colors_override
	end
end
return function(flavour)
	flavour = flavour or require("catppuccin").flavour or vim.g.catppuccin_flavour or "mocha"
	local C = require("catppuccin.palettes").get_palette(flavour)
	local O = require("catppuccin").options

	local transparent_bg = O.transparent_background and "NONE" or C.mantle
	local default_colors = {
		normal = {
			a = { bg = C.blue, fg = C.mantle, gui = "bold" },
			b = { bg = C.surface0, fg = C.blue },
			c = { bg = transparent_bg, fg = C.text },
		},

		insert = {
			a = { bg = C.green, fg = C.base, gui = "bold" },
			b = { bg = C.surface0, fg = C.green },
		},

		terminal = {
			a = { bg = C.green, fg = C.base, gui = "bold" },
			b = { bg = C.surface0, fg = C.green },
		},

		command = {
			a = { bg = C.peach, fg = C.base, gui = "bold" },
			b = { bg = C.surface0, fg = C.peach },
		},
		visual = {
			a = { bg = C.mauve, fg = C.base, gui = "bold" },
			b = { bg = C.surface0, fg = C.mauve },
		},
		replace = {
			a = { bg = C.red, fg = C.base, gui = "bold" },
			b = { bg = C.surface0, fg = C.red },
		},
		inactive = {
			a = { bg = transparent_bg, fg = C.blue },
			b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
			c = { bg = transparent_bg, fg = C.overlay0 },
		},
	}
	local overrides = O.integrations.lualine
	if overrides then
		local default_override = get_colors(overrides.all, C)
		local flavor_override = get_colors(overrides[flavour], C)
		return vim.tbl_deep_extend("force", default_colors, default_override, flavor_override)
	end
	return default_colors
end
