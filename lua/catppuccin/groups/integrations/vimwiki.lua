local M = {}

function M.get()
	return {
		VimwikiLink = { fg = C.sky, bg = C.none },
		VimwikiHeaderChar = { fg = C.grey, bg = C.none },
		VimwikiHR = { fg = C.yellow, bg = C.none },
		VimwikiList = { fg = C.peach, bg = C.none },
		VimwikiTag = { fg = C.peach, bg = C.none },
		VimwikiMarkers = { fg = C.subtext0, bg = C.none },
		VimwikiHeader1 = { fg = C.peach, bg = C.none, style = { "bold" } },
		VimwikiHeader2 = { fg = C.green, bg = C.none, style = { "bold" } },
		VimwikiHeader3 = { fg = C.blue, bg = C.none, style = { "bold" } },
		VimwikiHeader4 = { fg = C.sky, bg = C.none, style = { "bold" } },
		VimwikiHeader5 = { fg = C.yellow, bg = C.none, style = { "bold" } },
		VimwikiHeader6 = { fg = C.mauve, bg = C.none, style = { "bold" } },
	}
end

return M
