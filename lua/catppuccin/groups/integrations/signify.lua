local M = {}

M.url = "https://github.com/mhinz/vim-signify"

function M.get()
	return {
		SignifySignAdd = { fg = C.green },
		SignifySignChange = { fg = C.yellow },
		SignifySignDelete = { fg = C.red },
	}
end

return M
