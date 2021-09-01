local M = {}

function M.load(args)
	require("catppuccino.main").main("load", args)
end

function M.remap(colorscheme, hi_groups)
	colorscheme = colorscheme or {}
	hi_groups = hi_groups or {}

	local remaps_mod = require("catppuccino.core.remaps")

	remaps_mod.set_cs_remaps(colorscheme)
	remaps_mod.set_hig_remaps(hi_groups)
end

function M.setup(custom_opts)
	require("catppuccino.config").set_options(custom_opts)
end

return M
