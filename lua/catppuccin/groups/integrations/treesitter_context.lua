local M = {}

function M.get()
	local transparent_background = require("catppuccin").options.transparent_background
	local bg_highlight = transparent_background and "NONE" or C.mantle
	return {
		TreesitterContext = { bg = bg_highlight, fg = C.text },
	}
end

return M
