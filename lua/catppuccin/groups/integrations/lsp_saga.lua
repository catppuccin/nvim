local M = {}

function M.get()
	return {
		DiagnosticError = { fg = C.red },
		DiagnosticWarning = { fg = C.yellow },
		DiagnosticInformation = { fg = C.blue },
		DiagnosticHint = { fg = C.rosewater },
		LspFloatWinNormal = { bg = C.crust },
		LspFloatWinBorder = { fg = C.blue },
		LspSagaBorderTitle = { fg = C.flamingo },
		LspSagaHoverBorder = { fg = C.blue },
		LspSagaRenameBorder = { fg = C.teal },
		LspSagaDefPreviewBorder = { fg = C.teal },
		LspSagaCodeActionBorder = { fg = C.blue },
		LspSagaFinderSelection = { fg = C.surface1 },
		LspSagaCodeActionTitle = { fg = C.blue },
		LspSagaCodeActionContent = { fg = C.lavender },
		LspSagaSignatureHelpBorder = { fg = C.red },
		ReferencesCount = { fg = C.lavender },
		DefinitionCount = { fg = C.lavender },
		DefinitionIcon = { fg = C.blue },
		ReferencesIcon = { fg = C.blue },
		TargetWord = { fg = C.flamingo },
	}
end

return M
