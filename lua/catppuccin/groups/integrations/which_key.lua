local M = {}

function M.get()
	return {
		WhichKey = { fg = cp.flamingo },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeySeperator = { fg = cp.overlay0 },
		WhichKeyDesc = { fg = cp.pink },
		WhichKeyFloat = { bg = cnf.transparent_background and cp.none or cp.crust },
		WhichKeyBorder = { fg = cp.blue },
		WhichKeyValue = { fg = cp.overlay0 },
	}
end

return M
