local M = {}

function M.get()
	return {
		DiagnosticError = { fg = cp.red },
		DiagnosticWarning = { fg = cp.yellow },
		DiagnosticInformation = { fg = cp.blue },
		DiagnosticHint = { fg = cp.rosewater },
		LspFloatWinNormal = { bg = cp.crust },
		LspFloatWinBorder = { fg = cp.blue },
		LspSagaBorderTitle = { fg = cp.flamingo },
		LspSagaHoverBorder = { fg = cp.blue },
		LspSagaRenameBorder = { fg = cp.teal },
		LspSagaDefPreviewBorder = { fg = cp.teal },
		LspSagaCodeActionBorder = { fg = cp.blue },
		LspSagaFinderSelection = { fg = cp.surface1 },
		LspSagaCodeActionTitle = { fg = cp.blue },
		LspSagaCodeActionContent = { fg = cp.lavender },
		LspSagaSignatureHelpBorder = { fg = cp.red },
		ReferencesCount = { fg = cp.lavender },
		DefinitionCount = { fg = cp.lavender },
		DefinitionIcon = { fg = cp.blue },
		ReferencesIcon = { fg = cp.blue },
		TargetWord = { fg = cp.flamingo },
	}
end

return M
