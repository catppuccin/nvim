local M = {}

local is_prepared

local function set_prepared(val)
	is_prepared = val
end

local function get_prepared()
	return is_prepared
end

function M.get(cpt)

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
		LightspeedLabel = {bg = cpt.bg_search, fg = cpt.fg},
		LightspeedOverlapped = {bg = cpt.bg_visual, fg = cpt.fg},
		LightspeedLabelDistant = {bg = cpt.magenta_br, fg = cpt.fg},
		LightspeedLabelDistantOverlapped = {bg = cpt.magenta_br, fg = cpt.fg},
		LightspeedShortcut = {bg = cpt.bg, fg = cpt.orange, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cpt.bg, fg = cpt.orange, style = "bold"},
		LightspeedMaskedChar = {bg = cpt.bg, fg = cpt.red, style = "undercurl"},
		LightspeedGreyWash = {bg = cpt.bg, fg = cpt.comment},
		LightspeedUnlabeledMatch = {bg = cpt.bg, fg = cpt.red_br, style = "underline"},
		LightspeedOneCharMatch = {bg = cpt.bg, fg = cpt.red_br, style = "underline"},
		LightspeedUniqueChar = {bg = cpt.bg, fg = cpt.white_br, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cpt.bg, fg = cpt.white_br, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cpt.bg, fg = cpt.white_br, style = "strikethrough"},
		LightspeedCursor = {fg = cpt.bg, bg = cpt.fg},
	}
end

return M
