local M = {}

function M.get_palette()
	local flvr = vim.g.catppuccin_flavour

	if flvr == "dusk" or flvr == "dawn" or flvr == "storm" then
		return require("catppuccin.core.palettes." .. flvr)
	end
	return require("catppuccin.core.palettes.dusk")
end

return M
