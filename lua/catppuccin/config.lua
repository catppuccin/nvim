---@class Config
local config = {}

config.options = {
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
		suffix = "_compiled",
	},
	dim_inactive = {
		enabled = false,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
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
	integrations = {
		cmp = true,
    git = true,
		gitsigns = true,
		lightspeed = true,
		markdown = true,
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
		nvimtree = {
			enabled = true,
			show_root = true,
			transparent_panel = false,
		},
		treesitter = true,
		whitespace = true,
	},
	color_overrides = {},
	custom_highlights = {},
}

function config.set_options(opts)
	opts = opts or {}
	config.options = vim.tbl_deep_extend("keep", opts, config.options)
end

return config
