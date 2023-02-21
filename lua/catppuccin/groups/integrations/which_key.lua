local M = {}

function M.get()
	return {
		WhichKey = { fg = C.flamingo },
		WhichKeyGroup = { fg = C.blue },
		WhichKeySeperator = { fg = C.overlay0 },
		WhichKeyDesc = { fg = C.pink },
		WhichKeyBorder = { fg = C.blue },
		WhichKeyValue = { fg = C.overlay0 },
	}
end

return M
