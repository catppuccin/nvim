local M = {}

function M.get()
	return {
		PounceMatch = { bg = U.lighten(C.green, 0.7), fg = C.base, style = { "bold" } },
		PounceGap = { bg = U.darken(C.green, 0.7), fg = C.base, style = { "bold" } },
		PounceAccept = { bg = C.peach, fg = C.base, style = { "bold" } },
		PounceAcceptBest = { bg = C.teal, fg = C.base, style = { "bold" } },
	}
end

return M
