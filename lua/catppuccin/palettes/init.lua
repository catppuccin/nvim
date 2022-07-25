local M = {}

function M.get_palette(flavour)
	local flvr = flavour or vim.g.catppuccin_flavour or "macchiato"
	local _, palette = pcall(require, "catppuccin.palettes." .. flvr)
	local cnf = require("catppuccin.config").options
	return vim.tbl_deep_extend("keep", cnf.color_overrides.all or {}, cnf.color_overrides[flvr] or {}, palette or {})
end

return M
