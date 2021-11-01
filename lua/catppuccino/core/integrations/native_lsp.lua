local M = {}

function M.get(cp)

	local virtual_text = cnf.integrations.native_lsp.virtual_text
	local underlines = cnf.integrations.native_lsp.underlines

	return {
		-- These groups are for the native LSP cliencp. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspReferenceText = { bg = cp.catppuccino13 }, -- used for highlighting "text" references
		LspReferenceRead = { bg = cp.catppuccino13 }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = cp.catppuccino13 }, -- used for highlighting "write" references
		-- hightlight diagnostics in numberline
		DiagnosticError = { fg = cp.katppuccino5 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { fg = cp.catppuccino9 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { fg = cp.catppuccino10 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { fg = cp.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

		LspDiagnosticsDefaultError = { fg = cp.katppuccino5 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultWarning = { fg = cp.catppuccino9 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultInformation = { fg = cp.catppuccino10 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultHint = { fg = cp.hint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspSignatureActiveParameter = { fg = cp.katppuccino6 },
		-- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		LspDiagnosticsError = { fg = cp.katppuccino5 },
		LspDiagnosticsWarning = { fg = cp.catppuccino9 },
		LspDiagnosticsInformation = { fg = cp.catppuccino10 },
		LspDiagnosticsHint = { fg = cp.hint },
		LspDiagnosticsVirtualTextError = { fg = cp.katppuccino5, style = virtual_text.errors }, -- Used for "Error" diagnostic virtual text
		LspDiagnosticsVirtualTextWarning = { fg = cp.catppuccino9, style = virtual_text.warnings }, -- Used for "Warning" diagnostic virtual text
		LspDiagnosticsVirtualTextInformation = { fg = cp.catppuccino10, style = virtual_text.warnings }, -- Used for "Information" diagnostic virtual text
		LspDiagnosticsVirtualTextHint = { fg = cp.hint, style = virtual_text.hints }, -- Used for "Hint" diagnostic virtual text
		LspDiagnosticsUnderlineError = { style = underlines.errors, sp = cp.katppuccino5 }, -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning = { style = underlines.warnings, sp = cp.catppuccino9 }, -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation = { style = underlines.information, sp = cp.catppuccino10 }, -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint = { style = underlines.hints, sp = cp.hint }, -- Used to underline "Hint" diagnostics
		LspCodeLens = { fg = cp.catppuccino12 }, -- virtual text of the codelens
	}
end

return M
