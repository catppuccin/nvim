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
		set_prepared(true)
	end

	return {
		LightspeedLabel = {catppuccino2 = cp.catppuccino2_search, fg = cp.fg},
		LightspeedOverlapped = {catppuccino2 = cp.catppuccino2_visual, fg = cp.fg},
		LightspeedLabelDistant = {catppuccino2 = cp.magenta_br, fg = cp.fg},
		LightspeedLabelDistantOverlapped = {catppuccino2 = cp.magenta_br, fg = cp.fg},
		LightspeedShortcut = {catppuccino2 = cp.catppuccino2, fg = cp.orange, style = "italic"},
		LightspeedShortcutOverlapped = {catppuccino2 = cp.catppuccino2, fg = cp.orange, style = "bold"},
		LightspeedMaskedChar = {catppuccino2 = cp.catppuccino2, fg = cp.red, style = "undercurl"},
		LightspeedGreyWash = {catppuccino2 = cp.catppuccino2, fg = cp.comment},
		LightspeedUnlabeledMatch = {catppuccino2 = cp.catppuccino2, fg = cp.red_br, style = "underline"},
		LightspeedOneCharMatch = {catppuccino2 = cp.catppuccino2, fg = cp.red_br, style = "underline"},
		LightspeedUniqueChar = {catppuccino2 = cp.catppuccino2, fg = cp.catppuccino0, style = "strikethrough"},
		LightspeedPendingOpArea = {catppuccino2 = cp.catppuccino2, fg = cp.catppuccino0, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {catppuccino2 = cp.catppuccino2, fg = cp.catppuccino0, style = "strikethrough"},
		LightspeedCursor = {fg = cp.catppuccino2, catppuccino2 = cp.fg},
	}
end

return M
