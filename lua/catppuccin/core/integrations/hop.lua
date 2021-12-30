local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.black2, fg = cp.peach, style = "bold,underline" },
		HopNextKey1 = { bg = cp.black2, fg = cp.blue, style = "bold" },
		HopNextKey2 = { bg = cp.black2, fg = cp.teal, style = "bold,italic" },
		HopUnmatched = { bg = cp.black2, fg = cp.gray0 },
	}
end

return M
