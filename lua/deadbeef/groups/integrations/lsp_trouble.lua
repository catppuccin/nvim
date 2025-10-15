local M = {}

function M.get()
	return {
		TroubleNormal = { fg = C.text, bg = C.base },
		TroubleNormalNC = { fg = C.text, bg = C.base },
		TroubleText = { fg = C.text, bg = C.base },
		TroubleCount = { fg = C.mauve, bg = C.base },
		TroubleError = { fg = C.red, bg = C.base },
		TroubleWarning = { fg = C.peach, bg = C.base },
		TroubleInformation = { fg = C.blue, bg = C.base },
		TroubleHint = { fg = C.teal, bg = C.base },
		TroubleSource = { fg = C.overlay0, bg = C.base },
		TroubleCode = { fg = C.overlay0, bg = C.base },
		TroubleLocation = { fg = C.overlay0, bg = C.base },
		TroubleFile = { fg = C.blue, bg = C.base },
		TroubleDirectory = { fg = C.blue, bg = C.base },
		TroubleTextError = { fg = C.red, bg = C.base },
		TroubleTextWarning = { fg = C.peach, bg = C.base },
		TroubleTextInformation = { fg = C.blue, bg = C.base },
		TroubleTextHint = { fg = C.teal, bg = C.base },
		TroubleSignError = { fg = C.red, bg = C.base },
		TroubleSignWarning = { fg = C.peach, bg = C.base },
		TroubleSignInformation = { fg = C.blue, bg = C.base },
		TroubleSignHint = { fg = C.teal, bg = C.base },
		TroubleSignOther = { fg = C.mauve, bg = C.base },
		TroubleIndent = { fg = C.overlay0, bg = C.base },
		TroublePos = { fg = C.overlay0, bg = C.base },
		TroublePreview = { fg = C.text, bg = C.base },
	}
end

return M