local M = {}

local function get_integrations()
	local integrations = O["integrations"]
	local final_integrations = {}

	for integration in pairs(integrations) do
		local cot = false
		if type(integrations[integration]) == "table" then
			if integrations[integration]["enabled"] == true then
				cot = true
			end
		else
			if integrations[integration] == true then
				cot = true
			end
		end

		if cot then
			final_integrations = vim.tbl_deep_extend(
				"force",
				final_integrations,
				require("catppuccin.groups.integrations." .. integration).get()
			)
		end
	end

	return final_integrations
end

function M.apply(flavour)
	flavour = flavour or require("catppuccin").flavour
	-- Borrowing global var
	_G._O = O
	_G._C = C
	_G._U = U

	_G.O = require("catppuccin").options
	_G.C = require("catppuccin.palettes").get_palette(flavour)
	_G.U = require("catppuccin.utils.colors")

	C.none = "NONE"

	local dim_percentage = O.dim_inactive.percentage
	C.dim = O.dim_inactive.shade == "dark"
			and U.vary_color(
				{ latte = U.darken(C.base, dim_percentage, C.mantle) },
				U.darken(C.base, dim_percentage, C.mantle)
			)
		or U.vary_color(
			{ latte = U.lighten("#FBFCFD", dim_percentage, C.base) },
			U.lighten(C.surface0, dim_percentage, C.base)
		)

	local theme = {}
	theme.syntax = require("catppuccin.groups.syntax").get()
	theme.editor = require("catppuccin.groups.editor").get()
	theme.integrations = get_integrations() -- plugins
	theme.terminal = require("catppuccin.groups.terminal").get() -- terminal colors
	local user_highlights = require("catppuccin").options.highlight_overrides
	if type(user_highlights[flavour]) == "function" then
		user_highlights[flavour] = user_highlights[flavour](C)
	end
	theme.custom_highlights = vim.tbl_deep_extend(
		"keep",
		user_highlights[flavour] or {},
		type(user_highlights.all) == "function" and user_highlights.all(C) or user_highlights.all or {}
	)

	-- Returning global var
	_G.O = _G._O
	_G.C = _G._C
	_G.U = _G._U

	return theme
end

return M
