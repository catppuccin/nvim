local colors_util = require("catppuccin.utils.colors")
local color_palette = require("catppuccin.core.color_palette")

local M = {}

local function get_properties()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assert_brightness(color_palette.catppuccin1) then
		props["background"] = "light"
	end

	return props
end

local function get_base()
	local cp = color_palette
	cp.none = "NONE"

	return {
		Comment = { fg = cp.catppuccin11, style = cnf.styles.comments }, -- just comments
		ColorColumn = { bg = cp.catppuccin15 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cp.black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.catppuccin1, bg = cp.catppuccin10 }, -- character under the cursor
		lCursor = { fg = cp.catppuccin1, bg = cp.catppuccin10 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.catppuccin1, bg = cp.catppuccin10 }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.catppuccin14 }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.catppuccin16 }, -- Screen-line at the cursor, when 'cursorline' is secp.  Low-priority if foreground (ctermfg OR guifg) is not secp.
		Directory = { fg = cp.catppuccin9 }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.catppuccin1 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.catppuccin5, style = "bold,italic" }, -- error messages on the command line
		VertSplit = { fg = cp.catppuccin13 }, -- the column separating vertically split windows
		Folded = { fg = cp.catppuccin9, bg = cp.catppuccin12 }, -- line used for closed folds
		FoldColumn = { bg = cp.catppuccin1, fg = cp.catppuccin11 }, -- 'foldcolumn'
		SignColumn = { bg = cnf.transparent_background and cp.none or cp.catppuccin1, fg = cp.catppuccin12 }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.catppuccin13, fg = cp.catppuccin12 }, -- column where |signs| are displayed
		Substitute = { bg = cp.catppuccin12, fg = cp.catppuccin4 }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.catppuccin12 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.catppuccin0 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = cp.catppuccin6, style = "bold" }, -- The character under the cursor or just before it, if it is a paicatppuccin5 bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.catppuccin10, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.catppuccin10 }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.catppuccin9 }, -- |more-prompt|
		NonText = { fg = cp.catppuccin11 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.catppuccin10, bg = cnf.transparent_background and cp.none or cp.catppuccin1 }, -- normal text
		NormalNC = { fg = cp.catppuccin10, bg = cnf.transparent_background and cp.none or cp.catppuccin1 }, -- normal text in non-current windows
		NormalSB = { fg = cp.catppuccin10, bg = cp.catppuccin13 }, -- normal text in non-current windows
		NormalFloat = { fg = cp.catppuccin10, bg = cp.catppuccin14 }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.catppuccin9 },
		Pmenu = { bg = cp.catppuccin16, fg = cp.catppuccin15 }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.catppuccin10, bg = cp.catppuccin12, style = "bold" }, -- Popup menu: selected item.
		PmenuSbar = { bg = cp.catppuccin12 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.catppuccin11 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.catppuccin9 }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.catppuccin12, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = cp.catppuccin12, fg = cp.catppuccin4, style = "bold" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.catppuccin4, fg = cp.catppuccin12 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cp.catppuccin10 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = cp.catppuccin5, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cp.catppuccin8, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cp.catppuccin9, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cp.catppuccin0, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.catppuccin10, bg = cp.catppuccin14 }, -- status line of current window
		StatusLineNC = { fg = cp.catppuccin12, bg = cp.catppuccin14 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cp.catppuccin14, fg = cp.catppuccin12 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cp.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cp.catppuccin0, bg = cp.catppuccin12 }, -- tab pages line, active tab page label
		Title = { fg = cp.catppuccin9, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { bg = cp.catppuccin12, style = "bold" }, -- Visual mode selection
		VisualNOS = { bg = cp.catppuccin12, style = "bold" }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.catppuccin8 }, -- warning messages
		Whitespace = { fg = cp.catppuccin12 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.catppuccin11 }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- catppuccin11ed out groups should chain up to their "prefercatppuccin5" group by
		-- default,
		-- Uncatppuccin11 and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cp.catppuccin6 }, -- (prefercatppuccin5) any constant
		String = { fg = cp.catppuccin0, style = cnf.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cp.catppuccin7 }, --  a character constant: 'c', '\n'
		Number = { fg = cp.catppuccin6 }, --   a number constant: 234, 0xff
		Float = { fg = cp.catppuccin6 }, --    a floating point constant: 2.3e10
		Boolean = { fg = cp.catppuccin6 }, --  a boolean constant: TRUE, false
		Identifier = { fg = cp.catppuccin2, style = cnf.styles.variables }, -- (prefercatppuccin5) any variable name
		Function = { fg = cp.catppuccin9, style = cnf.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cp.catppuccin3 }, -- (prefercatppuccin5) any statement
		Conditional = { fg = cp.catppuccin5 }, --  if, then, else, endif, switch, etcp.
		Repeat = { fg = cp.catppuccin5 }, --   for, do, while, etcp.
		Label = { fg = cp.catppuccin6 }, --    case, default, etcp.
		Operator = { fg = cp.catppuccin2 }, -- "sizeof", "+", "*", etcp.
		Keyword = { fg = cp.catppuccin4, style = cnf.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cp.catppuccin4 }, -- (prefercatppuccin5) generic Preprocessor
		Include = { fg = cp.catppuccin4 }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

		StorageClass = { fg = cp.catppuccin8 }, -- static, register, volatile, etcp.
		Structure = { fg = cp.catppuccin8 }, --  struct, union, enum, etcp.
		Typedef = { fg = cp.catppuccin8 }, --  A typedef
		Special = { fg = cp.catppuccin4 }, -- (prefercatppuccin5) any special symbol
		Type = { fg = cp.catppuccin9 }, -- (prefercatppuccin5) int, long, char, etcp.
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- Specialcatppuccin11= { }, -- special things inside a catppuccin11
		-- Debug         = { }, --    debugging statements

		Underlined = { style = "underline" }, -- (prefercatppuccin5) text that stands out, HTML links
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (prefercatppuccin5) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.catppuccin5 }, -- (prefercatppuccin5) any erroneous construct
		Todo = { bg = cp.catppuccin8, fg = cp.catppuccin1, style = "bold" }, -- (prefercatppuccin5) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cp.catppuccin8 },
		qfFileName = { fg = cp.catppuccin9 },
		htmlH1 = { fg = cp.catppuccin4, style = "bold" },
		htmlH2 = { fg = cp.catppuccin9, style = "bold" },
		-- mkdHeading = { fg = cp.catppuccin6, style = "bold" },
		-- mkdCode = { bg = cp.terminal_black, fg = cp.catppuccin10 },
		mkdCodeDelimiter = { bg = cp.catppuccin1, fg = cp.catppuccin10 },
		mkdCodeStart = { fg = cp.catppuccin2, style = "bold" },
		mkdCodeEnd = { fg = cp.catppuccin2, style = "bold" },
		-- mkdLink = { fg = cp.catppuccin9, style = "underline" },

		-- debugging
		debugPC = { bg = cp.catppuccin13 }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = cp.catppuccin1, fg = cp.catppuccin11 }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = cp.catppuccin12 },
		illuminatedCurWord = { bg = cp.catppuccin12 },
		-- diff
		diffAdded = { fg = cp.catppuccin9 },
		diffRemoved = { fg = cp.catppuccin5 },
		diffChanged = { fg = cp.catppuccin8 },
		diffOldFile = { fg = cp.catppuccin8 },
		diffNewFile = { fg = cp.catppuccin6 },
		diffFile = { fg = cp.catppuccin9 },
		diffLine = { fg = cp.catppuccin11 },
		diffIndexLine = { fg = cp.catppuccin4 },
		DiffAdd = { fg = cp.catppuccin9, bg = cp.catppuccin1 }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.catppuccin8, bg = cp.catppuccin1 }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.catppuccin5, bg = cp.catppuccin1 }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cp.catppuccin9, bg = cp.catppuccin1 }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cp.catppuccin5 },
		healthSuccess = { fg = cp.catppuccin7 },
		healthWarning = { fg = cp.catppuccin8 },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = cp.catppuccin5 },
		GlyphPalette2 = { fg = cp.catppuccin7 },
		GlyphPalette3 = { fg = cp.catppuccin8 },
		GlyphPalette4 = { fg = cp.catppuccin9 },
		GlyphPalette6 = { fg = cp.catppuccin7 },
		GlyphPalette7 = { fg = cp.catppuccin10 },
		GlyphPalette9 = { fg = cp.catppuccin5 },
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
				require("catppuccin.core.integrations." .. integration).get(color_palette)
			)
		end
	end

	final_integrations = vim.tbl_deep_extend(
		"force",
		final_integrations,
		require("catppuccin.core.remaps").get_hig_remaps() or {}
	)
	return final_integrations
end

local function get_terminal()
	return color_palette
end

function M.apply()
	_G.cnf = require("catppuccin.config").options

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
