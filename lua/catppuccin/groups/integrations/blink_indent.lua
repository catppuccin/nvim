local M = {}

M.url = "https://github.com/saghen/blink.indent"

function M.get()
	return {
		BlinkIndent = { fg = C.surface0 },
		BlinkIndentScope = { fg = C.overlay2 },

		BlinkIndentRed = { fg = C.red },
		BlinkIndentOrange = { fg = C.peach },
		BlinkIndentYellow = { fg = C.yellow },
		BlinkIndentGreen = { fg = C.green },
		BlinkIndentCyan = { fg = C.sky },
		BlinkIndentBlue = { fg = C.blue },
		BlinkIndentViolet = { fg = C.mauve },

		BlinkIndentRedUnderline = { sp = C.red, style = { "underline" } },
		BlinkIndentOrangeUnderline = { sp = C.peach, style = { "underline" } },
		BlinkIndentYellowUnderline = { sp = C.yellow, style = { "underline" } },
		BlinkIndentGreenUnderline = { sp = C.green, style = { "underline" } },
		BlinkIndentCyanUnderline = { sp = C.sky, style = { "underline" } },
		BlinkIndentBlueUnderline = { sp = C.blue, style = { "underline" } },
		BlinkIndentVioletUnderline = { sp = C.mauve, style = { "underline" } },
	}
end

return M
