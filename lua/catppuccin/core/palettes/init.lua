local M = {}

function M.get_palette()
	local flvr = vim.g.catppuccin_flavour

	if flvr == "mocha" or flvr == "latte" or flvr == "macchiato" or flvr == "frappe" then
		return require("catppuccin.core.palettes." .. flvr)
	end
	return require("catppuccin.core.palettes.mocha")
end

return M
