local M = {}

local hig_remaps -- highlight groups

function M.get_hig_remaps()
	return hig_remaps
end

function M.set_hig_remaps(val)
	hig_remaps = val
end

return M
