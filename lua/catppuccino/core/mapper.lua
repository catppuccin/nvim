local util = require("catppuccino.utils.util")

local M = {}

local function get_base()
	return {
        Comment = {fg = cpt.comment, style = cpc.styles.comments}, -- any comment
        ColorColumn = {bg = cpt.bg_visual}, -- used for the columns set with 'colorcolumn'
        Conceal = {fg = cpt.black}, -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = {fg = cpt.bg, bg = cpt.fg}, -- character under the cursor
        lCursor = {fg = cpt.bg, bg = cpt.fg}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = {fg = cpt.bg, bg = cpt.fg}, -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = {bg = cpt.bg_highlight}, -- Screen-column at the cursor, when 'cursorcolumn' is secpt.
        CursorLine = {bg = cpt.bg_highlight}, -- Screen-line at the cursor, when 'cursorline' is secpt.  Low-priority if foreground (ctermfg OR guifg) is not secpt.
        Directory = {fg = cpt.blue}, -- directory names (and other special names in listings)
        DiffAdd = {bg = cpt.diff.add}, -- diff mode: Added line |diff.txt|
        DiffChange = {bg = cpt.diff.change}, -- diff mode: Changed line |diff.txt|
        DiffDelete = {bg = cpt.diff.delete}, -- diff mode: Deleted line |diff.txt|
        DiffText = {bg = cpt.diff.text}, -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer = {fg = cpt.bg}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        TermCursor = {}, -- cursor in a focused terminal
        TermCursorNC = {}, -- cursor in an unfocused terminal
        ErrorMsg = {fg = cpt.error}, -- error messages on the command line
        VertSplit = {fg = cpt.border}, -- the column separating vertically split windows
        Folded = {fg = cpt.blue, bg = cpt.fg_gutter}, -- line used for closed folds
        FoldColumn = {bg = cpt.bg, fg = cpt.comment}, -- 'foldcolumn'
        SignColumn = {bg = cpc.transparency and cpt.none or cpt.bg, fg = cpt.fg_gutter}, -- column where |signs| are displayed
        SignColumnSB = {bg = cpt.bg_sidebar, fg = cpt.fg_gutter}, -- column where |signs| are displayed
        Substitute = {bg = cpt.red, fg = cpt.black}, -- |:substitute| replacement text highlighting
        LineNr = {fg = cpt.fg_gutter}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is secpt.
        CursorLineNr = {fg = cpt.fg_alt}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
        MatchParen = {fg = cpt.orange, style = "bold"}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        ModeMsg = {fg = cpt.fg_alt, style = "bold"}, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = {fg = cpt.fg_alt}, -- Area for messages and cmdline
        MsgSeparator = {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = {fg = cpt.blue}, -- |more-prompt|
        NonText = {fg = cpt.comment}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = {fg = cpt.fg, bg = cpc.transparency and cpt.none or cpt.bg}, -- normal text
        NormalNC = {fg = cpt.fg, bg = cpc.transparency and cpt.none or cpt.bg}, -- normal text in non-current windows
        NormalSB = {fg = cpt.fg_sidebar, bg = cpt.bg_sidebar}, -- normal text in non-current windows
        NormalFloat = {fg = cpt.fg, bg = cpt.bg_float}, -- Normal text in floating windows.
        FloatBorder = {fg = cpt.border_highlight},
        Pmenu = {bg = cpt.bg_popup, fg = cpt.fg}, -- Popup menu: normal item.
        PmenuSel = {fg = cpt.cyan, bg = util.darken(cpt.fg_gutter, 0.8)}, -- Popup menu: selected item.
        PmenuSbar = {bg = util.lighten(cpt.bg_popup, 0.95)}, -- Popup menu: scrollbar.
        PmenuThumb = {bg = cpt.fg_gutter}, -- Popup menu: Thumb of the scrollbar.
        Question = {fg = cpt.blue}, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = {bg = cpt.bg_visual, style = "bold"}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        Search = {bg = cpt.bg_search, fg = cpt.fg}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand oucpt.
        IncSearch = {bg = cpt.cyan, fg = cpt.black}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        SpecialKey = {fg = cpt.black}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = {sp = cpt.error, style = "undercurl"}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = {sp = cpt.warning, style = "undercurl"}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = {sp = cpt.info, style = "undercurl"}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = {sp = cpt.hint, style = "undercurl"}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = {fg = cpt.fg_sidebar, bg = cpt.bg_statusline}, -- status line of current window
        StatusLineNC = {fg = cpt.fg_gutter, bg = cpt.bg_statusline}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        TabLine = {bg = cpt.bg_statusline, fg = cpt.fg_gutter}, -- tab pages line, not active tab page label
        TabLineFill = {bg = cpt.black}, -- tab pages line, where there are no labels
        TabLineSel = {fg = cpt.fg_alt, bg = cpt.fg_gutter}, -- tab pages line, active tab page label
        Title = {fg = cpt.blue, style = "bold"}, -- titles for output from ":set all", ":autocmd" etcpt.
        Visual = {bg = cpt.bg_visual}, -- Visual mode selection
        VisualNOS = {bg = cpt.bg_visual}, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = {fg = cpt.warning}, -- warning messages
        Whitespace = {fg = cpt.fg_gutter}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = {bg = cpt.bg_visual}, -- current match in 'wildmenu' completion
        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant = {fg = cpt.orange}, -- (preferred) any constant
        String = {fg = cpt.green, style = cpc.styles.strings}, -- a string constant: "this is a string"
        Character = {fg = cpt.green}, --  a character constant: 'c', '\n'
        Number = {fg = cpt.orange_br}, --   a number constant: 234, 0xff
        Float = {fg = cpt.orange_br}, --    a floating point constant: 2.3e10
        Boolean = {fg = cpt.orange_br}, --  a boolean constant: TRUE, false
        Identifier = {fg = cpt.cyan, style = cpc.styles.variables}, -- (preferred) any variable name
        Function = {fg = cpt.blue, style = cpc.styles.fuctions}, -- function name (also: methods for classes)
        Statement = {fg = cpt.magenta_br}, -- (preferred) any statement
        Conditional = {fg = cpt.red}, --  if, then, else, endif, switch, etcpt.
        Repeat = {fg = cpt.magenta_br}, --   for, do, while, etcpt.
        Label = {fg = cpt.magenta_br}, --    case, default, etcpt.
        Operator = {fg = cpt.fg_alt}, -- "sizeof", "+", "*", etcpt.
        Keyword = {fg = cpt.magenta, style = cpc.styles.keywords}, --  any other keyword
        -- Exception     = { }, --  try, catch, throw

        PreProc = {fg = cpt.pink}, -- (preferred) generic Preprocessor
        Include = {fg = cpt.pink}, --  preprocessor #include
        -- Define        = { }, --   preprocessor #define
        -- Macro         = { }, --    same as Define
        -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etcpt.

        Type = {fg = cpt.yellow}, -- (preferred) int, long, char, etcpt.
        StorageClass = {fg = cpt.yellow}, -- static, register, volatile, etcpt.
        Structure = {fg = cpt.yellow}, --  struct, union, enum, etcpt.
        Typedef = {fg = cpt.yellow}, --  A typedef
        Special = {fg = cpt.blue}, -- (preferred) any special symbol
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

        Error = {fg = cpt.error}, -- (preferred) any erroneous construct
        Todo = {bg = cpt.yellow, fg = cpt.bg}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
        qfLineNr = {fg = cpt.yellow},
        qfFileName = {fg = cpt.blue},
        htmlH1 = {fg = cpt.magenta, style = "bold"},
        htmlH2 = {fg = cpt.blue, style = "bold"},
        -- mkdHeading = { fg = cpt.orange, style = "bold" },
        -- mkdCode = { bg = cpt.terminal_black, fg = cpt.fg },
        mkdCodeDelimiter = {bg = cpt.terminal_black, fg = cpt.fg},
        mkdCodeStart = {fg = cpt.cyan, style = "bold"},
        mkdCodeEnd = {fg = cpt.cyan, style = "bold"},
        -- mkdLink = { fg = cpt.blue, style = "underline" },

        markdownHeadingDelimiter = {fg = cpt.orange, style = "bold"},
        markdownCode = {fg = cpt.cyan},
        markdownCodeBlock = {fg = cpt.cyan},
        markdownH1 = {fg = cpt.magenta, style = "bold"},
        markdownH2 = {fg = cpt.blue, style = "bold"},
        markdownLinkText = {fg = cpt.blue, style = "underline"},
        debugPC = {bg = cpt.bg_sidebar}, -- used for highlighting the current line in terminal-debug
        debugBreakpoint = {bg = util.darken(cpt.info, 0.1), fg = cpt.info}, -- used for breakpoint colors in terminal-debug
        -- These groups are for the native LSP cliencpt. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        LspReferenceText = {bg = cpt.fg_gutter}, -- used for highlighting "text" references
        LspReferenceRead = {bg = cpt.fg_gutter}, -- used for highlighting "read" references
        LspReferenceWrite = {bg = cpt.fg_gutter}, -- used for highlighting "write" references

		-- hightlight diagnostics in numberline
        LspDiagnosticsDefaultError = {fg = cpt.error}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultWarning = {fg = cpt.warning}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation = {fg = cpt.info}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultHint = {fg = cpt.hint}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspSignatureActiveParameter = {fg = cpt.orange},

        -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        LspDiagnosticsError = {fg = cpt.error},
        LspDiagnosticsWarning = {fg = cpt.warning},
        LspDiagnosticsInformation = {fg = cpt.info},
        LspDiagnosticsHint = {fg = cpt.hint},

        LspDiagnosticsVirtualTextError = {fg = cpt.error, style = cpc.integrations.native_lsp.styles.errors}, -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning = {fg = cpt.warning, style = cpc.integrations.native_lsp.styles.warnings}, -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation = {fg = cpt.info, style = cpc.integrations.native_lsp.styles.information}, -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint = {fg = cpt.hint, style = cpc.integrations.native_lsp.styles.hints}, -- Used for "Hint" diagnostic virtual text

        LspDiagnosticsUnderlineError = {style = "underline", sp = cpt.error}, -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning = {style = "underline", sp = cpt.warning}, -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation = {style = "underline", sp = cpt.info}, -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint = {style = "underline", sp = cpt.hint}, -- Used to underline "Hint" diagnostics

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
        TSNote = {fg = cpt.bg, bg = cpt.info},
        TSWarning = {fg = cpt.bg, bg = cpt.warning},
        TSDanger = {fg = cpt.bg, bg = cpt.error},
        TSConstructor = {fg = cpt.magenta}, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        -- TSConditional       = { };    -- For keywords related to conditionnals.
        TSConstant = {fg = cpt.orange}, -- For constants
        TSConstBuiltin = {fg = cpt.orange_br}, -- For constant that are built in the language: `nil` in Lua.
        -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in cpt.
        -- TSError             = { };    -- For syntax/parser errors.
        -- TSException         = { };    -- For exception related keywords.
        TSField = {fg = cpt.red}, -- For fields.
        rustTSField = {fg = util.darken(cpt.white, 0.75)}, -- For fields.
        -- TSFloat             = { };    -- For floats.
        -- TSFunction = { fg = cpt.fg_gutter }, -- For function (calls and definitions).
        TSFuncBuiltin = {fg = cpt.cyan}, -- For builtin functions: `table.insert` in Lua.
        TSFuncMacro = {fg = cpt.red}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Ruscpt.
        -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSKeyword = {fg = cpt.magenta, style = cpc.styles.keywords}, -- For keywords that don't fall in previous categories.
        TSKeywordFunction = {fg = cpt.magenta, style = cpc.styles.fuctions}, -- For keywords used to define a fuction.
        TSLabel = {fg = cpt.blue}, -- For labels: `label:` in C and `:label:` in Lua.
        -- TSMethod            = { };    -- For method calls and definitions.
        TSNamespace = {fg = cpt.cyan}, -- For identifiers referring to modules and namespaces.
        -- TSNone              = { };    -- TODO: docs
        -- TSNumber            = { };    -- For all numbers
        TSOperator = {fg = cpt.fg_alt}, -- For any operator: `+`, but also `->` and `*` in cpt.
        TSParameter = {fg = cpt.orange_br}, -- For parameters of a function.
        -- TSParameterReference= { };    -- For references to parameters of a function.
        TSProperty = {fg = cpt.red_bg}, -- Same as `TSField`.
        tomlTSProperty = {fg = cpt.blue}, -- Differentiates between string and properties
        TSPunctDelimiter = {fg = util.string_to_color(cpt, "", cpt.fg_alt)}, -- For delimiters ie: `.`
        TSPunctBracket = {fg = cpt.fg_alt}, -- For brackets and parens.
        TSPunctSpecial = {fg = cpt.white}, -- For special punctutation that does not fall in the catagories before.
        -- TSRepeat            = { };    -- For keywords related to loops.
        -- TSString            = { };    -- For strings.
        TSStringRegex = {fg = cpt.blue, style = cpc.styles.strings}, -- For regexes.
        TSStringEscape = {fg = cpt.magenta, style = cpc.styles.strings}, -- For escape characters within a string.
        -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
        -- TSType              = { };    -- For types.
        TSTypeBuiltin = {fg = cpt.cyan}, -- For builtin types.
        TSVariable = {style = cpc.styles.variables}, -- Any variable name that does not have another highlighcpt.
        TSVariableBuiltin = {fg = cpt.red}, -- Variable names that are defined by the languages, like `this` or `self`.
        -- TSTag               = { };    -- Tags like html tag names.
        -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
        -- TSText              = { };    -- For strings considered text in a markup language.
        TSTextReference = {fg = cpt.cyan}
        -- TSEmphasis          = { };    -- For text to be represented with emphasis.
        -- TSUnderline         = { };    -- For text to be represented with an underline.
        -- TSStrike            = { };    -- For strikethrough texcpt.
        -- TSTitle             = { };    -- Text that is part of a title.
        -- TSLiteral           = { };    -- Literal texcpt.
        -- TSURI               = { };    -- Any URI like a link or email.
    }
end

local function get_integrations()
    local integrations = cpc["integrations"]

    for integration in pairs(integrations) do
        local cot = false
        if (type(integrations[integration]) == "table") then
            if (integrations[integration]["enabled"] == true) then
                cot = true
            end
        else
            if (integrations[integration] == true) then
                cot = true
            end
        end

        if (cot) then
            require("catppuccino.core.integrations." .. integrations[integration])
        end
    end
end

function M.apply()
    local theme = {}
	_G.cpc = require("catppuccino.config").options
	_G.cpt = require("catppuccino.color_schemes." .. cpc.colorscheme)


    theme.base = get_base()

    theme.plugins = {
        -- LspTrouble
        LspTroubleText = {fg = cpt.fg_alt},
        LspTroubleCount = {fg = cpt.magenta, bg = cpt.fg_gutter},
        LspTroubleNormal = {fg = cpt.fg_sidebar, bg = cpt.bg_sidebar},
        -- Illuminate
        illuminatedWord = {bg = cpt.fg_gutter},
        illuminatedCurWord = {bg = cpt.fg_gutter},
		-- IndentBlankline
		IndentBlanklineChar = {fg = cpt.gray},
        -- diff
        diffAdded = {fg = cpt.gicpt.add},
        diffRemoved = {fg = cpt.gicpt.delete},
        diffChanged = {fg = cpt.gicpt.change},
        diffOldFile = {fg = cpt.yellow},
        diffNewFile = {fg = cpt.orange},
        diffFile = {fg = cpt.blue},
        diffLine = {fg = cpt.comment},
        diffIndexLine = {fg = cpt.magenta},
        -- Neogit
        NeogitBranch = {fg = cpt.magenta},
        NeogitRemote = {fg = cpt.pink},
        NeogitHunkHeader = {bg = cpt.bg_highlight, fg = cpt.fg},
        NeogitHunkHeaderHighlight = {bg = cpt.fg_gutter, fg = cpt.blue},
        NeogitDiffContextHighlight = {bg = util.darken(cpt.fg_gutter, 0.5), fg = cpt.fg_alt},
        NeogitDiffDeleteHighlight = {fg = cpt.gicpt.delete, bg = cpt.diff.delete},
        NeogitDiffAddHighlight = {fg = cpt.gicpt.add, bg = cpt.diff.add},
        -- GitGutter
        GitGutterAdd = {fg = cpt.gitSigns.add}, -- diff mode: Added line |diff.txt|
        GitGutterChange = {fg = cpt.gitSigns.change}, -- diff mode: Changed line |diff.txt|
        GitGutterDelete = {fg = cpt.gitSigns.delete}, -- diff mode: Deleted line |diff.txt|
        -- GitSigns
        GitSignsAdd = {fg = cpt.gitSigns.add}, -- diff mode: Added line |diff.txt|
        GitSignsChange = {fg = cpt.gitSigns.change}, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = {fg = cpt.gitSigns.delete}, -- diff mode: Deleted line |diff.txt|
        -- Telescope
        TelescopeBorder = {fg = cpt.border_highlight},
        TelescopeSelectionCaret = {fg = cpt.cyan},
        TelescopeSelection = {fg = cpt.cyan, bg = cpt.bg_highlight},
        TelescopeMatching = {fg = cpt.blue},
        -- NvimTree
        NvimTreeNormal = {fg = cpt.fg_sidebar, bg = cpt.bg_sidebar},
        NvimTreeFolderIcon = {fg = cpt.comment},
        NvimTreeRootFolder = {fg = cpt.orange, style = "bold"},
        NvimTreeSymlink = {fg = cpt.magenta},
        NvimTreeFolderName = {fg = cpt.blue},
        NvimTreeEmptyFolderName = {fg = cpt.comment},
        NvimTreeOpenedFolderName = {fg = cpt.blue_br},
        NvimTreeOpenedFile = {fg = cpt.magenta}, -- TODO: not working
        NvimTreeGitDirty = {fg = cpt.gicpt.change},
        NvimTreeGitNew = {fg = cpt.gicpt.add},
        NvimTreeGitDeleted = {fg = cpt.gicpt.delete},
        NvimTreeSpecialFile = {fg = cpt.cyan},
        NvimTreeIndentMarker = {fg = cpt.fg_gutter},
        NvimTreeImageFile = {fg = cpt.fg_sidebar},
        -- Fern
        FernBranchText = {fg = cpt.blue},
        -- glyph palette
        GlyphPalette1 = {fg = cpt.red},
        GlyphPalette2 = {fg = cpt.green},
        GlyphPalette3 = {fg = cpt.yellow},
        GlyphPalette4 = {fg = cpt.blue},
        GlyphPalette6 = {fg = cpt.green_br},
        GlyphPalette7 = {fg = cpt.fg},
        GlyphPalette9 = {fg = cpt.red},
        -- Dashboard
        DashboardShortCut = {fg = cpt.cyan},
        DashboardHeader = {fg = cpt.yellow},
        DashboardCenter = {fg = cpt.green},
        DashboardFooter = {fg = cpt.orange, style = "italic"},
        -- WhichKey
        WhichKey = {fg = cpt.cyan},
        WhichKeyGroup = {fg = cpt.blue},
        WhichKeyDesc = {fg = cpt.magenta},
        WhichKeySeperator = {fg = cpt.comment},
        WhichKeySeparator = {fg = cpt.comment},
        WhichKeyFloat = {bg = cpt.bg_sidebar},
        WhichKeyValue = {fg = cpt.comment},
        -- LspSaga
        DiagnosticError = {fg = cpt.error},
        DiagnosticWarning = {fg = cpt.warning},
        DiagnosticInformation = {fg = cpt.info},
        DiagnosticHint = {fg = cpt.hint},
        LspFloatWinNormal = {bg = cpt.bg_float},
        LspFloatWinBorder = {fg = cpt.border_highlight},
        LspSagaBorderTitle = {fg = cpt.cyan},
        LspSagaHoverBorder = {fg = cpt.blue},
        LspSagaRenameBorder = {fg = cpt.green},
        LspSagaDefPreviewBorder = {fg = cpt.green},
        LspSagaCodeActionBorder = {fg = cpt.blue},
        LspSagaFinderSelection = {fg = cpt.bg_visual},
        LspSagaCodeActionTitle = {fg = cpt.blue1},
        LspSagaCodeActionContent = {fg = cpt.purple},
        LspSagaSignatureHelpBorder = {fg = cpt.red},
        ReferencesCount = {fg = cpt.purple},
        DefinitionCount = {fg = cpt.purple},
        DefinitionIcon = {fg = cpt.blue},
        ReferencesIcon = {fg = cpt.blue},
        TargetWord = {fg = cpt.cyan},
        -- NeoVim
        healthError = {fg = cpt.error},
        healthSuccess = {fg = cpt.green_br},
        healthWarning = {fg = cpt.warning},
        -- BufferLine
        BufferLineIndicatorSelected = {fg = cpt.gicpt.change},
        BufferLineFill = {bg = cpt.black},
        -- Barbar
        BufferCurrent = {bg = cpt.fg_gutter, fg = cpt.fg},
        BufferCurrentIndex = {bg = cpt.fg_gutter, fg = cpt.info},
        BufferCurrentMod = {bg = cpt.fg_gutter, fg = cpt.warning},
        BufferCurrentSign = {bg = cpt.fg_gutter, fg = cpt.info},
        BufferCurrentTarget = {bg = cpt.fg_gutter, fg = cpt.red},
        BufferVisible = {bg = cpt.bg_statusline, fg = cpt.fg},
        BufferVisibleIndex = {bg = cpt.bg_statusline, fg = cpt.info},
        BufferVisibleMod = {bg = cpt.bg_statusline, fg = cpt.warning},
        BufferVisibleSign = {bg = cpt.bg_statusline, fg = cpt.info},
        BufferVisibleTarget = {bg = cpt.bg_statusline, fg = cpt.red},
        BufferInactive = {bg = cpt.bg_statusline, fg = cpt.comment},
        BufferInactiveIndex = {bg = cpt.bg_statusline, fg = cpt.comment},
        BufferInactiveMod = {bg = cpt.bg_statusline, fg = util.darken(cpt.warning, 0.7)},
        BufferInactiveSign = {bg = cpt.bg_statusline, fg = cpt.border_highlight},
        BufferInactiveTarget = {bg = cpt.bg_statusline, fg = cpt.red},
        BufferTabpages = {bg = cpt.bg_statusline, fg = cpt.none},
        BufferTabpage = {bg = cpt.bg_statusline, fg = cpt.border_highlight},
        -- Sneak
        Sneak = {fg = cpt.bg_highlight, bg = cpt.magenta},
        SneakScope = {bg = cpt.bg_visual},
        -- Hop
        HopNextKey = {fg = cpt.cyan, style = "bold"},
        HopNextKey1 = {fg = cpt.blue, style = "bold"},
        HopNextKey2 = {fg = util.darken(cpt.blue, 0.3)},
        HopUnmatched = {fg = cpt.comment},
        LightspeedGreyWash = {fg = cpt.comment}
    }

    return theme
end

return M
