local M = {}

function M.get(cp)

	local hi = {
		IndentBlanklineChar = { fg = cp.catppuccin12 },
	}

	if cnf.integrations.indent_blankline.colored_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cp.catppuccin8}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cp.catppuccin5}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cp.catppuccin7}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cp.catppuccin6}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cp.catppuccin9}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cp.catppuccin4}
	end

	return hi
end

return M
