local configs = {
	without_setup = {},
	transparent_background = {
		transparent = true,
	},
	cterm = {
		custom_highlight = function(C)
			return {
				SpellBad = { cterm = { underdashed = true } },
			}
		end,
	},

	-- User configs
	nullchilly = {
		{
			term_colors = true,
			transparent_background = false,
			styles = {
				comments = {},
				conditionals = {},
				loops = {},
				functions = {},
				keywords = {},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
			},
			color_overrides = {
				mocha = {
					base = "#000000",
					mantle = "#000000",
					crust = "#000000",
				},
			},
			integrations = {
				dropbar = {
					enabled = true,
					color_mode = true,
				},
			},
		},
	},
	nekowinston = {
		transparent_background = not vim.g.neovide,
		dim_inactive = {
			enable = true,
			shade = "dark",
			percentage = 0.15,
		},
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		term_colors = true,
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			cmp = true,
			lsp_trouble = true,
			nvimtree = true,
			which_key = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = true,
			},
			navic = {
				enabled = true,
				custom_bg = "NONE",
			},
			gitsigns = true,
			lightspeed = true,
			markdown = true,
			neogit = true,
			symbols_outline = true,
			ts_rainbow = true,
			vimwiki = true,
			notify = true,
		},
		highlight_overrides = {
			all = function(colors)
				return {
					-- borders
					FloatBorder = { fg = colors.overlay0 },
					LspInfoBorder = { link = "FloatBorder" },
					NvimTreeWinSeparator = { link = "FloatBorder" },
					WhichKeyBorder = { link = "FloatBorder" },
					-- telescope
					TelescopeBorder = { link = "FloatBorder" },
					TelescopeTitle = { fg = colors.text },
					TelescopeSelection = { link = "Selection" },
					TelescopeSelectionCaret = { link = "Selection" },
					-- pmenu
					PmenuSel = { link = "Selection" },
					-- bufferline
					BufferLineTabSeparator = { link = "FloatBorder" },
					BufferLineSeparator = { link = "FloatBorder" },
					BufferLineOffsetSeparator = { link = "FloatBorder" },
					--
					FidgetTitle = { fg = colors.subtext1 },
					FidgetTask = { fg = colors.subtext0 },

					NotifyBackground = { bg = colors.base },
					NotifyINFOBorder = { link = "NotifyInfoTitle" },
					NotifyINFOIcon = { link = "NotifyINFOTitle" },
					NotifyINFOTitle = { fg = colors.pink },
				}
			end,
		},
	},
	backwardspy = {
		flavour = os.getenv("appearance") == "light" and "latte" or "mocha",
		integrations = {
			gitsigns = true,
			indent_blankline = { enabled = true },
			leap = true,
			mini = true,
			neotree = true,
			noice = true,
			cmp = true,
			notify = true,
			treesitter = true,
			telescope = true,
			which_key = true,
		},
		color_overrides = {
			mocha = {
				base = "#171717",
				mantle = "#101010",
				crust = "#0C0C0C",
			},
		},
		custom_highlights = function(colors)
			local utils = require("catppuccin.utils.colors")
			local tint = function(color)
				return utils.blend(color, colors.base, 0.2)
			end

			return {
				--
				-- notify
				--
				NotifyBackground = { bg = colors.mantle },
				--
				-- noice
				--
				NoiceCmdlinePopup = { bg = colors.mantle },
				NoiceCmdlinePopupBorder = { bg = colors.mantle, fg = colors.mantle },
				--
				-- telescope
				--
				TelescopeMatching = { fg = colors.yellow },
				TelescopeSelection = { fg = colors.text, bg = colors.surface0 },
				-- results
				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
				TelescopeResultsTitle = { fg = colors.mantle },
				-- prompt
				TelescopePromptNormal = { bg = colors.surface0 },
				TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
				TelescopePromptTitle = { bg = colors.teal, fg = colors.mantle },
				TelescopePromptPrefix = { bg = colors.surface0 },
				-- preview
				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePreviewTitle = { bg = colors.pink, fg = colors.mantle },
				--
				-- neotree
				--
				NeoTreeNormal = { bg = colors.mantle },
				NeoTreeNormalNC = { bg = colors.mantle },
				--
				-- cmp
				--
				PmenuSel = { bg = colors.mantle, fg = "NONE" },
				Pmenu = { fg = colors.text, bg = colors.crust },

				CmpItemAbbrDeprecated = { fg = colors.overlay0, bg = "NONE", style = { "strikethrough" } },
				CmpItemAbbrMatch = { fg = colors.yellow, bg = "NONE", style = { "bold" } },
				CmpItemAbbrMatchFuzzy = { fg = colors.yellow, bg = "NONE", style = { "bold" } },
				CmpItemMenu = { fg = colors.lavender, bg = "NONE", style = { "italic" } },

				CmpItemKindField = { fg = colors.rosewater, bg = tint(colors.rosewater) },
				CmpItemKindProperty = { fg = colors.rosewater, bg = tint(colors.rosewater) },
				CmpItemKindEvent = { fg = colors.rosewater, bg = tint(colors.rosewater) },

				CmpItemKindText = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindModule = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindVariable = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindFile = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindUnit = { fg = colors.text, bg = tint(colors.text) },
				CmpItemKindValue = { fg = colors.text, bg = tint(colors.text) },

				CmpItemKindEnum = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindReference = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindClass = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindFolder = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindEnumMember = { fg = colors.yellow, bg = tint(colors.yellow) },
				CmpItemKindInterface = { fg = colors.yellow, bg = tint(colors.yellow) },

				CmpItemKindKeyword = { fg = colors.mauve, bg = tint(colors.mauve) },

				CmpItemKindConstant = { fg = colors.peach, bg = tint(colors.peach) },

				CmpItemKindConstructor = { fg = colors.lavender, bg = tint(colors.lavender) },

				CmpItemKindFunction = { fg = colors.blue, bg = tint(colors.blue) },
				CmpItemKindMethod = { fg = colors.blue, bg = tint(colors.blue) },

				CmpItemKindStruct = { fg = colors.teal, bg = tint(colors.teal) },
				CmpItemKindOperator = { fg = colors.teal, bg = tint(colors.teal) },

				CmpItemKindSnippet = { fg = colors.flamingo, bg = tint(colors.flamingo) },

				CmpItemKindColor = { fg = colors.pink, bg = tint(colors.pink) },
				CmpItemKindTypeParameter = { fg = colors.maroon, bg = tint(colors.maroon) },
			}
		end,
	},
	calops = {
		integrations = {
			telescope = true,
			neotree = {
				enabled = true,
				show_root = true,
				transparent_panel = false,
			},
			indent_blankline = {
				enabled = false,
				colored_indent_levels = false,
			},
			cmp = true,
			gitsigns = true,
			notify = true,
			mini = true,
			native_lsp = {
				inlay_hints = {
					background = false,
				},
			},
		},
		compile = {
			enabled = true,
		},
		custom_highlights = function()
			local palette = C
			local utils = U

			return {
				NormalFloat = { bg = palette.base },
				FloatBorder = { fg = palette.mauve },
				TermFloatBorder = { fg = palette.red },

				TelescopeBorder = { fg = palette.yellow },
				TelescopePromptBorder = { fg = palette.peach },
				TelescopePreviewBorder = { fg = palette.teal },
				TelescopeResultsBorder = { fg = palette.green },

				InclineNormalNC = { bg = palette.surface1, fg = palette.base, blend = 0 },
				InclineNormal = { bg = palette.overlay1, fg = palette.base, blend = 0 },

				TreesitterContext = { bg = palette.base, style = { "italic" }, blend = 0 },
				TreesitterContextSeparator = { fg = palette.surface1 },

				DiagnosticUnderlineError = { sp = palette.red, style = { "undercurl" } },
				DiagnosticUnderlineWarn = { sp = palette.yellow, style = { "undercurl" } },
				DiagnosticUnderlineInfo = { sp = palette.sky, style = { "undercurl" } },
				DiagnosticUnderlineHint = { sp = palette.teal, style = { "undercurl" } },

				DiagnosticLineError = { bg = utils.darken(palette.red, 0.095, palette.base) },
				DiagnosticLineWarn = { bg = utils.darken(palette.yellow, 0.095, palette.base) },
				DiagnosticLineInfo = { bg = utils.darken(palette.sky, 0.095, palette.base) },
				DiagnosticLineHint = { bg = utils.darken(palette.teal, 0.095, palette.base) },

				DiagnosticUnnecessary = { sp = palette.mauve, style = { "undercurl" } },

				IndentBlanklineContextChar = { fg = palette.mauve, style = { "nocombine" } },

				ModesInsert = { bg = palette.green },
				ModesVisual = { bg = palette.mauve },

				LspInlayHint = { fg = palette.surface1 },
				Comment = { fg = utils.darken(palette.lavender, 0.6) },

				IlluminatedWordText = { bg = palette.surface1, style = { "bold", "underdotted" } },
				IlluminatedWordWrite = { bg = palette.surface1, style = { "bold", "underdotted" } },
				IlluminatedWordRead = { bg = palette.surface1, style = { "bold", "underdotted" } },

				UfoVirtText = { fg = palette.base, bg = palette.teal, style = { "bold" } },
				UfoVirtTextPill = { fg = palette.teal },
				UfoFoldedBg = { bg = utils.darken(palette.teal, 0.3) },
				Folded = { bg = palette.base },

				CursorLineSign = { link = "CursorLine" },

				GitSignsAdd = { fg = palette.green, bg = "none" },
				GitSignsChange = { fg = palette.peach },
				GitSignsDelete = { fg = palette.red },
				DiffDeleteVirtLn = { fg = utils.darken(palette.red, 0.3) },

				CustomTabline = { fg = palette.base, bg = palette.surface1 },
				CustomTablineSel = { fg = palette.base, bg = palette.overlay1 },
				CustomTablineLogo = { fg = palette.base, bg = palette.mauve },
				CustomTablinePillIcon = { bg = palette.surface1 },
				CustomTablinePillIconSel = { bg = palette.surface2 },
				CustomTablineModifiedIcon = { fg = palette.peach },
				CustomTablineNumber = { style = { "bold" } },

				VirtColumn = { fg = palette.surface0 },

				CuicuiCharColumn1 = { fg = utils.darken(palette.surface0, 0.8) },
				CuicuiCharColumn2 = { fg = palette.surface0 },

				CopilotSuggestion = { fg = utils.darken(palette.peach, 0.8), style = { "italic" } },

				MultiCursor = { bg = palette.peach, fg = palette.base },
				VM_Mono = { bg = palette.peach, fg = palette.base },

				FlashLabel = { bg = palette.peach, fg = palette.base, style = { "bold" } },
				FlashMatch = { bg = palette.lavender, fg = palette.base },
				FlashBackdrop = { bg = nil, fg = palette.overlay0, style = { "nocombine" } },

				-- Syntax
				["@parameter"] = { fg = palette.text, style = { "nocombine" } },
				["@namespace"] = { fg = palette.pink, style = { "nocombine" } },
				["@number"] = { fg = palette.green },
				["@boolean"] = { fg = palette.green, style = { "bold" } },
				["@type.qualifier"] = { fg = palette.mauve, style = { "bold" } },
				["@function.macro"] = { fg = palette.blue },
				["@constant.builtin"] = { fg = palette.green },
				["@property"] = { fg = utils.brighten(palette.yellow, 0.7) },
				["@field"] = { fg = utils.brighten(palette.yellow, 0.7) },

				["@lsp.type.struct"] = { fg = palette.yellow },
				["@lsp.type.property"] = { fg = utils.brighten(palette.yellow, 0.7) },
				["@lsp.type.interface"] = { fg = palette.peach },
				["@lsp.type.builtinType"] = { fg = palette.yellow, style = { "bold" } },
				["@lsp.type.enum"] = { fg = palette.teal },
				["@lsp.type.enumMember"] = { fg = palette.green },
				["@lsp.type.variable"] = { fg = palette.text },
				["@lsp.type.parameter"] = { fg = palette.text },
				["@lsp.type.namespace"] = { fg = palette.pink },
				["@lsp.type.number"] = { fg = palette.green },
				["@lsp.type.boolean"] = { fg = palette.green, style = { "bold" } },
				["@lsp.type.keyword"] = { fg = palette.mauve },
				["@lsp.type.decorator"] = { fg = palette.blue },
				["@lsp.type.unresolvedReference"] = { sp = palette.surface2, style = { "undercurl" } },

				["@lsp.mod.reference"] = { style = { "italic" } },
				["@lsp.mod.mutable"] = { style = { "bold" } },
				["@lsp.mod.trait"] = { fg = palette.sapphire },
				["@lsp.typemod.variable.static"] = { style = { "underdashed" } },
				["@lsp.typemod.method.defaultLibrary"] = {},
				["@lsp.typemod.variable.callable"] = { fg = palette.teal },
			}
		end,
	},
	mrtnvgr = {
		Pmenu = { bg = "" },
		PmenuSbar = { bg = "" },
		NormalFloat = { bg = "" },
	},
	geril2207 = {
		flavour = "macchiato",
		transparent_background = true,
		highlight_overrides = {
			all = function(colors)
				return {
					DiagnosticSignWarn = { fg = colors.yellow, bg = colors.none },
					DiagnosticSignHint = { fg = colors.teal, bg = colors.none },
					DiagnosticSignInfo = { fg = colors.peach, bg = colors.none },
					DiagnosticSignError = { fg = colors.red, bg = colors.none },
					DiagnosticVirtualTextWarn = { fg = colors.yellow, bg = colors.none },
					DiagnosticVirtualTextHint = { fg = colors.teal, bg = colors.none },
					DiagnosticVirtualTextInfo = { fg = colors.peach, bg = colors.none },
					DiagnosticVirtualTextError = { fg = colors.red, bg = colors.none },
				}
			end,
		},

		term_colors = false,
		no_italic = true, -- Force no italic
		no_bold = true, -- Force no bold
		styles = {
			comments = {},
			conditionals = {},
			loops = {},
			functions = {},
			keywords = {},
			strings = {},
			variables = {},
			numbers = {},
			booleans = {},
			properties = {},
			types = {},
			operators = {},
		},
	},
	emxxjnm = {
		flavour = "mocha",
		transparent_background = true,
		styles = {
			keywords = { "bold" },
			functions = { "italic" },
		},
		integrations = {
			leap = true,
			mason = true,
			neotree = true,
			neotest = true,
			which_key = true,
			nvimtree = false,
			dashboard = false,
			ts_rainbow = false,
			dap = { enabled = true, enable_ui = true },
		},
		custom_highlights = function(colors)
			local default = {
				-- custom
				PanelHeading = {
					fg = colors.lavender,
					bg = true and "NONE" or colors.crust,
					style = { "bold", "italic" },
				},

				-- lazy.nvim
				LazyH1 = {
					bg = true and "NONE" or colors.peach,
					fg = true and colors.lavender or colors.base,
					style = { "bold" },
				},
				LazyButton = {
					bg = "NONE",
					fg = true and colors.overlay0 or colors.subtext0,
				},
				LazyButtonActive = {
					bg = true and "NONE" or colors.overlay1,
					fg = true and colors.lavender or colors.base,
					style = { " bold" },
				},
				LazySpecial = { fg = colors.sapphire },

				CmpItemMenu = { fg = colors.subtext1 },
				MiniIndentscopeSymbol = { fg = colors.overlay0 },

				FloatBorder = {
					fg = true and colors.overlay1 or colors.mantle,
					bg = true and "NONE" or colors.mantle,
				},

				FloatTitle = {
					fg = colors.subtext0,
					bg = true and "NONE" or colors.mantle,
				},
			}

			local telescope = {
				TelescopePromptNormal = { bg = colors.crust },
				TelescopePromptTitle = { fg = colors.subtext0 },
				TelescopePromptBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePromptPrefix = { bg = colors.crust, fg = colors.flamingo },

				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopeResultsTitle = { fg = colors.subtext0 },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },

				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePreviewTitle = { fg = colors.subtext0 },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
			}

			if not true then
				return vim.tbl_extend("keep", default, telescope)
			end

			return default
		end,
	},
	Rishabh672003 = {
		flavour = "mocha", -- latte, frappe, macchiato, mocha
		background = {
			-- :h background
			light = "latte",
			dark = "mocha",
		},
		transparent_background = false,
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false, -- Force no italic
		no_bold = false, -- Force no bold
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
		},
		color_overrides = {},
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			telescope = true,
			notify = true,
			mini = false,
			-- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
		},
		custom_highlights = {
			WhichKeyGroup = { fg = "#FAB387" },
			WhichKeySeparator = { fg = "#cdd6f4" },
		},
	},
	LordMZTE = {
		flavour = "mocha",
		integrations = {
			aerial = true,
			harpoon = true,
			gitsigns = true,
			neogit = true,
			noice = true,
			cmp = true,
			dap = { enabled = true, enable_ui = true },
			native_lsp = { enabled = true },
			notify = true,
			nvimtree = true,
			treesitter = true,
			treesitter_context = true,
			ts_rainbow2 = true,
			telescope = true,
		},
	},
	Stonks3141 = {
		flavour = "macchiato",
		integrations = {
			leap = true,
			neogit = true,
			notify = true,
			neotest = true,
		},
	},
	aimestereo = {
		telescope = true,
		harpoon = true,
		mason = true,
		neotest = true,
	},
	haunt98 = {
		flavour = "mocha",
		integrations = {
			mini = true,
		},
	},
	vollowx = {
		transparent_background = false,
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
			},
			aerial = false,
			cmp = true,
			dap = { enabled = true, enable_ui = true },
			fidget = true,
			gitsigns = true,
			hop = false,
			illuminate = true,
			indent_blankline = { enabled = true, colored_indent_levels = false },
			lsp_trouble = true,
			markdown = true,
			mason = true,
			notify = true,
			nvimtree = true,
			semantic_tokens = true,
			symbols_outline = false,
			telescope = { enabled = true, style = "nvchad" },
			treesitter_context = false,
			ts_rainbow = true,
			which_key = false,
		},
		highlight_overrides = {
			---@param cp palette
			all = function(cp)
				return {
					-- For indent-blankline
					IndentBlanklineChar = { fg = cp.surface0 },
					IndentBlanklineContextChar = { fg = cp.surface2, style = { "bold" } },

					-- For nvim-cmp
					Pmenu = {
						fg = cp.overlay2,
						bg = true and cp.none or cp.base,
					},
					PmenuBorder = {
						fg = cp.surface1,
						bg = true and cp.none or cp.base,
					},
					PmenuSel = { bg = cp.green, fg = cp.base },
					CmpItemAbbr = { fg = cp.overlay2 },
					CmpItemAbbrMatch = { fg = cp.blue, style = { "bold" } },
					CmpDoc = { link = "NormalFloat" },
					CmpDocBorder = {
						fg = true and cp.surface1 or cp.mantle,
						bg = true and cp.none or cp.mantle,
					},

					-- For nvim-tree
					NvimTreeIndentMarker = { fg = cp.surface0 },

					-- For nvim-cokeline
					TabLineFill = { link = "StatusLine" },

					-- For status line
					StatusLineHeader = { fg = cp.lavender, bg = cp.crust },
					StatusLineHeaderModified = { fg = cp.rosewater, bg = cp.crust },
					StatusLineStrong = { fg = cp.text, bg = cp.mantle, style = { "bold" } },
					StatusLineWeak = { fg = cp.subtext0, bg = cp.mantle },
					StatusLineFaded = { fg = cp.subtext0, bg = cp.mantle },
					StatusLineGitAdded = { fg = cp.green, bg = cp.mantle },
					StatusLineGitChanged = { fg = cp.blue, bg = cp.mantle },
					StatusLineGitRemoved = { fg = cp.red, bg = cp.mantle },
					StatusLineDiagnosticError = { fg = cp.red, bg = cp.mantle },
					StatusLineDiagnosticWarn = { fg = cp.yellow, bg = cp.mantle },
					StatusLineDiagnosticInfo = { fg = cp.blue, bg = cp.mantle },
					StatusLineDiagnosticHint = { fg = cp.rosewater, bg = cp.mantle },
					StatusLineDiagnosticOK = { fg = cp.green, bg = cp.mantle },
				}
			end,
		},
	},
	axieax = {
		flavour = "mocha",
		compile = { enabled = true },
		dim_inactive = { enabled = false },
		transparent_background = true,
		integrations = {
			aerial = true,
			barbar = true,
			-- barbecue = false,
			beacon = true,
			bufferline = false,
			cmp = true,
			coc_nvim = false,
			dap = {
				enabled = true,
				enable_ui = true,
			},
			dashboard = false, -- startify?
			dropbar = {
				enabled = true,
				color_mode = false,
			},
			feline = false,
			fern = false,
			fidget = false, -- prefer default colours
			gitgutter = false,
			gitsigns = true,
			harpoon = false,
			headlines = false,
			hop = false,
			illuminate = false,
			indent_blankline = {
				enabled = true,
				-- colored_indent_levels = true,
			},
			leap = true,
			lightspeed = false,
			lsp_saga = false,
			lsp_trouble = false,
			markdown = true,
			mason = true,
			mini = false,
			native_lsp = {
				enabled = true,
				underlines = {
					-- errors = { "undercurl" },
					-- hints = { "undercurl" },
					-- warnings = { "undercurl" },
					-- information = { "undercurl" },
				},
			},
			navic = {
				enabled = true,
				-- cp.base
				custom_bg = "#1E1E2E",
			},
			neogit = true,
			neotest = true,
			neotree = {
				enabled = true,
				show_root = false,
				transparent_panel = true,
			},
			noice = false,
			notify = true,
			nvimtree = false,
			octo = false,
			overseer = false,
			pounce = false,
			rainbow_delimiters = false,
			sandwich = false,
			semantic_tokens = true,
			symbols_outline = false,
			telekasten = false,
			telescope = { enabled = true },
			treesitter = true,
			treesitter_context = false,
			ts_rainbow = true,
			ts_rainbow2 = false,
			vim_sneak = false,
			vimwiki = true,
			which_key = true,
		},
		custom_highlights = function(colours)
			local float_bg = colours.base
			local remaps = {
				NormalFloat = { bg = float_bg }, -- NOTE: catppuccin needs a bg colour
				ColorColumn = { link = "CursorLine" },
				SpellBad = { fg = colours.red, style = { "italic", "undercurl" } },
				SpellCap = { fg = colours.red, style = { "italic", "undercurl" } },
				SpellLocal = { fg = colours.red, style = { "italic", "undercurl" } },
				SpellRare = { fg = colours.red, style = { "italic", "undercurl" } },
				CmpItemMenu = { fg = colours.surface2 },
				Pmenu = { bg = colours.surface0 },
				WinBar = { bg = float_bg },
				WinBarNC = { bg = float_bg },
				WinBarModified = { fg = colours.yellow, bg = float_bg }, -- same as BufferCurrentMod
				NavicIconsFileNC = { fg = colours.flamingo, bg = float_bg },
				["@parameter"] = { fg = colours.flamingo },
				-- VertSplit = { fg = cp.overlay1 },
				-- SpellBad = { fg = cp.maroon },
				-- SpellCap = { fg = cp.peach },
				-- SpellLocal = { fg = cp.lavender },
				-- SpellRare = { fg = cp.teal },
			}

			-- NvChad Telescope theme (adapted from https://github.com/olimorris/onedarkpro.nvim/issues/31#issue-1160545258)
			if true then
				local telescope_results = colours.base
				-- local telescope_prompt = cp.surface0
				local telescope_prompt = "#302D41" -- black3 from original palette
				local fg = colours.surface2
				local purple = colours.green -- or mauve
				remaps = vim.tbl_extend("force", remaps, {
					TelescopeBorder = { fg = telescope_results, bg = telescope_results },
					TelescopePromptBorder = { fg = telescope_prompt, bg = telescope_prompt },
					TelescopePromptCounter = { fg = fg },
					TelescopePromptNormal = { fg = fg, bg = telescope_prompt },
					TelescopePromptPrefix = { fg = purple, bg = telescope_prompt },
					TelescopePromptTitle = { fg = telescope_prompt, bg = purple },
					TelescopePreviewTitle = { fg = telescope_prompt, bg = purple },
					TelescopeResultsTitle = { fg = telescope_results, bg = telescope_results },
					TelescopeMatching = { fg = purple },
					TelescopeNormal = { bg = telescope_results },
					TelescopeSelection = { bg = telescope_prompt },
				})
			end
			return remaps
		end,
	},
	["b-ggs"] = {
		integrations = {
			ts_rainbow = true,
		},
		color_overrides = {
			mocha = {
				text = "#F4CDE9",
				subtext1 = "#DEBAD4",
				subtext0 = "#C8A6BE",
				overlay2 = "#B293A8",
				overlay1 = "#9C7F92",
				overlay0 = "#866C7D",
				surface2 = "#705867",
				surface1 = "#5A4551",
				surface0 = "#44313B",

				base = "#352939",
				mantle = "#211924",
				crust = "#1a1016",
			},
		},
	},
	johnallen3d = {
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
			},
			coc_nvim = false,
			lsp_trouble = false,
			cmp = true,
			lsp_saga = true,
			gitgutter = false,
			gitsigns = false,
			telescope = true,
			nvimtree = false,
			dap = {
				enabled = false,
				enable_ui = false,
			},
			neotree = {
				enabled = false,
				show_root = true,
				transparent_panel = false,
			},
			which_key = false,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = false,
			},
			dashboard = false,
			neogit = false,
			vim_sneak = false,
			fern = false,
			barbar = false,
			markdown = true,
			lightspeed = false,
			leap = false,
			ts_rainbow = false,
			hop = false,
			notify = true,
			telekasten = false,
			symbols_outline = false,
			mini = false,
			aerial = false,
			vimwiki = false,
			beacon = false,
			overseer = false,
			fidget = true,
			treesitter_context = false,
		},

		custom_highlights = function(C)
			return {
				CmpItemKindSnippet = { fg = C.base, bg = C.mauve },
				CmpItemKindKeyword = { fg = C.base, bg = C.red },
				CmpItemKindText = { fg = C.base, bg = C.teal },
				CmpItemKindMethod = { fg = C.base, bg = C.blue },
				CmpItemKindConstructor = { fg = C.base, bg = C.blue },
				CmpItemKindFunction = { fg = C.base, bg = C.blue },
				CmpItemKindFolder = { fg = C.base, bg = C.blue },
				CmpItemKindModule = { fg = C.base, bg = C.blue },
				CmpItemKindConstant = { fg = C.base, bg = C.peach },
				CmpItemKindField = { fg = C.base, bg = C.green },
				CmpItemKindProperty = { fg = C.base, bg = C.green },
				CmpItemKindEnum = { fg = C.base, bg = C.green },
				CmpItemKindUnit = { fg = C.base, bg = C.green },
				CmpItemKindClass = { fg = C.base, bg = C.yellow },
				CmpItemKindVariable = { fg = C.base, bg = C.flamingo },
				CmpItemKindFile = { fg = C.base, bg = C.blue },
				CmpItemKindInterface = { fg = C.base, bg = C.yellow },
				CmpItemKindColor = { fg = C.base, bg = C.red },
				CmpItemKindReference = { fg = C.base, bg = C.red },
				CmpItemKindEnumMember = { fg = C.base, bg = C.red },
				CmpItemKindStruct = { fg = C.base, bg = C.blue },
				CmpItemKindValue = { fg = C.base, bg = C.peach },
				CmpItemKindEvent = { fg = C.base, bg = C.blue },
				CmpItemKindOperator = { fg = C.base, bg = C.blue },
				CmpItemKindTypeParameter = { fg = C.base, bg = C.blue },
				CmpItemKindCopilot = { fg = C.base, bg = C.teal },
			}
		end,
	},
	calvinludwig = {
		flavour = "latte",
		term_colors = true,
		color_overrides = {
			latte = {
				base = "#FFFFFF",
				mantle = "#EFF1F5",
				crust = "#E6E9EF",
			},
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			notify = true,
			telescope = true,
			alpha = true,
			harpoon = true,
			mason = true,
			neotree = true,
			treesitter_context = true,
			which_key = true,
			illuminate = true,
		},
	},
	thanhvule0310 = {
		background = {
			light = "latte",
			dark = "mocha",
		},
		color_overrides = {
			mocha = {
				rosewater = "#EA6962",
				flamingo = "#EA6962",
				pink = "#D3869B",
				mauve = "#D3869B",
				red = "#EA6962",
				maroon = "#EA6962",
				peach = "#BD6F3E",
				yellow = "#D8A657",
				green = "#A9B665",
				teal = "#89B482",
				sky = "#89B482",
				sapphire = "#89B482",
				blue = "#7DAEA3",
				lavender = "#7DAEA3",
				text = "#D4BE98",
				subtext1 = "#BDAE8B",
				subtext0 = "#A69372",
				overlay2 = "#8C7A58",
				overlay1 = "#735F3F",
				overlay0 = "#5A4525",
				surface2 = "#4B4F51",
				surface1 = "#2A2D2E",
				surface0 = "#232728",
				base = "#1D2021",
				mantle = "#191C1D",
				crust = "#151819",
			},
			latte = {
				rosewater = "#c14a4a",
				flamingo = "#c14a4a",
				pink = "#945e80",
				mauve = "#945e80",
				red = "#c14a4a",
				maroon = "#c14a4a",
				peach = "#c35e0a",
				yellow = "#a96b2c",
				green = "#6c782e",
				teal = "#4c7a5d",
				sky = "#4c7a5d",
				sapphire = "#4c7a5d",
				blue = "#45707a",
				lavender = "#45707a",
				text = "#654735",
				subtext1 = "#7b5d44",
				subtext0 = "#8f6f56",
				overlay2 = "#a28368",
				overlay1 = "#b6977a",
				overlay0 = "#c9aa8c",
				surface2 = "#A79C86",
				surface1 = "#C9C19F",
				surface0 = "#DFD6B1",
				base = "#fbf1c7",
				mantle = "#F3EAC1",
				crust = "#E7DEB7",
			},
		},
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = { "bold" },
			functions = { "bold" },
			keywords = { "bold" },
			strings = {},
			variables = {},
			numbers = { "bold" },
			booleans = { "bold" },
			properties = {},
			types = { "bold" },
			operators = {},
		},
		transparent_background = false,
		show_end_of_buffer = false,
		custom_highlights = function(colors)
			return {
				NormalFloat = { bg = colors.crust },
				FloatBorder = { bg = colors.crust, fg = colors.crust },
				VertSplit = { bg = colors.base, fg = colors.surface0 },
				CursorLineNr = { fg = colors.mauve, style = { "bold" } },
				Pmenu = { bg = colors.crust, fg = "" },
				PmenuSel = { bg = colors.surface0, fg = "" },
				TelescopeSelection = { bg = colors.surface0 },
				TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
				TelescopePromptPrefix = { bg = colors.surface0 },
				TelescopePromptNormal = { bg = colors.surface0 },
				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
				TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
				TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
				IndentBlanklineChar = { fg = colors.surface0 },
				IndentBlanklineContextChar = { fg = colors.surface2 },
				GitSignsChange = { fg = colors.peach },
				NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
				NvimTreeExecFile = { fg = colors.text },
			}
		end,
	},
	cxzhou35 = {
		flavour = "mocha", -- Can be one of: latte, frappe, macchiato, mocha
		background = { light = "latte", dark = "mocha" },
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		transparent_background = true,
		show_end_of_buffer = false,
		term_colors = true,
		compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
		styles = {
			comments = { "italic" },
			functions = { "bold" },
			keywords = { "italic" },
			operators = { "bold" },
			conditionals = { "bold" },
			loops = { "bold" },
			booleans = { "bold", "italic" },
			numbers = {},
			types = {},
			strings = {},
			variables = {},
			properties = {},
		},
		integrations = {
			treesitter = true,
			native_lsp = {
				enabled = true,
				virtual_text = {
					errors = { "italic" },
					hints = { "italic" },
					warnings = { "italic" },
					information = { "italic" },
				},
				underlines = {
					errors = { "underline" },
					hints = { "underline" },
					warnings = { "underline" },
					information = { "underline" },
				},
			},
			alpha = true,
			barbar = false,
			beacon = false,
			cmp = true,
			dap = { enabled = true, enable_ui = true },
			gitsigns = true,
			hop = true,
			indent_blankline = { enabled = true, colored_indent_levels = false },
			lsp_saga = true,
			lsp_trouble = true,
			markdown = true,
			mason = true,
			mini = false,
			neogit = false,
			neotree = { enabled = true, show_root = true, transparent_panel = true },
			noice = false,
			notify = true,
			telescope = true,
			treesitter_context = false,
			ts_rainbow = true,
			which_key = true,
		},
		color_overrides = {
			mocha = {
				rosewater = "#F5E0DC",
				flamingo = "#F2CDCD",
				mauve = "#DDB6F2",
				pink = "#F5C2E7",
				red = "#F28FAD",
				maroon = "#E8A2AF",
				peach = "#F8BD96",
				yellow = "#FAE3B0",
				green = "#ABE9B3",
				blue = "#96CDFB",
				sky = "#89DCEB",
				teal = "#B5E8E0",
				lavender = "#C9CBFF",
				text = "#D9E0EE",
				subtext1 = "#BAC2DE",
				subtext0 = "#A6ADC8",
				overlay2 = "#C3BAC6",
				overlay1 = "#988BA2",
				overlay0 = "#6E6C7E",
				surface2 = "#6E6C7E",
				surface1 = "#575268",
				surface0 = "#302D41",
				base = "#1E1E2E",
				mantle = "#1A1826",
				crust = "#161320",
			},
		},
		custom_highlights = function(C)
			return {
				TreesitterContext = { bg = C.mantle, fg = C.text },
			}
		end,
	},
	saumyajyoti = {
		-- flavour = "macchiato", -- latte, frappe, macchiato, mocha
		background = {
			-- :h background
			light = "latte",
			dark = "mocha",
		},
		transparent_background = false,
		show_end_of_buffer = true, -- show the '~' characters after the end of buffer
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false, -- Force no italic
		no_bold = false, -- Force no bold
		no_underline = false, -- Force no underline
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			loops = { "italic" },
			functions = { "bold" },
			keywords = { "italic" },
			strings = {},
			variables = {},
			numbers = { "bold" },
			booleans = { "italic" },
			properties = {},
			types = {},
			operators = {},
		},
		-- Mocha - Labels	Hex
		--
		-- Rosewater	#f5e0dc
		-- Flamingo 	#f2cdcd
		-- Pink     	#f5c2e7
		-- Mauve    	#cba6f7
		-- Red	      #f38ba8
		-- Maroon	    #eba0ac
		-- Peach	    #fab387
		-- Yellow   	#f9e2af
		-- Green    	#a6e3a1
		-- Teal     	#94e2d5
		-- Sky      	#89dceb
		-- Sapphire 	#74c7ec
		-- Blue	      #89b4fa
		-- Lavender  	#b4befe
		-- Text     	#cdd6f4
		-- Subtext1 	#bac2de
		-- Subtext0 	#a6adc8
		-- Overlay2	  #9399b2
		-- Overlay1	  #7f849c
		-- Overlay0	  #6c7086
		-- Surface2	  #585b70
		-- Surface1	  #45475a
		-- Surface0	  #313244
		-- Base   	  #1e1e2e
		-- Mantle 	  #181825
		-- Crust  	  #11111b

		-- gruvbox mix material
		--   \ 'bg_dim':           ['#1b1b1b',   '233'],
		--   \ 'bg0':              ['#282828',   '235'],
		--   \ 'bg1':              ['#32302f',   '236'],
		--   \ 'bg2':              ['#32302f',   '236'],
		--   \ 'bg3':              ['#45403d',   '237'],
		--   \ 'bg4':              ['#45403d',   '237'],
		--   \ 'bg5':              ['#5a524c',   '239'],
		--   \ 'bg_statusline1':   ['#32302f',   '236'],
		--   \ 'bg_statusline2':   ['#3a3735',   '236'],
		--   \ 'bg_statusline3':   ['#504945',   '240'],
		--   \ 'bg_diff_green':    ['#34381b',   '22'],
		--   \ 'bg_visual_green':  ['#3b4439',   '22'],
		--   \ 'bg_diff_red':      ['#402120',   '52'],
		--   \ 'bg_visual_red':    ['#4c3432',   '52'],
		--   \ 'bg_diff_blue':     ['#0e363e',   '17'],
		--   \ 'bg_visual_blue':   ['#374141',   '17'],
		--   \ 'bg_visual_yellow': ['#4f422e',   '94'],
		--   \ 'bg_current_word':  ['#3c3836',   '237']
		--
		--   \ 'fg0':              ['#e2cca9',   '223'],
		--   \ 'fg1':              ['#e2cca9',   '223'],
		--   \ 'red':              ['#f2594b',   '167'],
		--   \ 'orange':           ['#f28534',   '208'],
		--   \ 'yellow':           ['#e9b143',   '214'],
		--   \ 'green':            ['#b0b846',   '142'],
		--   \ 'aqua':             ['#8bba7f',   '108'],
		--   \ 'blue':             ['#80aa9e',   '109'],
		--   \ 'purple':           ['#d3869b',   '175'],
		--   \ 'bg_red':           ['#db4740',   '167'],
		--   \ 'grey0':            ['#7c6f64',   '243'],
		--   \ 'grey1':            ['#928374',   '245'],
		--   \ 'grey2':            ['#a89984',   '246'],
		--
		color_overrides = {
			mocha = {
				-- Gruvbox_mix-medium from https://github.com/sainnhe/gruvbox-material
				-- gruvbox -- alternate (https://github.com/thanhvule0310) -- Catppuccin
				--                                         current    alt     catp    gruv_mat
				rosewater = "#ffc6be", -- #ffc6be  #EA6962  #F5E0DC
				flamingo = "#fb4934", -- #fb4934  #F38BA8  #F2CDCD
				pink = "#ff75a0", --#f4bce4 #ffd3e2  #ff75a0  #F5C2E7
				mauve = "#d3869b", --          #D3869B" #CBA6F7
				red = "#ec6b64", -- #f2594b  #EA6962  #F38BA8
				maroon = "#fe8019", -- #e78a4e  #fe8019  #EA6962  #EBA0AC
				peach = "#FAB387", -- #b57614  #c68e6b  #FAB387
				yellow = "#d79921", -- #e9b143 #e0c080 #D8A657  #F9E2AF
				green = "#a9b665", -- #a9b665           #A6E3A1
				teal = "#8ec07c", --                   #94E2D5
				sky = "#7daea3", --          #89B482  #89DCEB
				sapphire = "#689d6a", -- #82b3a8  #8ec07c  #74C7EC
				blue = "#6d8dad", --          #7DAEA3  #87B0F9
				lavender = "#b16286", -- #b39ddb           #B4BEFE
				-- text = BaseColor.gruvbox.light1, -- #ebdbb2  #D4BE98  #C6D0F5
				-- subtext1 = BaseColor.gruvbox.light0_soft, -- #f2e5bc  #BDAE8B  #B3BCDF
				-- subtext0 = BaseColor.gruvbox.light2, -- #d5c4a1  #A69372  #A1A8C9
				-- overlay2 = BaseColor.gruvbox.light3, -- #bdae93  #8C7A58  #8E95B3
				-- overlay1 = BaseColor.gruvbox.light4, -- #a89984  #735F3F  #7B819D
				-- overlay0 = BaseColor.gruvbox.gray, -- #928374  #806234  #696D86
				-- surface2 = BaseColor.gruvbox.dark3, -- #6E7477  #4B4F51  #565970
				-- surface1 = BaseColor.gruvbox.dark1, -- #2A2D2E           #43465A
				-- surface0 = BaseColor.gruvbox.dark0_soft, -- #232728           #313244
				base = "#282828", -- #1D2021           #1E1E2E
				mantle = "#1d2021", -- #191C1D           #181825
				crust = "#1b1b1b", --                   #11111B
			},
		},
		custom_highlights = function(colors)
			return {
				NormalFloat = { bg = colors.surface0 },
				FloatBorder = { fg = colors.overlay0 },
				VertSplit = { bg = colors.base, fg = colors.surface1 },
				FoldColumn = { fg = colors.overlay0, bg = colors.mantle },
				LineNr = { fg = colors.overlay0, bg = colors.mantle },
				CursorLineNr = { fg = colors.mauve, bg = colors.surface0, style = {} },
				CursorLineSign = { bg = colors.surface0 },
				CursorLineFold = { bg = colors.surface0 },
				-- SignColumn = { bg = colors.mantle },
				Pmenu = { bg = colors.mantle, fg = "" },
				PmenuSel = { bg = colors.surface0, fg = colors.subtext0 },
				TelescopeSelection = { bg = colors.surface0 },
				TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
				TelescopePromptPrefix = { bg = colors.surface0 },
				TelescopePromptNormal = { bg = colors.surface0 },
				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
				TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
				TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
				-- IndentBlanklineChar = { fg = colors.surface0 },
				-- IndentBlanklineContextChar = { fg = colors.surface2 },
				GitSignsChange = { fg = colors.peach },
				-- Blamer = { fg = colors.overlay1, bg = colors.base },
				-- NvimTreeIndentMarker = { link = "IndentBlanklineChar" },
				-- NvimTreeExecFile = { fg = colors.text },
				Function = { fg = colors.sky, style = { "bold", "italic" } },
				Type = { fg = colors.blue },
				Structure = { fg = colors.teal },
				Comment = { fg = colors.surface2 },
				cTypedef = { fg = colors.pink, style = { "italic" } },
				cDefine = { fg = colors.pink, style = { "italic" } },
				cStructure = { fg = colors.yellow },
				StorageClass = { fg = colors.pink, style = { "italic" } },
				cStorageclass = { fg = colors.pink, style = { "italic" } },
				PreProc = { fg = colors.maroon, style = { "italic" } },
				Keyword = { fg = colors.flamingo },
				Conditional = { fg = colors.red },
				Repeat = { fg = colors.red },
				["@keyword.return"] = { fg = colors.flamingo, style = { "italic" } },
				["@parameter"] = { fg = colors.overlay1, style = { "italic" } },
				["@property"] = { fg = colors.yellow },
				WinBar = { fg = colors.overlay2, bg = colors.mantle },
				-- TabLineSel = { bg = colors.pink },
				-- CmpBorder = { fg = colors.surface2 },
				--  Pmenu = { bg = C.none },
			}
		end,
		highlight_overrides = {
			all = function(colors)
				return {
					-- Comment = { fg = colors.flamingo },
					-- NvimTreeNormal = { fg = colors.none },
					-- CmpBorder = { fg = "#3e4145" },
				}
			end,
		},
		-- custom_highlights = {},
		integrations = {
			alpha = true,
			sandwich = false,
			noice = true,
			mini = true,
			leap = true,
			markdown = true,
			neotest = true,
			cmp = true,
			overseer = true,
			lsp_trouble = true,
			ts_rainbow2 = true,
			mason = true,
			neotree = true,
			notify = true,
			which_key = true,
			treesitter = true,
			-- treesitter_context = true,
			aerial = true,
			semantic_tokens = true,
			-- symbols_outline = true,
			telescope = true,
			dap = { enabled = true, enable_ui = true },
			gitsigns = true,
			indent_blankline = {
				enabled = true,
				colored_indent_levels = false,
			},
		},
	},
	s1m0000n = {
		color_overrides = {
			mocha = {
				rosewater = "#ffc9c9",
				flamingo = "#ff9f9a",
				pink = "#ffa9c9",
				lavender = "#df95cf",
				mauve = "#a990c9",
				red = "#ff6960",
				maroon = "#f98080",
				peach = "#f9905f",
				yellow = "#f9bd69",
				green = "#b0d080",
				teal = "#a0dfa0",
				sky = "#a0d0c0",
				sapphire = "#95b9d0",
				blue = "#89a0e0",
				text = "#e0d0b0",
				subtext1 = "#d5c4a1",
				subtext0 = "#bdae93",
				overlay2 = "#928374",
				overlay1 = "#7c6f64",
				overlay0 = "#665c54",
				surface2 = "#504844",
				surface1 = "#3a3634",
				surface0 = "#252525",
				base = "#151515",
				mantle = "#0e0e0e",
				crust = "#080808",
			},
		},
	},
	axieas = {
		flavour = "mocha",
		compile = { enabled = true },
		dim_inactive = { enabled = false },
		transparent_background = true,
		integrations = {
			aerial = true,
			barbar = true,
			-- barbecue = false,
			beacon = true,
			bufferline = false,
			cmp = true,
			coc_nvim = false,
			dap = {
				enabled = true,
				enable_ui = true,
			},
			dashboard = false, -- startify?
			dropbar = {
				enabled = true,
				color_mode = false,
			},
			feline = false,
			fern = false,
			fidget = false, -- prefer default colours
			gitgutter = false,
			gitsigns = true,
			harpoon = false,
			headlines = false,
			hop = false,
			illuminate = false,
			indent_blankline = {
				enabled = true,
				-- colored_indent_levels = true,
			},
			leap = true,
			lightspeed = false,
			lsp_saga = false,
			lsp_trouble = false,
			markdown = true,
			mason = true,
			mini = false,
			native_lsp = {
				enabled = true,
				underlines = {
					-- errors = { "undercurl" },
					-- hints = { "undercurl" },
					-- warnings = { "undercurl" },
					-- information = { "undercurl" },
				},
			},
			navic = {
				enabled = true,
				-- cp.base
				custom_bg = "#1E1E2E",
			},
			neogit = true,
			neotest = true,
			neotree = {
				enabled = true,
				show_root = false,
				transparent_panel = true,
			},
			noice = false,
			notify = true,
			nvimtree = false,
			octo = false,
			overseer = false,
			pounce = false,
			rainbow_delimiters = false,
			sandwich = false,
			semantic_tokens = true,
			symbols_outline = false,
			telekasten = false,
			telescope = { enabled = true },
			treesitter = true,
			treesitter_context = false,
			ts_rainbow = true,
			ts_rainbow2 = false,
			vim_sneak = false,
			vimwiki = true,
			which_key = true,
		},
		custom_highlights = function(colours)
			local float_bg = colours.base
			local remaps = {
				NormalFloat = { bg = float_bg }, -- NOTE: catppuccin needs a bg colour
				ColorColumn = { link = "CursorLine" },
				SpellBad = { fg = colours.red, style = { "italic", "undercurl" } },
				SpellCap = { fg = colours.red, style = { "italic", "undercurl" } },
				SpellLocal = { fg = colours.red, style = { "italic", "undercurl" } },
				SpellRare = { fg = colours.red, style = { "italic", "undercurl" } },
				CmpItemMenu = { fg = colours.surface2 },
				Pmenu = { bg = colours.surface0 },
				WinBar = { bg = float_bg },
				WinBarNC = { bg = float_bg },
				WinBarModified = { fg = colours.yellow, bg = float_bg }, -- same as BufferCurrentMod
				NavicIconsFileNC = { fg = colours.flamingo, bg = float_bg },
				["@parameter"] = { fg = colours.flamingo },
				-- VertSplit = { fg = cp.overlay1 },
				-- SpellBad = { fg = cp.maroon },
				-- SpellCap = { fg = cp.peach },
				-- SpellLocal = { fg = cp.lavender },
				-- SpellRare = { fg = cp.teal },
			}

			-- NvChad Telescope theme (adapted from https://github.com/olimorris/onedarkpro.nvim/issues/31#issue-1160545258)
			-- if require("axie.utils.config").nvchad_theme then
			if true then
				local telescope_results = colours.base
				-- local telescope_prompt = cp.surface0
				local telescope_prompt = "#302D41" -- black3 from original palette
				local fg = colours.surface2
				local purple = colours.green -- or mauve
				remaps = vim.tbl_extend("force", remaps, {
					TelescopeBorder = { fg = telescope_results, bg = telescope_results },
					TelescopePromptBorder = { fg = telescope_prompt, bg = telescope_prompt },
					TelescopePromptCounter = { fg = fg },
					TelescopePromptNormal = { fg = fg, bg = telescope_prompt },
					TelescopePromptPrefix = { fg = purple, bg = telescope_prompt },
					TelescopePromptTitle = { fg = telescope_prompt, bg = purple },
					TelescopePreviewTitle = { fg = telescope_prompt, bg = purple },
					TelescopeResultsTitle = { fg = telescope_results, bg = telescope_results },
					TelescopeMatching = { fg = purple },
					TelescopeNormal = { bg = telescope_results },
					TelescopeSelection = { bg = telescope_prompt },
				})
			end
			return remaps
		end,
	},
	ilias777 = {
		styles = {
			keywords = { "italic" },
			variables = { "italic" },
			booleans = { "italic" },
			properties = { "italic" },
		},
		-- Integrations
		integrations = {
			hop = true,
			lsp_trouble = true,
			mason = true,
			neogit = true,
			noice = true,
			notify = true,
			symbols_outline = true,
			treesitter_context = true,
			native_lsp = {
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
				inlay_hints = {
					background = false,
				},
			},
		},
		custom_highlights = function(colors)
			local ucolors = require("catppuccin.utils.colors")
			local mocha = require("catppuccin.palettes").get_palette("mocha")
			return {
				-- Cmp Menu
				PmenuSel = { fg = colors.base, bg = colors.maroon, style = { "bold" } },

				-- Telescope
				TelescopeBorder = { fg = colors.blue },
				TelescopeSelectionCaret = { fg = colors.flamingo },
				TelescopeSelection = { fg = colors.text, bg = colors.surface0, style = { "bold" } },
				TelescopeMatching = { fg = colors.blue },
				TelescopePromptPrefix = { fg = colors.yellow, bg = colors.crust },
				TelescopePromptNormal = { bg = colors.crust },
				TelescopeResultsNormal = { bg = colors.mantle },
				TelescopePreviewNormal = { bg = colors.crust },
				TelescopePromptBorder = { bg = colors.crust, fg = colors.crust },
				TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
				TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
				TelescopePromptTitle = { fg = colors.crust, bg = colors.mauve },
				TelescopeResultsTitle = { fg = colors.crust, bg = colors.mauve },
				TelescopePreviewTitle = { fg = colors.crust, bg = colors.mauve },

				-- Bufferline
				BufferLineIndicatorSelected = { fg = colors.pink },
				BufferLineIndicator = { fg = colors.base },
				BufferLineModifiedSelected = { fg = colors.teal },
				TabLineSel = { bg = colors.pink },

				-- Cursorline & Linenumbers
				CursorLine = { bg = colors.mantle },

				-- Visual Mode
				Visual = { bg = ucolors.darken("#9745be", 0.25, mocha.mantle), style = { "italic" } },
			}
		end,
		highlight_overrides = {},
		color_overrides = {},
	},
}

describe("user", function()
	before_each(function()
		for name, _ in pairs(package.loaded) do
			if name:match("^catppuccin") and name ~= "catppuccin" then
				package.loaded[name] = nil
			end
		end
	end)
	for name, config in pairs(configs) do
		it(name, function()
			require("catppuccin").setup(config)
			assert.equals(
				pcall(function()
					require("catppuccin").compile()
					vim.cmd.colorscheme("catppuccin")
				end),
				true
			)
		end)
	end
end)
