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
		native_lsp = true,
		lsp_trouble = false,
		illuminate = false,
		diff = false,
		lsp_saga = false,
		neogit = false,
		gitgutter = false,
		gitsigns = false,
		telescope = false,
		nvimtree = false,
		fern = false,
		dashboard = false,
		which_key = false,
		bufferline = false,
		barbar = false,
		sneak = false,
		hop = false,

	}
}

function config.set_options(opts)
    opts = opts or {}
    config.options = vim.tbl_deep_extend("force", config.options, opts)
end

return config
