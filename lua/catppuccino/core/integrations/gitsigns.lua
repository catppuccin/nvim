local M = {}

function M.get(cpt)
	return {
		GitSignsAdd = { fg = cpt.diff.add, bg = cpc.transparency and cpt.none or cpt.bg }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = cpt.diff.change, bg = cpc.transparency and cpt.none or cpt.bg }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = cpt.diff.remove, bg = cpc.transparency and cpt.none or cpt.bg }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
