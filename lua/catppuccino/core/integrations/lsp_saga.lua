local M = {}

function M.get(cp)
	return {
		DiagnosticError = { fg = cp.error },
		DiagnosticWarning = { fg = cp.warning },
		DiagnosticInformation = { fg = cp.info },
		DiagnosticHint = { fg = cp.hint },
		LspFloatWinNormal = { bg = cp.catppuccino2_float },
		LspFloatWinBorder = { fg = cp.catppuccino10 },
		LspSagaBorderTitle = { fg = cp.catppuccino3 },
		LspSagaHoverBorder = { fg = cp.catppuccino10 },
		LspSagaRenameBorder = { fg = cp.catppuccino8 },
		LspSagaDefPreviewBorder = { fg = cp.catppuccino8 },
		LspSagaCodeActionBorder = { fg = cp.catppuccino10 },
		LspSagaFinderSelection = { fg = cp.util.darken(cp.catppuccino10, 0.2) },
		LspSagaCodeActionTitle = { fg = cp.catppuccino101 },
		LspSagaCodeActionContent = { fg = cp.purple },
		LspSagaSignatureHelpBorder = { fg = cp.catppuccino6 },
		ReferencesCount = { fg = cp.purple },
		DefinitionCount = { fg = cp.purple },
		DefinitionIcon = { fg = cp.catppuccino10 },
		ReferencesIcon = { fg = cp.catppuccino10 },
		TargetWord = { fg = cp.catppuccino3 },
	}
end
return M
