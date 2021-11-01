local M = {}

function M.load()
	require("katppuccino.main").main("load")
end

function M.remap(hi_groups)
	hi_groups = hi_groups or {}
	require("katppuccino.core.remaps").set_hig_remaps(hi_groups)
end

function M.setup(custom_opts)
	require("katppuccino.config").set_options(custom_opts)
end

return M
