local M = {}

function M.load(args)
	require("catppuccino.main").main("load", args)
end

function M.setup(custom_opts, remaps)
	remaps = remaps or {}
	require("catppuccino.config").set_options(custom_opts)
	require("catppuccino.core.cs").set_remaps(remaps)
end

return M
