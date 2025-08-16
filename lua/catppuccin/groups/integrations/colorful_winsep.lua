local M = {}

M.url = "https://github.com/nvim-zh/colorful-winsep.nvim"

function M.get()
	return {
		ColorfulWinSep = {
			fg = C[O.integrations.colorful_winsep.color],
			bg = O.transparent_background and C.none or C.base,
		},
		NvimSeparator = { link = "ColorfulWinSep" },
	}
end

return M
