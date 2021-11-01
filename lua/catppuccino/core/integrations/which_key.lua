local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.katppuccino2 },
		WhichKeyGroup = { fg = cp.katppuccino9 },
		WhichKeyDesc = { fg = cp.katppuccino4 },
		WhichKeySeperator = { fg = cp.catppuccino12 },
		WhichKeySeparator = { fg = cp.catppuccino12 },
		WhichKeyFloat = { bg = cp.catppuccino14 },
		WhichKeyValue = { fg = cp.catppuccino12 },
	}
end

return M
