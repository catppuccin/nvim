---@class Config
local config = {}

config.options = {
	colorscheme = "dark_catppuccino",
	transparency = false,
	term_colors = false,
	styles = {
		comments = "italic",
		functions = "italic",
		keywords = "italic",
		strings = "NONE",
		variables = "NONE",
	},
	integrations = {
		treesitter = true,
		native_lsp = {
			enabled = true,
			styles = {
				errors = "italic",
				hints = "italic",
				warnings = "italic",
				information = "italic",
			},
		},
		lsp_trouble = false,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = false,
		telescope = false,
		nvimtree = {
			enabled = false,
			show_root = false,
		},
		which_key = false,
		indent_blankline = false,
		dashboard = false,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = false,
		markdown = false,
		lightspeed = false,
		ts_rainbow = false,
	},
}

function config.set_options(opts)
	opts = opts or {}
	config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
