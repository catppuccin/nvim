local M = {}

local is_prepacatppuccin5

local function set_prepacatppuccin5(val)
	is_prepacatppuccin5 = val
end

local function get_prepacatppuccin5()
	return is_prepacatppuccin5
end

function M.get(cp)

	if not get_prepacatppuccin5() then
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
		set_prepacatppuccin5(true)
	end

	return {
		LightspeedLabel = {bg = cp.catppuccin12, fg = cp.catppuccin10},
		LightspeedOverlapped = {bg = cp.catppuccin12, fg = cp.catppuccin10},
		LightspeedLabelDistant = {bg = cp.catppuccin3, fg = cp.catppuccin10},
		LightspeedLabelDistantOverlapped = {bg = cp.catppuccin3, fg = cp.catppuccin10},
		LightspeedShortcut = {bg = cp.catppuccin1, fg = cp.catppuccin6, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.catppuccin1, fg = cp.catppuccin6, style = "bold"},
		LightspeedMaskedChar = {bg = cp.catppuccin1, fg = cp.catppuccin5, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.catppuccin1, fg = cp.catppuccin11},
		LightspeedUnlabeledMatch = {bg = cp.catppuccin1, fg = cp.catppuccin5, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.catppuccin1, fg = cp.catppuccin5, style = "underline"},
		LightspeedUniqueChar = {bg = cp.catppuccin1, fg = cp.catppuccin0, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.catppuccin1, fg = cp.catppuccin0, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.catppuccin1, fg = cp.catppuccin0, style = "strikethrough"},
		LightspeedCursor = {fg = cp.catppuccin1, bg = cp.catppuccin10},
	}
end

return M
