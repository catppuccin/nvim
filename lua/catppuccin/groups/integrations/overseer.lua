local M = {}

function M.get()
	return {
		OverseerPENDING = { fg = C.grey },
		OverseerRUNNING = { fg = C.yellow },
		OverseerSUCCESS = { fg = C.green },
		OverseerCANCELED = { fg = C.overlay2 },
		OverseerFAILURE = { fg = C.red },
		OverseerTask = { fg = C.blue },
		OverseerTaskBorder = { fg = C.sky },
		OverseerOutput = { fg = C.text },
		OverseerComponent = { fg = C.yellow },
		OverseerField = { fg = C.green },
	}
end

return M
