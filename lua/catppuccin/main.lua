local M = {}

local utils = require("catppucin.utils.util")

local function load()
	local catppucin = require("catppucin")

	if catppucin.before_loading ~= nil then
		catppucin.before_loading()
	end

	-- colorscheme gets evaluated from mapper.lua
	local theme = require("catppucin.core.mapper").apply()
	utils.load(theme)

	if catppucin.after_loading ~= nil then
		catppucin.after_loading()
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
		print("catppucin: option was not recognized")
	end
end

return M
