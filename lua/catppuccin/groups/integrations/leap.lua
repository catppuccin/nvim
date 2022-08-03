local M = {}

function M.get()
	return {
		LeapLabelPrimary = { bg = cp.surface1, fg = cp.text },
		LeapLabelSecondary = { bg = cp.surface1, fg = cp.text },
		LeapBackdrop = { bg = cp.base, fg = cp.overlay0 },
		LeapMatch = { bg = cp.base, fg = cp.red, style = { "underline" } },
	}
end

return M
