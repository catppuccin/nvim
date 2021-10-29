local M = {}

function M.get(cp)
	return {
		WhichKey = { fg = cp.cyan },
		WhichKeyGroup = { fg = cp.blue },
		WhichKeyDesc = { fg = cp.magenta },
		WhichKeySeperator = { fg = cp.comment },
		WhichKeySeparator = { fg = cp.comment },
		WhichKeyFloat = { bg = cp.bg_sidebar },
		WhichKeyValue = { fg = cp.comment },
	}
end

return M
