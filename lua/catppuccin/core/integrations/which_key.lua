local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.catppuccin2 },
		WhichKeyGroup = { fg = cp.catppuccin9 },
		WhichKeyDesc = { fg = cp.catppuccin4 },
		WhichKeySeperator = { fg = cp.catppuccin11 },
		WhichKeySeparator = { fg = cp.catppuccin11 },
		WhichKeyFloat = { bg = cp.catppuccin13 },
		WhichKeyValue = { fg = cp.catppuccin11 },
	}
end

return M
