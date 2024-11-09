local M = {}

function M.get()
	return {
		CopilotSuggestion = { fg = C.subtext0 },
		CopilotAnnotation = { fg = C.blue },
	}
end

return M
