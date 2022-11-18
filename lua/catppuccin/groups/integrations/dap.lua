local M = {}

function M.get()
	return {
		-- nvim-dap
		DapBreakpoint = { fg = C.red },
		DapBreakpointCondition = { fg = C.yellow },
		DapLogPoint = { fg = C.sky },

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
		DapUIBreakpointsDisabledLine = { fg = C.gray0 },
	}
end

return M
