local M = {}

function M.get()
	return {
		IlluminatedWordText = { bg = U.darken(C.surface1, 0.7, C.base) },
		IlluminatedWordRead = { bg = U.darken(C.surface1, 0.7, C.base) },
		IlluminatedWordWrite = {
			bg = U.darken(C.surface1, 0.7, C.base),
			style = O.integrations.illuminate.lsp and { "standout" } or {},
		},
	}
end

return M
