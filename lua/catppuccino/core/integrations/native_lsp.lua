local M = {}

function M.get(cpt)

	local virtual_text = cnf.integrations.native_lsp.virtual_text
	local underlines = cnf.integrations.native_lsp.underlines

	return {
		-- These groups are for the native LSP cliencpt. Some other LSP clients may
		-- use these groups, or use their own. Consult your LSP client's
		-- documentation.
		LspReferenceText = { bg = cpt.fg_gutter }, -- used for highlighting "text" references
		LspReferenceRead = { bg = cpt.fg_gutter }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = cpt.fg_gutter }, -- used for highlighting "write" references
		-- hightlight diagnostics in numberline
		DiagnosticError = { fg = cpt.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { fg = cpt.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { fg = cpt.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { fg = cpt.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

		LspDiagnosticsDefaultError = { fg = cpt.error }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultWarning = { fg = cpt.warning }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultInformation = { fg = cpt.info }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspDiagnosticsDefaultHint = { fg = cpt.hint }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
		LspSignatureActiveParameter = { fg = cpt.orange },
		-- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
		-- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

		LspDiagnosticsError = { fg = cpt.error },
		LspDiagnosticsWarning = { fg = cpt.warning },
		LspDiagnosticsInformation = { fg = cpt.info },
		LspDiagnosticsHint = { fg = cpt.hint },
		LspDiagnosticsVirtualTextError = { fg = cpt.error, style = virtual_text.errors }, -- Used for "Error" diagnostic virtual text
		LspDiagnosticsVirtualTextWarning = { fg = cpt.warning, style = virtual_text.warnings }, -- Used for "Warning" diagnostic virtual text
		LspDiagnosticsVirtualTextInformation = { fg = cpt.info, style = virtual_text.warnings }, -- Used for "Information" diagnostic virtual text
		LspDiagnosticsVirtualTextHint = { fg = cpt.hint, style = virtual_text.hints }, -- Used for "Hint" diagnostic virtual text
		LspDiagnosticsUnderlineError = { style = underlines.errors, sp = cpt.error }, -- Used to underline "Error" diagnostics
		LspDiagnosticsUnderlineWarning = { style = underlines.warnings, sp = cpt.warning }, -- Used to underline "Warning" diagnostics
		LspDiagnosticsUnderlineInformation = { style = underlines.information, sp = cpt.info }, -- Used to underline "Information" diagnostics
		LspDiagnosticsUnderlineHint = { style = underlines.hints, sp = cpt.hint }, -- Used to underline "Hint" diagnostics
		LspCodeLens = { fg = cpt.comment }, -- virtual text of the codelens
	}
end

return M
