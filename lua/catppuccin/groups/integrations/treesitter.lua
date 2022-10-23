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

	return { -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

		-- Misc
		["@comment"] = { link = "Comment" },
		["@error"] = { link = "Error" },
		-- ["@preproc"]  ; various preprocessor directives & shebangs
		-- ["@define"]   ; preprocessor definition directives
		["@operator"] = { fg = operators, style = cnf.styles.operators or {} }, -- For any operator: +, but also -> and * in cp.

		-- Punctuation
		["@punctuation.delimiter"] = { fg = cp.overlay2 }, -- For delimiters ie: .
		["@punctuation.bracket"] = { fg = cp.overlay2 }, -- For brackets and parenthesis.
		["@punctuation.special"] = { fg = cp.sky, style = cnf.styles.operators or {} }, -- For special punctutation that does not fall in the catagories before.

		-- Literals
		["@string"] = { fg = cp.green, style = cnf.styles.strings or {} }, -- For strings.
		["@string.regex"] = { fg = cp.peach, style = cnf.styles.strings or {} }, -- For regexes.
		["@string.escape"] = { fg = cp.pink, style = cnf.styles.strings }, -- For escape characters within a string.
		-- @string.special    ; other special strings (e.g. dates)

		-- @character         ; character literals
		-- @character.special ; special characters (e.g. wildcards)

		["@boolean"] = { fg = math_logic, style = cnf.styles.booleans or {} }, -- For booleans.
		["@number"] = { fg = math_logic, style = cnf.styles.numbers or {} }, -- For all numbers
		["@float"] = { fg = math_logic, style = cnf.styles.numbers or {} }, -- For floats.

		-- Functions
		["@function"] = { fg = cp.blue, style = cnf.styles.functions or {} }, -- For function (calls and definitions).
		["@function.builtin"] = { fg = cp.peach, style = cnf.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
		-- @function.call    ; function calls
		["@function.macro"] = { fg = cp.teal, style = cnf.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in Ruscp.
		["@method"] = { fg = cp.blue, style = cnf.styles.functions or {} }, -- For method calls and definitions.

		-- @method.call      ; method calls

		["@constructor"] = { fg = cp.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@parameter"] = { fg = cp.maroon, style = { "italic" } }, -- For parameters of a function.

		-- Keywords
		["@keyword"] = { fg = keywords, style = cnf.styles.keywords or {} }, -- For keywords that don't fall in previous categories.
		["@keyword.function"] = { fg = cp.mauve, style = cnf.styles.keywords or {} }, -- For keywords used to define a fuction.
		["@keyword.operator"] = { fg = cp.mauve, style = cnf.styles.operators or {} }, -- For new keyword operator
		["@keyword.return"] = { fg = cp.mauve, style = cnf.styles.keywords or {} },

		["@conditional"] = { fg = cl, style = cnf.styles.conditionals or {} }, -- For keywords related to conditionnals.
		["@repeat"] = { fg = cl, style = cnf.styles.loops or {} }, -- For keywords related to loops.
		-- @debug            ; keywords related to debugging
		["@label"] = { fg = cp.sapphire }, -- For labels: label: in C and :label: in Lua.
		["@include"] = { fg = cp.mauve, style = cnf.styles.keywords or {} }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@exception"] = { fg = cp.mauve, style = cnf.styles.keywords or {} }, -- For exception related keywords.

		-- Types

		["@type"] = { fg = cp.yellow, style = cnf.styles.types or {} }, -- For types.
		["@type.builtin"] = { fg = cp.yellow, style = cnf.styles.properties or "italic" }, -- For builtin types.
		-- @type.definition ; type definitions (e.g. `typedef` in C)
		-- @type.qualifier  ; type qualifiers (e.g. `const`)

		-- @storageclass    ; visibility/life-time/etc. modifiers (e.g. `static`)
		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
		["@field"] = { fg = cp.teal }, -- For fields.
		["@property"] = { fg = cp.teal, style = cnf.styles.properties or {} }, -- Same as TSField.

		-- Identifiers

		["@variable"] = { fg = cp.text, style = cnf.styles.variables or {} }, -- Any variable name that does not have another highlighcp.
		["@variable.builtin"] = { fg = cp.red }, -- Variable names that are defined by the languages, like this or self.

		["@constant"] = { fg = cp.peach }, -- For constants
		["@constant.builtin"] = { fg = cp.peach, style = cnf.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { fg = cp.mauve }, -- For constants that are defined by macros: NULL in cp.

		["@namespace"] = { fg = cp.blue, style = { "italic" } }, -- For identifiers referring to modules and namespaces.
		["@symbol"] = { fg = cp.flamingo },

		-- Text

		["@text"] = { fg = cp.text }, -- For strings considerated text in a markup language.
		["@text.strong"] = { fg = cp.maroon, style = { "bold" } }, -- italic
		["@text.emphasis"] = { fg = cp.maroon, style = { "italic" } }, -- bold
		-- @text.underline        ; underlined text
		-- @text.strike           ; strikethrough text
		["@text.title"] = { fg = cp.blue, style = { "bold" } }, -- titles like: # Example
		["@text.literal"] = { fg = cp.teal, style = { "italic" } }, -- used for inline code in markdown and for doc in python (""")
		["@text.uri"] = { fg = cp.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
		-- @text.math             ; math environments (e.g. `$ ... $` in LaTeX)
		-- @text.environment      ; text environments of markup languages
		-- @text.environment.name ; text indicating the type of an environment
		["@text.reference"] = { fg = cp.lavender, style = { "bold" } }, -- references

		["@text.todo"] = { bg = cp.yellow }, -- todo notes
		["@text.note"] = { fg = cp.base, bg = cp.blue },
		["@text.warning"] = { fg = cp.base, bg = cp.yellow },
		["@text.danger"] = { fg = cp.base, bg = cp.red },

		-- @text.diff.add         ; added text (for diff files)
		-- @text.diff.delete      ; deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = cp.mauve }, -- Tags like html tag names.
		["@tag.attribute"] = { fg = cp.teal, style = { "italic" } }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = cp.sky }, -- Tag delimiter like < > /

		-- toml
		["@property.toml"] = { fg = cp.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = cp.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@field.lua"] = { fg = cp.lavender },
		["@constructor.lua"] = { fg = cp.flamingo }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

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
		["@symbol.ruby"] = { fg = cp.flamingo },
	}
end

return M
