local M = {}

function M.get_palette()
	local flvr = vim.g.catppuccin_flavour

	local palette = require("catppuccin.core.palettes.mocha")
	if flvr == "mocha" or flvr == "latte" or flvr == "macchiato" or flvr == "frappe" then
		palette = require("catppuccin.core.palettes." .. flvr)
	end

	if type(vim.g.catppuccin_override_colors) == "table" then
		for k, v in pairs(vim.g.catppuccin_override_colors) do
			if palette[k] then
				palette[k] = v
			end
		end
	end

	return palette
end

return M
