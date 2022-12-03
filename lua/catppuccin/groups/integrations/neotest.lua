local M = {}

function M.get()
	return {
		NeotestPassed = { fg = C.green },
		NeotestFailed = { fg = C.red },
		NeotestRunning = { fg = C.yellow },
		NeotestSkipped = { fg = C.blue },
		NeotestTest = { fg = C.text },
		NeotestNamespace = { fg = C.mauve },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = C.blue },
		NeotestDir = { fg = C.blue },
		NeotestIndent = { fg = C.overlay1 },
		NeotestExpandMarker = { fg = C.overlay1 },
		NeotestAdapterName = { fg = C.maroon },
		NeotestWinSelect = { fg = C.blue, style = { "bold" } },
		NeotestMarked = { fg = C.peach, style = { "bold" } },
		NeotestTarget = { fg = C.red },
		NeotestUnknown = { fg = C.text },
	}
end

return M
