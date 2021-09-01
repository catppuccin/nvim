local M = {}
local remaps_mod = require("catppuccino.core.remaps")

function M.get_color_scheme(cs)
	local remaps = remaps_mod.get_cs_remaps() or {}
	local good, color_scheme = pcall(require, "catppuccino.color_schemes." .. cs)

	if not good then
		return {
			status = false,
			msg = "Catppuccino: the colorscheme '" .. cs .. "' was not recognized. Defaulting to Dark Catppuccino.",
		},
			require("catppuccino.color_schemes.dark_catppuccino")
	end

	if not (next(remaps) == nil) then
		return { status = true }, vim.tbl_deep_extend("force", color_scheme, remaps)
	else
		return { status = true }, color_scheme
	end
end

return M
