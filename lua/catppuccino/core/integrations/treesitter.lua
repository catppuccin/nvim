local util = require("catppuccino.utils.util")
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
		TSBoolean = { fg = cp.orange_br, style = cnf.styles.keywords }, -- For booleans.
		-- TSCharacter         = { };    -- For characters.
		-- TSComment           = { };    -- For comment blocks.
		TSNote = { fg = cp.catppuccino2, catppuccino2 = cp.info },
		TSWarning = { fg = cp.catppuccino2, catppuccino2 = cp.warning },
		TSDanger = { fg = cp.catppuccino2, catppuccino2 = cp.error },
		TSConstructor = { fg = cp.catppuccino5 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConditional = { fg = cp.catppuccino6, style = cnf.styles.keywords }, -- For keywords related to conditionnals.
		TSConstant = { fg = cp.orange }, -- For constants
		TSConstBuiltin = { fg = cp.orange_br, style = cnf.styles.keywords }, -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in cp.
		-- TSError             = { };    -- For syntax/parser errors.
		TSException = { fg = cp.catppuccino4, style = cnf.styles.keywords }, -- For exception related keywords.
		TSField = { fg = cp.catppuccino6 }, -- For fields.
		rustTSField = { fg = util.darken(cp.catppuccino0, 0.75) }, -- For fields.
		-- TSFloat             = { };    -- For floats.
		TSFunction = { fg = cp.blue, style = cnf.styles.functions }, -- For function (calls and definitions).
		TSFuncBuiltin = { fg = cp.catppuccino3 }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro = { fg = cp.catppuccino6 }, -- For macro defined functions (calls and definitions): each `macro_rules` in Ruscp.
		TSInclude = { fg = cp.catppuccino5, style = cnf.styles.keywords }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword = { fg = cp.catppuccino5, style = cnf.styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction = { fg = cp.catppuccino4, style = cnf.styles.keywords }, -- For keywords used to define a fuction.
		TSKeywordOperator = { fg = cp.catppuccino3, style = cnf.styles.keywords }, -- For `new` keyword operator
		TSLabel = { fg = cp.blue }, -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod            = { };    -- For method calls and definitions.
		TSNamespace = { fg = cp.catppuccino3 }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSNumber            = { };    -- For all numbers
		TSOperator = { fg = cp.catppuccino3 }, -- For any operator: `+`, but also `->` and `*` in cp.
		TSParameter = { fg = cp.orange_br }, -- For parameters of a function.
		-- TSParameterReference= { };    -- For references to parameters of a function.
		TSProperty = { fg = cp.catppuccino6 }, -- Same as `TSField`.
		tomlTSProperty = { fg = cp.blue }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = cp.green_br }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = cp.catppuccino6 }, -- For brackets and parenthesis.
		TSPunctSpecial = { fg = cp.catppuccino0 }, -- For special punctutation that does not fall in the catagories before.
		TSRepeat = { fg = cp.catppuccino6, style = cnf.styles.keywords }, -- For keywords related to loops.
		-- TSString            = { };    -- For strings.
		TSStringRegex = { fg = cp.blue, style = cnf.styles.strings }, -- For regexes.
		TSStringEscape = { fg = cp.catppuccino5, style = cnf.styles.strings }, -- For escape characters within a string.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		-- TSType              = { };    -- For types.
		TSTypeBuiltin = { fg = cp.catppuccino3, style = cnf.styles.keywords }, -- For builtin types.
		TSVariable = { style = cnf.styles.variables }, -- Any variable name that does not have another highlighcp.
		TSVariableBuiltin = { fg = cp.catppuccino6, style = cnf.styles.keywords }, -- Variable names that are defined by the languages, like `this` or `self`.
		-- TSTag               = { };    -- Tags like html tag names.
		-- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
		-- TSText              = { };    -- For strings considecatppuccino6 text in a markup language.
		TSTextReference = { fg = cp.catppuccino3 },
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcp.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcp.
		-- TSURI               = { };    -- Any URI like a link or email.
	}
end

return M
