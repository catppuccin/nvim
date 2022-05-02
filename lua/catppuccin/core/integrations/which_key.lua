local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.flamingo },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeyDesc = { fg = cp.pink },
		WhichKeySeperator = { fg = cp.overlay0 },
		WhichKeySeparator = { fg = cp.overlay0 },
		WhichKeyFloat = { bg = cp.base0 },
		WhichKeyValue = { fg = cp.overlay0 },
	}
end

return M
