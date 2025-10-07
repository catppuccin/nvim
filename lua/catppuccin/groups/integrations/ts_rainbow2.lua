local M = {}

M.url = "https://github.com/HiPhish/nvim-ts-rainbow2"

function M.get()
	return {
		TSRainbowRed = { fg = C.red },
		TSRainbowYellow = { fg = C.yellow },
		TSRainbowBlue = { fg = C.blue },
		TSRainbowOrange = { fg = C.peach },
		TSRainbowGreen = { fg = C.green },
		TSRainbowViolet = { fg = C.mauve },
		TSRainbowCyan = { fg = C.teal },
	}
end

return M
