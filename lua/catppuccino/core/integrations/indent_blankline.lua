local M = {}

function M.get(cp)

	local hi = {
		IndentBlanklineChar = { fg = cp.catppuccino1 },
	}

	if cnf.integrations.indent_blankline.colocatppuccino6_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cp.yellow}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cp.catppuccino6}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cp.green}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cp.orange}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cp.blue}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cp.catppuccino5}
	end

	return hi
end

return M
