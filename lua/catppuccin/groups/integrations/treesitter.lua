local M = {}

function M.get()
	-- local delimeters = cp.overlay2
	local operators = cp.sky
	local cl = cp.mauve -- conditionals, loops
	local keywords = cp.mauve

	local math_logic = cp.peach

	if vim.treesitter.highlighter.hl_map then
		vim.notify(
			[[Catppuccin (info):
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, disable the integration, or pin catppuccin tag to v0.2.4 and nvim-treesitter to 4cccb6f494eb255b32a290d37c35ca12584c74d0.
]],
			vim.log.levels.INFO
		)
		return {}
	end

	return {
		["@field"] = { fg = cp.teal }, -- For fields.
		["@property"] = { fg = cp.teal, style = cnf.styles.properties or {} }, -- Same as TSField.

		["@include"] = { fg = cp.mauve, style = cnf.styles.keywords or {} }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@operator"] = { fg = operators, style = cnf.styles.operators or {} }, -- For any operator: +, but also -> and * in cp.
		["@keyword.operator"] = { fg = cp.mauve, style = cnf.styles.operators or {} }, -- For new keyword operator
		["@punctuation.special"] = { fg = cp.sky, style = cnf.styles.operators or {} }, -- For special punctutation that does not fall in the catagories before.

		["@float"] = { fg = math_logic, style = cnf.styles.numbers or {} }, -- For floats.
		["@number"] = { fg = math_logic, style = cnf.styles.numbers or {} }, -- For all numbers
		["@boolean"] = { fg = math_logic, style = cnf.styles.booleans or {} }, -- For booleans.

		["@constructor"] = { fg = cp.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@constant"] = { fg = cp.peach }, -- For constants
		["@conditional"] = { fg = cl, style = cnf.styles.conditionals or {} }, -- For keywords related to conditionnals.
		["@repeat"] = { fg = cl, style = cnf.styles.loops or {} }, -- For keywords related to loops.
		["@exception"] = { fg = cp.mauve, style = cnf.styles.keywords or {} }, -- For exception related keywords.

		-- builtin
		["@constant.builtin"] = { fg = cp.peach, style = cnf.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
		["@function.builtin"] = { fg = cp.peach, style = cnf.styles.functions or {} }, -- For builtin functions: table.insert in Lua.

		["@namespace"] = { fg = cp.blue, style = { "italic" } }, -- For identifiers referring to modules and namespaces.
		["@type"] = { fg = cp.yellow, style = cnf.styles.types or {} }, -- For types.
		["@type.builtin"] = { fg = cp.yellow, style = cnf.styles.properties or "italic" }, -- For builtin types.
		["@variable.builtin"] = { fg = cp.red }, -- Variable names that are defined by the languages, like this or self.

		["@function"] = { fg = cp.blue, style = cnf.styles.functions or {} }, -- For function (calls and definitions).
		["@function.macro"] = { fg = cp.teal, style = cnf.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
		["@parameter"] = { fg = cp.maroon, style = { "italic" } }, -- For parameters of a function.
		["@keyword.function"] = { fg = cp.mauve, style = cnf.styles.keywords or {} }, -- For keywords used to define a fuction.
		["@keyword"] = { fg = keywords, style = cnf.styles.keywords or {} }, -- For keywords that don't fall in previous categories.
		["@keyword.return"] = { fg = cp.mauve, style = cnf.styles.keywords or {} },
		-- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSAttribute         = { };    -- (unstable) TODO: docs
		-- TSCharacter         = { };    -- For characters.
		-- TSoverlay0           = { };    -- For overlay0 blocks.
		["@text.note"] = { fg = cp.base, bg = cp.blue },
		["@text.warning"] = { fg = cp.base, bg = cp.yellow },
		["@text.danger"] = { fg = cp.base, bg = cp.red },
		["@constant.macro"] = { fg = cp.mauve }, -- For constants that are defined by macros: NULL in cp.
		-- TSError = { fg = cp.red }, -- For syntax/parser errors.
		-- rustTSField = { fg = cp.surface1 }, -- For fields.
		["@label"] = { fg = cp.sapphire }, -- For labels: label: in C and :label: in Lua.
		["@method"] = { fg = cp.blue, style = cnf.styles.functions or {} }, -- For method calls and definitions.
		-- TSNone              = { };    -- TODO: docs
		-- TSParameterReference= { };    -- For references to parameters of a function.
		["@punctuation.delimiter"] = { fg = cp.overlay2 }, -- For delimiters ie: .
		-- TSPunctBracket = { fg = delimeters }, -- For brackets and parenthesis.
		["@punctuation.bracket"] = { fg = cp.overlay2 }, -- For brackets and parenthesis.
		["@string"] = { fg = cp.green, style = cnf.styles.strings or {} }, -- For strings.
		["@string.regex"] = { fg = cp.peach, style = cnf.styles.strings or {} }, -- For regexes.
		-- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
		["@variable"] = { fg = cp.text, style = cnf.styles.variables or {} }, -- Any variable name that does not have another highlighcp.
		["@tag.attribute"] = { fg = cp.teal, style = { "italic" } }, -- Tags like html tag names.
		["@tag"] = { fg = cp.mauve }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = cp.sky }, -- Tag delimiter like < > /
		["@text"] = { fg = cp.text }, -- For strings considerated text in a markup language.
		-- TSEmphasis          = { };    -- For text to be represented with emphasis.
		-- TSUnderline         = { };    -- For text to be represented with an underline.
		-- TSStrike            = { };    -- For strikethrough texcp.
		-- TSTitle             = { };    -- Text that is part of a title.
		-- TSLiteral           = { };    -- Literal texcp.
		-- TSURI               = { };    -- Any URI like a link or email.
		--
		-- Markdown tresitter parser support
		["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
		["@text.literal"] = { fg = cp.teal, style = { "italic" } }, -- used for inline code in markdown and for doc in python (""")
		["@text.reference"] = { fg = cp.lavender, style = { "bold" } }, -- references
		["@text.title"] = { fg = cp.blue, style = { "bold" } }, -- titles like: # Example
		["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } }, -- bold
		["@text.strong"] = { fg = cp.maroon, style = { "bold" } }, -- italic
		["@string.escape"] = { fg = cp.pink, style = cnf.styles.strings }, -- For escape characters within a string.

		-- toml
		["@property.toml"] = { fg = cp.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = cp.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@constructor.lua"] = { fg = cp.lavender }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

		-- typescript
		["@constructor.typescript"] = { fg = cp.lavender },

		-- TSX (Typescript React)
		["@keyword.export"] = { fg = cp.sky, style = { "bold" } },
		["@constructor.tsx"] = { fg = cp.lavender },
		["@tag.attribute.tsx"] = { fg = cp.mauve },

		-- cpp
		["@property.cpp"] = { fg = cp.rosewater },

		-- yaml
		["@field.yaml"] = { fg = cp.blue }, -- For fields.

		-- Ruby
		["@symbol"] = { fg = cp.flamingo },
	}
end

return M
