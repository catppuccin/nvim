local M = {}
local ucolors = require("catppuccin.ucolorss.colors")

function M.get(cp)

  local options = require("catppuccin.config").options
	local virtual_text = options.integrations.native_lsp.virtual_text
	local underlines = options.integrations.native_lsp.underlines

	local error = cp.red
	local warning = cp.yellow
	local info = cp.sky
	local hint = cp.teal
	local darkening_percentage = 0.095

	return {
		-- These groups are for the native LSP cliencp. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspReferenceText = { bg = cp.surface1 }, -- used for highlighting "text" references
		LspReferenceRead = { bg = cp.surface1 }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = cp.surface1 }, -- used for highlighting "write" references
		-- hightlight diagnostics in numberline

		DiagnosticVirtualTextError = { bg = ucolors.darken(error, darkening_percentage, cp.base), fg = error, style = virtual_text.errors }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextWarn = { bg = ucolors.darken(warning, darkening_percentage, cp.base), fg = warning, style = virtual_text.warnings }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextInfo = { bg = ucolors.darken(info, darkening_percentage, cp.base), fg = info, style = virtual_text.information }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextHint = { bg = ucolors.darken(hint, darkening_percentage, cp.base), fg = hint, style = virtual_text.hints }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

		DiagnosticError = { bg = cp.none, fg = error, style = virtual_text.errors }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { bg = cp.none, fg = warning, style = virtual_text.warnings }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { bg = cp.none, fg = info, style = virtual_text.information }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { bg = cp.none, fg = hint, style = virtual_text.hints }, -- Used as the mantle highlight group. Other Diagnostic highlights link to this by default

		-- for nvim nightly
		DiagnosticUnderlineError = { style = underlines.errors, sp = error },
		DiagnosticUnderlineWarn = { style = underlines.warnings, sp = warning },
		DiagnosticUnderlineInfo = { style = underlines.information, sp = info },
		DiagnosticUnderlineHint = { style = underlines.hints, sp = hint },

		LspDiagnosticsDefaultError = { fg = error }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultWarning = { fg = warning }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultInformation = { fg = info }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultHint = { fg = hint }, -- Used as the mantle highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspSignatureActiveParameter = { fg = cp.peach },
		-- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		LspDiagnosticsError = { fg = error },
		LspDiagnosticsWarning = { fg = warning },
		LspDiagnosticsInformation = { fg = info },
		LspDiagnosticsHint = { fg = hint },
		LspDiagnosticsVirtualTextError = { fg = error, style = virtual_text.errors }, -- Used for "Error" diagnostic virtual text
		LspDiagnosticsVirtualTextWarning = { fg = warning, style = virtual_text.warnings }, -- Used for "Warning" diagnostic virtual text
		LspDiagnosticsVirtualTextInformation = { fg = info, style = virtual_text.warnings }, -- Used for "Information" diagnostic virtual text
		LspDiagnosticsVirtualTextHint = { fg = hint, style = virtual_text.hints }, -- Used for "Hint" diagnostic virtual text
		LspDiagnosticsUnderlineError = { style = underlines.errors, sp = error }, -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning = { style = underlines.warnings, sp = warning }, -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation = { style = underlines.information, sp = info }, -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint = { style = underlines.hints, sp = hint }, -- Used to underline "Hint" diagnostics
		LspCodeLens = { fg = cp.overlay0 }, -- virtual text of the codelens
	}
end

return M
