local util = require("catppuccino.utils.util")
local colors_util = require("catppuccino.utils.colors")
local color_palette = require("catppuccino.core.color_palette")

local M = {}

local function get_properties()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assertightness(color_palette.bg) then
		props["background"] = "light"
	end

	return props
end

local function get_base()
	local cp = color_palette

	return {
		Comment = { fg = cp.catppuccino12, style = cnf.styles.comments }, -- just comments
		ColorColumn = { bg = cp.util.darken(cp.catppuccino10, 0.2) }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cp.black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.catppuccino2, bg = cp.catppuccino11 }, -- character under the cursor
		lCursor = { fg = cp.catppuccino2, bg = cp.catppuccino11 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.catppuccino2, bg = cp.catppuccino11 }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.catppuccino16 }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.catppuccino16 }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if foreground (ctermfg OR guifg) is not secp.
		Directory = { fg = cp.catppuccino10 }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.catppuccino2 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.error }, -- error messages on the command line
		VertSplit = { fg = cp.border }, -- the column separating vertically split windows
		Folded = { fg = cp.catppuccino10, bg = cp.catppuccino13 }, -- line used for closed folds
		FoldColumn = { bg = cp.catppuccino2, fg = cp.catppuccino12 }, -- 'foldcolumn'
		SignColumn = { bg = cnf.transparency and cp.none or cp.catppuccino2, fg = cp.catppuccino13 }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.catppuccino14, fg = cp.catppuccino13 }, -- column where |signs| are displayed
		Substitute = { bg = cp.catppuccino6, fg = cp.black }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.catppuccino13 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.catppuccino16 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = cp.catppuccino7, style = "bold" }, -- The character under the cursor or just before it, if it is a paicatppuccino6 bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.catppuccino11_alt, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.catppuccino0 }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.catppuccino10 }, -- |more-prompt|
		NonText = { fg = cp.catppuccino12 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.catppuccino11, bg = cnf.transparency and cp.none or cp.catppuccino2 }, -- normal text
		NormalNC = { fg = cp.catppuccino11, bg = cnf.transparency and cp.none or cp.catppuccino2 }, -- normal text in non-current windows
		NormalSB = { fg = cp.fg, bg = cp.catppuccino14 }, -- normal text in non-current windows
		NormalFloat = { fg = cp.catppuccino11, bg = cp.catppuccino14 }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.catppuccino10 },
		Pmenu = { bg = cp.catppuccino14, fg = cp.catppuccino11 }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.catppuccino3, bg = util.darken(cp.catppuccino13, 0.8) }, -- Popup menu: selected item.
		PmenuSbar = { bg = util.lighten(cp.catppuccino14, 0.95) }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.catppuccino13 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.catppuccino10 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.util.darken(cp.catppuccino10, 0.2), style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = util.darken(cp.catppuccino10, 0.3), fg = cp.catppuccino11 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.catppuccino3, fg = cp.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cp.catppuccino11 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = cp.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cp.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cp.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cp.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.catppuccino11, bg = cp.catppuccino15 }, -- status line of current window
		StatusLineNC = { fg = cp.catppuccino13, bg = cp.catppuccino15 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cp.catppuccino15, fg = cp.catppuccino13 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cp.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cp.catppuccino11_alt, bg = cp.catppuccino13 }, -- tab pages line, active tab page label
		Title = { fg = cp.catppuccino10, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { bg = cp.util.darken(cp.catppuccino10, 0.2) }, -- Visual mode selection
		VisualNOS = { bg = cp.util.darken(cp.catppuccino10, 0.2) }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.warning }, -- warning messages
		Whitespace = { fg = cp.catppuccino13 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.util.darken(cp.catppuccino10, 0.2) }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- catppuccino12ed out groups should chain up to their "prefercatppuccino6" group by
		-- default,
		-- Uncatppuccino12 and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cp.catppuccino7 }, -- (prefercatppuccino6) any constant
		String = { fg = cp.catppuccino8, style = cnf.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cp.catppuccino8 }, --  a character constant: 'c', '\n'
		Number = { fg = cp.catppuccino7 }, --   a number constant: 234, 0xff
		Float = { fg = cp.catppuccino7 }, --    a floating point constant: 2.3e10
		Boolean = { fg = cp.catppuccino7 }, --  a boolean constant: TRUE, false
		Identifier = { fg = cp.catppuccino3, style = cnf.styles.variables }, -- (prefercatppuccino6) any variable name
		Function = { fg = cp.catppuccino10, style = cnf.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cp.catppuccino4 }, -- (prefercatppuccino6) any statement
		Conditional = { fg = cp.catppuccino6 }, --  if, then, else, endif, switch, etcp.
		Repeat = { fg = cp.catppuccino6 }, --   for, do, while, etcp.
		Label = { fg = cp.catppuccino4 }, --    case, default, etcp.
		Operator = { fg = cp.catppuccino11_alt }, -- "sizeof", "+", "*", etcp.
		Keyword = { fg = cp.catppuccino5, style = cnf.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cp.catppuccino5 }, -- (prefercatppuccino6) generic Preprocessor
		Include = { fg = cp.catppuccino5 }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

		Type = { fg = cp.catppuccino9 }, -- (prefercatppuccino6) int, long, char, etcp.
		StorageClass = { fg = cp.catppuccino9 }, -- static, register, volatile, etcp.
		Structure = { fg = cp.catppuccino9 }, --  struct, union, enum, etcp.
		Typedef = { fg = cp.catppuccino9 }, --  A typedef
		Special = { fg = cp.catppuccino10 }, -- (prefercatppuccino6) any special symbol
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- Specialcatppuccino12= { }, -- special things inside a catppuccino12
		-- Debug         = { }, --    debugging statements

		Underlined = { style = "underline" }, -- (prefercatppuccino6) text that stands out, HTML links
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (prefercatppuccino6) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.error }, -- (prefercatppuccino6) any erroneous construct
		Todo = { bg = cp.catppuccino9, fg = cp.catppuccino2, style = "bold" }, -- (prefercatppuccino6) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cp.catppuccino9 },
		qfFileName = { fg = cp.catppuccino10 },
		htmlH1 = { fg = cp.catppuccino5, style = "bold" },
		htmlH2 = { fg = cp.catppuccino10, style = "bold" },
		-- mkdHeading = { fg = cp.catppuccino7, style = "bold" },
		-- mkdCode = { bg = cp.terminal_black, fg = cp.catppuccino11 },
		mkdCodeDelimiter = { bg = cp.catppuccino2, fg = cp.catppuccino11 },
		mkdCodeStart = { fg = cp.catppuccino3, style = "bold" },
		mkdCodeEnd = { fg = cp.catppuccino3, style = "bold" },
		-- mkdLink = { fg = cp.catppuccino10, style = "underline" },

		-- debugging
		debugPC = { bg = cp.catppuccino14 }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = util.darken(cp.info, 0.1), fg = cp.info }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = cp.catppuccino13 },
		illuminatedCurWord = { bg = cp.catppuccino13 },
		-- diff
		diffAdded = { fg = cp.diff.add },
		diffRemoved = { fg = cp.diff.delete },
		diffChanged = { fg = cp.diff.change },
		diffOldFile = { fg = cp.catppuccino9 },
		diffNewFile = { fg = cp.catppuccino7 },
		diffFile = { fg = cp.catppuccino10 },
		diffLine = { fg = cp.catppuccino12 },
		diffIndexLine = { fg = cp.catppuccino5 },
		DiffAdd = { fg = cp.diff.add, bg = cp.catppuccino2 }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.diff.change, bg = cp.catppuccino2 }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.diff.delete, bg = cp.catppuccino2 }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cp.diff.text, bg = cp.catppuccino2 }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cp.error },
		healthSuccess = { fg = cp.catppuccino8 },
		healthWarning = { fg = cp.warning },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = cp.catppuccino6 },
		GlyphPalette2 = { fg = cp.catppuccino8 },
		GlyphPalette3 = { fg = cp.catppuccino9 },
		GlyphPalette4 = { fg = cp.catppuccino10 },
		GlyphPalette6 = { fg = cp.catppuccino8 },
		GlyphPalette7 = { fg = cp.catppuccino11 },
		GlyphPalette9 = { fg = cp.catppuccino6 },
	}
