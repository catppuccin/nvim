local M = {}

function M.get()
	return {
		PounceMatch = { bg = ucolors.lighten(cp.green, 0.7), fg = cp.base, style = { "bold" } },
		PounceGap = { bg = ucolors.darken(cp.green, 0.7), fg = cp.base, style = { "bold" } },
		PounceAccept = { bg = cp.peach, fg = cp.base, style = { "bold" } },
		PounceAcceptBest = { bg = cp.teal, fg = cp.base, style = { "bold" } },
	}
end

return M
