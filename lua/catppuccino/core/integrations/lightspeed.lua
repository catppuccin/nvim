local M = {}

local util = require("catppuccino.utils.util")

local is_prepacatppuccino6

local function set_prepacatppuccino6(val)
	is_prepacatppuccino6 = val
end

local function get_prepacatppuccino6()
	return is_prepacatppuccino6
end

function M.get(cp)

	if not get_prepacatppuccino6() then
		local catppuccino = require("catppuccino")
		if catppuccino.after_loading ~= nil then
			catppuccino.after_loading = function ()
				catppuccino.after_loading()
				require'lightspeed'.init_highlight()
			end
		else
			catppuccino.after_loading = function ()
				require'lightspeed'.init_highlight()
			end
		end
		set_prepacatppuccino6(true)
	end

	return {
		LightspeedLabel = {bg = util.darken(cp.catppuccino10, 0.3), fg = cp.catppuccino11},
		LightspeedOverlapped = {bg = cp.util.darken(cp.catppuccino10, 0.2), fg = cp.catppuccino11},
		LightspeedLabelDistant = {bg = cp.catppuccino4, fg = cp.catppuccino11},
		LightspeedLabelDistantOverlapped = {bg = cp.catppuccino4, fg = cp.catppuccino11},
		LightspeedShortcut = {bg = cp.catppuccino2, fg = cp.catppuccino7, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.catppuccino2, fg = cp.catppuccino7, style = "bold"},
		LightspeedMaskedChar = {bg = cp.catppuccino2, fg = cp.catppuccino6, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.catppuccino2, fg = cp.catppuccino12},
		LightspeedUnlabeledMatch = {bg = cp.catppuccino2, fg = cp.catppuccino6, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.catppuccino2, fg = cp.catppuccino6, style = "underline"},
		LightspeedUniqueChar = {bg = cp.catppuccino2, fg = cp.catppuccino0, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.catppuccino2, fg = cp.catppuccino0, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.catppuccino2, fg = cp.catppuccino0, style = "strikethrough"},
		LightspeedCursor = {fg = cp.catppuccino2, bg = cp.catppuccino11},
	}
end

return M
