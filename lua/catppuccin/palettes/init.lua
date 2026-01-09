local M = {}

function M.get_palette(flavour)
	local flvr = flavour or require("catppuccin").flavour or vim.g.catppuccin_flavour or "mocha"
	local _, palette = pcall(require, "catppuccin.palettes." .. flvr)
	local O = require("catppuccin").options
	local ans = vim.tbl_deep_extend("keep", O.color_overrides.all or {}, O.color_overrides[flvr] or {}, palette or {})

	--[[ 
		Kitty makes Neovim transparent if its own terminal background matches Neovim, 
		so we need to adjust the color channels to make sure people don't suddenly
		have a transparent background if they haven't specified it.

		Unfortunately, this currently means all users on Kitty will have all their
		palette colors slightly offset.

		ref: https://github.com/kovidgoyal/kitty/issues/2917
	--]]
	if O.kitty then
		for accent, hex in pairs(ans) do
			local red_green_string = hex:sub(1, 4)
			local blue_value = tonumber(hex:sub(5, 6), 16)

			-- Slightly increase or decrease brightness of the blue channel
			blue_value = blue_value == 255 and blue_value - 1 or blue_value + 1
			ans[accent] = string.format("%s%.2x", red_green_string, blue_value)
		end
	end

	return ans
end

return M
