local M = {}

function M.get_colors()
	return require("catppuccin.core.palettes.init").get_palette()
end

return M
