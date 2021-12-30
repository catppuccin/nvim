local M = {}

function M.get(cp)

	local hi = {
		IndentBlanklineChar = { fg = cp.black3 },
		IndentBlanklineContextChar = { fg = cp.white },
	}

	if cnf.integrations.indent_blankline.colored_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cp.yellow}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cp.red}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cp.teal}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cp.peach}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cp.blue}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cp.pink}
	end

	return hi
end

return M
