local M = {}

function M.get_palette(flavour)
	local flvr = flavour or require("catppuccin").flavour or vim.g.catppuccin_flavour
	local _, palette = pcall(require, "catppuccin.palettes." .. flvr)
	local cnf = require("catppuccin").options
	return vim.tbl_deep_extend("keep", cnf.color_overrides.all or {}, cnf.color_overrides[flvr] or {}, palette or {})
end

return M
