local M = {
	flavours = { "latte", "frappe", "macchiato", "mocha" },
	options = {
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
	path_sep = vim.startswith(vim.loop.os_uname().sysname, "Windows") and "\\" or "/",
}

function M.compile()
	if not vim.tbl_contains(M.flavours, vim.g.catppuccin_flavour) then
		vim.notify(
			"Catppuccin (error): Invalid flavour '"
				.. vim.g.catppuccin_flavour
				.. "', g:catppuccin_flavour must be 'latte', 'frappe', 'macchiato' or 'mocha'",
			vim.log.levels.ERROR
		)
	end
	require("catppuccin.lib.compiler").compile(vim.g.catppuccin_flavour)
end

function M.load()
	local compiled_path = M.options.compile_path .. M.path_sep .. vim.g.catppuccin_flavour .. "_compiled.lua"
	local file = io.open(compiled_path, "r")
	if file then
		file:close()
	else
		M.compile()
	end
	dofile(compiled_path)
end

vim.api.nvim_create_user_command("Catppuccin", function(inp)
	if not vim.tbl_contains(M.flavours, inp.args) then
		vim.notify(
			"Catppuccin (error): Invalid flavour '"
				.. vim.g.catppuccin_flavour
				.. "', g:catppuccin_flavour must be 'latte', 'frappe', 'macchiato' or 'mocha'",
			vim.log.levels.ERROR
		)
		return
	end
	vim.g.catppuccin_flavour = inp.args
	vim.api.nvim_command "colorscheme catppuccin"
end, {
	nargs = 1,
	complete = function(line)
		return vim.tbl_filter(function(val) return vim.startswith(val, line) end, M.flavours)
	end,
})

vim.api.nvim_create_user_command("CatppuccinCompile", function()
	M.compile()
	vim.notify("Catppuccin (info): compiled cache!", "info")
end, {})

function M.setup(user_conf)
	-- Set default flavour
	vim.g.catppuccin_flavour = vim.g.catppuccin_flavour or "mocha"

	-- Parsing user config
	user_conf = user_conf or {}
	M.options = vim.tbl_deep_extend("keep", user_conf, M.options)
	M.options.highlight_overrides.all = user_conf.custom_highlights or M.options.highlight_overrides.all

	-- Caching configuration
	local cached_date = M.options.compile_path .. M.path_sep .. "date.txt"

	local file = io.open(cached_date, "r")
	local last_date = nil
	if file then
		last_date = file:read "*a"
		file:close()
	end

	local cur_date = vim.fn.getftime(debug.getinfo(2).source:sub(2)) -- Get user config lua path & git commit
		+ vim.fn.getftime(debug.getinfo(1).source:sub(2, -24) .. ".git" .. M.path_sep .. "ORIG_HEAD")

	if last_date ~= tostring(cur_date) then
		file = io.open(cached_date, "w")
		if file then
			file:write(cur_date)
			file:close()
		end
		local cached_config = M.options.compile_path .. M.path_sep .. "config.json"
		file = io.open(cached_config, "r")

		local cached = {}
		if file then
			cached = vim.json.decode(file:read "*a")
			io.close(file)
		end

		-- Only re-compile if the setup table changed
		if vim.inspect(cached) ~= vim.inspect(user_conf) then -- TODO: Implements hashing if needed
			M.compile()
			file = io.open(cached_config, "w")
			if file then
				file:write(vim.json.encode(user_conf))
				file:close()
			end
		end
	end
end

return M
