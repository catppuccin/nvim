local M = {}

function M.get()
	return {
		WhichKey = { fg = cp.flamingo },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeySeperator = { fg = cp.overlay0 },
		WhichKeyDesc = { fg = cp.pink },
		WhichKeyFloat = { bg = cp.crust },
		WhichKeyBorder = { fg = cp.blue },
		WhichKeyValue = { fg = cp.overlay0 },
	}
end

return M
