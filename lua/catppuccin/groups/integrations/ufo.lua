local M = {}

M.url = "https://github.com/kevinhwang91/nvim-ufo"

M.get = function()
	return {
		UfoFoldedFg = { fg = C.lavender },
		UfoFoldedEllipsis = { fg = C.crust, bg = C.blue },
	}
end

return M
