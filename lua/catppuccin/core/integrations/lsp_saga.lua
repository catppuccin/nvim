local M = {}

function M.get(cp)
	return {
		DiagnosticError = { fg = cp.catppuccin5 },
		DiagnosticWarning = { fg = cp.catppuccin8 },
		DiagnosticInformation = { fg = cp.catppuccin9 },
		DiagnosticHint = { fg = cp.hint },
		LspFloatWinNormal = { bg = cp.catppuccin13 },
		LspFloatWinBorder = { fg = cp.catppuccin9 },
		LspSagaBorderTitle = { fg = cp.catppuccin2 },
		LspSagaHoverBorder = { fg = cp.catppuccin9 },
		LspSagaRenameBorder = { fg = cp.catppuccin7 },
		LspSagaDefPreviewBorder = { fg = cp.catppuccin7 },
		LspSagaCodeActionBorder = { fg = cp.catppuccin9 },
		LspSagaFinderSelection = { fg = cp.catppuccin12 },
		LspSagaCodeActionTitle = { fg = cp.catppuccin91 },
		LspSagaCodeActionContent = { fg = cp.purple },
		LspSagaSignatureHelpBorder = { fg = cp.catppuccin5 },
		ReferencesCount = { fg = cp.purple },
		DefinitionCount = { fg = cp.purple },
		DefinitionIcon = { fg = cp.catppuccin9 },
		ReferencesIcon = { fg = cp.catppuccin9 },
		TargetWord = { fg = cp.catppuccin2 },
	}
end
return M
