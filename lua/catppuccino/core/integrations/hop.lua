local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.catppuccino2, fg = cp.catppuccino7, style = "bold,underline" },
		HopNextKey1 = { bg = cp.catppuccino2, fg = cp.catppuccino10, style = "bold" },
		HopNextKey2 = { bg = cp.catppuccino2, fg = cp.catppuccino8, style = "bold,italic" },
		HopUnmatched = { bg = cp.catppuccino2, fg = cp.catppuccino12 },
	}
end

return M
