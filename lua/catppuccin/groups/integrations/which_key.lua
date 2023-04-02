local M = {}

function M.get()
	return {
		WhichKey = { link = "NormalFloat" },
		WhichKeyBorder = { link = "FloatBorder" },

		WhichKeyGroup = { fg = C.blue },
		WhichKeySeperator = { fg = C.overlay0 },
		WhichKeyDesc = { fg = C.pink },
		WhichKeyValue = { fg = C.overlay0 },
	}
end

return M
