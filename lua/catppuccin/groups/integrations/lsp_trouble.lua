local M = {}

function M.get()
	return {
		LspTroubleText = { fg = cp.green },
		LspTroubleCount = { fg = cp.pink, bg = cp.surface1 },
		LspTroubleNormal = { fg = cp.text, bg = cp.crust },
	}
end

return M
