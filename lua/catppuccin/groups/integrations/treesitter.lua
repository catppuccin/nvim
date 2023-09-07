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

	return { -- Reference: https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

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
		["@string.regex"] = { fg = C.peach, style = O.styles.strings or {} }, -- For regexes.
		["@string.escape"] = { fg = C.pink, style = O.styles.strings or {} }, -- For escape characters within a string.
		["@string.special"] = { link = "Special" }, -- other special strings (e.g. dates)

		["@character"] = { link = "Character" }, -- character literals
		["@character.special"] = { link = "SpecialChar" }, -- special characters (e.g. wildcards)

		["@boolean"] = { link = "Boolean" }, -- For booleans.
		["@number"] = { link = "Number" }, -- For all numbers
		["@float"] = { link = "Float" }, -- For floats.

		-- Functions
		["@function"] = { link = "Function" }, -- For function (calls and definitions).
		["@function.builtin"] = { fg = C.peach, style = O.styles.functions or {} }, -- For builtin functions: table.insert in Lua.
		["@function.call"] = { link = "Function" }, -- function calls
		["@function.macro"] = { fg = C.teal, style = O.styles.functions or {} }, -- For macro defined functions (calls and definitions): each macro_rules in Rust.
		["@method"] = { link = "Function" }, -- For method definitions.
		["@method.call"] = { link = "Function" }, -- For method calls.

		["@constructor"] = { fg = C.sapphire }, -- For constructor calls and definitions: = { } in Lua, and Java constructors.
		["@parameter"] = { fg = C.maroon, style = O.styles.variables or {} }, -- For parameters of a function.

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

		["@constant"] = { link = "Constant" }, -- For constants
		["@constant.builtin"] = { fg = C.peach, style = O.styles.keywords or {} }, -- For constant that are built in the language: nil in Lua.
		["@constant.macro"] = { link = "Macro" }, -- For constants that are defined by macros: NULL in C.

		["@namespace"] = { fg = C.lavender, style = { "italic" } }, -- For identifiers referring to modules and namespaces.
		["@symbol"] = { fg = C.flamingo },

		-- Text
		["@text"] = { fg = C.text }, -- For strings considerated text in a markup language.
		["@text.strong"] = { fg = C.maroon, style = { "bold" } }, -- bold
		["@text.emphasis"] = { fg = C.maroon, style = { "italic" } }, -- italic
		["@text.underline"] = { link = "Underline" }, -- underlined text
		["@text.strike"] = { fg = C.text, style = { "strikethrough" } }, -- strikethrough text
		["@text.title"] = { fg = C.blue, style = { "bold" } }, -- titles like: # Example
		["@text.literal"] = { fg = C.teal }, -- used for inline code in markdown and for doc in python (""")
		["@text.uri"] = { fg = C.rosewater, style = { "italic", "underline" } }, -- urls, links and emails
		["@text.math"] = { fg = C.blue }, -- math environments (e.g. `$ ... $` in LaTeX)
		["@text.environment"] = { fg = C.pink }, -- text environments of markup languages
		["@text.environment.name"] = { fg = C.blue }, -- text indicating the type of an environment
		["@text.reference"] = { link = "Tag" }, -- text references, footnotes, citations, etc.

		["@text.todo"] = { fg = C.base, bg = C.yellow }, -- todo notes
		["@text.todo.checked"] = { fg = C.green }, -- todo notes
		["@text.todo.unchecked"] = { fg = C.overlay1 }, -- todo notes
		["@text.note"] = { fg = C.base, bg = C.blue },
		["@text.warning"] = { fg = C.base, bg = C.yellow },
		["@text.danger"] = { fg = C.base, bg = C.red },

		["@text.diff.add"] = { link = "diffAdded" }, -- added text (for diff files)
		["@text.diff.delete"] = { link = "diffRemoved" }, -- deleted text (for diff files)

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
		["@symbol.ruby"] = { fg = C.flamingo },

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
end

return M
