local M = {}

function M.get(cp)
	return {
		DiagnosticError = { fg = cp.red },
		DiagnosticWarning = { fg = cp.yellow },
		DiagnosticInformation = { fg = cp.blue },
		DiagnosticHint = { fg = cp.hint },
		LspFloatWinNormal = { bg = cp.black0 },
		LspFloatWinBorder = { fg = cp.blue },
		LspSagaBorderTitle = { fg = cp.flamingo },
		LspSagaHoverBorder = { fg = cp.blue },
		LspSagaRenameBorder = { fg = cp.teal },
		LspSagaDefPreviewBorder = { fg = cp.teal },
		LspSagaCodeActionBorder = { fg = cp.blue },
		LspSagaFinderSelection = { fg = cp.black4 },
		LspSagaCodeActionTitle = { fg = cp.blue1 },
		LspSagaCodeActionContent = { fg = cp.purple },
		LspSagaSignatureHelpBorder = { fg = cp.red },
		ReferencesCount = { fg = cp.purple },
		DefinitionCount = { fg = cp.purple },
		DefinitionIcon = { fg = cp.blue },
		ReferencesIcon = { fg = cp.blue },
		TargetWord = { fg = cp.flamingo },
	}
end
return M
