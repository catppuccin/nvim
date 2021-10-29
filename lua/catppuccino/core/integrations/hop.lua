local M = {}

function M.get(cp)
	return {
		HopNextKey = { catppuccino2 = cp.catppuccino2, fg = cp.catppuccino7, style = "bold,underline" },
		HopNextKey1 = { catppuccino2 = cp.catppuccino2, fg = cp.catppuccino10, style = "bold" },
		HopNextKey2 = { catppuccino2 = cp.catppuccino2, fg = cp.catppuccino8, style = "bold,italic" },
		HopUnmatched = { catppuccino2 = cp.catppuccino2, fg = cp.catppuccino12 },
	}
end

return M
