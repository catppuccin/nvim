---@class Config
local config = {}

config.options = {
    colorscheme = "catppuccino",
    transparency = false,
	styles = {
		comments = "italic",
		fuctions = "italic",
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
				information = "italic"
			}
		},
		lsp_trouble = false,
		lsp_saga = false,
		gitgutter = false,
		gitsigns = false,
		telescope = false,
		nvimtree = false,
		which_key = false,
		indent_blankline = false,
		dashboard = false,
		lualine = false,
		lightline = false,
		neogit = false,
		vim_sneak = false,
		fern = false,
		barbar = false,
		bufferline = false,
		markdown = false,
	}
}

function config.set_options(opts)
    opts = opts or {}
    config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
