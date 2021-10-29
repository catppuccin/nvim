local util = require("catppuccino.utils.util")
local colors_util = require("catppuccino.utils.colors")
local color_palette = require("catppuccino.core.color_palette")

local M = {}

local function get_properties()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assert_brightness(color_palette.bg) then
		props["background"] = "light"
	end

	return props
end

local function get_base()
	local cp = color_palette

	return {
		Comment = { fg = cp.comment, style = cnf.styles.comments }, -- any comment
		ColorColumn = { bg = cp.bg_visual }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cp.black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.bg, bg = cp.fg }, -- character under the cursor
		lCursor = { fg = cp.bg, bg = cp.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.bg, bg = cp.fg }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if foreground (ctermfg OR guifg) is not secp.
		Directory = { fg = cp.blue }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.error }, -- error messages on the command line
		VertSplit = { fg = cp.border }, -- the column separating vertically split windows
		Folded = { fg = cp.blue, bg = cp.fg_gutter }, -- line used for closed folds
		FoldColumn = { bg = cp.bg, fg = cp.comment }, -- 'foldcolumn'
		SignColumn = { bg = cnf.transparency and cp.none or cp.bg, fg = cp.fg_gutter }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.bg_sidebar, fg = cp.fg_gutter }, -- column where |signs| are displayed
		Substitute = { bg = cp.red, fg = cp.black }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.fg_alt }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = cp.orange, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.fg_alt, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.catppuccino0 }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.blue }, -- |more-prompt|
		NonText = { fg = cp.comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.fg, bg = cnf.transparency and cp.none or cp.bg }, -- normal text
		NormalNC = { fg = cp.fg, bg = cnf.transparency and cp.none or cp.bg }, -- normal text in non-current windows
		NormalSB = { fg = cp.fg_sidebar, bg = cp.bg_sidebar }, -- normal text in non-current windows
		NormalFloat = { fg = cp.fg, bg = cp.bg_float }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.border_highlight },
		Pmenu = { bg = cp.bg_popup, fg = cp.fg }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.cyan, bg = util.darken(cp.fg_gutter, 0.8) }, -- Popup menu: selected item.
		PmenuSbar = { bg = util.lighten(cp.bg_popup, 0.95) }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.bg_visual, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = cp.bg_search, fg = cp.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.cyan, fg = cp.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cp.fg }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = cp.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cp.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cp.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cp.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.fg_sidebar, bg = cp.bg_statusline }, -- status line of current window
		StatusLineNC = { fg = cp.fg_gutter, bg = cp.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cp.bg_statusline, fg = cp.fg_gutter }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cp.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cp.fg_alt, bg = cp.fg_gutter }, -- tab pages line, active tab page label
		Title = { fg = cp.blue, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { bg = cp.bg_visual }, -- Visual mode selection
		VisualNOS = { bg = cp.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.warning }, -- warning messages
		Whitespace = { fg = cp.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.bg_visual }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cp.orange }, -- (preferred) any constant
		String = { fg = cp.green, style = cnf.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cp.green }, --  a character constant: 'c', '\n'
		Number = { fg = cp.orange_br }, --   a number constant: 234, 0xff
		Float = { fg = cp.orange_br }, --    a floating point constant: 2.3e10
		Boolean = { fg = cp.orange_br }, --  a boolean constant: TRUE, false
		Identifier = { fg = cp.cyan, style = cnf.styles.variables }, -- (preferred) any variable name
		Function = { fg = cp.blue, style = cnf.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cp.magenta_br }, -- (preferred) any statement
		Conditional = { fg = cp.red }, --  if, then, else, endif, switch, etcp.
		Repeat = { fg = cp.red }, --   for, do, while, etcp.
		Label = { fg = cp.magenta_br }, --    case, default, etcp.
		Operator = { fg = cp.fg_alt }, -- "sizeof", "+", "*", etcp.
		Keyword = { fg = cp.magenta, style = cnf.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cp.pink }, -- (preferred) generic Preprocessor
		Include = { fg = cp.pink }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

		Type = { fg = cp.yellow }, -- (preferred) int, long, char, etcp.
		StorageClass = { fg = cp.yellow }, -- static, register, volatile, etcp.
		Structure = { fg = cp.yellow }, --  struct, union, enum, etcp.
		Typedef = { fg = cp.yellow }, --  A typedef
		Special = { fg = cp.blue }, -- (preferred) any special symbol
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- SpecialComment= { }, -- special things inside a comment
		-- Debug         = { }, --    debugging statements

		Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.error }, -- (preferred) any erroneous construct
		Todo = { bg = cp.yellow, fg = cp.bg, style = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cp.yellow },
		qfFileName = { fg = cp.blue },
		htmlH1 = { fg = cp.magenta, style = "bold" },
		htmlH2 = { fg = cp.blue, style = "bold" },
		-- mkdHeading = { fg = cp.orange, style = "bold" },
		-- mkdCode = { bg = cp.terminal_black, fg = cp.fg },
		mkdCodeDelimiter = { bg = cp.terminal_black, fg = cp.fg },
		mkdCodeStart = { fg = cp.cyan, style = "bold" },
		mkdCodeEnd = { fg = cp.cyan, style = "bold" },
		-- mkdLink = { fg = cp.blue, style = "underline" },

		-- debugging
		debugPC = { bg = cp.bg_sidebar }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = util.darken(cp.info, 0.1), fg = cp.info }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = cp.fg_gutter },
		illuminatedCurWord = { bg = cp.fg_gutter },
		-- diff
		diffAdded = { fg = cp.diff.add },
		diffRemoved = { fg = cp.diff.delete },
		diffChanged = { fg = cp.diff.change },
		diffOldFile = { fg = cp.yellow },
		diffNewFile = { fg = cp.orange },
		diffFile = { fg = cp.blue },
		diffLine = { fg = cp.comment },
		diffIndexLine = { fg = cp.magenta },
		DiffAdd = { fg = cp.diff.add, bg = cp.bg }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.diff.change, bg = cp.bg }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.diff.delete, bg = cp.bg }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cp.diff.text, bg = cp.bg }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cp.error },
		healthSuccess = { fg = cp.green_br },
		healthWarning = { fg = cp.warning },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = cp.red },
		GlyphPalette2 = { fg = cp.green },
		GlyphPalette3 = { fg = cp.yellow },
		GlyphPalette4 = { fg = cp.blue },
		GlyphPalette6 = { fg = cp.green_br },
		GlyphPalette7 = { fg = cp.fg },
		GlyphPalette9 = { fg = cp.red },
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
