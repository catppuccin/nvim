local M = {}

function M.get(cp)

	local hi = {
		IndentBlanklineChar = { fg = cp.catppuccino13 },
	}

	if cnf.integrations.indent_blankline.colocatppuccino6_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cp.catppuccino9}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cp.catppuccino6}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cp.catppuccino8}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cp.catppuccino7}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cp.catppuccino10}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cp.katppuccino4}
	end

	return hi
end

return M
