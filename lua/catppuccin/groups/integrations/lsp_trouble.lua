local M = {}

function M.get()
	return {
		LspTroubleText = { fg = C.green },
		LspTroubleCount = { fg = C.pink, bg = C.surface1 },
		LspTroubleNormal = { fg = C.text, bg = C.crust },
	}
end

return M
