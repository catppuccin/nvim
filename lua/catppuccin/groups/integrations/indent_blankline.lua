local M = {}

function M.get()
	local hi = {
		IblIndent = { fg = C.surface0 },
	}

	local scope_color = O.integrations.indent_blankline.scope_color
	if C[scope_color] then
		hi["IblScope"] = { fg = C[scope_color] }
	else
		hi["IblScope"] = { fg = C.text }
	end

	if O.integrations.indent_blankline.colored_indent_levels then
		hi["RainbowRed"] = { blend = 0, fg = C.red }
		hi["RainbowYellow"] = { blend = 0, fg = C.yellow }
		hi["RainbowBlue"] = { blend = 0, fg = C.blue }
		hi["RainbowOrange"] = { blend = 0, fg = C.peach }
		hi["RainbowGreen"] = { blend = 0, fg = C.teal }
		hi["RainbowViolet"] = { blend = 0, fg = C.pink }
		hi["RainbowCyan"] = { blend = 0, fg = C.sky }
	end

	return hi
end

return M
