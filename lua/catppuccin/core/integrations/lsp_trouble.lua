local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.catppuccin0 },
		LspTroubleCount = { fg = cp.catppuccin4, bg = cp.catppuccin12 },
		LspTroubleNormal = { fg = cp.catppuccin10, bg = cp.catppuccin13 },
	}
end

return M
