local util = require("catppuccino.utils.util")
local M = {}

function M.get(cpt)
	return {
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
		TSNote = { fg = cpt.bg, bg = cpt.info },
		TSWarning = { fg = cpt.bg, bg = cpt.warning },
		TSDanger = { fg = cpt.bg, bg = cpt.error },
		TSConstructor = { fg = cpt.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		-- TSConditional       = { };    -- For keywords related to conditionnals.
		TSConstant = { fg = cpt.orange }, -- For constants
		TSConstBuiltin = { fg = cpt.orange_br }, -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in cpt.
		-- TSError             = { };    -- For syntax/parser errors.
		-- TSException         = { };    -- For exception related keywords.
		TSField = { fg = cpt.red }, -- For fields.
		rustTSField = { fg = util.darken(cpt.white, 0.75) }, -- For fields.
		-- TSFloat             = { };    -- For floats.
		TSFunction = { fg = cpt.blue, style = cpc.styles.functions }, -- For function (calls and definitions).
		TSFuncBuiltin = { fg = cpt.cyan }, -- For builtin functions: `table.insert` in Lua.
		TSFuncMacro = { fg = cpt.red }, -- For macro defined functions (calls and definitions): each `macro_rules` in Ruscpt.
		TSInclude = { fg = cpt.magenta, style = cpc.styles.keywords };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSKeyword = { fg = cpt.magenta, style = cpc.styles.keywords }, -- For keywords that don't fall in previous categories.
		TSKeywordFunction = { fg = cpt.magenta_br, style = cpc.styles.keywords }, -- For keywords used to define a fuction.
		TSLabel = { fg = cpt.blue }, -- For labels: `label:` in C and `:label:` in Lua.
		-- TSMethod            = { };    -- For method calls and definitions.
		TSNamespace = { fg = cpt.cyan }, -- For identifiers referring to modules and namespaces.
		-- TSNone              = { };    -- TODO: docs
		-- TSNumber            = { };    -- For all numbers
		TSOperator = { fg = cpt.cyan }, -- For any operator: `+`, but also `->` and `*` in cpt.
		TSParameter = { fg = cpt.orange_br }, -- For parameters of a function.
		-- TSParameterReference= { };    -- For references to parameters of a function.
		TSProperty = { fg = cpt.red_br }, -- Same as `TSField`.
		tomlTSProperty = { fg = cpt.blue }, -- Differentiates between string and properties
		TSPunctDelimiter = { fg = cpt.green_br }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = cpt.red }, -- For brackets and parenthesis.
		TSPunctSpecial = { fg = cpt.white }, -- For special punctutation that does not fall in the catagories before.
		-- TSRepeat            = { };    -- For keywords related to loops.
		-- TSString            = { };    -- For strings.
		TSStringRegex = { fg = cpt.blue, style = cpc.styles.strings }, -- For regexes.
		TSStringEscape = { fg = cpt.magenta, style = cpc.styles.strings }, -- For escape characters within a string.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		-- TSType              = { };    -- For types.
		TSTypeBuiltin = { fg = cpt.cyan }, -- For builtin types.
		TSVariable = { style = cpc.styles.variables }, -- Any variable name that does not have another highlighcpt.
		TSVariableBuiltin = { fg = cpt.red }, -- Variable names that are defined by the languages, like `this` or `self`.
		-- TSTag               = { };    -- Tags like html tag names.
		-- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
		-- TSText              = { };    -- For strings considered text in a markup language.
		TSTextReference = { fg = cpt.cyan },
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcpt.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcpt.
		-- TSURI               = { };    -- Any URI like a link or email.
	}
end

return M
