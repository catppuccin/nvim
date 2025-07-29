local M = {}

M.url = "https://github.com/ThePrimeagen/harpoon"

function M.get()
	return {
		HarpoonWindow = { fg = C.text, bg = O.transparent_background and C.none or C.base },
		HarpoonBorder = { fg = C.blue },
	}
end

return M
