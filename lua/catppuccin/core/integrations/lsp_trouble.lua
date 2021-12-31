local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.green },
		LspTroubleCount = { fg = cp.pink, bg = cp.black4 },
		LspTroubleNormal = { fg = cp.white, bg = cp.black0 },
	}
end

return M
