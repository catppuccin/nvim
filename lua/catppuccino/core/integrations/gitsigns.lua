local M = {}
local util = require("catppuccino.utils.util")

function M.get(cpt)
	return {
		GitSignsAdd = { fg = util.darken(cpt.diff.add, 0.50), bg = cpt.bg }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = util.darken(cpt.diff.change, 0.50), bg = cpt.bg }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = util.darken(cpt.diff.delete, 0.50), bg = cpt.bg }, -- diff mode: Deleted line |diff.txt|
	}
end

return M
