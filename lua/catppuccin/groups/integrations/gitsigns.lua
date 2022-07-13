local M = {}

function M.get()
	local cnf = require("catppuccin.config").options
	local bg_highlight = (cnf.transparent_background and cnf.dim_inactive.enable and cp.dim)
		or (cnf.transparent_background and "NONE")
		or (cnf.dim_inactive.enable and cp.dim)
		or cp.base
	return {
		GitSignsAdd = { fg = cp.green, bg = bg_highlight }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cp.yellow, bg = bg_highlight }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cp.red, bg = bg_highlight }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
