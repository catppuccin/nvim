local M = {}

function M.get(cp)
	return {
		ExtraWhitespace = { bg = cp.red },
	}
end

return M
