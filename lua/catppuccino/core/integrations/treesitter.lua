local M = {}

function M.get(cp)
	return {
		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		TSBoolean = { fg = cp.katppuccino6, style = cnf.styles.keywords }, -- For booleans.
		-- TSCharacter         = { };    -- For characters.
		-- TScatppuccino12           = { };    -- For catppuccino12 blocks.
		TSNote = { fg = cp.katppuccino1, bg = cp.katppuccino9 },
		TSWarning = { fg = cp.katppuccino1, bg = cp.katppuccino8 },
		TSDanger = { fg = cp.katppuccino1, bg = cp.katppuccino5 },
		TSConstructor = { fg = cp.katppuccino4 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConditional = { fg = cp.katppuccino5, style = cnf.styles.keywords }, -- For keywords related to conditionnals.
		TSConstant = { fg = cp.katppuccino6 }, -- For constants
		TSConstBuiltin = { fg = cp.katppuccino6, style = cnf.styles.keywords }, -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in cp.
		-- TSError             = { };    -- For syntax/parser errors.
		TSException = { fg = cp.katppuccino3, style = cnf.styles.keywords }, -- For exception related keywords.
		TSField = { fg = cp.katppuccino5 }, -- For fields.
		-- rustTSField = { fg = cp.catppuccino13 }, -- For fields.
		-- TSFloat             = { };    -- For floats.
		TSFunction = { fg = cp.katppuccino9, style = cnf.styles.functions }, -- For function (calls and definitions).
		TSFuncBuiltin = { fg = cp.katppuccino2 }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro = { fg = cp.katppuccino5 }, -- For macro defined functions (calls and definitions): each `macro_rules` in Ruscp.
		TSInclude = { fg = cp.katppuccino4, style = cnf.styles.keywords }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword = { fg = cp.katppuccino4, style = cnf.styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction = { fg = cp.katppuccino3, style = cnf.styles.keywords }, -- For keywords used to define a fuction.
		TSKeywordOperator = { fg = cp.katppuccino2, style = cnf.styles.keywords }, -- For `new` keyword operator
		TSLabel = { fg = cp.katppuccino9 }, -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod            = { };    -- For method calls and definitions.
		TSNamespace = { fg = cp.katppuccino2 }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSNumber            = { };    -- For all numbers
		TSOperator = { fg = cp.katppuccino2 }, -- For any operator: `+`, but also `->` and `*` in cp.
		TSParameter = { fg = cp.katppuccino6 }, -- For parameters of a function.
		-- TSParameterReference= { };    -- For references to parameters of a function.
		TSProperty = { fg = cp.katppuccino5 }, -- Same as `TSField`.
		tomlTSProperty = { fg = cp.katppuccino9 }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = cp.katppuccino2 }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = cp.katppuccino5 }, -- For brackets and parenthesis.
		TSPunctSpecial = { fg = cp.katppuccino0 }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat = { fg = cp.katppuccino5, style = cnf.styles.keywords }, -- For keywords related to loops.
		-- TSString            = { };    -- For strings.
		TSStringRegex = { fg = cp.katppuccino9, style = cnf.styles.strings }, -- For regexes.
		TSStringEscape = { fg = cp.katppuccino4, style = cnf.styles.strings }, -- For escape characters within a string.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		-- TSType              = { };    -- For types.
		TSTypeBuiltin = { fg = cp.katppuccino2, style = cnf.styles.keywords }, -- For builtin types.
		TSVariable = { style = cnf.styles.variables }, -- Any variable name that does not have another highlighcp.
		TSVariableBuiltin = { fg = cp.katppuccino5, style = cnf.styles.keywords }, -- Variable names that are defined by the languages, like `this` or `self`.
		-- TSTag               = { };    -- Tags like html tag names.
		-- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
		-- TSText              = { };    -- For strings considekatppuccino5 text in a markup language.
		TSTextReference = { fg = cp.katppuccino2 },
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcp.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcp.
		-- TSURI               = { };    -- Any URI like a link or email.
	}
end

return M
