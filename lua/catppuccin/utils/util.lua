local udata = require("catppuccin.utils.data")

local g = vim.g
local util = {}


local has_nvim07 = vim.fn.has("nvim-0.7")

function util.highlight(group, color)
	if has_nvim07 then
		if color.link then
			vim.api.nvim_set_hl(0, group, {
				link = color.link,
			})
		else
			if color.style then
				if color.style ~= "NONE" then
					for _, style in pairs(udata.split(color.style, ",")) do
						color[style] = true
					end
				end
			end

			color.style = nil
			vim.api.nvim_set_hl(0, group, color)
		end
	else
		-- Doc: :h highlight-gui
		local style = color.style and "gui=" .. color.style or "gui=NONE"
		local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
		local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
		local sp = color.sp and "guisp=" .. color.sp or ""
		local blend = color.blend and "blend=" .. color.blend or ""
		local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp .. " " .. blend
		vim.cmd(hl)
		if color.link then
			vim.cmd("highlight! link " .. group .. " " .. color.link)
		end
	end
end

function util.syntax(tbl)
	for group, colors in pairs(tbl) do
		util.highlight(group, colors)
	end
end

function util.properties(tbl)
	for property, value in pairs(tbl) do
		vim.o[property] = value
	end
end

function util.terminal(cp)
	g.terminal_color_0 = cp.overlay0
	g.terminal_color_8 = cp.overlay1

	g.terminal_color_1 = cp.red
	g.terminal_color_9 = cp.red

	g.terminal_color_2 = cp.green
	g.terminal_color_10 = cp.green

	g.terminal_color_3 = cp.yellow
	g.terminal_color_11 = cp.yellow

	g.terminal_color_4 = cp.blue
	g.terminal_color_12 = cp.blue

	g.terminal_color_5 = cp.pink
	g.terminal_color_13 = cp.pink

	g.terminal_color_6 = cp.sky
	g.terminal_color_14 = cp.sky

	g.terminal_color_7 = cp.text
	g.terminal_color_15 = cp.text
end

function util.load(theme)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	g.colors_name = "catppuccin"
	local custom_highlights = require("catppuccin.config").options.custom_highlights

	util.properties(theme.properties)
	util.syntax(theme.base)
	util.syntax(theme.integrations)
	util.syntax(custom_highlights)

	if require("catppuccin.config").options["term_colors"] then
		util.terminal(theme.terminal)
	end
end

return util
