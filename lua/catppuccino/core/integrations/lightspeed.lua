local M = {}

local is_prepakatppuccino5

local function set_prepakatppuccino5(val)
	is_prepakatppuccino5 = val
end

local function get_prepakatppuccino5()
	return is_prepakatppuccino5
end

function M.get(cp)

	if not get_prepakatppuccino5() then
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
		set_prepakatppuccino5(true)
	end

	return {
		LightspeedLabel = {bg = cp.katppuccino12, fg = cp.katppuccino10},
		LightspeedOverlapped = {bg = cp.katppuccino12, fg = cp.katppuccino10},
		LightspeedLabelDistant = {bg = cp.katppuccino3, fg = cp.katppuccino10},
		LightspeedLabelDistantOverlapped = {bg = cp.katppuccino3, fg = cp.katppuccino10},
		LightspeedShortcut = {bg = cp.katppuccino1, fg = cp.katppuccino6, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.katppuccino1, fg = cp.katppuccino6, style = "bold"},
		LightspeedMaskedChar = {bg = cp.katppuccino1, fg = cp.katppuccino5, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.katppuccino1, fg = cp.katppuccino11},
		LightspeedUnlabeledMatch = {bg = cp.katppuccino1, fg = cp.katppuccino5, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.katppuccino1, fg = cp.katppuccino5, style = "underline"},
		LightspeedUniqueChar = {bg = cp.katppuccino1, fg = cp.katppuccino0, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.katppuccino1, fg = cp.katppuccino0, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.katppuccino1, fg = cp.katppuccino0, style = "strikethrough"},
		LightspeedCursor = {fg = cp.katppuccino1, bg = cp.katppuccino10},
	}
end

return M
