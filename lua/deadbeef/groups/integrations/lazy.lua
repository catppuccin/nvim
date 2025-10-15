local M = {}

function M.get()
	return {
		LazyNormal = { fg = C.text, bg = C.base },
		LazyButton = { fg = C.text, bg = C.base },
		LazyButtonActive = { fg = C.text, bg = C.base, style = { "reverse" } },
		LazyComment = { fg = C.overlay1, bg = C.base, style = { "italic" } },
		LazyCommit = { fg = C.mauve, bg = C.base },
		LazyCommitIssue = { fg = C.red, bg = C.base },
		LazyCommitScope = { fg = C.blue, bg = C.base },
		LazyCommitType = { fg = C.green, bg = C.base },
		LazyDimmed = { fg = C.overlay0, bg = C.base },
		LazyDir = { fg = C.blue, bg = C.base },
		LazyH1 = { fg = C.text, bg = C.base, style = { "bold" } },
		LazyH2 = { fg = C.blue, bg = C.base, style = { "bold" } },
		LazyLocal = { fg = C.yellow, bg = C.base },
		LazyProgressDone = { fg = C.green, bg = C.base },
		LazyProgressTodo = { fg = C.overlay0, bg = C.base },
		LazyProp = { fg = C.mauve, bg = C.base },
		LazyReasonCmd = { fg = C.peach, bg = C.base },
		LazyReasonEvent = { fg = C.teal, bg = C.base },
		LazyReasonFt = { fg = C.green, bg = C.base },
		LazyReasonImport = { fg = C.pink, bg = C.base },
		LazyReasonKeys = { fg = C.blue, bg = C.base },
		LazyReasonPlugin = { fg = C.red, bg = C.base },
		LazyReasonRuntime = { fg = C.mauve, bg = C.base },
		LazyReasonSource = { fg = C.teal, bg = C.base },
		LazyReasonStart = { fg = C.green, bg = C.base },
		LazySpecial = { fg = C.teal, bg = C.base },
		LazyTaskError = { fg = C.red, bg = C.base },
		LazyTaskOutput = { fg = C.text, bg = C.base },
		LazyUrl = { fg = C.teal, bg = C.base, style = { "underline" } },
		LazyValue = { fg = C.yellow, bg = C.base },
	}
end

return M