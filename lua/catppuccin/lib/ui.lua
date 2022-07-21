local M = {}

local cnf = require("catppuccin.config").options
local dim_percentage = cnf.dim_inactive.percentage
local ucolors = require("catppuccin.utils.colors")

function M.dim()
	local cp = require("catppuccin.palettes.init").get_palette()
	if cnf.dim_inactive.shade == "dark" then
		return ucolors.vary_color({
			latte = ucolors.darken(cp.base, dim_percentage, cp.mantle),
			piccolo = ucolors.darken(cp.base, dim_percentage, cp.mantle),
		}, ucolors.darken(cp.base, dim_percentage, cp.mantle))
	end
	return ucolors.vary_color({
		latte = ucolors.lighten("#FBFCFD", dim_percentage, cp.base),
		piccolo = ucolors.lighten("#FFFDF7", dim_percentage, cp.base),
	}, ucolors.lighten(cp.surface0, dim_percentage, cp.base))
end

return M
