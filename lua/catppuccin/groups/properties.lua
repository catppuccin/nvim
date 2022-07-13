local M = {}

local ucolors = require("catppuccin.utils.colors")

function M.get()
	local props = {
		termguicolors = true,
		background = "dark",
	}

	if ucolors.assert_brightness(cp.base) then
		props["background"] = "light"
	end

	return props
end

return M
