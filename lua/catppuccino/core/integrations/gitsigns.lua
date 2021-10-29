local M = {}

function M.get(cp)
	return {
		GitSignsAdd = { fg = cp.diff.add, catppuccino2 = cnf.transparency and cp.none or cp.catppuccino2 }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cp.diff.change, catppuccino2 = cnf.transparency and cp.none or cp.catppuccino2 }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cp.diff.remove, catppuccino2 = cnf.transparency and cp.none or cp.catppuccino2 }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
