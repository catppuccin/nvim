local M = {}

function M.get(cp)
	return {
		GitSignsAdd = { fg = cp.catppuccino10, bg = cnf.transparency and cp.none or cp.katppuccino1 }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cp.catppuccino9, bg = cnf.transparency and cp.none or cp.katppuccino1 }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cp.katppuccino5, bg = cnf.transparency and cp.none or cp.katppuccino1 }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
