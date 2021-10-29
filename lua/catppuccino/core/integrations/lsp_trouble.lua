local M = {}

function M.get(cp)
	return {
		LspTroubleText = { fg = cp.fg_alt },
		LspTroubleCount = { fg = cp.magenta, bg = cp.fg_gutter },
		LspTroubleNormal = { fg = cp.fg_sidebar, bg = cp.bg_sidebar },
	}
end

return M
