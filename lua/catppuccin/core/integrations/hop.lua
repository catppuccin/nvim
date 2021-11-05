local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.catppuccin1, fg = cp.catppuccin6, style = "bold,underline" },
		HopNextKey1 = { bg = cp.catppuccin1, fg = cp.catppuccin9, style = "bold" },
		HopNextKey2 = { bg = cp.catppuccin1, fg = cp.catppuccin7, style = "bold,italic" },
		HopUnmatched = { bg = cp.catppuccin1, fg = cp.catppuccin11 },
	}
end

return M
