local M = {}

M.url = "https://github.com/nvim-telekasten/telekasten.nvim"

function M.get()
	return {
		tkLink = { fg = C.blue },
		tkBrackets = { fg = C.pink },
		tkTag = { fg = C.sky },
	}
end

return M
