local M = {
	flavours = { "latte", "frappe", "macchiato", "mocha" },
	options = {
		background = {
			light = "latte",
			dark = "mocha",
		},
		compile_path = vim.fn.stdpath "cache" .. "/catppuccin",
		transparent_background = false,
		term_colors = false,
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
	},
	path_sep = ((jit and jit.os or nil) == "Windows") and "\\" or "/",
}

function M.compile()
	for _, flavour in pairs(M.flavours) do
		require("catppuccin.lib.compiler").compile(flavour)
	end
end

local lock = false -- Avoid g:colors_name reloading

function M.load(flavour)
	if lock then return end
	M.flavour = flavour or (vim.g.colors_name and M.options.background[vim.o.background] or M.flavour) or "mocha"
	local compiled_path = M.options.compile_path .. M.path_sep .. M.flavour .. "_compiled.lua"
	lock = true
	local f = loadfile(compiled_path)
	if not f then
		M.compile()
		f = loadfile(compiled_path)
	end
	f()
	lock = false
end

function M.setup(user_conf)
	-- Parsing user config
	user_conf = user_conf or {}
	M.options = vim.tbl_deep_extend("keep", user_conf, M.options)
	M.options.highlight_overrides.all = user_conf.custom_highlights or M.options.highlight_overrides.all

	M.flavour = M.options.flavour or vim.g.catppuccin_flavour or "mocha"

	if not vim.tbl_contains(M.flavours, M.flavour) then
		vim.notify(
			string.format(
				"Catppuccin (error): Invalid flavour '%s', flavour must be 'latte', 'frappe', 'macchiato' or 'mocha'",
				M.flavour
			),
			vim.log.levels.ERROR
		)
		return
	end

	-- Caching configuration
	local cached_date = M.options.compile_path .. M.path_sep .. "date.txt"

	local file = io.open(cached_date)
	local last_date = nil
	if file then
		last_date = file:read()
		file:close()
	end

	local stat = vim.loop.fs_stat(debug.getinfo(2).source:sub(2)) -- Get user config stat
	local git = vim.loop.fs_stat(debug.getinfo(1).source:sub(2, -24) .. ".git" .. M.path_sep .. "ORIG_HEAD") -- Get git stat
	local cur_date = (stat and stat.mtime.sec or 0) + (git and git.mtime.sec or 0)

	if not stat or last_date ~= tostring(cur_date) then
		file = io.open(cached_date, "wb")
		if file then
			file:write(cur_date)
			file:close()
		end

		local cached_config = M.options.compile_path .. M.path_sep .. "config.json"
		file = io.open(cached_config) -- Keep .json suffix for backward compatibility

		local cached_hash = nil
		if file then
			cached_hash = file:read()
			io.close(file)
		end

		local cur_hash = require("catppuccin.lib.hashing").hash(user_conf)

		-- Only re-compile if the setup table changed
		if cached_hash ~= tostring(cur_hash) then
			M.compile()
			file = io.open(cached_config, "wb")
			if file then
				file:write(cur_hash)
				file:close()
			end
		end
	end
end

vim.api.nvim_create_user_command("Catppuccin", function(inp)
	if not vim.tbl_contains(M.flavours, inp.args) then
		vim.notify(
			"Catppuccin (error): Invalid flavour '"
			.. inp.args
			.. "', flavour must be 'latte', 'frappe', 'macchiato' or 'mocha'",
			vim.log.levels.ERROR
		)
		return
	end
	vim.api.nvim_command("colorscheme catppuccin-" .. inp.args)
end, {
	nargs = 1,
	complete = function(line)
		return vim.tbl_filter(function(val) return vim.startswith(val, line) end, M.flavours)
	end,
})

vim.api.nvim_create_user_command("CatppuccinCompile", function()
	M.compile()
	vim.notify("Catppuccin (info): compiled cache!", vim.log.levels.INFO)
end, {})

return M