end

local function get_integrations()
	local integrations = cnf["integrations"]
	local final_integrations = {}

	for integration in pairs(integrations) do
		local cot = false
		if type(integrations[integration]) == "table" then
			if integrations[integration]["enabled"] == true then
				cot = true
			end
		else
			if integrations[integration] == true then
				cot = true
			end
		end

		if cot then
			final_integrations = vim.tbl_deep_extend(
				"force",
				final_integrations,
				require("catppuccino.core.integrations." .. integration).get(color_palette)
			)
		end
	end

	final_integrations = vim.tbl_deep_extend(
		"force",
		final_integrations,
		require("catppuccino.core.remaps").get_hig_remaps() or {}
	)
	return final_integrations
end

local function get_terminal()
	local g = vim.g
	local cp = color_palette

	g.terminal_color_0 = cp.catppuccino0
	g.terminal_color_1 = cp.catppuccino1
	g.terminal_color_2 = cp.catppuccino2
	g.terminal_color_3 = cp.catppuccino3
	g.terminal_color_4 = cp.catppuccino4
	g.terminal_color_5 = cp.catppuccino5
	g.terminal_color_6 = cp.catppuccino6
	g.terminal_color_7 = cp.catppuccino7
	g.terminal_color_8 = cp.catppuccino8
	g.terminal_color_9 = cp.catppuccino9
	g.terminal_color_10 = cp.catppuccino10
end

function M.apply()
	_G.cnf = require("catppuccino.config").options

	local theme = {}
	theme.properties = get_properties() -- nvim settings
	theme.base = get_base() -- basic hi groups
	theme.integrations = get_integrations() -- plugins
	theme.terminal = get_terminal() -- terminal colors

	-- uninstantiate to avoid poluting global scope and because it's not needed anymore
	_G.cnf = nil

	return theme
end

return M
