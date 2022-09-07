local default_config = {
	transparent_background = false,
	term_colors = false,
	compile = {
		enabled = false,
		path = vim.fn.stdpath("cache") .. "/catppuccin",
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
		treesitter = true,
		cmp = true,
		gitsigns = true,
		telescope = true,
		nvimtree = true,
		dashboard = true,
		markdown = true,
		notify = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
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
	},
	color_overrides = {},
	highlight_overrides = {},
}

local config = { options = default_config }

function config.set_options(opts)
	opts = opts or {}
	config.options = vim.tbl_deep_extend("keep", opts, default_config)
	config.options.highlight_overrides.all = config.options.custom_highlights or config.options.highlight_overrides.all
	if config.options.compile.enabled ~= true then
		pcall(vim.api.nvim_del_user_command, "CatppuccinCompile")
		pcall(vim.api.nvim_del_user_command, "CatppuccinClean")
		pcall(vim.api.nvim_del_user_command, "CatppuccinStatus")
	end
end

return config
