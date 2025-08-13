local M = {}

function M.get()
	return {
		ColorfulWinSep = {
			fg = C[O.integrations.colorful_winsep.color],
			bg = O.transparent_background and C.none or C.base,
		},
	}
end

return M
