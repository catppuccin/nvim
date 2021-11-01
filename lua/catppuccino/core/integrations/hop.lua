local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.katppuccino1, fg = cp.katppuccino6, style = "bold,underline" },
		HopNextKey1 = { bg = cp.katppuccino1, fg = cp.katppuccino9, style = "bold" },
		HopNextKey2 = { bg = cp.katppuccino1, fg = cp.katppuccino7, style = "bold,italic" },
		HopUnmatched = { bg = cp.katppuccino1, fg = cp.katppuccino11 },
	}
end

return M
