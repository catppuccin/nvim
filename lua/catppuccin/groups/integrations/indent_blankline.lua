local M = {}

function M.get()
	local scope_color = O.integrations.indent_blankline.scope_color

	local hi = {
		IblIndent = { fg = C.surface0 },
		IblScope = { fg = C[scope_color] or C.text },
	}

	if O.integrations.indent_blankline.colored_indent_levels then
		hi["RainbowRed"] = { blend = 0, fg = C.red }
		hi["RainbowYellow"] = { blend = 0, fg = C.yellow }
		hi["RainbowBlue"] = { blend = 0, fg = C.blue }
		hi["RainbowOrange"] = { blend = 0, fg = C.peach }
		hi["RainbowGreen"] = { blend = 0, fg = C.green }
		hi["RainbowViolet"] = { blend = 0, fg = C.mauve }
		hi["RainbowCyan"] = { blend = 0, fg = C.teal }
	end

	return hi
end

return M
