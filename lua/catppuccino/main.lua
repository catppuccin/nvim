local M = {}

local utils = require("catppuccino.utils.util")

function M.main(option)
    option = option or "load"

	if (option == "load") then
		utils.load(require("catppuccino.core.mapper").apply())
    else
        print("Catppuccino: Command was not recognized")
    end
end

return M
