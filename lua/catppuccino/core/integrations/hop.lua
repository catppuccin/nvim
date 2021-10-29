local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.bg, fg = cp.orange, style = "bold,underline" },
		HopNextKey1 = { bg = cp.bg, fg = cp.blue, style = "bold" },
		HopNextKey2 = { bg = cp.bg, fg = cp.green, style = "bold,italic" },
		HopUnmatched = { bg = cp.bg, fg = cp.comment },
	}
end

return M
