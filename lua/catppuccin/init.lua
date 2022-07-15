local M = {}

function M.load()
	require("catppuccin.main").main("load")
end

function M.setup(custom_opts)
	require("catppuccin.config").set_options(custom_opts)
end

return M
