local M = {}

function M.get()
	local cnf = require("catppuccin.config").options
	local transparent_background = cnf.transparent_background
	local bg_highlight = (transparent_background and cnf.dim_inactive.enabled and cp.dim)
		or (transparent_background and "NONE")
		or (cnf.dim_inactive.enabled and cp.dim)
		or cp.crust

	local active_bg = transparent_background and "NONE" or cp.base
	local inactive_bg = transparent_background and "NONE" or cp.mantle

	local styles = {}
	if cnf.integrations.bufferline.bolds then
		table.insert(styles, "bold")
	end
	if cnf.integrations.bufferline.italics then
		table.insert(styles, "italic")
	end

	return {
		-- buffers
		BufferLineBackground = { bg = inactive_bg },
		BufferLineBackcrust = { fg = cp.text, bg = inactive_bg }, -- others
		BufferLineBufferVisible = { fg = cp.surface1, bg = inactive_bg },
		BufferLineBufferSelected = { fg = cp.text, bg = active_bg, style = styles }, -- current
		-- tabs
		BufferLineTab = { fg = cp.surface1, bg = inactive_bg },
		BufferLineTabSelected = { fg = cp.sky, bg = active_bg },
		BufferLineTabClose = { fg = cp.red, bg = inactive_bg },
		BufferLineIndicatorSelected = { fg = cp.peach, bg = active_bg, style = styles },
		-- separators
		BufferLineSeparator = { fg = cp.crust, bg = inactive_bg },
		BufferLineSeparatorVisible = { fg = cp.crust, bg = inactive_bg },
		BufferLineSeparatorSelected = { fg = cp.crust, bg = active_bg },
		-- close buttons
		BufferLineCloseButton = { fg = cp.surface1, bg = inactive_bg },
		BufferLineCloseButtonVisible = { fg = cp.surface1, bg = inactive_bg },
		BufferLineCloseButtonSelected = { fg = cp.red, bg = active_bg },
		-- Empty fill
		BufferLineFill = { bg = bg_highlight },
		-- Numbers
		BufferLineNumbers = { fg = cp.subtext0 },
		BufferLineNumbersVisible = { fg = cp.subtext0 },
		BufferLineNumbersSelected = { fg = cp.subtext0, style = styles },
		-- Errors
		BufferLineError = { fg = cp.red },
		BufferLineErrorVisible = { fg = cp.red },
		BufferLineErrorDiagnostic = { fg = cp.red },
		BufferLineErrorDiagnosticVisible = { fg = cp.red },
		BufferLineErrorSelected = { fg = cp.red, style = styles },
		BufferLineErrorDiagnosticSelected = { fg = cp.red, style = styles },
		-- Warnings
		BufferLineWarning = { fg = cp.peach },
		BufferLineWarningVisible = { fg = cp.peach },
		BufferLineWarningDiagnostic = { fg = cp.peach },
		BufferLineWarningDiagnosticVisible = { fg = cp.peach },
		BufferLineWarningSelected = { fg = cp.peach, style = styles },
		BufferLineWarningDiagnosticSelected = { fg = cp.peach, style = styles },
		-- Infos
		BufferLineInfo = { fg = cp.teal },
		BufferLineInfoVisible = { fg = cp.teal },
		BufferLineInfoDiagnostic = { fg = cp.teal },
		BufferLineInfoDiagnosticVisible = { fg = cp.teal },
		BufferLineInfoSelected = { style = styles, fg = cp.teal },
		BufferLineInfoDiagnosticSelected = { style = styles, fg = cp.teal },
		-- Hint
		BufferLineHint = { fg = cp.sapphire },
		BufferLineHintVisible = { fg = cp.sapphire },
		BufferLineHintDiagnostic = { fg = cp.sapphire },
		BufferLineHintDiagnosticVisible = { fg = cp.sapphire },
		BufferLineHintSelected = { fg = cp.sapphire, style = styles },
		BufferLineHintDiagnosticSelected = { fg = cp.sapphire, style = styles },
		-- Diagnostics
		BufferLineDiagnostic = { fg = cp.subtext0 },
		BufferLineDiagnosticVisible = { fg = cp.subtext0 },
		BufferLineDiagnosticSelected = { fg = cp.subtext0, style = styles },
	}
end

return M
