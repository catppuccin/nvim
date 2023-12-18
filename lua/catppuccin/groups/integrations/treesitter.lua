local M = {}

function M.get()
	if vim.treesitter.highlighter.hl_map then
		vim.notify_once(
			[[Catppuccin (info):
nvim-treesitter integration requires neovim 0.8
If you want to stay on nvim 0.7, either disable the integration or pin catppuccin tag to v0.2.4 and nvim-treesitter commit to 4cccb6f494eb255b32a290d37c35ca12584c74d0.
]],
			vim.log.levels.INFO
		)
		return {}
	end

	local colors = { -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

		-- Misc
		["@comment"] = { link = "Comment" },
		["@error"] = { link = "Error" },
		["@preproc"] = { link = "PreProc" }, -- various preprocessor directives & shebangs
		["@define"] = { link = "Define" }, -- preprocessor definition directives
		["@operator"] = { link = "Operator" }, -- For any operator: +, but also -> and * in C.

		-- Punctuation
		["@punctuation.delimiter"] = { link = "Delimiter" }, -- For delimiters (e.g. `;` / `.` / `,`).
		["@punctuation.bracket"] = { fg = C.overlay2 }, -- For brackets and parenthesis.
		["@punctuation.special"] = { link = "Special" }, -- For special punctuation that does not fall in the categories before (e.g. `{}` in string interpolation).

		-- Literals
		["@string"] = { link = "String" }, -- For strings.
		["@string.regexp"] = { fg = C.peach, style = O.styles.strings or {} }, -- For regexes.
		["@string.escape"] = { fg = C.pink, style = O.styles.strings or {} }, -- For escape characters within a string.
		["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)
		["@string.special.symbol"] = { fg = C.flamingo },

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" }, -- For booleans.

		["@number"] = { link = "Number" }, -- For all numbers
		["@number.float"] = { link = "Float" }, -- For floats.

		-- Functions
		["@function"] = { link = "Function" }, -- For function (calls and definitions).
		["@function.builtin"] = { fg = C.peach, style = O.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "Function" }, -- function calls
		["@function.macro"] = { fg = C.teal, style = O.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.
		["@method"] = { link = "Function" }, -- For method definitions.
		["@method.call"] = { link = "Function" }, -- For method calls.

		["@constructor"] = { fg = C.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.

		-- Keywords
		["@keyword"] = { link = "Keyword" }, -- For keywords that don't fall in previous categories.
		["@keyword.function"] = { fg = C.mauve, style = O.styles.keywords or {} }, -- For keywords used to define a function.
		["@keyword.operator"] = { fg = C.mauve, style = O.styles.operators or {} }, -- For new keyword operator
		["@keyword.return"] = { fg = C.mauve, style = O.styles.keywords or {} },
		-- JS & derivative
		["@keyword.export"] = { fg = C.sky, style = O.styles.keywords },

		["@conditional"] = { link = "Conditional" }, -- For keywords related to conditionnals.
		["@repeat"] = { link = "Repeat" }, -- For keywords related to loops.
		-- @debug            ; keywords related to debugging
		["@label"] = { link = "Label" }, -- For labels: label: in C and :label: in Lua.
		["@include"] = { link = "Include" }, -- For includes: #include in C, use or extern crate in Rust, or require in Lua.
		["@exception"] = { link = "Exception" }, -- For exception related keywords.

		-- Types
		["@type"] = { link = "Type" }, -- For types.
		["@type.builtin"] = { fg = C.yellow, style = O.styles.properties or { "italic" } }, -- For builtin types.
		["@type.definition"] = { link = "Type" }, -- type definitions (e.g. `typedef` in C)
		["@type.qualifier"] = { link = "Keyword" }, -- type qualifiers (e.g. `const`)

		["@storageclass"] = { link = "StorageClass" }, -- visibility/life-time/etc. modifiers (e.g. `static`)
		["@attribute"] = { link = "Constant" }, -- attribute annotations (e.g. Python decorators)
		["@field"] = { fg = C.lavender }, -- For fields.
		["@property"] = { fg = C.lavender, style = O.styles.properties or {} }, -- Same as TSField.

		-- Identifiers

		["@variable"] = { fg = C.text, style = O.styles.variables or {} }, -- Any variable name that does not have another highlight.
		["@variable.builtin"] = { fg = C.red, style = O.styles.properties or {} }, -- Variable names that are defined by the languages, like this or self.
		["@variable.parameter"] = { fg = C.maroon, style = O.styles.variables or {} }, -- For parameters of a function.

		["@constant"] = { link = "Constant" }, -- For constants
		["@constant.builtin"] = { fg = C.peach, style = O.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

		["@module"] = { fg = C.lavender, style = { "italic" } }, -- For identifiers referring to modules and namespaces.

		-- Text
		["@markup"] = { fg = C.text }, -- For strings considerated text in a markup language.
		["@markup.strong"] = { fg = C.maroon, style = { "bold" } }, -- bold
		["@markup.emphasis"] = { fg = C.maroon, style = { "italic" } }, -- italic
		["@markup.underline"] = { link = "Underline" }, -- underlined text
		["@markup.strike"] = { fg = C.text, style = { "strikethrough" } }, -- strikethrough text
		["@markup.headline"] = { fg = C.blue, style = { "bold" } }, -- titles like: # Example
		["@markup.raw"] = { fg = C.teal }, -- used for inline code in markdown and for doc in python (""")
		["@markup.link.uri"] = { fg = C.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
		["@markup.math"] = { fg = C.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@markup.environment"] = { fg = C.pink }, -- text environments of markup languages
		["@markup.environment.name"] = { fg = C.blue }, -- text indicating the type of an environment
		["@markup.reference"] = { link = "Tag" }, -- text references, footnotes, citations, etc.

		["@markup.todo"] = { fg = C.base, bg = C.yellow }, -- todo notes
		["@markup.todo.checked"] = { fg = C.green }, -- todo notes
		["@markup.todo.unchecked"] = { fg = C.overlay1 }, -- todo notes
		["@markup.note"] = { fg = C.base, bg = C.blue },
		["@markup.warning"] = { fg = C.base, bg = C.yellow },
		["@markup.danger"] = { fg = C.base, bg = C.red },

		["@markup.diff.add"] = { link = "diffAdded" }, -- added text (for diff files)
		["@markup.diff.delete"] = { link = "diffRemoved" }, -- deleted text (for diff files)

		-- Tags
		["@tag"] = { fg = C.mauve }, -- Tags like html tag names.
		["@tag.attribute"] = { fg = C.teal, style = { "italic" } }, -- Tags like html tag names.
		["@tag.delimiter"] = { fg = C.sky }, -- Tag delimiter like < > /

		-- Language specific:
		-- bash
		["@function.builtin.bash"] = { fg = C.red, style = { "italic" } },

		-- markdown
		["@text.title.2.markdown"] = { link = "rainbow2" },
		["@text.title.1.markdown"] = { link = "rainbow1" },
		["@text.title.3.markdown"] = { link = "rainbow3" },
		["@text.title.4.markdown"] = { link = "rainbow4" },
		["@text.title.5.markdown"] = { link = "rainbow5" },
		["@text.title.6.markdown"] = { link = "rainbow6" },

		-- java
		["@constant.java"] = { fg = C.teal },

		-- css
		["@property.css"] = { fg = C.lavender },
		["@property.id.css"] = { fg = C.blue },
		["@property.class.css"] = { fg = C.yellow },
		["@type.css"] = { fg = C.lavender },
		["@type.tag.css"] = { fg = C.mauve },
		["@string.plain.css"] = { fg = C.peach },
		["@number.css"] = { fg = C.peach },

		-- toml
		["@property.toml"] = { fg = C.blue }, -- Differentiates between string and properties

		-- json
		["@label.json"] = { fg = C.blue }, -- For labels: label: in C and :label: in Lua.

		-- lua
		["@constructor.lua"] = { fg = C.flamingo }, -- For constructor calls and definitions: = { } in Lua.

		-- typescript
		["@property.typescript"] = { fg = C.lavender, style = O.styles.properties or {} },
		["@constructor.typescript"] = { fg = C.lavender },

		-- TSX (Typescript React)
		["@constructor.tsx"] = { fg = C.lavender },
		["@tag.attribute.tsx"] = { fg = C.mauve, style = { "italic" } },

		-- yaml
		["@field.yaml"] = { fg = C.blue }, -- For fields.

		-- Ruby
		["@string.special.symbol.ruby"] = { fg = C.flamingo },

		-- PHP
		["@method.php"] = { link = "Function" },
		["@method.call.php"] = { link = "Function" },

		-- C/CPP
		["@type.builtin.c"] = { fg = C.yellow, style = {} },
		["@property.cpp"] = { fg = C.text },
		["@type.builtin.cpp"] = { fg = C.yellow, style = {} },

		-- Misc
		gitcommitSummary = { fg = C.rosewater, style = { "italic" } },
		zshKSHFunction = { link = "Function" },
	}

	-- Legacy highlights
	colors["@parameter"] = colors["@variable.parameter"]
	colors["@namespace"] = colors["@module"]
	colors["@float"] = colors["number.float"]
	colors["@symbol"] = colors["@string.special.symbol"]
	colors["@string.regex"] = colors["@string.regexp"]

	colors["@text"] = colors["@markup"]
	colors["@text.strong"] = colors["@markup.strong"]
	colors["@text.emphasis"] = colors["@markup.emphasis"]
	colors["@text.underline"] = colors["@markup.underline"]
	colors["@text.strike"] = colors["@markup.strike"]
	colors["@text.title"] = colors["@markup.headline"]
	colors["@text.literal"] = colors["@markup.raw"]
	colors["@text.uri"] = colors["@markup.link.uri"]
	colors["@text.math"] = colors["@markup.math"]
	colors["@text.environment"] = colors["@markup.environment"]
	colors["@text.environment.name"] = colors["@markup.environment.name"]
	colors["@text.reference"] = colors["@markup.reference"]

	colors["@text.todo"] = colors["@markup.todo"]
	colors["@text.todo.checked"] = colors["@markup.todo.checked"]
	colors["@text.todo.unchecked"] = colors["@markup.todo.unchecked"]
	colors["@text.note"] = colors["@markup.note"]
	colors["@text.warning"] = colors["@markup.warning"]
	colors["@text.danger"] = colors["@markup.danger"]

	colors["@text.diff.add"] = colors["@markup.diff.add"]
	colors["@text.diff.delete"] = colors["@markup.diff.delete"]

	colors["@symbol.ruby"] = colors["@string.special.symbol.ruby"]

	return colors
end

return M
