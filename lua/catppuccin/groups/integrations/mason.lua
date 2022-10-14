local M = {}

function M.get()
	local bg = cnf.transparent_background and cp.none or cp.lavender
	local fg = cnf.transparent_background and cp.lavender or cp.base

	local secondary_bg = cnf.transparent_background and cp.none or cp.blue
	local secondary_fg = cnf.transparent_background and cp.blue or cp.base

	local muted_bg = cnf.transparent_background and cp.none or cp.overlay0
	local muted_fg = cnf.transparent_background and cp.overlay0 or cp.base

	return {
		MasonHeader = { fg = fg, bg = bg, style = { "bold" } },
		MasonHeaderSecondary = { fg = secondary_fg, bg = secondary_bg, style = { "bold" } },

		MasonHighlight = { fg = cp.green },
		MasonHighlightBlock = {
			bg = cnf.transparent_background and cp.none or cp.green,
			fg = cnf.transparent_background and cp.green or cp.base,
		},
		MasonHighlightBlockBold = { bg = secondary_bg, fg = secondary_fg, bold = true },

		MasonHighlightSecondary = { fg = cp.mauve },
		MasonHighlightBlockSecondary = { fg = secondary_fg, bg = secondary_bg },
		MasonHighlightBlockBoldSecondary = { fg = fg, bg = bg, bold = true },

		MasonMuted = { fg = cp.overlay0 },
		MasonMutedBlock = { bg = muted_bg, fg = muted_fg },
		MasonMutedBlockBold = { bg = cp.yellow, fg = cp.base, bold = true },

		MasonError = { fg = cp.red },

		MasonHeading = { fg = cp.lavender, bold = true },
	}
end

return M
