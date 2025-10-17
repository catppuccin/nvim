local M = {}

function M.get()
	return {
		TroubleNormal = { fg = C.text, bg = C.surface0 },
		TroubleNormalNC = { fg = C.text, bg = C.surface0 },
		TroubleText = { fg = C.text, bg = C.surface0 },
		TroubleCount = { fg = C.mauve, bg = C.surface0 },
		TroubleError = { fg = C.red, bg = C.surface0 },
		TroubleWarning = { fg = C.peach, bg = C.surface0 },
		TroubleInformation = { fg = C.blue, bg = C.surface0 },
		TroubleHint = { fg = C.teal, bg = C.surface0 },
		TroubleSource = { fg = C.overlay0, bg = C.surface0 },
		TroubleCode = { fg = C.overlay0, bg = C.surface0 },
		TroubleLocation = { fg = C.overlay0, bg = C.surface0 },
		TroubleFile = { fg = C.blue, bg = C.surface0 },
		TroubleDirectory = { fg = C.blue, bg = C.surface0 },
		TroubleTextError = { fg = C.red, bg = C.surface0 },
		TroubleTextWarning = { fg = C.peach, bg = C.surface0 },
		TroubleTextInformation = { fg = C.blue, bg = C.surface0 },
		TroubleTextHint = { fg = C.teal, bg = C.surface0 },
		TroubleSignError = { fg = C.red, bg = C.surface0 },
		TroubleSignWarning = { fg = C.peach, bg = C.surface0 },
		TroubleSignInformation = { fg = C.blue, bg = C.surface0 },
		TroubleSignHint = { fg = C.teal, bg = C.surface0 },
		TroubleSignOther = { fg = C.mauve, bg = C.surface0 },
		TroubleIndent = { fg = C.overlay0, bg = C.surface0 },
		TroublePos = { fg = C.overlay0, bg = C.surface0 },
		TroublePreview = { fg = C.text, bg = C.surface0 },
	}
end

return M