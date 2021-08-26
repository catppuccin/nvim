local M = {}

function M.get(cpt)
	return {
		DiagnosticError = { fg = cpt.error },
		DiagnosticWarning = { fg = cpt.warning },
		DiagnosticInformation = { fg = cpt.info },
		DiagnosticHint = { fg = cpt.hint },
		LspFloatWinNormal = { bg = cpt.bg_float },
		LspFloatWinBorder = { fg = cpt.border_highlight },
		LspSagaBorderTitle = { fg = cpt.cyan },
		LspSagaHoverBorder = { fg = cpt.blue },
		LspSagaRenameBorder = { fg = cpt.green },
		LspSagaDefPreviewBorder = { fg = cpt.green },
		LspSagaCodeActionBorder = { fg = cpt.blue },
		LspSagaFinderSelection = { fg = cpt.bg_visual },
		LspSagaCodeActionTitle = { fg = cpt.blue1 },
		LspSagaCodeActionContent = { fg = cpt.purple },
		LspSagaSignatureHelpBorder = { fg = cpt.red },
		ReferencesCount = { fg = cpt.purple },
		DefinitionCount = { fg = cpt.purple },
		DefinitionIcon = { fg = cpt.blue },
		ReferencesIcon = { fg = cpt.blue },
		TargetWord = { fg = cpt.cyan },
	}
end
return M
