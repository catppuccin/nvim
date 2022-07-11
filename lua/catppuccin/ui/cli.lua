local M = {}

function M.flavour_completion()
	return vim.tbl_keys(require("catppuccin.utils.data").set_of({
		"latte",
		"frappe",
		"macchiato",
		"mocha",
	}))
end

return M
