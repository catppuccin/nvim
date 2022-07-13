local M = {}
local g = vim.g

function M.highlight(group, color)
	if color.link then
		vim.api.nvim_set_hl(0, group, {
			link = color.link,
		})
	else
		if color.style then
			for _, style in ipairs(color.style) do
				color[style] = true
			end
		end

		color.style = nil
		vim.api.nvim_set_hl(0, group, color)
	end
end

function M.syntax(tbl)
	for group, colors in pairs(tbl) do
		M.highlight(group, colors)
	end
end

function M.properties(tbl)
	for property, value in pairs(tbl) do
		vim.o[property] = value
	end
end

function M.load(theme)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	g.colors_name = "catppuccin"
	local custom_highlights = require("catppuccin.config").options.custom_highlights

	M.properties(theme.properties)
	M.syntax(theme.editor)
	M.syntax(theme.syntax)
	M.syntax(theme.integrations)
	M.syntax(custom_highlights)

	if require("catppuccin.config").options["term_colors"] then
		M.properties(theme.terminal)
	end
end

return M
