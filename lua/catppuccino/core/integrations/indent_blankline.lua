local M = {}

function M.get(cp)

	local hi = {
		IndentBlanklineChar = { fg = cp.catppuccino13 },
	}

	if cnf.integrations.indent_blankline.colored_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cp.katppuccino8}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cp.katppuccino5}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cp.katppuccino7}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cp.katppuccino6}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cp.catppuccino10}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cp.katppuccino4}
	end

	return hi
end

return M
