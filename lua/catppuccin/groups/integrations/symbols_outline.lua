local M = {}

M.url = "https://github.com/simrat39/symbols-outline.nvim"

function M.get()
	return {
		-- https://github.com/simrat39/symbols-outline.nvim
		FocusedSymbol = { fg = C.yellow, bg = C.none },

		-- https://github.com/hedyhli/outline.nvim
		OutlineCurrent = { link = "FocusedSymbol" },
	}
end

return M
