local M = {}

function M.get(cp)
	return {
		HopNextKey = { bg = cp.base, fg = cp.peach, style = { "bold", "underline" } },
<<<<<<< HEAD
		HopNextKey1 = { bg = cp.base, fg = cp.blue, style = { "bold" } },
=======
		HopNextKey1 = { bg = cp.base, fg = cp.blue, style = "bold" },
>>>>>>> origin/dev
		HopNextKey2 = { bg = cp.base, fg = cp.teal, style = { "bold", "italic" } },
		HopUnmatched = { bg = cp.base, fg = cp.overlay0 },
	}
end

return M
