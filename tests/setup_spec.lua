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
		flavour = os.getenv "appearance" == "light" and "latte" or "mocha",
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
			local utils = require "catppuccin.utils.colors"
			local tint = function(color) return utils.blend(color, colors.base, 0.2) end

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
}

describe("setup", function()
	before_each(function()
		for name, _ in pairs(package.loaded) do
			if name:match "^catppuccin" and name ~= "catppuccin" then package.loaded[name] = nil end
		end
	end)
	for name, config in pairs(configs) do
		it(name, function()
			require("catppuccin").setup(config)
			assert.equals(
				pcall(function()
					require("catppuccin").compile()
					vim.cmd.colorscheme "catppuccin"
				end),
				true
			)
		end)
	end
end)
