local util = require("catppuccino.utils.util")
local colors_util = require("catppuccino.utils.colors")

local M = {}

local _cs

local function get_cs() -- return a cleaned and parsed colorscheme
	return _cs
end

local function set_cs(val)
	_cs = val
end

local function get_base()
	local cpt = get_cs()

	return {
		Comment = { fg = cpt.comment, style = cpc.styles.comments }, -- any comment
		ColorColumn = { bg = cpt.bg_visual }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cpt.black }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cpt.bg, bg = cpt.fg }, -- character under the cursor
		lCursor = { fg = cpt.bg, bg = cpt.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cpt.bg, bg = cpt.fg }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cpt.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is secpt.
		CursorLine = { bg = cpt.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is secpt.  Low-priority if foreground (ctermfg OR guifg) is not secpt.
		Directory = { fg = cpt.blue }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cpt.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cpt.error }, -- error messages on the command line
		VertSplit = { fg = cpt.border }, -- the column separating vertically split windows
		Folded = { fg = cpt.blue, bg = cpt.fg_gutter }, -- line used for closed folds
		FoldColumn = { bg = cpt.bg, fg = cpt.comment }, -- 'foldcolumn'
		SignColumn = { bg = cpc.transparency and cpt.none or cpt.bg, fg = cpt.fg_gutter }, -- column where |signs| are displayed
		SignColumnSB = { bg = cpt.bg_sidebar, fg = cpt.fg_gutter }, -- column where |signs| are displayed
		Substitute = { bg = cpt.red, fg = cpt.black }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cpt.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secpt.
		CursorLineNr = { fg = cpt.fg_alt }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = cpt.orange, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cpt.fg_alt, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cpt.white_br }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cpt.blue }, -- |more-prompt|
		NonText = { fg = cpt.comment }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cpt.fg, bg = cpc.transparency and cpt.none or cpt.bg }, -- normal text
		NormalNC = { fg = cpt.fg, bg = cpc.transparency and cpt.none or cpt.bg }, -- normal text in non-current windows
		NormalSB = { fg = cpt.fg_sidebar, bg = cpt.bg_sidebar }, -- normal text in non-current windows
		NormalFloat = { fg = cpt.fg, bg = cpt.bg_float }, -- Normal text in floating windows.
		FloatBorder = { fg = cpt.border_highlight },
		Pmenu = { bg = cpt.bg_popup, fg = cpt.fg }, -- Popup menu: normal item.
		PmenuSel = { fg = cpt.cyan, bg = util.darken(cpt.fg_gutter, 0.8) }, -- Popup menu: selected item.
		PmenuSbar = { bg = util.lighten(cpt.bg_popup, 0.95) }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cpt.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cpt.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cpt.bg_visual, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = cpt.bg_search, fg = cpt.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucpt.
		IncSearch = { bg = cpt.cyan, fg = cpt.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cpt.fg }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
		SpellBad = { sp = cpt.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cpt.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cpt.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cpt.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cpt.fg_sidebar, bg = cpt.bg_statusline }, -- status line of current window
		StatusLineNC = { fg = cpt.fg_gutter, bg = cpt.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cpt.bg_statusline, fg = cpt.fg_gutter }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cpt.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cpt.fg_alt, bg = cpt.fg_gutter }, -- tab pages line, active tab page label
		Title = { fg = cpt.blue, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcpt.
		Visual = { bg = cpt.bg_visual }, -- Visual mode selection
		VisualNOS = { bg = cpt.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cpt.warning }, -- warning messages
		Whitespace = { fg = cpt.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cpt.bg_visual }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cpt.orange }, -- (preferred) any constant
		String = { fg = cpt.green, style = cpc.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cpt.green }, --  a character constant: 'c', '\n'
		Number = { fg = cpt.orange_br }, --   a number constant: 234, 0xff
		Float = { fg = cpt.orange_br }, --    a floating point constant: 2.3e10
		Boolean = { fg = cpt.orange_br }, --  a boolean constant: TRUE, false
		Identifier = { fg = cpt.cyan, style = cpc.styles.variables }, -- (preferred) any variable name
		Function = { fg = cpt.blue, style = cpc.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cpt.magenta_br }, -- (preferred) any statement
		Conditional = { fg = cpt.red }, --  if, then, else, endif, switch, etcpt.
		Repeat = { fg = cpt.red }, --   for, do, while, etcpt.
		Label = { fg = cpt.magenta_br }, --    case, default, etcpt.
		Operator = { fg = cpt.fg_alt }, -- "sizeof", "+", "*", etcpt.
		Keyword = { fg = cpt.magenta, style = cpc.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cpt.pink }, -- (preferred) generic Preprocessor
		Include = { fg = cpt.pink }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcpt.

		Type = { fg = cpt.yellow }, -- (preferred) int, long, char, etcpt.
		StorageClass = { fg = cpt.yellow }, -- static, register, volatile, etcpt.
		Structure = { fg = cpt.yellow }, --  struct, union, enum, etcpt.
		Typedef = { fg = cpt.yellow }, --  A typedef
		Special = { fg = cpt.blue }, -- (preferred) any special symbol
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

		Error = { fg = cpt.error }, -- (preferred) any erroneous construct
		Todo = { bg = cpt.yellow, fg = cpt.bg, style = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cpt.yellow },
		qfFileName = { fg = cpt.blue },
		htmlH1 = { fg = cpt.magenta, style = "bold" },
		htmlH2 = { fg = cpt.blue, style = "bold" },
		-- mkdHeading = { fg = cpt.orange, style = "bold" },
		-- mkdCode = { bg = cpt.terminal_black, fg = cpt.fg },
		mkdCodeDelimiter = { bg = cpt.terminal_black, fg = cpt.fg },
		mkdCodeStart = { fg = cpt.cyan, style = "bold" },
		mkdCodeEnd = { fg = cpt.cyan, style = "bold" },
		-- mkdLink = { fg = cpt.blue, style = "underline" },

		-- debugging
		debugPC = { bg = cpt.bg_sidebar }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = util.darken(cpt.info, 0.1), fg = cpt.info }, -- used for breakpoint colors in terminal-debug
		-- illuminate
		illuminatedWord = { bg = cpt.fg_gutter },
		illuminatedCurWord = { bg = cpt.fg_gutter },
		-- diff
		diffAdded = { fg = cpt.diff.add },
		diffRemoved = { fg = cpt.diff.remove },
		diffChanged = { fg = cpt.diff.change },
		diffOldFile = { fg = cpt.yellow },
		diffNewFile = { fg = cpt.orange },
		diffFile = { fg = cpt.blue },
		diffLine = { fg = cpt.comment },
		diffIndexLine = { fg = cpt.magenta },
		DiffAdd = { fg = cpt.diff.add, bg = cpt.bg }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cpt.diff.change, bg = cpt.bg }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cpt.diff.delete, bg = cpt.bg }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cpt.diff.text, bg = cpt.bg }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cpt.error },
		healthSuccess = { fg = cpt.green_br },
		healthWarning = { fg = cpt.warning },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = cpt.red },
		GlyphPalette2 = { fg = cpt.green },
		GlyphPalette3 = { fg = cpt.yellow },
		GlyphPalette4 = { fg = cpt.blue },
		GlyphPalette6 = { fg = cpt.green_br },
		GlyphPalette7 = { fg = cpt.fg },
		GlyphPalette9 = { fg = cpt.red },
	}
end

local function get_integrations()
	local integrations = cpc["integrations"]
	local final_integrations = {}
	local cpt = get_cs()

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
			final_integrations = vim.tbl_deep_extend("force", final_integrations, require("catppuccino.core.integrations." .. integration).get(cpt))
		end
	end

	return final_integrations
end

local function get_properties()
	local cpt = get_cs()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assert_brightness(cpt.bg) then
		props["background"] = "light"
	end

	return props
end

function M.apply(cs)
	_G.cpc = require("catppuccino.config").options
	cs = cs or cpc.colorscheme
	local err, color_scheme = require("catppuccino.core.cs").get_color_scheme(cs)

	if not err.status then
		vim.api.nvim_err_writeln(err.msg)
	end

	set_cs(color_scheme)

	local theme = {}
	theme.base = get_base()
	theme.integrations = get_integrations()
	theme.properties = get_properties()

	-- uninstantiate to avoid poluting global scope and because they are not needed anymore
	_G.cpc = nil

	return theme
end

return M
