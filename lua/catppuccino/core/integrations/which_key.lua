local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.katppuccino2 },
		WhichKeyGroup = { fg = cp.katppuccino9 },
		WhichKeyDesc = { fg = cp.katppuccino4 },
		WhichKeySeperator = { fg = cp.katppuccino11 },
		WhichKeySeparator = { fg = cp.katppuccino11 },
		WhichKeyFloat = { bg = cp.catppuccino14 },
		WhichKeyValue = { fg = cp.katppuccino11 },
	}
end

return M
