local M = {}

function M.get_palette(flavour)
	local flvr = flavour or vim.g.catppuccin_flavour or "macchiato"
	if not vim.tbl_contains({ "latte", "frappe", "macchiato", "mocha" }, vim.g.catppuccin_flavour) then
		require("catppuccin.utils.echo")(
			"Invalid flavour, g:catppuccin_flavour must be latte, frappe, macchiato or mocha",
			"error"
		)
	end
	local _, palette = pcall(require, "catppuccin.palettes." .. flvr)
	local cnf = require("catppuccin.config").options
	return vim.tbl_deep_extend("keep", cnf.color_overrides.all or {}, cnf.color_overrides[flvr] or {}, palette or {})
end

return M
