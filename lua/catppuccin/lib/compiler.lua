local path_sep = require("catppuccin").path_sep
local O = require("catppuccin").options
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
	local lines = {
		[[
require("catppuccin").compiled = string.dump(function()
if vim.g.colors_name then vim.cmd("hi clear") end
vim.o.termguicolors = true
vim.g.colors_name = "catppuccin"]],
	}
	table.insert(lines, "vim.o.background = " .. (flavour == "latte" and [["light"]] or [["dark"]]))
	if path_sep == "\\" then O.compile_path = O.compile_path:gsub("/", "\\") end

	local tbl = vim.tbl_deep_extend("keep", theme.custom_highlights, theme.integrations, theme.syntax, theme.editor)

	if O.term_colors == true then
		for k, v in pairs(theme.terminal) do
			table.insert(lines, fmt('vim.g.%s = "%s"', k, v))
		end
	end

	for group, color in pairs(tbl) do
		if color.style then
			for _, style in ipairs(color.style) do
				color[style] = true
				if O.no_italic and style == "italic" then color[style] = false end
				if O.no_bold and style == "bold" then color[style] = false end
			end
		end
		color.style = nil
		table.insert(lines, fmt([[vim.api.nvim_set_hl(0, "%s", %s)]], group, inspect(color)))
	end
	table.insert(lines, "end)")
	if vim.fn.isdirectory(O.compile_path) == 0 then
		os.execute(string.format("mkdir %s %s", path_sep == "\\" and "" or "-p", O.compile_path))
	end
	local file = io.open(O.compile_path .. path_sep .. flavour .. "_compiled.lua", "wb")
	loadstring(table.concat(lines, "\n"), "=")()
	file:write(require("catppuccin").compiled)
	file:close()
end

return M
