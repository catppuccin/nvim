local M = {}

function M.get(cpt)
	return {
		HopNextKey = { bg = cpt.bg, fg = cpt.orange, style = "bold,underline" },
		HopNextKey1 = { bg = cpt.bg, fg = cpt.blue, style = "bold" },
		HopNextKey2 = { bg = cpt.bg, fg = cpt.green, style = "bold,italic" },
		HopUnmatched = { bg = cpt.bg, fg = cpt.comment },
	}
end

return M
