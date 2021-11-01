local M = {}

local utils = require("katppuccino.utils.util")

local function load()
	local katppuccino = require("katppuccino")

	if katppuccino.before_loading ~= nil then
		katppuccino.before_loading()
	end

	-- colorscheme gets evaluated from mapper.lua
	local theme = require("katppuccino.core.mapper").apply()
	utils.load(theme)

	if katppuccino.after_loading ~= nil then
		katppuccino.after_loading()
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
		print("katppuccino: option was not recognized")
	end
end

return M
