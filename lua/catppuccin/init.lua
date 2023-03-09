local is_vim = vim.fn.has "nvim" ~= 1
if is_vim then require "catppuccin.lib.vim" end

local M = {
	options = {
		background = {
			light = "latte",
			dark = "mocha",
		},
		compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
		transparent_background = false,
		show_end_of_buffer = false,
		term_colors = false,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false,
		no_bold = false,
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
			dashboard = true,
			gitsigns = true,
			markdown = true,
			nvimtree = true,
			telescope = true,
			treesitter = not is_vim,
			ts_rainbow = true,
			ts_rainbow2 = true,
			barbecue = {
				dim_dirname = true,
			},
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
			semantic_tokens = true,
		},
		color_overrides = {},
		highlight_overrides = {},
	},
	flavours = { latte = 1, frappe = 2, macchiato = 3, mocha = 4 },
	path_sep = jit and (jit.os == "Windows" and "\\" or "/") or package.config:sub(1, 1),
}

function M.compile()
	local user_flavour = M.flavour
	for flavour, _ in pairs(M.flavours) do
		M.flavour = flavour
		require("catppuccin.lib." .. (is_vim and "vim." or "") .. "compiler").compile(flavour)
	end
	M.flavour = user_flavour -- Restore user flavour after compile
end

local function get_flavour(default)
	local flavour
	if default then
		flavour = default
	elseif vim.g.colors_name == "catppuccin" then -- after first time load
		flavour = M.options.background[vim.o.background]
	else
		flavour = M.flavour -- first time load
	end

	if flavour and not M.flavours[flavour] then
		vim.notify(
			string.format(
				"Catppuccin (error): Invalid flavour '%s', flavour must be 'latte', 'frappe', 'macchiato' or 'mocha'",
				flavour
			),
			vim.log.levels.ERROR
		)
		flavour = nil
	end
	return flavour or M.options.background[vim.o.background]
end

function M.load(flavour)
	M.flavour = get_flavour(flavour)
	local compiled_path = M.options.compile_path .. M.path_sep .. M.flavour
	local f = loadfile(compiled_path)
	if not f then
		M.compile()
		f = assert(loadfile(compiled_path), "could not load cache")
	end
	f()
end

function M.setup(user_conf)
	-- Parsing user config
	user_conf = user_conf or {}
	M.options = vim.tbl_deep_extend("keep", user_conf, M.options)
	M.options.highlight_overrides.all = user_conf.custom_highlights or M.options.highlight_overrides.all
	M.flavour = get_flavour(M.options.flavour or vim.g.catppuccin_flavour)

	-- Get cached hash
	local cached_path = M.options.compile_path .. M.path_sep .. "cached"
	local file = io.open(cached_path)
	local cached = nil
	if file then
		cached = file:read()
		file:close()
	end

	-- Get current hash
	local git_path = debug.getinfo(1).source:sub(2, -24) .. ".git" .. M.path_sep .. "ORIG_HEAD"
	local git = vim.fn.getftime(git_path) -- 2x faster vim.loop.fs_stat
	local hash = require("catppuccin.lib.hashing").hash(user_conf)
		.. (git == -1 and git_path or git) -- no .git in /nix/store -> cache path
		.. (vim.o.winblend == 0 and 1 or 0) -- :h winblend
		.. (vim.o.pumblend == 0 and 1 or 0) -- :h pumblend

	-- Recompile if hash changed
	if cached ~= hash then
		M.compile()
		file = io.open(cached_path, "wb")
		if file then
			file:write(hash)
			file:close()
		end
	end
end

if is_vim then return M end

vim.api.nvim_create_user_command(
	"Catppuccin",
	function(inp) vim.api.nvim_command("colorscheme catppuccin-" .. get_flavour(inp.args)) end,
	{
		nargs = 1,
		complete = function(line)
			return vim.tbl_filter(function(val) return vim.startswith(val, line) end, vim.tbl_keys(M.flavours))
		end,
	}
)

vim.api.nvim_create_user_command("CatppuccinCompile", function()
	for name, _ in pairs(package.loaded) do
		if name:match "^catppuccin" and name ~= "catppuccin" then package.loaded[name] = nil end
	end
	M.compile()
	vim.notify("Catppuccin (info): compiled cache!", vim.log.levels.INFO)
	vim.api.nvim_command "colorscheme catppuccin"
end, {})

return M
