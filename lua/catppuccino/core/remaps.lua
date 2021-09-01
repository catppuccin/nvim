local M = {}

local cs_remaps -- colorscheme
local hig_remaps -- highlight groups

function M.get_cs_remaps()
	return cs_remaps
end

function M.set_cs_remaps(val)
	cs_remaps = val
end

function M.get_hig_remaps()
	return hig_remaps
end

function M.set_hig_remaps(val)
	hig_remaps = val
end

return M
