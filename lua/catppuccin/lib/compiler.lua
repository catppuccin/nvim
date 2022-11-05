local path_sep = require("catppuccin").path_sep
local config = require("catppuccin").options
local M = {}

-- Credit: https://github.com/EdenEast/nightfox.nvim
local fmt = string.format

local function inspect(t)
	local list = {}
	for k, v in pairs(t) do
		local q = type(v) == "string" and [["]] or ""
		table.insert(list, fmt([[%s = %s%s%s]], k, q, v, q))
	end
	return fmt([[{ %s }]], table.concat(list, ", "))
end

function M.compile(flavour)
	local theme = require("catppuccin.lib.mapper").apply(flavour)
	local lines = { [[require("catppuccin").compiled = string.dump(function()]] }
	table.insert(
		lines,
		[[
if vim.g.colors_name then vim.cmd("hi clear") end
vim.o.termguicolors = true
vim.g.colors_name = "catppuccin"]]
	)
	table.insert(lines, "vim.o.background = " .. (flavour == "latte" and [["light"]] or [["dark"]]))
	if path_sep == "\\" then config.compile_path = config.compile_path:gsub("/", "\\") end

	local tbl = vim.tbl_deep_extend("keep", theme.custom_highlights, theme.integrations, theme.syntax, theme.editor)

	if config.term_colors == true then
		for k, v in pairs(theme.terminal) do
			table.insert(lines, fmt('vim.g.%s = "%s"', k, v))
		end
	end

	for group, color in pairs(tbl) do
		if color.style then
			for _, style in ipairs(color.style) do
				color[style] = true
			end
		end
		color.style = nil
		table.insert(lines, fmt([[vim.api.nvim_set_hl(0, "%s", %s)]], group, inspect(color)))
	end
	if vim.fn.isdirectory(config.compile_path) == 0 then
		os.execute(string.format("mkdir %s %s", path_sep == "\\" and "" or "-p", config.compile_path))
	end
	local file = io.open(config.compile_path .. path_sep .. flavour .. "_compiled.lua", "wb")
	table.insert(lines, "end)")
	loadstring(table.concat(lines, "\n"), "=")()
	file:write(require("catppuccin").compiled)
	file:close()
end

return M
