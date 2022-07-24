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

function M.properties(tbl, type)
	for property, value in pairs(tbl) do
		vim[type][property] = value
	end
end

function M.load(theme)
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	g.colors_name = "catppuccin"

	M.properties(theme.properties, "o")
	M.syntax(vim.tbl_deep_extend("keep", theme.custom_highlights, theme.integrations, theme.syntax, theme.editor))

	if require("catppuccin.config").options["term_colors"] then
		M.properties(theme.terminal, "g")
	end
end

return M
