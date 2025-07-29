local M = {}

M.url = "https://github.com/nvim-zh/colorful-winsep.nvim"

function M.get()
	return {
		NvimSeparator = {
			fg = C[O.integrations.colorful_winsep.color],
			bg = O.transparent_background and C.none or C.base,
		},
	}
end

return M
