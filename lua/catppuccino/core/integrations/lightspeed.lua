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
		LightspeedLabel = {bg = cp.bg_search, fg = cp.fg},
		LightspeedOverlapped = {bg = cp.bg_visual, fg = cp.fg},
		LightspeedLabelDistant = {bg = cp.magenta_br, fg = cp.fg},
		LightspeedLabelDistantOverlapped = {bg = cp.magenta_br, fg = cp.fg},
		LightspeedShortcut = {bg = cp.bg, fg = cp.orange, style = "italic"},
		LightspeedShortcutOverlapped = {bg = cp.bg, fg = cp.orange, style = "bold"},
		LightspeedMaskedChar = {bg = cp.bg, fg = cp.red, style = "undercurl"},
		LightspeedGreyWash = {bg = cp.bg, fg = cp.comment},
		LightspeedUnlabeledMatch = {bg = cp.bg, fg = cp.red_br, style = "underline"},
		LightspeedOneCharMatch = {bg = cp.bg, fg = cp.red_br, style = "underline"},
		LightspeedUniqueChar = {bg = cp.bg, fg = cp.white_br, style = "strikethrough"},
		LightspeedPendingOpArea = {bg = cp.bg, fg = cp.white_br, style = "strikethrough"},
		LightspeedPendingChangeOpArea = {bg = cp.bg, fg = cp.white_br, style = "strikethrough"},
		LightspeedCursor = {fg = cp.bg, bg = cp.fg},
	}
end

return M
