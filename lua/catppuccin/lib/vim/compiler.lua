local path_sep = require("catppuccin").path_sep
local O = require("catppuccin").options
local M = {}

-- Reference: https://github.com/EdenEast/nightfox.nvim
local fmt = string.format

function M.compile(flavour)
	local theme = require("catppuccin.lib.mapper").apply(flavour)
	local lines = {
		string.format(
			[=[
return string.dump(function()
vim.command[[
if exists("colors_name")
	hi clear
endif
set termguicolors
set background=%s
let g:colors_name = "catppuccin-%s"]=],
			(flavour == "latte" and "light" or "dark"),
			flavour
		),
	}

	local tbl = vim.tbl_deep_extend("keep", theme.custom_highlights, theme.integrations, theme.syntax, theme.editor)

	if O.term_colors == true then
		for k, v in pairs(theme.terminal) do
			table.insert(lines, fmt("let g:%s = '%s'", k, v))
		end
	end

	for group, color in pairs(tbl) do
		if color.link and (theme.custom_highlights[group] and not theme.custom_highlights[group].link) then
			color.link = nil
		end
		if color.link then
			table.insert(lines, fmt([[highlight! link %s %s]], group, color.link))
		else
			if color.style then
				local rstyle = {}
				for _, style in pairs(color.style) do
					if O.no_italic and style == "italic" then style = nil end
					if O.no_bold and style == "bold" then style = nil end
					if O.no_underline and style == "underline" then style = nil end
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
	table.insert(lines, "]]end, true)")
	if vim.fn.isdirectory(O.compile_path) == 0 then vim.fn.mkdir(O.compile_path, "p") end
	local ls = loadstring or load

	if vim.g.catppuccin_debug then -- Debugging purpose
		local deb = io.open(O.compile_path .. path_sep .. flavour .. ".lua", "wb")
		if deb then
			deb:write(table.concat(lines, "\n"))
			deb:close()
		end
	end

	local f = ls(table.concat(lines, "\n"))
	if not f then
		local err_path = (path_sep == "/" and "/tmp" or os.getenv "TMP") .. "/catppuccin_error.lua"
		print(string.format(
			[[Catppuccin (error): Most likely some mistake made in your catppuccin config
You can open %s for debugging

If you think this is a bug, kindly open an issue and attach %s file
Below is the error message that we captured:
]],
			err_path,
			err_path
		))
		local err = io.open(err_path, "wb")
		if err then
			err:write(table.concat(lines, "\n"))
			err:close()
		end
		dofile(err_path)
		return
	end

	local file = assert(
		io.open(O.compile_path .. path_sep .. flavour, "wb"),
		"Permission denied while writing compiled file to " .. O.compile_path .. path_sep .. flavour
	)
	file:write(f())
	file:close()
end

return M
