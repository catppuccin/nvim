local M = {}

local utils = require("catppuccino.utils.util")

local function load(args)
	local catppuccino = require("catppuccino")

    if (catppuccino.before_loading ~= nil) then
        catppuccino.before_loading()
    end

	utils.load(require("catppuccino.core.mapper").apply(args))

    if (catppuccino.after_loading ~= nil) then
        catppuccino.after_loading()
    end
end

function M.main(option, args)
    option = option or "load"

	if (option == "load") then
		load(args)
    else
        print("Catppuccino: command was not recognized")
    end
end

return M
