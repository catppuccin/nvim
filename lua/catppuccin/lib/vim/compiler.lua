local C = require "catppuccin"
local O = C.options
local M = {}

-- Reference: https://github.com/EdenEast/nightfox.nvim
local fmt = string.format

function M.compile(flavour)
	local theme = require("catppuccin.lib.mapper").apply(flavour)
	local lines = {
		[[
require("catppuccin").compiled = string.dump(function()
vim.command[[
if exists("colors_name")
	hi clear
endif
set termguicolors
let g:colors_name = "catppuccin"]],
	}
	table.insert(lines, "set background=" .. (flavour == "latte" and [["light"]] or [["dark"]]))

	local tbl = vim.tbl_deep_extend("keep", theme.custom_highlights, theme.integrations, theme.syntax, theme.editor)

	if O.term_colors == true then
		for k, v in pairs(theme.terminal) do
			table.insert(lines, fmt("let g:%s = '%s'", k, v))
		end
	end

	for group, color in pairs(tbl) do
		if color.link then
			table.insert(lines, fmt([[highlight! link %s %s]], group, color.link))
		else
			if color.style then
				local rstyle = {}
				for _, style in ipairs(color.style) do
					if O.no_italic and style == "italic" then style = nil end
					if O.no_bold and style == "bold" then style = nil end
					if style then rstyle[#rstyle + 1] = style end
				end
				color.style = table.concat(rstyle, ",")
			end
			if color.style == "" then color.style = nil end
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
	if vim.fn.isdirectory(O.compile_path) == 0 then
		os.execute(string.format("mkdir %s %s", C.is_windows and "" or "-p", O.compile_path))
	end
	local file = io.open(O.compile_path .. C.path_sep .. flavour .. "_compiled.lua", "wb")
	local ls = load or loadstring
	ls(table.concat(lines, "\n"), "=")()
	file:write(require("catppuccin").compiled)
	file:close()
end

return M
