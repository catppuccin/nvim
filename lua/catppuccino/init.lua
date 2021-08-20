local M = {}

function M.load()

	local catppuccino = require("catppuccino")

    if (catppuccino.before_loading ~= nil) then
        catppuccino.before_loading()
    end

    require("catppuccino.main").main("load")

    if (catppuccino.after_loading ~= nil) then
        catppuccino.after_loading()
    end
end

function M.setup(custom_opts)
    require("catppuccino.config").set_options(custom_opts)
end

return M
