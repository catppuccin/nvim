local M = {}

local function load()
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

function M.main(option)
	option = option or "load"

	if option == "load" then
		load()
	else
		print("catppuccin: option was not recognized")
	end
end

return M
