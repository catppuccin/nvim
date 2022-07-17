local M = {}

local cp = require("catppuccin.palettes.init").get_palette()
local cnf = require("catppuccin.config").options
local dim_percentage = cnf.dim_inactive.percentage
local ucolors = require("catppuccin.utils.colors")
local latte = require("catppuccin.palettes.latte")

function M.dim()
	if cnf.dim_inactive.shade == "dark" then
		return ucolors.vary_color(
			{ latte = ucolors.darken(latte.base, dim_percentage, latte.mantle) },
			ucolors.darken(cp.base, dim_percentage, cp.mantle)
		)
	end
	return ucolors.vary_color(
		{ latte = ucolors.lighten("#FBFCFD", dim_percentage, latte.base) },
		ucolors.lighten(cp.surface0, dim_percentage, cp.base)
	)
end

return M
