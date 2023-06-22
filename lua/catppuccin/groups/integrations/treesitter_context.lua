local M = {}

function M.get()
	return O.transparent_background and { TreesitterContextBottom = { sp = C.dim, style = { "underline" } } } or {}
end

return M
