-- nvim-dap-ui
local M = {}

function M.get()
	return {
		DapUIScope = { fg = C.sky },
		DapUIType = { fg = C.mauve },
		DapUIValue = { fg = C.sky },
		DapUIVariable = { fg = C.text },
		DapUIModifiedValue = { fg = C.peach },
		DapUIDecoration = { fg = C.sky },
		DapUIThread = { fg = C.green },
		DapUIStoppedThread = { fg = C.sky },
		DapUISource = { fg = C.lavender },
		DapUILineNumber = { fg = C.sky },
		DapUIFloatBorder = { link = "FloatBorder" },

		DapUIWatchesEmpty = { fg = C.maroon },
		DapUIWatchesValue = { fg = C.green },
		DapUIWatchesError = { fg = C.maroon },

		DapUIBreakpointsPath = { fg = C.sky },
		DapUIBreakpointsInfo = { fg = C.green },
		DapUIBreakpointsCurrentLine = { fg = C.green, style = { "bold" } },
		DapUIBreakpointsDisabledLine = { fg = C.surface2 },

		DapUIStepOver = { fg = C.blue },
		DapUIStepOverNC = { link = "DapUIStepOver" },
		DapUIStepInto = { fg = C.blue },
		DapUIStepIntoNC = { link = "DapUIStepInto" },
		DapUIStepBack = { fg = C.blue },
		DapUIStepBackNC = { link = "DapUIStepBack" },
		DapUIStepOut = { fg = C.blue },
		DapUIStepOutNC = { link = "DapUIStepOut" },
		DapUIStop = { fg = C.red },
		DapUIStopNC = { link = "DapUIStop" },
		DapUIPlayPause = { fg = C.green },
		DapUIPlayPauseNC = { link = "DapUIPlayPause" },
		DapUIRestart = { fg = C.green },
		DapUIRestartNC = { link = "DapUIRestart" },
		DapUIUnavailable = { fg = C.surface1 },
		DapUIUnavailableNC = { link = "DapUIUnavailable" },

		DapUIWinSelect = { fg = C.peach },
	}
end

return M
