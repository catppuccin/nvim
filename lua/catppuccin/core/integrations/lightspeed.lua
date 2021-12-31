local M = {}

local is_prepared

local function set_prepared(val)
	is_prepared = val
end

local function get_prepared()
	return is_prepared
end

function M.get(cp)

	if not get_prepared() then
		local catppuccin = require("catppuccin")
		if catppuccin.after_loading ~= nil then
			catppuccin.after_loading = function ()
				catppuccin.after_loading()
				require'lightspeed'.init_highlight()
			end
		else
			catppuccin.after_loading = function ()
				require'lightspeed'.init_highlight()
			end
		end
		set_prepared(true)
	end

	return {
		LightspeedLabel = {bg = cp.black4, fg = cp.white},
		LightspeedOverlapped = {bg = cp.black4, fg = cp.white},
		LightspeedLabelDistant = {bg = cp.magenta, fg = cp.white},
		LightspeedLabelDistantOverlapped = {bg = cp.magenta, fg = cp.white},
		LightspeedShortcut = {bg = cp.black2, fg = cp.peach, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.black2, fg = cp.peach, style = "bold"},
		LightspeedMaskedChar = {bg = cp.black2, fg = cp.red, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.black2, fg = cp.gray0},
		LightspeedUnlabeledMatch = {bg = cp.black2, fg = cp.red, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.black2, fg = cp.red, style = "underline"},
		LightspeedUniqueChar = {bg = cp.black2, fg = cp.green, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.black2, fg = cp.green, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.black2, fg = cp.green, style = "strikethrough"},
		LightspeedCursor = {fg = cp.black2, bg = cp.white},
	}
end

return M
