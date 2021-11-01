local M = {}

function M.get(cp)
	return {
		DiagnosticError = { fg = cp.katppuccino5 },
		DiagnosticWarning = { fg = cp.catppuccino9 },
		DiagnosticInformation = { fg = cp.catppuccino10 },
		DiagnosticHint = { fg = cp.hint },
		LspFloatWinNormal = { bg = cp.catppuccino14 },
		LspFloatWinBorder = { fg = cp.catppuccino10 },
		LspSagaBorderTitle = { fg = cp.katppuccino2 },
		LspSagaHoverBorder = { fg = cp.catppuccino10 },
		LspSagaRenameBorder = { fg = cp.catppuccino8 },
		LspSagaDefPreviewBorder = { fg = cp.catppuccino8 },
		LspSagaCodeActionBorder = { fg = cp.catppuccino10 },
		LspSagaFinderSelection = { fg = cp.catppuccino13 },
		LspSagaCodeActionTitle = { fg = cp.catppuccino101 },
		LspSagaCodeActionContent = { fg = cp.purple },
		LspSagaSignatureHelpBorder = { fg = cp.katppuccino5 },
		ReferencesCount = { fg = cp.purple },
		DefinitionCount = { fg = cp.purple },
		DefinitionIcon = { fg = cp.catppuccino10 },
		ReferencesIcon = { fg = cp.catppuccino10 },
		TargetWord = { fg = cp.katppuccino2 },
	}
end
return M
