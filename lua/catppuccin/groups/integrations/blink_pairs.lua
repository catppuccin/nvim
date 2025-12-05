local M = {}

M.url = "https://github.com/saghen/blink.pairs"

function M.get()
	return {
		BlinkPairsBlue = { fg = C.blue },
		BlinkPairsOrange = { fg = C.peach },
		BlinkPairsPurple = { fg = C.mauve },
		BlinkPairsRed = { fg = C.red },
		BlinkPairsYellow = { fg = C.yellow },
		BlinkPairsGreen = { fg = C.green },
		BlinkPairsCyan = { fg = C.teal },
		BlinkPairsUnmatched = { fg = C.red },
		BlinkPairsMatchParen = { link = "MatchParen" },
	}
end

return M
