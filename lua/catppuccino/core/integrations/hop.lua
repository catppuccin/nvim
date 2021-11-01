local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.katppuccino1, fg = cp.katppuccino6, style = "bold,underline" },
		HopNextKey1 = { bg = cp.katppuccino1, fg = cp.catppuccino10, style = "bold" },
		HopNextKey2 = { bg = cp.katppuccino1, fg = cp.catppuccino8, style = "bold,italic" },
		HopUnmatched = { bg = cp.katppuccino1, fg = cp.catppuccino12 },
	}
end

return M
