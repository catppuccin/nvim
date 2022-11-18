local M = {}

function M.get()
	return {
		FidgetTask = {
			bg = O.transparent_background and C.none or C.mantle,
			fg = C.text,
		},
		FidgetTitle = { fg = C.blue },
	}
end

return M
