local M = {}

function M.get(cpt)

	local hi = {
		IndentBlanklineChar = { fg = cpt.gray },
	}

	if cpc.integrations.indent_blankline.colored_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = "nocombine", fg = cpt.yellow}
		hi["IndentBlanklineIndent5"] = {blend = "nocombine", fg = cpt.red}
		hi["IndentBlanklineIndent4"] = {blend = "nocombine", fg = cpt.green}
		hi["IndentBlanklineIndent3"] = {blend = "nocombine", fg = cpt.orange}
		hi["IndentBlanklineIndent2"] = {blend = "nocombine", fg = cpt.blue}
		hi["IndentBlanklineIndent1"] = {blend = "nocombine", fg = cpt.magenta}
	end

	return hi
end

return M
