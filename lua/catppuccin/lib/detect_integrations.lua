local M = {}

-- stylua: ignore
local integration_mappings = {
	["aerial.nvim"]											= "aerial",
	["alpha-nvim"]											= "alpha",
	["barbar.nvim"]											= "barbar",
	["barbecue.nvim"]										= "barbecue",
	["beacon.nvim"]											= "beacon",
	["blink.cmp"]												= "blink_cmp",
	["buffon.nvim"]											= "buffon",
	["coc.nvim"]												= "coc_nvim",
	["colorful-winsep.nvim"]						= "colorful_winsep",
	["dashboard-nvim"]									= "dashboard",
	["diffview.nvim"]										= "diffview",
	["dropbar.nvim"]										= "dropbar",
	["fern.vim"]												= "fern",
	["fidget.nvim"]											= "fidget",
	["flash.nvim"]											= "flash",
	["fzf-lua"]													= "fzf",
	["gitgraph.nvim"]										= "gitgraph",
	["gitsigns.nvim"]										= "gitsigns",
	["grug-fur.nvim"]										= "grug-fur",
	["harpoon"]													= "harpoon",
	["headlines.nvim"]									= "headlines",
	["hop.nvim"]												= "hop",
	["indent-blankline.nvim"]						= "indent_blankline",
	["leap.nvim"]												= "leap.nvim",
	["lightspeed.nvim"]									= "lightspeed",
	["lir.nvim"]												= "lir",
	["lspsaga"]													= "lsp_saga",
	["markdown"]												= "markdown",
	["markview.nvim"]										= "markview",
	["mason.nvim"]											= "mason",
	["mini.nvim"]												= "mini",
	["neo-tree.nvim"]										= "neotree",
	["neogit"]													= "neogit",
	["neotest"]													= "neotest",
	["noice.nvim"]											= "noice",
	["notifier.nvim"]										= "notifier",
	["nvim-cmp"]												= "cmp",
	["copilot_vim"]											= "copilot_vim",
	["nvim-dap"]												= "dap",
	["nvim-dap-ui"]											= "dap_ui",
	["nvim-lspconfig"]									= "native_lsp",
	["navic"]														= "navic",
	["nvim-notify"]											= "notify",
	["nvim-semantic-tokens"]						=	"semantic_tokens",
	["nvim-surround"]										=	"nvim_surround",
	["nvim-tree"]												=	"nvimtree",
	["nvim-treesitter-context"]					= "treesitter_context",
	["nvim-treesitter"]									= "treesitter",
	["nvim-ts-rainbow2"]								=	"ts_rainbow2",
	["nvim-ts-rainbow"]									=	"ts_rainbow",
	["nvim-ufo"]												=	"ufo",
	["nvim-window-picker"]							= "window_picker",
	["octo.nvim"]												= "octo",
	["overseer.nvim"]										= "overseer",
	["pounce.nvim"]											= "pounce.nvim",
	["rainbow-delimiters.nvim"]					= "rainbow_delimiters",
	["render-markdown.nvim"]						= "render_markdown",
	["snacks.nvim"]											=	"snacks",
	["symbols-outline.nvim"]						= "symbols_outline",
	["telekasten.nvim"]									= "telekasten",
	["telescope.nvim"]									= "telescope",
	["trouble.nvim"]										= "lsp_trouble",
	["vim-dadbod-ui"]										= "dadbod_ui",
	["vim-gitgutter"]										= "vim-gitgutter",
	["vim-illuminate"]									= "illuminate",
	["vim-sandwich"]										= "sandwich",
	["vim-signify"]											= "signify",
	["vim-sneak"]												= "vim_sneak",
	["vimwiki"]													= "vimwiki",
	["which-key.nvim"]									=	"which_key",
}

local installed_plugins = vim.iter {}

-- NOTE: assumes only one plugin manager is used.
if vim.fn.has "nvim-0.12.0" == 1 then
	installed_plugins = vim.iter(vim.pack.get()):map(function(plugin) return plugin.spec.name end):map(function(name)
		if name:match "mini.*" then
			return "mini.nvim"
		else
			return name
		end
	end)
end

if pcall(require, "pckr") then
	installed_plugins = vim.iter(require("pckr.plugin").plugins_by_name):map(function(plugin, _)
		if plugin:match "mini.*" then
			return "mini.nvim"
		else
			return plugin
		end
	end)
end

if pcall(require, "lazy") then
	installed_plugins = vim.iter(require("lazy.core.config").plugins):map(function(plugin)
		if plugin:match "mini.*" then
			return "mini.nvim"
		else
			return plugin
		end
	end)
end

function M.create_integrations_table()
	local integrations = {}
	local ctp_defaults = require("catppuccin").default_options.integrations
	installed_plugins:each(function(plugin)
		if integration_mappings[plugin] ~= nil then
			local integration = integration_mappings[plugin]
			if type(ctp_defaults[integration]) == "table" then
				integrations[integration] = ctp_defaults[integration]
				integrations[integration].enabled = true
			else
				integrations[integration] = true
			end
		end
	end)
	return integrations
end
return M
