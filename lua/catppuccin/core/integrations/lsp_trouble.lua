local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.green },
		LspTroubleCount = { fg = cp.pink, bg = cp.surface1 },
		LspTroubleNormal = { fg = cp.text, bg = cp.base0 },
	}
end

return M
