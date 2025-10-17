local M = {}

function M.get()
	return {
		LazyNormal = { fg = C.text, bg = C.surface0 },
		LazyButton = { fg = C.text, bg = C.surface0 },
		LazyButtonActive = { fg = C.text, bg = C.surface0, style = { "reverse" } },
		LazyComment = { fg = C.overlay1, bg = C.surface0, style = { "italic" } },
		LazyCommit = { fg = C.mauve, bg = C.surface0 },
		LazyCommitIssue = { fg = C.red, bg = C.surface0 },
		LazyCommitScope = { fg = C.blue, bg = C.surface0 },
		LazyCommitType = { fg = C.green, bg = C.surface0 },
		LazyDimmed = { fg = C.overlay0, bg = C.surface0 },
		LazyDir = { fg = C.blue, bg = C.surface0 },
		LazyH1 = { fg = C.text, bg = C.surface0, style = { "bold" } },
		LazyH2 = { fg = C.blue, bg = C.surface0, style = { "bold" } },
		LazyLocal = { fg = C.yellow, bg = C.surface0 },
		LazyProgressDone = { fg = C.green, bg = C.surface0 },
		LazyProgressTodo = { fg = C.overlay0, bg = C.surface0 },
		LazyProp = { fg = C.mauve, bg = C.surface0 },
		LazyReasonCmd = { fg = C.peach, bg = C.surface0 },
		LazyReasonEvent = { fg = C.teal, bg = C.surface0 },
		LazyReasonFt = { fg = C.green, bg = C.surface0 },
		LazyReasonImport = { fg = C.pink, bg = C.surface0 },
		LazyReasonKeys = { fg = C.blue, bg = C.surface0 },
		LazyReasonPlugin = { fg = C.red, bg = C.surface0 },
		LazyReasonRuntime = { fg = C.mauve, bg = C.surface0 },
		LazyReasonSource = { fg = C.teal, bg = C.surface0 },
		LazyReasonStart = { fg = C.green, bg = C.surface0 },
		LazySpecial = { fg = C.teal, bg = C.surface0 },
		LazyTaskError = { fg = C.red, bg = C.surface0 },
		LazyTaskOutput = { fg = C.text, bg = C.surface0 },
		LazyUrl = { fg = C.teal, bg = C.surface0, style = { "underline" } },
		LazyValue = { fg = C.yellow, bg = C.surface0 },
	}
end

return M