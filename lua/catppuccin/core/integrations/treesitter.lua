local M = {}

function M.get(cp)
	local keywords = cp.catppuccin4
	local operators = cp.catppuccin19
	local math_logic = cp.catppuccin18
	return {
		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.
		TSField = { fg = cp.catppuccin2 }, -- For fields.
		TSProperty = { fg = cp.catppuccin8, style = "italic" }, -- Same as TSField.
		TSInclude = { fg = cp.catppuccin5, style = "italic" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		TSOperator = { fg = operators, style = "bold" }, -- For any operator: +, but also -> and * in cp.
		TSKeywordOperator = { fg = operators, style = "bold" }, -- For new keyword operator
		TSPunctSpecial = { fg = cp.catppuccin5 }, -- For special punctutation that does not fall in the catagories before.

		TSFloat = { fg = math_logic, style = "italic" }, -- For floats.
		TSNumber = { fg = math_logic, style = "italic" }, -- For all numbers
		TSBoolean = { fg = math_logic, style = "italic" }, -- For booleans.

		TSConstructor = { fg = cp.catppuccin9 }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		TSConstant = { fg = cp.catppuccin2, style = "NONE" }, -- For constants
		TSConditional = { fg = keywords, style = "bold" }, -- For keywords related to conditionnals.
		TSRepeat = { fg = keywords, style = "bold" }, -- For keywords related to loops.
		TSException = { fg = cp.catppuccin6, style = "italic" }, -- For exception related keywords.
		TSKeywordReturn = { fg = cp.catppuccin5 },

		-- builtin
		TSConstBuiltin = { fg = cp.catppuccin18, style = cnf.styles.keywords }, -- For constant that are built in the language: nil in Lua.
		TSFuncBuiltin = { fg = cp.catppuccin6, style = "italic" }, -- For builtin functions: table.insert in Lua.
		TSTypeBuiltin = { fg = cp.catppuccin18, style = "italic" }, -- For builtin types.
		TSVariableBuiltin = { fg = cp.catppuccin5, style = "italic" }, -- Variable names that are defined by the languages, like this or self.

		TSFunction = { fg = cp.catppuccin9, style = cnf.styles.functions }, -- For function (calls and definitions).
		TSFuncMacro = { fg = cp.catppuccin5 }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
		TSParameter = { fg = cp.catppuccin2, style = "italic" }, -- For parameters of a function.
		TSKeywordFunction = { fg = cp.catppuccin4, style = cnf.styles.keywords }, -- For keywords used to define a fuction.
		TSKeyword = { fg = keywords, style = cnf.styles.keywords }, -- For keywords that don't fall in previous categories.
		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		-- TSCharacter         = { };    -- For characters.
		-- TScatppuccin11           = { };    -- For catppuccin11 blocks.
		TSNote = { fg = cp.catppuccin1, bg = cp.catppuccin9 },
		TSWarning = { fg = cp.catppuccin1, bg = cp.catppuccin8 },
		TSDanger = { fg = cp.catppuccin1, bg = cp.catppuccin5 },
		-- TSConstMacro        = { };    -- For constants that are defined by macros: NULL in cp.
		-- TSError = { fg = cp.catppuccin5 }, -- For syntax/parser errors.
		-- rustTSField = { fg = cp.catppuccin12 }, -- For fields.
		TSLabel = { fg = cp.catppuccin9 }, -- For labels: label: in C and :label: in Lua.
		TSMethod = { fg = cp.catppuccin9, style = "italic" }, -- For method calls and definitions.
		TSNamespace = { fg = cp.catppuccin2, style = "italic" }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSParameterReference= { };    -- For references to parameters of a function.
		tomlTSProperty = { fg = cp.catppuccin9 }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = cp.catppuccin11 }, -- For delimiters ie: .
		TSPunctBracket = { fg = cp.catppuccin11 }, -- For brackets and parenthesis.
		TSString = { fg = cp.catppuccin0 }, -- For strings.
		TSStringRegex = { fg = cp.catppuccin6, style = cnf.styles.strings }, -- For regexes.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		TSType = { fg = cp.catppuccin8 }, -- For types.
		TSVariable = { fg = cp.catppuccin10, style = cnf.styles.variables }, -- Any variable name that does not have another highlighcp.
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcp.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcp.

		-- html
		TSTagAttribute = { fg = cp.catppuccin3, style = "italic" }, -- Tags like html tag names.
		TSTag = { fg = cp.catppuccin6 }, -- Tags like html tag names.
		TSTagDelimiter = { fg = cp.catppuccin7 }, -- Tag delimiter like < > /
		TSText = { fg = cp.catppuccin10 }, -- For strings considerated text in a markup language.

		-- Markdown tresitter parser support
		TSURI = { fg = cp.catppuccin2, style = "italic,underline" }, -- urls, links and emails
		TSLiteral = { fg = cp.catppuccin0, style = "italic" }, -- used for inline code in markdown and for doc in python (""")
		TSTextReference = { fg = cp.catppuccin7, style = "bold" }, -- references
		TSTitle = { fg = cp.catppuccin9, style = "bold" }, -- titles like: # Example
		TSEmphasis = { fg = cp.catppuccin5, style = "bold" }, -- bold
		TSStrong = { fg = cp.catppuccin4, style = "italic,bold" }, -- italic
		TSStringEscape = { fg = cp.catppuccin4, style = cnf.styles.strings }, -- For escape characters within a string.

		-- bash
		bashTSFuncBuiltin = { fg = cp.catppuccin5, style = "italic" },
		bashTSParameter = { fg = cp.catppuccin8, style = "italic" },
	}
end

return M
