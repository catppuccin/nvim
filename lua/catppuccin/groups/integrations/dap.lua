local M = {}

function M.get()
	return {
		DapBreakpoint = { fg = C.red },
		DapBreakpointCondition = { fg = C.yellow },
		DapBreakpointRejected = { fg = C.mauve },
		DapLogPoint = { fg = C.sky },
		DapStopped = { fg = C.maroon },
	}
end

return M
