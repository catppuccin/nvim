local M = {}

function M.load()
	require("catppucin.main").main("load")
end

function M.remap(hi_groups)
	hi_groups = hi_groups or {}
	require("catppucin.core.remaps").set_hig_remaps(hi_groups)
end

function M.setup(custom_opts)
	require("catppucin.config").set_options(custom_opts)
end

return M
