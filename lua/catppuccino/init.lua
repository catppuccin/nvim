local M = {}

function M.load()
	require("catppuccino.main").main("load")
end

function M.setup(custom_opts, remaps)
	remaps = remaps or {}
	require("catppuccino.config").set_options(custom_opts)
	require("catppuccino.core.cs").set_remaps(remaps)
end

return M
