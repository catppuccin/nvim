local M = {}

function M.get()
	return {
		NvimSeparator = { bg = C.base, fg = C[O.integrations.colorful_winsep.color] },
	}
end

return M
