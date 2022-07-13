local M = {}

local flavours = {"latte", "frappe", "macchiato", "mocha"}

local command = vim.api.nvim_create_user_command

command("Catppuccin", function(inp)
	if not vim.tbl_contains(flavours, inp.args) then
		local echo = require("catppuccin.utils.echo")
		echo("Invalid flavour", "info")
		return
	end
	vim.g.catppuccin_flavour = inp.args
	vim.cmd "colorscheme catppuccin"
end, {
	nargs = 1,
	complete = function(line)
		return vim.tbl_filter(function(val)
			return vim.startswith(val, line)
		end, flavours)
	end
})

command("CatppuccinCompile", function()
	require("catppuccin.utils.util").compile()
end, {})

command("CatppuccinClean", function()
	require("catppuccin.utils.util").clean()
end, {})

function M.load()
	local catppuccin = require("catppuccin")

	if catppuccin.before_loading ~= nil then
		catppuccin.before_loading()
	end

	local loaded = nil
	local config = require("catppuccin.config").options

	if config.compile.enable == true then
		local compiled_path = config.compile.path
			.. (vim.loop.os_uname().sysname == "Windows" and "\\" or "/")
			.. vim.g.catppuccin_flavour .. config.compile.suffix .. ".lua"
		local f = io.open(compiled_path, "r")
		if f ~= nil then
			io.close(f)
			vim.cmd("luafile " .. compiled_path)
			loaded = true
		end
	end

	if not loaded then -- colorscheme gets evaluated from mapper.lua
		local theme = require("catppuccin.core.mapper").apply()
		local utils = require("catppuccin.utils.util")
		utils.load(theme)

		if catppuccin.after_loading ~= nil then
			catppuccin.after_loading()
		end
	end

	vim.api.nvim_exec_autocmds("User", { pattern = "CatppuccinLoaded" })
end

function M.setup(custom_opts)
	require("catppuccin.config").set_options(custom_opts)
end

return M
