local M = {}

function M.get(cpt)
	return {
		LspTroubleText = { fg = cpt.fg_alt },
		LspTroubleCount = { fg = cpt.magenta, bg = cpt.fg_gutter },
		LspTroubleNormal = { fg = cpt.fg_sidebar, bg = cpt.bg_sidebar },
	}
end

return M
