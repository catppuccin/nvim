local M = {}

function M.get()

	local hi = {
		IndentBlanklineChar = { fg = cp.surface0 },
		IndentBlanklineContextChar = { fg = cp.text },
	}

	if cnf.integrations.indent_blankline.colored_indent_levels then
		hi["IndentBlanklineIndent6"] = {blend = 0, fg = cp.yellow}
		hi["IndentBlanklineIndent5"] = {blend = 0, fg = cp.red}
		hi["IndentBlanklineIndent4"] = {blend = 0, fg = cp.teal}
		hi["IndentBlanklineIndent3"] = {blend = 0, fg = cp.peach}
		hi["IndentBlanklineIndent2"] = {blend = 0, fg = cp.blue}
		hi["IndentBlanklineIndent1"] = {blend = 0, fg = cp.pink}
	end

	return hi
end

return M
