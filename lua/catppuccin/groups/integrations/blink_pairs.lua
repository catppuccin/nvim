local M = {}

M.url = "https://github.com/saghen/blink.pairs"

function M.get()
	return {
		BlinkPairsRed = { fg = C.red },
		BlinkPairsYellow = { fg = C.yellow },
		BlinkPairsBlue = { fg = C.blue },
		BlinkPairsOrange = { fg = C.peach },
		BlinkPairsGreen = { fg = C.green },
		BlinkPairsPurple = { fg = C.mauve },
		BlinkPairsCyan = { fg = C.teal },
		BlinkPairsUnmatched = { fg = C.red },
		BlinkPairsMatchParen = { link = "MatchParen" },
	}
end

return M
