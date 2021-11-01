local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.katppuccino0 },
		LspTroubleCount = { fg = cp.katppuccino4, bg = cp.katppuccino12 },
		LspTroubleNormal = { fg = cp.katppuccino10, bg = cp.katppuccino13 },
	}
end

return M
