local M = {}

function M.get(cp)
	return {
		GitSignsAdd = { fg = cp.catppuccin0, bg = cnf.transparency and cp.none or cp.catppuccin1 }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cp.catppuccin8, bg = cnf.transparency and cp.none or cp.catppuccin1 }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cp.catppuccin5, bg = cnf.transparency and cp.none or cp.catppuccin1 }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
