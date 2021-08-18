local util = require("catppuccino.utils.util")
local opts = require("catppuccino.config").options

local M = {}

function M.apply()
    local theme = {}
	local t = require("catppuccino.color_schemes." .. opts.colorscheme)

    theme.base = {
        Comment = {fg = t.comment, style = opts.styles.comments}, -- any comment
        ColorColumn = {bg = t.bg_visual}, -- used for the columns set with 'colorcolumn'
        Conceal = {fg = t.black}, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = {fg = t.bg, bg = t.fg}, -- character under the cursor
        lCursor = {fg = t.bg, bg = t.fg}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = {fg = t.bg, bg = t.fg}, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = {bg = t.bg_highlight}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = {bg = t.bg_highlight}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        Directory = {fg = t.blue}, -- directory names (and other special names in listings)
        DiffAdd = {bg = t.diff.add}, -- diff mode: Added line |diff.txt|
        DiffChange = {bg = t.diff.change}, -- diff mode: Changed line |diff.txt|
        DiffDelete = {bg = t.diff.delete}, -- diff mode: Deleted line |diff.txt|
        DiffText = {bg = t.diff.text}, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer = {fg = t.bg}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        TermCursor = {}, -- cursor in a focused terminal
        TermCursorNC = {}, -- cursor in an unfocused terminal
        ErrorMsg = {fg = t.error}, -- error messages on the command line
        VertSplit = {fg = t.border}, -- the column separating vertically split windows
        Folded = {fg = t.blue, bg = t.fg_gutter}, -- line used for closed folds
        FoldColumn = {bg = t.bg, fg = t.comment}, -- 'foldcolumn'
        SignColumn = {bg = opts.transparency and t.none or t.bg, fg = t.fg_gutter}, -- column where |signs| are displayed
        SignColumnSB = {bg = t.bg_sidebar, fg = t.fg_gutter}, -- column where |signs| are displayed
        Substitute = {bg = t.red, fg = t.black}, -- |:substitute| replacement text highlighting
        LineNr = {fg = t.fg_gutter}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = {fg = t.fg_alt}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen = {fg = t.orange, style = "bold"}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = {fg = t.fg_alt, style = "bold"}, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = {fg = t.fg_alt}, -- Area for messages and cmdline
        MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = {fg = t.blue}, -- |more-prompt|
        NonText = {fg = t.comment}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = {fg = t.fg, bg = opts.transparency and t.none or t.bg}, -- normal text
        NormalNC = {fg = t.fg, bg = opts.transparency and t.none or t.bg}, -- normal text in non-current windows
        NormalSB = {fg = t.fg_sidebar, bg = t.bg_sidebar}, -- normal text in non-current windows
        NormalFloat = {fg = t.fg, bg = t.bg_float}, -- Normal text in floating windows.
        FloatBorder = {fg = t.border_highlight},
        Pmenu = {bg = t.bg_popup, fg = t.fg}, -- Popup menu: normal item.
        PmenuSel = {fg = t.cyan, bg = util.darken(t.fg_gutter, 0.8)}, -- Popup menu: selected item.
        PmenuSbar = {bg = util.lighten(t.bg_popup, 0.95)}, -- Popup menu: scrollbar.
        PmenuThumb = {bg = t.fg_gutter}, -- Popup menu: Thumb of the scrollbar.
        Question = {fg = t.blue}, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = {bg = t.bg_visual, style = "bold"}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = {bg = t.bg_search, fg = t.fg}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = {bg = t.cyan, fg = t.black}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        SpecialKey = {fg = t.black}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = {sp = t.error, style = "undercurl"}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = {sp = t.warning, style = "undercurl"}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = {sp = t.info, style = "undercurl"}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = {sp = t.hint, style = "undercurl"}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = {fg = t.fg_sidebar, bg = t.bg_statusline}, -- status line of current window
        StatusLineNC = {fg = t.fg_gutter, bg = t.bg_statusline}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = {bg = t.bg_statusline, fg = t.fg_gutter}, -- tab pages line, not active tab page label
        TabLineFill = {bg = t.black}, -- tab pages line, where there are no labels
        TabLineSel = {fg = t.fg_alt, bg = t.fg_gutter}, -- tab pages line, active tab page label
        Title = {fg = t.blue, style = "bold"}, -- titles for output from ":set all", ":autocmd" ett.
        Visual = {bg = t.bg_visual}, -- Visual mode selection
        VisualNOS = {bg = t.bg_visual}, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = {fg = t.warning}, -- warning messages
        Whitespace = {fg = t.fg_gutter}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = {bg = t.bg_visual}, -- current match in 'wildmenu' completion
        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant = {fg = t.orange}, -- (preferred) any constant
        String = {fg = t.green, style = opts.styles.strings}, -- a string constant: "this is a string"
        Character = {fg = t.green}, --  a character constant: 'c', '\n'
        Number = {fg = t.orange_br}, --   a number constant: 234, 0xff
        Float = {fg = t.orange_br}, --    a floating point constant: 2.3e10
        Boolean = {fg = t.orange_br}, --  a boolean constant: TRUE, false
        Identifier = {fg = t.cyan, style = opts.styles.variables}, -- (preferred) any variable name
        Function = {fg = t.blue, style = opts.styles.fuctions}, -- function name (also: methods for classes)
        Statement = {fg = t.magenta_br}, -- (preferred) any statement
        Conditional = {fg = t.red}, --  if, then, else, endif, switch, ett.
        Repeat = {fg = t.magenta_br}, --   for, do, while, ett.
        Label = {fg = t.magenta_br}, --    case, default, ett.
        Operator = {fg = t.fg_alt}, -- "sizeof", "+", "*", ett.
        Keyword = {fg = t.magenta, style = opts.styles.keywords}, --  any other keyword
        -- Exception     = { }, --  try, catch, throw

        PreProc = {fg = t.pink}, -- (preferred) generic Preprocessor
        Include = {fg = t.pink}, --  preprocessor #include
        -- Define        = { }, --   preprocessor #define
        -- Macro         = { }, --    same as Define
        -- PreCondit     = { }, --  preprocessor #if, #else, #endif, ett.

        Type = {fg = t.yellow}, -- (preferred) int, long, char, ett.
        StorageClass = {fg = t.yellow}, -- static, register, volatile, ett.
        Structure = {fg = t.yellow}, --  struct, union, enum, ett.
        Typedef = {fg = t.yellow}, --  A typedef
        Special = {fg = t.blue}, -- (preferred) any special symbol
        -- SpecialChar   = { }, --  special character in a constant
        -- Tag           = { }, --    you can use CTRL-] on this
        -- Delimiter     = { }, --  character that needs attention
        -- SpecialComment= { }, -- special things inside a comment
        -- Debug         = { }, --    debugging statements

        Underlined = {style = "underline"}, -- (preferred) text that stands out, HTML links
        Bold = {style = "bold"},
        Italic = {style = "italic"},
        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = {fg = t.error}, -- (preferred) any erroneous construct
        Todo = {bg = t.yellow, fg = t.bg}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        qfLineNr = {fg = t.yellow},
        qfFileName = {fg = t.blue},
        htmlH1 = {fg = t.magenta, style = "bold"},
        htmlH2 = {fg = t.blue, style = "bold"},
        -- mkdHeading = { fg = t.orange, style = "bold" },
        -- mkdCode = { bg = t.terminal_black, fg = t.fg },
        mkdCodeDelimiter = {bg = t.terminal_black, fg = t.fg},
        mkdCodeStart = {fg = t.cyan, style = "bold"},
        mkdCodeEnd = {fg = t.cyan, style = "bold"},
        -- mkdLink = { fg = t.blue, style = "underline" },

        markdownHeadingDelimiter = {fg = t.orange, style = "bold"},
        markdownCode = {fg = t.cyan},
        markdownCodeBlock = {fg = t.cyan},
        markdownH1 = {fg = t.magenta, style = "bold"},
        markdownH2 = {fg = t.blue, style = "bold"},
        markdownLinkText = {fg = t.blue, style = "underline"},
        debugPC = {bg = t.bg_sidebar}, -- used for highlighting the current line in terminal-debug
        debugBreakpoint = {bg = util.darken(t.info, 0.1), fg = t.info}, -- used for breakpoint colors in terminal-debug
        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        -- LspReferenceText = {bg = t.fg_gutter}, -- used for highlighting "text" references
        -- LspReferenceRead = {bg = t.fg_gutter}, -- used for highlighting "read" references
        -- LspReferenceWrite = {bg = t.fg_gutter}, -- used for highlighting "write" references
        -- LspDiagnosticsDefaultError = {fg = t.error}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultWarning = {fg = t.warning}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultInformation = {fg = t.info}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspDiagnosticsDefaultHint = {fg = t.hint}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        -- LspSignatureActiveParameter = {fg = t.orange},
        -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        LspDiagnosticsError = {fg = t.error},
        LspDiagnosticsWarning = {fg = t.warning},
        LspDiagnosticsInformation = {fg = t.info},
        LspDiagnosticsHint = {fg = t.hint},

        LspDiagnosticsVirtualTextError = {fg = t.error, style = opts.integrations.native_lsp.styles.errors}, -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning = {fg = t.warning, style = opts.integrations.native_lsp.styles.warnings}, -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation = {fg = t.info, style = opts.integrations.native_lsp.styles.information}, -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint = {fg = t.hint, style = opts.integrations.native_lsp.styles.hints}, -- Used for "Hint" diagnostic virtual text

        -- LspDiagnosticsUnderlineError = {style = "undercurl", sp = t.error}, -- Used to underline "Error" diagnostics
        -- LspDiagnosticsUnderlineWarning = {style = "undercurl", sp = t.warning}, -- Used to underline "Warning" diagnostics
        -- LspDiagnosticsUnderlineInformation = {style = "undercurl", sp = t.info}, -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint = {style = "undercurl", sp = t.hint}, -- Used to underline "Hint" diagnostics

        -- LspDiagnosticsVirtualTextError = {bg = util.darken(t.error, 0.1), fg = t.error}, -- Used for "Error" diagnostic virtual text
        -- LspDiagnosticsVirtualTextWarning = {bg = util.darken(t.warning, 0.1), fg = t.warning}, -- Used for "Warning" diagnostic virtual text
        -- LspDiagnosticsVirtualTextInformation = {bg = util.darken(t.info, 0.1), fg = t.info}, -- Used for "Information" diagnostic virtual text
        -- LspDiagnosticsVirtualTextHint = {bg = util.darken(t.hint, 0.1), fg = t.hint}, -- Used for "Hint" diagnostic virtual text

        -- These groups are for the neovim tree-sitter highlights.
        -- As of writing, tree-sitter support is a WIP, group names may change.
        -- By default, most of these groups link to an appropriate Vim group,
        -- TSError -> Error for example, so you do not have to define these unless
        -- you explicitly want to support Treesitter's improved syntax awareness.

        -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        -- TSAttribute         = { };    -- (unstable) TODO: docs
        -- TSBoolean           = { };    -- For booleans.
        -- TSCharacter         = { };    -- For characters.
        -- TSComment           = { };    -- For comment blocks.
        TSNote = {fg = t.bg, bg = t.info},
        TSWarning = {fg = t.bg, bg = t.warning},
        TSDanger = {fg = t.bg, bg = t.error},
        TSConstructor = {fg = t.magenta}, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        -- TSConditional       = { };    -- For keywords related to conditionnals.
        TSConstant = {fg = t.orange}, -- For constants
        TSConstBuiltin = {fg = t.orange_br}, -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in t.
        -- TSError             = { };    -- For syntax/parser errors.
        -- TSException         = { };    -- For exception related keywords.
        TSField = {fg = t.blue}, -- For fields.
        rustTSField = {fg = util.darken(t.white, 0.75)}, -- For fields.
        -- TSFloat             = { };    -- For floats.
        -- TSFunction = { fg = t.fg_gutter }, -- For function (calls and definitions).
        TSFuncBuiltin = {fg = t.cyan}, -- For builtin functions: `table.insert` in Lua.
        TSFuncMacro = {fg = t.red}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSKeyword = {fg = t.magenta, style = opts.styles.keywords}, -- For keywords that don't fall in previous categories.
        TSKeywordFunction = {fg = t.magenta, style = opts.styles.fuctions}, -- For keywords used to define a fuction.
        TSLabel = {fg = t.blue}, -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod            = { };    -- For method calls and definitions.
        TSNamespace = {fg = t.cyan}, -- For identifiers referring to modules and namespaces.
        -- TSNone              = { };    -- TODO: docs
        -- TSNumber            = { };    -- For all numbers
        TSOperator = {fg = t.fg_alt}, -- For any operator: `+`, but also `->` and `*` in t.
        TSParameter = {fg = t.orange_br}, -- For parameters of a function.
        -- TSParameterReference= { };    -- For references to parameters of a function.
        TSProperty = {fg = t.red_bg}, -- Same as `TSField`.
        tomlTSProperty = {fg = t.blue}, -- Differentiates between string and properties
        TSPunctDelimiter = {fg = util.string_to_color(t, "", t.fg_alt)}, -- For delimiters ie: `.`
        TSPunctBracket = {fg = t.fg_alt}, -- For brackets and parens.
        TSPunctSpecial = {fg = t.white}, -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat            = { };    -- For keywords related to loops.
        -- TSString            = { };    -- For strings.
        TSStringRegex = {fg = t.blue, style = opts.styles.strings}, -- For regexes.
        TSStringEscape = {fg = t.magenta, style = opts.styles.strings}, -- For escape characters within a string.
        -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
        -- TSType              = { };    -- For types.
        TSTypeBuiltin = {fg = t.cyan}, -- For builtin types.
        TSVariable = {style = opts.styles.variables}, -- Any variable name that does not have another highlight.
        TSVariableBuiltin = {fg = t.red}, -- Variable names that are defined by the languages, like `this` or `self`.
        -- TSTag               = { };    -- Tags like html tag names.
        -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
        -- TSText              = { };    -- For strings considered text in a markup language.
        TSTextReference = {fg = t.cyan}
        -- TSEmphasis          = { };    -- For text to be represented with emphasis.
        -- TSUnderline         = { };    -- For text to be represented with an underline.
        -- TSStrike            = { };    -- For strikethrough text.
        -- TSTitle             = { };    -- Text that is part of a title.
        -- TSLiteral           = { };    -- Literal text.
        -- TSURI               = { };    -- Any URI like a link or email.
    }

    theme.plugins = {
        -- LspTrouble
        LspTroubleText = {fg = t.fg_alt},
        LspTroubleCount = {fg = t.magenta, bg = t.fg_gutter},
        LspTroubleNormal = {fg = t.fg_sidebar, bg = t.bg_sidebar},
        -- Illuminate
        illuminatedWord = {bg = t.fg_gutter},
        illuminatedCurWord = {bg = t.fg_gutter},
		-- IndentBlankline
		IndentBlanklineChar = {fg = t.gray},
        -- diff
        diffAdded = {fg = t.git.add},
        diffRemoved = {fg = t.git.delete},
        diffChanged = {fg = t.git.change},
        diffOldFile = {fg = t.yellow},
        diffNewFile = {fg = t.orange},
        diffFile = {fg = t.blue},
        diffLine = {fg = t.comment},
        diffIndexLine = {fg = t.magenta},
        -- Neogit
        NeogitBranch = {fg = t.magenta},
        NeogitRemote = {fg = t.pink},
        NeogitHunkHeader = {bg = t.bg_highlight, fg = t.fg},
        NeogitHunkHeaderHighlight = {bg = t.fg_gutter, fg = t.blue},
        NeogitDiffContextHighlight = {bg = util.darken(t.fg_gutter, 0.5), fg = t.fg_alt},
        NeogitDiffDeleteHighlight = {fg = t.git.delete, bg = t.diff.delete},
        NeogitDiffAddHighlight = {fg = t.git.add, bg = t.diff.add},
        -- GitGutter
        GitGutterAdd = {fg = t.gitSigns.add}, -- diff mode: Added line |diff.txt|
        GitGutterChange = {fg = t.gitSigns.change}, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = {fg = t.gitSigns.delete}, -- diff mode: Deleted line |diff.txt|
        -- GitSigns
        GitSignsAdd = {fg = t.gitSigns.add}, -- diff mode: Added line |diff.txt|
        GitSignsChange = {fg = t.gitSigns.change}, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = {fg = t.gitSigns.delete}, -- diff mode: Deleted line |diff.txt|
        -- Telescope
        TelescopeBorder = {fg = t.border_highlight},
        TelescopeSelectionCaret = {fg = t.cyan},
        TelescopeSelection = {fg = t.cyan, bg = t.bg_highlight},
        TelescopeMatching = {fg = t.blue},
        -- NvimTree
        NvimTreeNormal = {fg = t.fg_sidebar, bg = t.bg_sidebar},
        NvimTreeFolderIcon = {fg = t.comment},
        NvimTreeRootFolder = {fg = t.orange, style = "bold"},
        NvimTreeSymlink = {fg = t.magenta},
        NvimTreeFolderName = {fg = t.blue},
        NvimTreeEmptyFolderName = {fg = t.comment},
        NvimTreeOpenedFolderName = {fg = t.blue_br},
        NvimTreeOpenedFile = {fg = t.magenta}, -- TODO: not working
        NvimTreeGitDirty = {fg = t.git.change},
        NvimTreeGitNew = {fg = t.git.add},
        NvimTreeGitDeleted = {fg = t.git.delete},
        NvimTreeSpecialFile = {fg = t.cyan},
        NvimTreeIndentMarker = {fg = t.fg_gutter},
        NvimTreeImageFile = {fg = t.fg_sidebar},
        -- Fern
        FernBranchText = {fg = t.blue},
        -- glyph palette
        GlyphPalette1 = {fg = t.red},
        GlyphPalette2 = {fg = t.green},
        GlyphPalette3 = {fg = t.yellow},
        GlyphPalette4 = {fg = t.blue},
        GlyphPalette6 = {fg = t.green_br},
        GlyphPalette7 = {fg = t.fg},
        GlyphPalette9 = {fg = t.red},
        -- Dashboard
        DashboardShortCut = {fg = t.cyan},
        DashboardHeader = {fg = t.yellow},
        DashboardCenter = {fg = t.green},
        DashboardFooter = {fg = t.orange, style = "italic"},
        -- WhichKey
        WhichKey = {fg = t.cyan},
        WhichKeyGroup = {fg = t.blue},
        WhichKeyDesc = {fg = t.magenta},
        WhichKeySeperator = {fg = t.comment},
        WhichKeySeparator = {fg = t.comment},
        WhichKeyFloat = {bg = t.bg_sidebar},
        WhichKeyValue = {fg = t.comment},
        -- LspSaga
        DiagnosticError = {fg = t.error},
        DiagnosticWarning = {fg = t.warning},
        DiagnosticInformation = {fg = t.info},
        DiagnosticHint = {fg = t.hint},
        LspFloatWinNormal = {bg = t.bg_float},
        LspFloatWinBorder = {fg = t.border_highlight},
        LspSagaBorderTitle = {fg = t.cyan},
        LspSagaHoverBorder = {fg = t.blue},
        LspSagaRenameBorder = {fg = t.green},
        LspSagaDefPreviewBorder = {fg = t.green},
        LspSagaCodeActionBorder = {fg = t.blue},
        LspSagaFinderSelection = {fg = t.bg_visual},
        LspSagaCodeActionTitle = {fg = t.blue1},
        LspSagaCodeActionContent = {fg = t.purple},
        LspSagaSignatureHelpBorder = {fg = t.red},
        ReferencesCount = {fg = t.purple},
        DefinitionCount = {fg = t.purple},
        DefinitionIcon = {fg = t.blue},
        ReferencesIcon = {fg = t.blue},
        TargetWord = {fg = t.cyan},
        -- NeoVim
        healthError = {fg = t.error},
        healthSuccess = {fg = t.green_br},
        healthWarning = {fg = t.warning},
        -- BufferLine
        BufferLineIndicatorSelected = {fg = t.git.change},
        BufferLineFill = {bg = t.black},
        -- Barbar
        BufferCurrent = {bg = t.fg_gutter, fg = t.fg},
        BufferCurrentIndex = {bg = t.fg_gutter, fg = t.info},
        BufferCurrentMod = {bg = t.fg_gutter, fg = t.warning},
        BufferCurrentSign = {bg = t.fg_gutter, fg = t.info},
        BufferCurrentTarget = {bg = t.fg_gutter, fg = t.red},
        BufferVisible = {bg = t.bg_statusline, fg = t.fg},
        BufferVisibleIndex = {bg = t.bg_statusline, fg = t.info},
        BufferVisibleMod = {bg = t.bg_statusline, fg = t.warning},
        BufferVisibleSign = {bg = t.bg_statusline, fg = t.info},
        BufferVisibleTarget = {bg = t.bg_statusline, fg = t.red},
        BufferInactive = {bg = t.bg_statusline, fg = t.comment},
        BufferInactiveIndex = {bg = t.bg_statusline, fg = t.comment},
        BufferInactiveMod = {bg = t.bg_statusline, fg = util.darken(t.warning, 0.7)},
        BufferInactiveSign = {bg = t.bg_statusline, fg = t.border_highlight},
        BufferInactiveTarget = {bg = t.bg_statusline, fg = t.red},
        BufferTabpages = {bg = t.bg_statusline, fg = t.none},
        BufferTabpage = {bg = t.bg_statusline, fg = t.border_highlight},
        -- Sneak
        Sneak = {fg = t.bg_highlight, bg = t.magenta},
        SneakScope = {bg = t.bg_visual},
        -- Hop
        HopNextKey = {fg = t.cyan, style = "bold"},
        HopNextKey1 = {fg = t.blue, style = "bold"},
        HopNextKey2 = {fg = util.darken(t.blue, 0.3)},
        HopUnmatched = {fg = t.comment},
        LightspeedGreyWash = {fg = t.comment}
    }

    return theme
end

return M
