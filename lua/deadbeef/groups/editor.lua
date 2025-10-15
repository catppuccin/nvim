local M = {}

function M.get()
	local transparent_bg = O.transparent_background and "NONE" or C.base
	
	return {
		-- Editor highlights
		Normal = { fg = C.text, bg = transparent_bg },
		NormalNC = { fg = C.text, bg = O.dim_inactive.enabled and C.surface0 or transparent_bg },
		NormalSB = { fg = C.text, bg = O.transparent_background and "NONE" or C.mantle },
		NormalFloat = { fg = C.text, bg = C.surface0 },
		FloatBorder = { fg = C.overlay1, bg = C.surface0 },
		FloatTitle = { fg = C.text, bg = C.surface0, style = { "bold" } },
		FloatFooter = { fg = C.overlay0, bg = C.surface0 },

		-- Cursor
		Cursor = { fg = C.base, bg = C.green },
		lCursor = { fg = C.base, bg = C.green },
		CursorIM = { fg = C.base, bg = C.green },
		TermCursor = { fg = C.base, bg = C.green },
		TermCursorNC = { fg = C.base, bg = C.overlay0 },

		-- Terminal
		Terminal = { fg = C.text, bg = transparent_bg },

		-- Lines
		CursorLine = { bg = O.transparent_background and C.surface0 or C.surface0 },
		CursorColumn = { bg = C.surface0 },
		LineNr = { fg = C.overlay0 },
		CursorLineNr = { fg = C.text, style = { "bold" } },
		LineNrAbove = { fg = C.overlay0 },
		LineNrBelow = { fg = C.overlay0 },

		-- Columns
		ColorColumn = { bg = C.surface0 },
		SignColumn = { fg = C.surface1, bg = transparent_bg },
		SignColumnSB = { fg = C.surface1, bg = C.surface0 },
		FoldColumn = { fg = C.overlay0, bg = transparent_bg },

		-- Search
		Search = { fg = C.base, bg = C.yellow },
		IncSearch = { fg = C.base, bg = C.peach },
		CurSearch = { fg = C.base, bg = C.red },
		Substitute = { fg = C.base, bg = C.red },

		-- Visual
		Visual = { bg = C.surface1, style = { "bold" } },
		VisualNOS = { bg = C.surface1, style = { "bold" } },

		-- Folds
		Folded = { fg = C.blue, bg = C.surface0 },

		-- Diffs
		DiffAdd = { bg = C.surface0, fg = C.green },
		DiffChange = { bg = C.surface0, fg = C.blue },
		DiffDelete = { bg = C.surface0, fg = C.red },
		DiffText = { bg = C.surface1, fg = C.blue },
		DiffAdded = { fg = C.green },
		DiffRemoved = { fg = C.red },
		DiffFile = { fg = C.blue },
		DiffIndexLine = { fg = C.teal },

		-- Messages
		ErrorMsg = { fg = C.red, style = { "bold" } },
		WarningMsg = { fg = C.yellow, style = { "bold" } },
		MoreMsg = { fg = C.blue, style = { "bold" } },
		ModeMsg = { fg = C.text, style = { "bold" } },
		Question = { fg = C.blue, style = { "bold" } },

		-- Popup menu
		Pmenu = { fg = C.text, bg = C.surface0 },
		PmenuSel = { fg = C.text, bg = C.surface1, style = { "bold" } },
		PmenuSbar = { bg = C.surface1 },
		PmenuThumb = { bg = C.overlay0 },
		PmenuKind = { fg = C.red, bg = C.surface0 },
		PmenuKindSel = { fg = C.red, bg = C.surface1 },
		PmenuExtra = { fg = C.subtext0, bg = C.surface0 },
		PmenuExtraSel = { fg = C.subtext0, bg = C.surface1 },

		-- Wild menu
		WildMenu = { fg = C.text, bg = C.surface1 },

		-- Status line
		StatusLine = { fg = C.text, bg = C.surface0 },
		StatusLineNC = { fg = C.overlay0, bg = C.surface0 },

		-- Tab line
		TabLine = { fg = C.overlay0, bg = C.surface0 },
		TabLineFill = { bg = C.surface0 },
		TabLineSel = { fg = C.text, bg = C.base, style = { "bold" } },

		-- Window separators
		WinSeparator = { fg = O.transparent_background and C.surface1 or C.surface0, bg = transparent_bg },
		VertSplit = { fg = O.transparent_background and C.surface1 or C.surface0, bg = transparent_bg },

		-- Spell checking
		SpellBad = { sp = C.red, style = { "undercurl" } },
		SpellCap = { sp = C.yellow, style = { "undercurl" } },
		SpellLocal = { sp = C.blue, style = { "undercurl" } },
		SpellRare = { sp = C.green, style = { "undercurl" } },

		-- Miscellaneous
		Title = { fg = C.blue, style = { "bold" } },
		Directory = { fg = C.blue },
		Conceal = { fg = C.overlay1 },
		SpecialKey = { fg = C.overlay0 },
		NonText = { fg = C.overlay0 },
		EndOfBuffer = { fg = O.show_end_of_buffer and C.text or C.base },
		Whitespace = { fg = C.overlay0 },

		-- Health
		healthError = { fg = C.red },
		healthSuccess = { fg = C.green },
		healthWarning = { fg = C.yellow },

		-- Quickfix
		qfLineNr = { fg = C.yellow },
		qfFileName = { fg = C.blue },

		-- Matching
		MatchParen = { fg = C.peach, style = { "bold" } },

		-- LSP
		LspReferenceText = { bg = C.surface1 },
		LspReferenceRead = { bg = C.surface1 },
		LspReferenceWrite = { bg = C.surface1 },
		LspSignatureActiveParameter = { bg = C.surface1, style = { "bold" } },
		LspCodeLens = { fg = C.overlay0 },
		LspInlayHint = {
			bg = O.lsp_styles.inlay_hints.background and C.surface0 or C.none,
			fg = C.overlay1,
		},

		-- Diagnostics
		DiagnosticError = { fg = C.red },
		DiagnosticWarn = { fg = C.yellow },
		DiagnosticInfo = { fg = C.sky },
		DiagnosticHint = { fg = C.teal },
		DiagnosticOk = { fg = C.green },
		DiagnosticVirtualTextError = { bg = C.none, fg = C.red, style = O.lsp_styles.virtual_text.errors },
		DiagnosticVirtualTextWarn = { bg = C.none, fg = C.yellow, style = O.lsp_styles.virtual_text.warnings },
		DiagnosticVirtualTextInfo = { bg = C.none, fg = C.sky, style = O.lsp_styles.virtual_text.information },
		DiagnosticVirtualTextHint = { bg = C.none, fg = C.teal, style = O.lsp_styles.virtual_text.hints },
		DiagnosticVirtualTextOk = { bg = C.none, fg = C.green, style = O.lsp_styles.virtual_text.ok },
		DiagnosticUnderlineError = { sp = C.red, style = O.lsp_styles.underlines.errors },
		DiagnosticUnderlineWarn = { sp = C.yellow, style = O.lsp_styles.underlines.warnings },
		DiagnosticUnderlineInfo = { sp = C.sky, style = O.lsp_styles.underlines.information },
		DiagnosticUnderlineHint = { sp = C.teal, style = O.lsp_styles.underlines.hints },
		DiagnosticUnderlineOk = { sp = C.green, style = O.lsp_styles.underlines.ok },
		DiagnosticFloatingError = { fg = C.red },
		DiagnosticFloatingWarn = { fg = C.yellow },
		DiagnosticFloatingInfo = { fg = C.sky },
		DiagnosticFloatingHint = { fg = C.teal },
		DiagnosticFloatingOk = { fg = C.green },
		DiagnosticSignError = { fg = C.red },
		DiagnosticSignWarn = { fg = C.yellow },
		DiagnosticSignInfo = { fg = C.sky },
		DiagnosticSignHint = { fg = C.teal },
		DiagnosticSignOk = { fg = C.green },
	}
end

return M