local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.katppuccino0 },
		LspTroubleCount = { fg = cp.katppuccino4, bg = cp.catppuccino13 },
		LspTroubleNormal = { fg = cp.catppuccino11, bg = cp.catppuccino14 },
	}
end

return M
