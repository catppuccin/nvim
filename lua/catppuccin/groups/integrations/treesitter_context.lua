local M = {}

function M.get()
	local config = require("catppuccin.config").options
	return {
		NormalFloat = { bg = config.transparent_background and cp.none or cp.mantle },
	}
end

return M
