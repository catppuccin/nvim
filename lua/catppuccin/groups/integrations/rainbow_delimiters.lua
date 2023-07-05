local M = {}

function M.get()
	return {
		RainbowDelimiterRed = { fg = C.red },
		RainbowDelimiterYellow = { fg = C.yellow },
		RainbowDelimiterBlue = { fg = C.blue },
		RainbowDelimiterOrange = { fg = C.peach },
		RainbowDelimiterGreen = { fg = C.green },
		RainbowDelimiterViolet = { fg = C.mauve },
		RainbowDelimiterCyan = { fg = C.teal },
	}
end

return M
