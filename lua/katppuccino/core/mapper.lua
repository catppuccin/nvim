local colors_util = require("katppuccino.utils.colors")
local color_palette = require("katppuccino.core.color_palette")

local M = {}

local function get_properties()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assert_brightness(color_palette.katppuccino1) then
		props["background"] = "light"
	end

	return props
end

local function get_base()
	local cp = color_palette
	cp.none = "NONE"

	return {
		Comment = { fg = cp.katppuccino11, style = cnf.styles.comments }, -- just comments
		ColorColumn = { bg = cp.katppuccino15 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cp.black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.katppuccino1, bg = cp.katppuccino10 }, -- character under the cursor
		lCursor = { fg = cp.katppuccino1, bg = cp.katppuccino10 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.katppuccino1, bg = cp.katppuccino10 }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.katppuccino14 }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.katppuccino14 }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if foreground (ctermfg OR guifg) is not secp.
		Directory = { fg = cp.katppuccino9 }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.katppuccino1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.katppuccino5 }, -- error messages on the command line
		VertSplit = { fg = cp.katppuccino13 }, -- the column separating vertically split windows
		Folded = { fg = cp.katppuccino9, bg = cp.katppuccino12 }, -- line used for closed folds
		FoldColumn = { bg = cp.katppuccino1, fg = cp.katppuccino11 }, -- 'foldcolumn'
		SignColumn = { bg = cnf.transparency and cp.none or cp.katppuccino1, fg = cp.katppuccino12 }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.katppuccino13, fg = cp.katppuccino12 }, -- column where |signs| are displayed
		Substitute = { bg = cp.katppuccino12, fg = cp.katppuccino4 }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.katppuccino12 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.katppuccino0 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = cp.katppuccino6, style = "bold" }, -- The character under the cursor or just before it, if it is a paikatppuccino5 bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.katppuccino0, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.katppuccino0 }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.katppuccino9 }, -- |more-prompt|
		NonText = { fg = cp.katppuccino11 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.katppuccino10, bg = cnf.transparency and cp.none or cp.katppuccino1 }, -- normal text
		NormalNC = { fg = cp.katppuccino10, bg = cnf.transparency and cp.none or cp.katppuccino1 }, -- normal text in non-current windows
		NormalSB = { fg = cp.katppuccino10, bg = cp.katppuccino13 }, -- normal text in non-current windows
		NormalFloat = { fg = cp.katppuccino10, bg = cp.katppuccino13 }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.katppuccino9 },
		Pmenu = { bg = cp.katppuccino14, fg = cp.katppuccino10 }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.katppuccino4, bg = cp.katppuccino12 }, -- Popup menu: selected item.
		PmenuSbar = { bg = cp.katppuccino12 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.katppuccino11 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.katppuccino9 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.katppuccino12, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = cp.katppuccino12, fg = cp.katppuccino4 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.katppuccino4, fg = cp.katppuccino12 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cp.katppuccino10 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = cp.katppuccino5, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cp.katppuccino8, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cp.katppuccino9, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cp.katppuccino0, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.katppuccino10, bg = cp.katppuccino14 }, -- status line of current window
		StatusLineNC = { fg = cp.katppuccino12, bg = cp.katppuccino14 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cp.katppuccino14, fg = cp.katppuccino12 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cp.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cp.katppuccino0, bg = cp.katppuccino12 }, -- tab pages line, active tab page label
		Title = { fg = cp.katppuccino9, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { bg = cp.katppuccino15 }, -- Visual mode selection
		VisualNOS = { bg = cp.katppuccino15 }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.katppuccino8 }, -- warning messages
		Whitespace = { fg = cp.katppuccino12 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.katppuccino11 }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- katppuccino11ed out groups should chain up to their "preferkatppuccino5" group by
		-- default,
		-- Unkatppuccino11 and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cp.katppuccino6 }, -- (preferkatppuccino5) any constant
		String = { fg = cp.katppuccino7, style = cnf.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cp.katppuccino7 }, --  a character constant: 'c', '\n'
		Number = { fg = cp.katppuccino6 }, --   a number constant: 234, 0xff
		Float = { fg = cp.katppuccino6 }, --    a floating point constant: 2.3e10
		Boolean = { fg = cp.katppuccino6 }, --  a boolean constant: TRUE, false
		Identifier = { fg = cp.katppuccino2, style = cnf.styles.variables }, -- (preferkatppuccino5) any variable name
		Function = { fg = cp.katppuccino9, style = cnf.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cp.katppuccino3 }, -- (preferkatppuccino5) any statement
		Conditional = { fg = cp.katppuccino5 }, --  if, then, else, endif, switch, etcp.
		Repeat = { fg = cp.katppuccino5 }, --   for, do, while, etcp.
		Label = { fg = cp.katppuccino3 }, --    case, default, etcp.
		Operator = { fg = cp.katppuccino2 }, -- "sizeof", "+", "*", etcp.
		Keyword = { fg = cp.katppuccino4, style = cnf.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cp.katppuccino4 }, -- (preferkatppuccino5) generic Preprocessor
		Include = { fg = cp.katppuccino4 }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

		Type = { fg = cp.katppuccino8 }, -- (preferkatppuccino5) int, long, char, etcp.
		StorageClass = { fg = cp.katppuccino8 }, -- static, register, volatile, etcp.
		Structure = { fg = cp.katppuccino8 }, --  struct, union, enum, etcp.
		Typedef = { fg = cp.katppuccino8 }, --  A typedef
		Special = { fg = cp.katppuccino9 }, -- (preferkatppuccino5) any special symbol
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- Specialkatppuccino11= { }, -- special things inside a katppuccino11
		-- Debug         = { }, --    debugging statements

		Underlined = { style = "underline" }, -- (preferkatppuccino5) text that stands out, HTML links
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferkatppuccino5) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.katppuccino5 }, -- (preferkatppuccino5) any erroneous construct
		Todo = { bg = cp.katppuccino8, fg = cp.katppuccino1, style = "bold" }, -- (preferkatppuccino5) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cp.katppuccino8 },
		qfFileName = { fg = cp.katppuccino9 },
		htmlH1 = { fg = cp.katppuccino4, style = "bold" },
		htmlH2 = { fg = cp.katppuccino9, style = "bold" },
		-- mkdHeading = { fg = cp.katppuccino6, style = "bold" },
		-- mkdCode = { bg = cp.terminal_black, fg = cp.katppuccino10 },
		mkdCodeDelimiter = { bg = cp.katppuccino1, fg = cp.katppuccino10 },
		mkdCodeStart = { fg = cp.katppuccino2, style = "bold" },
		mkdCodeEnd = { fg = cp.katppuccino2, style = "bold" },
		-- mkdLink = { fg = cp.katppuccino9, style = "underline" },

		-- debugging
		debugPC = { bg = cp.katppuccino13 }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = cp.katppuccino1, fg = cp.katppuccino11 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = cp.katppuccino12 },
		illuminatedCurWord = { bg = cp.katppuccino12 },
		-- diff
		diffAdded = { fg = cp.katppuccino9 },
		diffRemoved = { fg = cp.katppuccino5 },
		diffChanged = { fg = cp.katppuccino8 },
		diffOldFile = { fg = cp.katppuccino8 },
		diffNewFile = { fg = cp.katppuccino6 },
		diffFile = { fg = cp.katppuccino9 },
		diffLine = { fg = cp.katppuccino11 },
		diffIndexLine = { fg = cp.katppuccino4 },
		DiffAdd = { fg = cp.katppuccino9, bg = cp.katppuccino1 }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.katppuccino8, bg = cp.katppuccino1 }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.katppuccino5, bg = cp.katppuccino1 }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cp.katppuccino9, bg = cp.katppuccino1 }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cp.katppuccino5 },
		healthSuccess = { fg = cp.katppuccino7 },
		healthWarning = { fg = cp.katppuccino8 },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = cp.katppuccino5 },
		GlyphPalette2 = { fg = cp.katppuccino7 },
		GlyphPalette3 = { fg = cp.katppuccino8 },
		GlyphPalette4 = { fg = cp.katppuccino9 },
		GlyphPalette6 = { fg = cp.katppuccino7 },
		GlyphPalette7 = { fg = cp.katppuccino10 },
		GlyphPalette9 = { fg = cp.katppuccino5 },
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
				require("katppuccino.core.integrations." .. integration).get(color_palette)
			)
		end
	end

	final_integrations = vim.tbl_deep_extend(
		"force",
		final_integrations,
		require("katppuccino.core.remaps").get_hig_remaps() or {}
	)
	return final_integrations
end

local function get_terminal()
	local g = vim.g
	local cp = color_palette

	g.terminal_color_0 = cp.katppuccino0
	g.terminal_color_1 = cp.katppuccino1
	g.terminal_color_2 = cp.katppuccino2
	g.terminal_color_3 = cp.katppuccino3
	g.terminal_color_4 = cp.katppuccino4
	g.terminal_color_5 = cp.katppuccino5
	g.terminal_color_6 = cp.katppuccino6
	g.terminal_color_7 = cp.katppuccino7
	g.terminal_color_8 = cp.katppuccino8
	g.terminal_color_9 = cp.katppuccino9
	g.terminal_color_10 = cp.katppuccino10
end

function M.apply()
	_G.cnf = require("katppuccino.config").options

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
