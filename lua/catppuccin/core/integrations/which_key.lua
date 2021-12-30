local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.flamingo },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeyDesc = { fg = cp.pink },
		WhichKeySeperator = { fg = cp.gray0 },
		WhichKeySeparator = { fg = cp.gray0 },
		WhichKeyFloat = { bg = cp.black0 },
		WhichKeyValue = { fg = cp.gray0 },
	}
end

return M
