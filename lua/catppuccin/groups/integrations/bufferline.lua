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

	if type(cnf.integrations.bufferline) == "boolean" then
		cnf.integrations.bufferline = {}
	end

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
		BufferLineNumbers = { fg = cp.subtext0, bg = inactive_bg },
		BufferLineNumbersVisible = { fg = cp.subtext0, bg = inactive_bg },
		BufferLineNumbersSelected = { fg = cp.subtext0, bg = active_bg, style = styles },
		-- Errors
		BufferLineError = { fg = cp.red, bg = inactive_bg },
		BufferLineErrorVisible = { fg = cp.red, bg = inactive_bg },
		BufferLineErrorDiagnostic = { fg = cp.red, bg = inactive_bg },
		BufferLineErrorDiagnosticVisible = { fg = cp.red, bg = inactive_bg },
		BufferLineErrorSelected = { fg = cp.red, bg = active_bg, style = styles },
		BufferLineErrorDiagnosticSelected = { fg = cp.red, bg = active_bg, style = {} },
		-- Warnings
		BufferLineWarning = { fg = cp.peach, bg = inactive_bg },
		BufferLineWarningVisible = { fg = cp.peach, bg = inactive_bg },
		BufferLineWarningDiagnostic = { fg = cp.peach, bg = inactive_bg },
		BufferLineWarningDiagnosticVisible = { fg = cp.peach, bg = inactive_bg },
		BufferLineWarningSelected = { fg = cp.peach, bg = active_bg, style = styles },
		BufferLineWarningDiagnosticSelected = { fg = cp.peach, bg = active_bg, style = {} },
		-- Infos
		BufferLineInfo = { fg = cp.teal, bg = inactive_bg },
		BufferLineInfoVisible = { fg = cp.teal, bg = inactive_bg },
		BufferLineInfoDiagnostic = { fg = cp.teal, bg = inactive_bg },
		BufferLineInfoDiagnosticVisible = { fg = cp.teal, bg = inactive_bg },
		BufferLineInfoSelected = { fg = cp.teal, bg = active_bg, style = styles },
		BufferLineInfoDiagnosticSelected = { fg = cp.teal, bg = active_bg, style = {} },
		-- Hint
		BufferLineHint = { fg = cp.sapphire, bg = inactive_bg },
		BufferLineHintVisible = { fg = cp.sapphire, bg = inactive_bg },
		BufferLineHintDiagnostic = { fg = cp.sapphire, bg = inactive_bg },
		BufferLineHintDiagnosticVisible = { fg = cp.sapphire, bg = inactive_bg },
		BufferLineHintSelected = { fg = cp.sapphire, bg = active_bg, style = styles },
		BufferLineHintDiagnosticSelected = { fg = cp.sapphire, bg = active_bg, style = {} },
		-- Diagnostics
		BufferLineDiagnostic = { fg = cp.subtext0, bg = inactive_bg },
		BufferLineDiagnosticVisible = { fg = cp.subtext0, bg = inactive_bg },
		BufferLineDiagnosticSelected = { fg = cp.subtext0, bg = active_bg, style = styles },
		-- Modified
		BufferLineModified = { fg = cp.peach, bg = inactive_bg },
		BufferLineModifiedSelected = { fg = cp.peach, bg = active_bg, style = {} },
	}
end

return M
