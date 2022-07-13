local M = {}

function M.get()
	return {
		WhichKey = { fg = cp.flamingo },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeyDesc = { fg = cp.pink },
		WhichKeySeperator = { fg = cp.overlay0 },
		WhichKeySeparator = { fg = cp.overlay0 },
		WhichKeyFloat = { bg = cp.crust },
		WhichKeyValue = { fg = cp.overlay0 },
	}
end

return M
