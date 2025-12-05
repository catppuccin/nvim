local M = {}

M.url = "https://github.com/saghen/blink.pairs"

function M.get()
	return {
		BlinkPairsBlue = { fg = C.sky },
		BlinkPairsOrange = { fg = C.flamingo },
		BlinkPairsPurple = { fg = C.mauve },
		BlinkPairsUnmatched = { fg = C.red },
		BlinkPairsMatchParen = { fg = C.yellow, style = { "bold" } },
	}
end

return M
