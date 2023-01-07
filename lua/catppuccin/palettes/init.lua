local M = {}

function M.get_palette(flavour)
	local flvr = flavour or require("catppuccin").flavour or vim.g.catppuccin_flavour or "frappe"
	local _, palette = pcall(require, "catppuccin.palettes." .. flvr)
	local O = require("catppuccin").options
	return vim.tbl_deep_extend("keep", O.color_overrides.all or {}, O.color_overrides[flvr] or {}, palette or {})
end

return M
