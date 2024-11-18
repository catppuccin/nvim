local M = {}

function M.get()
	return {
		CopilotSuggestion = { fg = C.overlay0 },
		CopilotAnnotation = { fg = C.blue },
	}
end

return M
