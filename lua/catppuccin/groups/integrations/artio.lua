local M = {}

M.url = "https://github.com/comfysage/artio.nvim"

function M.get()
	local transparent_background = require("catppuccin").options.transparent_background

	return {
		ArtioNormal = {
			fg = C.text,
			bg = transparent_background and "NONE" or C.mantle,
		},
		ArtioSel = {
			fg = C.flamingo,
			bg = C.surface0,
			style = { "bold" },
		},
		ArtioMatch = { fg = C.blue },
		ArtioPointer = { fg = C.flamingo },
		ArtioPrompt = { fg = C.blue },
		ArtioMark = { fg = C.yellow },
		ArtioMarkLine = { link = "Visual" },
	}
end

return M
