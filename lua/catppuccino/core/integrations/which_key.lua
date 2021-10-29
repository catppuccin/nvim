local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.catppuccino3 },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeyDesc = { fg = cp.catppuccino5 },
		WhichKeySeperator = { fg = cp.comment },
		WhichKeySeparator = { fg = cp.comment },
		WhichKeyFloat = { catppuccino2 = cp.catppuccino2_sidebar },
		WhichKeyValue = { fg = cp.comment },
	}
end

return M
