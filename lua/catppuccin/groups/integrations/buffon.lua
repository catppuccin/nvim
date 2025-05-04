local M = {}

function M.get()
	return {
		BuffonUnloadedBuffer = { fg = C.surface1 },
		BuffonShortcut = { fg = C.peach },
		BuffonLineActive = { fg = C.sapphire },
		BuffonUnsavedIndicator = { fg = C.red },
	}
end

return M
