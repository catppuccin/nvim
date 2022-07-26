local M = {}

function M.get()
	return {
		VimwikiLink = { fg = cp.sky, bg = cp.none },
		VimwikiHeaderChar = { fg = cp.grey, bg = cp.none },
		VimwikiHR = { fg = cp.yellow, bg = cp.none },
		VimwikiList = { fg = cp.peach, bg = cp.none },
		VimwikiTag = { fg = cp.peach, bg = cp.none },
		VimwikiMarkers = { fg = cp.subtext0, bg = cp.none },
		VimwikiHeader1 = { fg = cp.peach, bg = cp.none, style = { "bold" } },
		VimwikiHeader2 = { fg = cp.green, bg = cp.none, style = { "bold" } },
		VimwikiHeader3 = { fg = cp.blue, bg = cp.none, style = { "bold" } },
		VimwikiHeader4 = { fg = cp.sky, bg = cp.none, style = { "bold" } },
		VimwikiHeader5 = { fg = cp.yellow, bg = cp.none, style = { "bold" } },
		VimwikiHeader6 = { fg = cp.mauve, bg = cp.none, style = { "bold" } },
	}
end

return M
