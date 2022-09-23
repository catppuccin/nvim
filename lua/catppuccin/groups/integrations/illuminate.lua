local M = {}
local ucolors = require("catppuccin.utils.colors")

function M.get()
	return {
		IlluminatedWordText = { bg = ucolors.darken(cp.surface1, 0.7, cp.base) },
		IlluminatedWordRead = { bg = ucolors.darken(cp.surface1, 0.7, cp.base) },
		IlluminatedWordWrite = { bg = ucolors.darken(cp.surface1, 0.7, cp.base) },
	}
end

return M
