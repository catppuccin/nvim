local M = {}

function M.get()
	return {
		NeotestPassed = { fg = cp.green },
		NeotestFailed = { fg = cp.red },
		NeotestRunning = { fg = cp.yellow },
		NeotestSkipped = { fg = cp.blue },
		NeotestTest = { fg = cp.text },
		NeotestNamespace = { fg = cp.mauve },
		NeotestFocused = { style = { "bold", "underline" } },
		NeotestFile = { fg = cp.blue },
		NeotestDir = { fg = cp.blue },
		NeotestIndent = { fg = cp.surface0 },
		NeotestExpandMarker = { fg = cp.overlay1 },
		NeotestAdapterName = { fg = cp.maroon },
		NeotestWinSelect = { fg = cp.blue, style = { "bold" } },
		NeotestMarked = { fg = cp.peach, style = { "bold" } },
		NeotestTarget = { fg = cp.red },
		NeotestUnknown = { fg = cp.text },
	}
end

return M
