local M = {}

M.url = "https://github.com/DanilaMihailov/beacon.nvim"

function M.get()
	return {
		Beacon = { bg = C.blue },
	}
end

return M
