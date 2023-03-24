local M = {}

function M.get()
	return {
		-- nvim-dap
		DapBreakpoint = { fg = C.red },
		DapBreakpointCondition = { fg = C.yellow },
		DapLogPoint = { fg = C.sky },
		DapStopped = { fg = C.maroon },

		-- nvim-dap-ui
		DAPUIScope = { fg = C.sky },
		DAPUIType = { fg = C.mauve },
		DAPUIValue = { fg = C.sky },
		DAPUIVariable = { fg = C.text },
		DapUIModifiedValue = { fg = C.peach },
		DapUIDecoration = { fg = C.sky },
		DapUIThread = { fg = C.green },
		DapUIStoppedThread = { fg = C.sky },
		DapUISource = { fg = C.lavender },
		DapUILineNumber = { fg = C.sky },
		DapUIFloatBorder = { fg = C.sky },

		DapUIWatchesEmpty = { fg = C.maroon },
		DapUIWatchesValue = { fg = C.green },
		DapUIWatchesError = { fg = C.maroon },

		DapUIBreakpointsPath = { fg = C.sky },
		DapUIBreakpointsInfo = { fg = C.green },
		DapUIBreakpointsCurrentLine = { fg = C.green, style = { "bold" } },
		DapUIBreakpointsDisabledLine = { fg = C.surface2 },

		DapUIStepOver = { fg = C.blue },
		DapUIStepInto = { fg = C.blue },
		DapUIStepBack = { fg = C.blue },
		DapUIStepOut = { fg = C.blue },
		DapUIStop = { fg = C.red },
		DapUIPlayPause = { fg = C.green },
		DapUIRestart = { fg = C.green },
		DapUIUnavailable = { fg = C.surface1 },
	}
end

return M
