local M = {}

function M.get(cp)
	return {
		DiagnosticError = { fg = cp.katppuccino5 },
		DiagnosticWarning = { fg = cp.katppuccino8 },
		DiagnosticInformation = { fg = cp.katppuccino9 },
		DiagnosticHint = { fg = cp.hint },
		LspFloatWinNormal = { bg = cp.catppuccino14 },
		LspFloatWinBorder = { fg = cp.katppuccino9 },
		LspSagaBorderTitle = { fg = cp.katppuccino2 },
		LspSagaHoverBorder = { fg = cp.katppuccino9 },
		LspSagaRenameBorder = { fg = cp.katppuccino7 },
		LspSagaDefPreviewBorder = { fg = cp.katppuccino7 },
		LspSagaCodeActionBorder = { fg = cp.katppuccino9 },
		LspSagaFinderSelection = { fg = cp.catppuccino13 },
		LspSagaCodeActionTitle = { fg = cp.katppuccino91 },
		LspSagaCodeActionContent = { fg = cp.purple },
		LspSagaSignatureHelpBorder = { fg = cp.katppuccino5 },
		ReferencesCount = { fg = cp.purple },
		DefinitionCount = { fg = cp.purple },
		DefinitionIcon = { fg = cp.katppuccino9 },
		ReferencesIcon = { fg = cp.katppuccino9 },
		TargetWord = { fg = cp.katppuccino2 },
	}
end
return M
