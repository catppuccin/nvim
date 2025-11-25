local M = {}

M.url = "https://github.com/saghen/blink.pairs"

function M.get()
	return {
		BlinkPairsBlue = { fg = C.blue },
		BlinkPairsOrange = { fg = C.peach },
		BlinkPairsPurple = { fg = C.mauve },
		BlinkPairsUnmatched = { fg = C.red },
		MatchParen = { fg = C.yellow, style = { "bold" } },
	}
end

return M
