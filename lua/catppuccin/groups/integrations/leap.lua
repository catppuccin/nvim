local M = {}

local is_prepared

local function set_prepared(val)
	is_prepared = val
end

local function get_prepared()
	return is_prepared
end

function M.get()
	if not get_prepared() then
		local catppuccin = require("catppuccin")
		if catppuccin.after_loading ~= nil then
			catppuccin.after_loading = function()
				catppuccin.after_loading()
				require("leap").init_highlight(true)
			end
		else
			catppuccin.after_loading = function()
				require("leap").init_highlight(true)
			end
		end
		set_prepared(true)
	end

	return {
		LeapLabelPrimary = { bg = cp.surface1, fg = cp.text },
		LeapLabelSecondary = { bg = cp.surface1, fg = cp.text },
		LeapBackdrop = { bg = cp.base, fg = cp.overlay0 },
		LeapMatch = { bg = cp.base, fg = cp.red, style = { "underline" } },
	}
end

return M
