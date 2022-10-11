local M = {}

function M.get()
	local bg = cnf.transparent_background and cp.none or cp.base
	return {
		HopNextKey = { bg = bg, fg = cp.peach, style = { "bold", "underline" } },
		HopNextKey1 = { bg = bg, fg = cp.blue, style = { "bold" } },
		HopNextKey2 = { bg = bg, fg = cp.teal, style = { "bold", "italic" } },
		HopUnmatched = { bg = bg, fg = cp.overlay0 },
	}
end

return M
