local M = {}

function M.load()
    require("catppuccino.main").main("load")
end

function M.setup(custom_opts)
    require("catppuccino.config").set_options(custom_opts)
end

return M
