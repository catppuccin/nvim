local M = {}

local cp = require("catppuccin.core.palettes.init").get_palette()
local cnf = require("catppuccin.config").options
local dim_percentage = cnf.dim_inactive.percentage
local ucolors = require("catppuccin.utils.colors")

function M.dim()
	if cnf.dim_inactive.shade == "dark" then
		return ucolors.darken(cp.base, dim_percentage, cp.crust)
	end
	return ucolors.lighten(cp.base, dim_percentage, cp.surface0)
end

return M
