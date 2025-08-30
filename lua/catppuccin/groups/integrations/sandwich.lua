local M = {}

M.url = "https://github.com/machakann/vim-sandwich"

function M.get()
	return {
		OperatorSandwichAdd = { bg = C.blue, fg = C.base },
		OperatorSandwichBuns = { bg = C.blue, fg = C.base },
		OperatorSandwichChange = { bg = C.blue, fg = C.base },
		OperatorSandwichDelete = { bg = C.blue, fg = C.base },
	}
end

return M
