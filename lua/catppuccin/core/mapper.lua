local colors_util = require("catppuccin.utils.colors")
local util = require("catppuccin.utils.util")
local cp

local M = {}

local function get_properties()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if colors_util.assert_brightness(cp.base) then
		props["background"] = "light"
	end

	return props
end

local function get_base()
	cp.none = "NONE"

	return {
		Comment = { fg = cp.surface2, style = cnf.styles.comments }, -- just comments
		ColorColumn = { bg = cp.surface0 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = cp.overlay1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = cp.base, bg = cp.text }, -- character under the cursor
		lCursor = { fg = cp.base, bg = cp.text }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = cp.base, bg = cp.text }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = cp.mantle }, -- Screen-column at the cursor, when 'cursorcolumn' is secp.
		CursorLine = { bg = cp.surface0 },
		Directory = { fg = cp.blue }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = cp.base }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = cp.red, style = "bold,italic" }, -- error messages on the command line
		VertSplit = { fg = cp.surface0 }, -- the column separating vertically split windows
		Folded = { fg = cp.blue, bg = cp.surface1 }, -- line used for closed folds
		FoldColumn = { bg = cp.base, fg = cp.overlay0 }, -- 'foldcolumn'
		SignColumn = { bg = cnf.transparent_background and cp.none or cp.base, fg = cp.surface1 }, -- column where |signs| are displayed
		SignColumnSB = { bg = cp.crust, fg = cp.surface1 }, -- column where |signs| are displayed
		Substitute = { bg = cp.surface1, fg = cp.pink }, -- |:substitute| replacement text highlighting
		LineNr = { fg = cp.surface1 }, -- colors_util.vary_color({latte = cp.crust}, cp.surface1) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secp.
		CursorLineNr = { fg = cp.lavender }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = "NONE", style = "undercurl" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = cp.text, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea = { fg = cp.text }, -- Area for messages and cmdline
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = cp.blue }, -- |more-prompt|
		NonText = { fg = cp.overlay0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base }, -- normal text
		NormalNC = { fg = cp.text, bg = cnf.transparent_background and cp.none or cp.base }, -- normal text in non-current windows
		NormalSB = { fg = cp.text, bg = cp.crust }, -- normal text in non-current windows
		NormalFloat = { fg = cp.text, bg = cp.mantle }, -- Normal text in floating windows.
		FloatBorder = { fg = cp.blue },
		Pmenu = { bg = cp.surface0, fg = cp.overlay2 }, -- Popup menu: normal item.
		PmenuSel = { fg = cp.text, bg = cp.surface1, style = "bold" }, -- Popup menu: selected item.
		PmenuSbar = { bg = cp.surface1 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = cp.overlay0 }, -- Popup menu: Thumb of the scrollbar.
		Question = { fg = cp.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = cp.surface1, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = cp.yellow, fg = cp.surface1, style = "bold" }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucp.
		IncSearch = { bg = cp.surface1, fg = cp.yellow }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		SpecialKey = { fg = cp.text }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = cp.red, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = cp.yellow, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = cp.blue, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = cp.green, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = cp.text, bg = cp.mantle }, -- status line of current window
		StatusLineNC = { fg = cp.surface1, bg = cp.mantle }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = cp.mantle, fg = cp.surface1 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = cp.black }, -- tab pages line, where there are no labels
		TabLineSel = { fg = cp.green, bg = cp.surface1 }, -- tab pages line, active tab page label
		Title = { fg = cp.blue, style = "bold" }, -- titles for output from ":set all", ":autocmd" etcp.
		Visual = { style = "reverse" }, -- Visual mode selection
		VisualNOS = { bg = cp.surface1, style = "bold" }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = cp.yellow }, -- warning messages
		Whitespace = { fg = cp.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = cp.overlay0 }, -- current match in 'wildmenu' completion
		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- overlay0ed out groups should chain up to their "preferred" group by
		-- default,
		-- Unoverlay0 and edit if you want more specific syntax highlighting.

		-- code itself

		Constant = { fg = cp.peach }, -- (preferred) any constant
		String = { fg = cp.green, style = cnf.styles.strings }, -- a string constant: "this is a string"
		Character = { fg = cp.teal }, --  a character constant: 'c', '\n'
		Number = { fg = cp.peach }, --   a number constant: 234, 0xff
		Float = { fg = cp.peach }, --    a floating point constant: 2.3e10
		Boolean = { fg = cp.peach }, --  a boolean constant: TRUE, false
		Identifier = { fg = cp.flamingo, style = cnf.styles.variables }, -- (preferred) any variable name
		Function = { fg = cp.blue, style = cnf.styles.functions }, -- function name (also: methods for classes)
		Statement = { fg = cp.mauve }, -- (preferred) any statement
		Conditional = { fg = cp.red }, --  if, then, else, endif, switch, etcp.
		Repeat = { fg = cp.red }, --   for, do, while, etcp.
		Label = { fg = cp.peach }, --    case, default, etcp.
		Operator = { fg = cp.sky }, -- "sizeof", "+", "*", etcp.
		Keyword = { fg = cp.pink, style = cnf.styles.keywords }, --  any other keyword
		-- Exception     = { }, --  try, catch, throw

		PreProc = { fg = cp.pink }, -- (preferred) generic Preprocessor
		Include = { fg = cp.pink }, --  preprocessor #include
		-- Define        = { }, --   preprocessor #define
		-- Macro         = { }, --    same as Define
		-- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcp.

		StorageClass = { fg = cp.yellow }, -- static, register, volatile, etcp.
		Structure = { fg = cp.yellow }, --  struct, union, enum, etcp.
		Typedef = { fg = cp.yellow }, --  A typedef
		Special = { fg = cp.pink }, -- (preferred) any special symbol
		Type = { fg = cp.blue }, -- (preferred) int, long, char, etcp.
		-- SpecialChar   = { }, --  special character in a constant
		-- Tag           = { }, --    you can use CTRL-] on this
		-- Delimiter     = { }, --  character that needs attention
		-- Specialoverlay0= { }, -- special things inside a overlay0
		-- Debug         = { }, --    debugging statements

		Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
		Bold = { style = "bold" },
		Italic = { style = "italic" },
		-- ("Ignore", below, may be invisible...)
		-- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

		Error = { fg = cp.red }, -- (preferred) any erroneous construct
		Todo = { bg = cp.yellow, fg = cp.base, style = "bold" }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		qfLineNr = { fg = cp.yellow },
		qfFileName = { fg = cp.blue },
		htmlH1 = { fg = cp.pink, style = "bold" },
		htmlH2 = { fg = cp.blue, style = "bold" },

		-- debugging
		debugPC = { bg = cp.crust }, -- used for highlighting the current line in terminal-debug
		debugBreakpoint = { bg = cp.base, fg = cp.overlay0 }, -- used for breakpoint colors in terminal-debug
		-- diff
		diffAdded = { fg = cp.green },
		diffRemoved = { fg = cp.red },
		diffChanged = { fg = cp.yellow },
		diffOldFile = { fg = cp.yellow },
		diffNewFile = { fg = cp.peach },
		diffFile = { fg = cp.blue },
		diffLine = { fg = cp.overlay0 },
		diffIndexLine = { fg = cp.pink },
		DiffAdd = { fg = cp.green, bg = cp.base }, -- diff mode: Added line |diff.txt|
		DiffChange = { fg = cp.yellow, bg = cp.base }, -- diff mode: Changed line |diff.txt|
		DiffDelete = { fg = cp.red, bg = cp.base }, -- diff mode: Deleted line |diff.txt|
		DiffText = { fg = cp.blue, bg = cp.base }, -- diff mode: Changed text within a changed line |diff.txt|
		-- NeoVim
		healthError = { fg = cp.red },
		healthSuccess = { fg = cp.teal },
		healthWarning = { fg = cp.yellow },
		-- misc

		-- glyphs
		GlyphPalette1 = { fg = cp.red },
		GlyphPalette2 = { fg = cp.teal },
		GlyphPalette3 = { fg = cp.yellow },
		GlyphPalette4 = { fg = cp.blue },
		GlyphPalette6 = { fg = cp.teal },
		GlyphPalette7 = { fg = cp.text },
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
				require("catppuccin.core.integrations." .. integration).get(cp)
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
	return cp
end

function M.apply()
	_G.cnf = require("catppuccin.config").options
	cp = require("catppuccin.core.palettes.init").get_palette()

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
