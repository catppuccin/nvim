local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.fg_alt },
		LspTroubleCount = { fg = cp.magenta, catppuccino2 = cp.fg_gutter },
		LspTroubleNormal = { fg = cp.fg_sidebar, catppuccino2 = cp.catppuccino2_sidebar },
	}
end

return M
