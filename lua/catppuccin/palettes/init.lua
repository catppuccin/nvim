local M = {}

function M.get_palette(flavour)
	local flvr = flavour or vim.g.catppuccin_flavour
	if flvr == nil then
		flvr = "macchiato"
		require("catppuccin.utils.echo")(
			"g:catppuccin_flavour must be set before calling require('catppuccin.palettes').get_palette() Defaulting to macchiato flavour",
			"info"
		)
	end
	if not vim.tbl_contains({ "latte", "frappe", "macchiato", "mocha" }, flvr) then
		require("catppuccin.utils.echo")(
			"Invalid flavour, vim.g.catppuccin_flavour (lua) or g:catppuccin_flavour (vimscript) must be 'latte', 'frappe', 'macchiato' or 'mocha'. Check your spelling.",
			"error"
		)
	end
	local _, palette = pcall(require, "catppuccin.palettes." .. flvr)
	local cnf = require("catppuccin.config").options
	return vim.tbl_deep_extend("keep", cnf.color_overrides.all or {}, cnf.color_overrides[flvr] or {}, palette or {})
end

return M
