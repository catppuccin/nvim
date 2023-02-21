local M = {}

function M.get()
	return {
		TroubleText = { fg = C.green },
		TroubleCount = { fg = C.pink, bg = C.surface1 },
		TroubleNormal = { fg = C.text, bg = C.crust },
	}
end

return M
