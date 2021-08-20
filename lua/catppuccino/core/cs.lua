local M = {}

local cs_remaps

function M.get_remaps()
	return cs_remaps
end

function M.set_remaps(val)
	cs_remaps = val
end

function M.get_color_scheme(cs)
	local remaps = M.get_remaps()
	if not (next(remaps) == nil) then
		return vim.tbl_deep_extend("force", require("catppuccino.color_schemes." .. cs), remaps)
	else
		return require("catppuccino.color_schemes." .. cs)
	end
end

return M
