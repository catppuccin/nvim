local M = {}

M.url = "https://github.com/folke/trouble.nvim"

function M.get()
	return {
		TroubleText = { fg = C.green },
		TroubleCount = { fg = C.pink, bg = O.transparent_background and C.none or C.surface1 },
		TroubleNormal = { fg = C.text, bg = O.transparent_background and C.none or C.crust },
		TroubleNormalNC = { link = "TroubleNormal" },
	}
end

return M
