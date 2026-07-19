local M = {}

M.url = "https://github.com/nvim-zh/colorful-winsep.nvim"

function M.get()
	local color = U.select_color(O.integrations.colorful_winsep.color, "red")

	return {
		ColorfulWinSep = {
			fg = color,
			bg = O.transparent_background and C.none or C.base,
		},
		NvimSeparator = { link = "ColorfulWinSep" },
	}
end

return M
