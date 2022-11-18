local M = {}

function M.get()
	return {
		WhichKey = { fg = C.flamingo },
		WhichKeyGroup = { fg = C.blue },
		WhichKeySeperator = { fg = C.overlay0 },
		WhichKeyDesc = { fg = C.pink },
		WhichKeyFloat = { bg = O.transparent_background and C.none or C.crust },
		WhichKeyBorder = { fg = C.blue },
		WhichKeyValue = { fg = C.overlay0 },
	}
end

return M
