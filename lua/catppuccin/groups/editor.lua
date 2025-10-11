local M = {}

function M.get()
	return {
		ColorColumn = { bg = C.surface0 }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = C.overlay1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = C.base, bg = C.rosewater }, -- character under the cursor
		lCursor = { fg = C.base, bg = C.rosewater }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM = { fg = C.base, bg = C.rosewater }, -- like Cursor, but used when in IME mode |CursorIM|
		CursorColumn = { bg = C.mantle }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine = {
			bg = U.vary_color({ latte = U.lighten(C.mantle, 0.70, C.base) }, U.darken(C.surface0, 0.64, C.base)),
		}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if forecrust (ctermfg OR guifg) is not set.
		Directory = { fg = C.blue }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = O.show_end_of_buffer and C.surface1 or C.base }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		ErrorMsg = { fg = C.red, style = { "bold", "italic" } }, -- error messages on the command line
		VertSplit = { fg = O.transparent_background and C.surface1 or C.crust }, -- the column separating vertically split windows
		Folded = { fg = C.blue, bg = O.transparent_background and C.none or C.surface1 }, -- line used for closed folds
		FoldColumn = { fg = C.overlay0 }, -- 'foldcolumn'
		SignColumn = { fg = C.surface1 }, -- column where |signs| are displayed
		SignColumnSB = { bg = C.crust, fg = C.surface1 }, -- column where |signs| are displayed
		Substitute = { bg = C.surface1, fg = U.vary_color({ latte = C.red }, C.pink) }, -- |:substitute| replacement text highlighting
		LineNr = { fg = C.surface1 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr = { fg = C.lavender }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line. highlights the number in numberline.
		MatchParen = { fg = C.peach, bg = U.darken(C.surface1, 0.70, C.base), style = { "bold" } }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg = { fg = C.text, style = { "bold" } }, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea = { fg = C.text }, -- Area for messages and cmdline, don't set this highlight because of https://github.com/neovim/neovim/issues/17832
		MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg = { fg = C.blue }, -- |more-prompt|
		NonText = { fg = C.overlay0 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal = { fg = C.text, bg = O.transparent_background and C.none or C.base }, -- normal text
		NormalNC = {
			fg = C.text,
			bg = (O.transparent_background and O.dim_inactive.enabled and C.dim)
				or (O.dim_inactive.enabled and C.dim)
				or (O.transparent_background and C.none)
				or C.base,
		}, -- normal text in non-current windows
		NormalSB = { fg = C.text, bg = C.crust }, -- normal text in non-current windows
		NormalFloat = { fg = C.text, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.mantle }, -- Normal text in floating windows.
		FloatBorder = O.float.solid
				and ((O.float.transparent and vim.o.winblend == 0) and { fg = C.surface2, bg = C.none } or {
					fg = C.mantle,
					bg = C.mantle,
				})
			or { fg = C.blue, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.mantle },
		FloatTitle = O.float.solid and {
			fg = C.crust,
			bg = C.lavender,
		} or { fg = C.subtext0, bg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.mantle }, -- Title of floating windows
		FloatShadow = { fg = (O.float.transparent and vim.o.winblend == 0) and C.none or C.overlay0 },
		Pmenu = {
			bg = (O.transparent_background and vim.o.pumblend == 0) and C.none or C.mantle,
			fg = C.overlay2,
		}, -- Popup menu: normal item.
		PmenuSel = { bg = C.surface0, style = { "bold" } }, -- Popup menu: selected item.
		PmenuMatch = { fg = C.text, style = { "bold" } }, -- Popup menu: matching text.
		PmenuMatchSel = { style = { "bold" } }, -- Popup menu: matching text in selected item; is combined with |hl-PmenuMatch| and |hl-PmenuSel|.
		PmenuSbar = { bg = C.surface0 }, -- Popup menu: scrollbar.
		PmenuThumb = { bg = C.overlay0 }, -- Popup menu: Thumb of the scrollbar.
		PmenuExtra = { fg = C.overlay0 }, -- Popup menu: normal item extra text.
		PmenuExtraSel = {
			bg = C.surface0,
			fg = C.overlay0,
			style = { "bold" },
		}, -- Popup menu: selected item extra text.
		Question = { fg = C.blue }, -- |hit-enter| prompt and yes/no questions
		QuickFixLine = { bg = U.darken(C.surface1, 0.70, C.base), style = { "bold" } }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search = { bg = U.darken(C.sky, 0.30, C.base), fg = C.text }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		IncSearch = { bg = U.darken(C.sky, 0.90, C.base), fg = C.mantle }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		CurSearch = { bg = C.red, fg = C.mantle }, -- 'cursearch' highlighting: highlights the current search you're on differently
		SpecialKey = { link = "NonText" }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' textspace. |hl-Whitespace|
		SpellBad = { sp = C.red, style = { "undercurl" } }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		SpellCap = { sp = C.yellow, style = { "undercurl" } }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		SpellLocal = { sp = C.blue, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		SpellRare = { sp = C.green, style = { "undercurl" } }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		StatusLine = { fg = C.text, bg = O.transparent_background and C.none or C.mantle }, -- status line of current window
		StatusLineNC = { fg = C.surface1, bg = O.transparent_background and C.none or C.mantle }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine = { bg = C.crust, fg = C.overlay0 }, -- tab pages line, not active tab page label
		TabLineFill = { bg = O.transparent_background and C.none or C.mantle }, -- tab pages line, where there are no labels
		TabLineSel = { link = "Normal" }, -- tab pages line, active tab page label
		TermCursor = { fg = C.base, bg = C.rosewater }, -- cursor in a focused terminal
		TermCursorNC = { fg = C.base, bg = C.overlay2 }, -- cursor in unfocused terminals
		Title = { fg = C.blue, style = { "bold" } }, -- titles for output from ":set all", ":autocmd" etc.
		Visual = { bg = C.surface1, style = { "bold" } }, -- Visual mode selection
		VisualNOS = { bg = C.surface1, style = { "bold" } }, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg = { fg = C.yellow }, -- warning messages
		Whitespace = { fg = C.surface1 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		WildMenu = { bg = C.overlay0 }, -- current match in 'wildmenu' completion
		WinBar = { fg = C.rosewater },
		WinBarNC = { link = "WinBar" },
		WinSeparator = { fg = O.transparent_background and C.surface1 or C.crust },
	}
end

return M
