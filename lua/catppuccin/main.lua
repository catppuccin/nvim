local M = {}

local utils = require("catppuccin.utils.util")

local function load()
	local catppuccin = require("catppuccin")

	if catppuccin.before_loading ~= nil then
		catppuccin.before_loading()
	end

	-- colorscheme gets evaluated from mapper.lua
	local theme = require("catppuccin.core.mapper").apply()
	utils.load(theme)

	if catppuccin.after_loading ~= nil then
		catppuccin.after_loading()
	end
end

local function clear()
	vim.cmd("hi clear")
end

function M.main(option)
	option = option or "load"

	if option == "load" then
		load()
	elseif option == "clear" then
		clear()
	else
		print("catppuccin: option was not recognized")
	end
end

return M
