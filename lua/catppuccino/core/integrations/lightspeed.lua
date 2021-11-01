local M = {}

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
		LightspeedLabel = {bg = cp.catppuccino13, fg = cp.catppuccino11},
		LightspeedOverlapped = {bg = cp.catppuccino13, fg = cp.catppuccino11},
		LightspeedLabelDistant = {bg = cp.katppuccino3, fg = cp.catppuccino11},
		LightspeedLabelDistantOverlapped = {bg = cp.katppuccino3, fg = cp.catppuccino11},
		LightspeedShortcut = {bg = cp.katppuccino1, fg = cp.catppuccino7, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.katppuccino1, fg = cp.catppuccino7, style = "bold"},
		LightspeedMaskedChar = {bg = cp.katppuccino1, fg = cp.catppuccino6, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.katppuccino1, fg = cp.catppuccino12},
		LightspeedUnlabeledMatch = {bg = cp.katppuccino1, fg = cp.catppuccino6, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.katppuccino1, fg = cp.catppuccino6, style = "underline"},
		LightspeedUniqueChar = {bg = cp.katppuccino1, fg = cp.katppuccino0, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.katppuccino1, fg = cp.katppuccino0, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.katppuccino1, fg = cp.katppuccino0, style = "strikethrough"},
		LightspeedCursor = {fg = cp.katppuccino1, bg = cp.catppuccino11},
	}
end

return M
