local is_vim = vim.fn.has "nvim" ~= 1
if is_vim then require "deadbeef.lib.vim" end

---@type Deadbeef
local M = {
	default_options = {
		flavour = "deadbeef", -- Only one flavor for deadbeef
		compile_path = vim.fn.stdpath "cache" .. "/deadbeef",
		transparent_background = false,
		show_end_of_buffer = false,
		term_colors = true,
		dim_inactive = {
			enabled = false,
			shade = "dark",
			percentage = 0.15,
		},
		no_italic = false,
		no_bold = false,
		no_underline = false,
		styles = {
			comments = { "italic" },
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
		lsp_styles = {
			virtual_text = {
				errors = {},
				warnings = {},
				information = {},
				hints = {},
			},
			underlines = {
				errors = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
				hints = { "underline" },
			},
			inlay_hints = {
				background = false,
			},
		},
		integrations = {
			cmp = true,
			gitsigns = true,
			neotree = true,
			nvimtree = true,
			telescope = true,
			treesitter = true,
			lsp_trouble = true,
			which_key = true,
			mason = true,
			lazy = true,
			snacks = true,
			oil = true,
			indent_blankline = {
				enabled = true,
				scope_color = "",
				colored_indent_levels = false,
			},
		},
		color_overrides = {},
		highlight_overrides = {},
	},
	path_sep = jit and (jit.os == "Windows" and "\\" or "/") or package.config:sub(1, 1),
}

M.options = M.default_options

function M.compile()
	require("deadbeef.lib.compiler").compile()
end

local did_setup = false

function M.load()
	if not did_setup then M.setup() end
	local compiled_path = M.options.compile_path .. M.path_sep .. "deadbeef"
	
	-- Check if compiled file exists
	local f = io.open(compiled_path, "r")
	if not f then
		M.compile()
		f = io.open(compiled_path, "r")
	end
	
	if f then
		f:close()
		dofile(compiled_path)
	else
		error("could not load or create cache file")
	end
end

---@type fun(user_conf: DeadbeefOptions?)
function M.setup(user_conf)
	did_setup = true
	user_conf = user_conf or {}

	M.options = vim.tbl_deep_extend("keep", user_conf, M.default_options)

	-- Get cached hash
	local cached_path = M.options.compile_path .. M.path_sep .. "cached"
	local file = io.open(cached_path)
	local cached = nil
	if file then
		cached = file:read()
		file:close()
	end

	-- Get current hash
	local git_path = debug.getinfo(1).source:sub(2, -24) .. ".git"
	local git = vim.fn.getftime(git_path)
	local hash = require("deadbeef.lib.hashing").hash(user_conf)
		.. (git == -1 and git_path or git)

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

vim.api.nvim_create_user_command("DeadbeefCompile", function()
	for name, _ in pairs(package.loaded) do
		if name:match "^deadbeef." then package.loaded[name] = nil end
	end
	M.compile()
	vim.notify("Deadbeef (info): compiled cache!", vim.log.levels.INFO)
	vim.cmd.colorscheme "deadbeef"
end, {})

if vim.g.deadbeef_debug then
	vim.api.nvim_create_autocmd("BufWritePost", {
		pattern = "*/deadbeef/*",
		callback = function()
			vim.schedule(function() vim.cmd "DeadbeefCompile" end)
		end,
	})
end

return M