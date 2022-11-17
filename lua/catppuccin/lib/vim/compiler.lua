local C = require "catppuccin"
local config = C.options
local M = {}

-- Reference: https://github.com/EdenEast/nightfox.nvim
local fmt = string.format

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

	local tbl = vim.tbl_deep_extend("keep", theme.custom_highlights, theme.integrations, theme.syntax, theme.editor)

	if config.term_colors == true then
		for k, v in pairs(theme.terminal) do
			table.insert(lines, fmt('vim.g.%s = "%s"', k, v))
		end
	end

	table.insert(lines, "vim.cmd[[")

	for group, color in pairs(tbl) do
		if color.link then
			table.insert(lines, fmt([[highlight! link %s %s]], group, color.link))
		else
			if color.style then color.style = table.concat(color.style, ",") end
			table.insert(
				lines,
				fmt(
					[[highlight %s guifg=%s guibg=%s gui=%s guisp=%s]],
					group,
					color.fg or "NONE",
					color.bg or "NONE",
					color.style or "NONE",
					color.sp or "NONE"
				)
			)
		end
	end
	table.insert(lines, "]]end)")
	if vim.fn.isdirectory(config.compile_path) == 0 then
		os.execute(string.format("mkdir %s %s", C.is_windows and "" or "-p", config.compile_path))
	end
	local file = io.open(config.compile_path .. C.path_sep .. flavour .. "_compiled.lua", "wb")
	local f = io.open("/tmp/vim.lua", "wb")
	f:write(table.concat(lines, "\n"))
	f:close()
	loadstring(table.concat(lines, "\n"), "=")()
	file:write(require("catppuccin").compiled)
	file:close()
end

return M
