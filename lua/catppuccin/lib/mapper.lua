local M = {}

function M.apply(flavour)
	flavour = flavour or require("catppuccin").flavour

	local _O, _C, _U = O, C, U -- Borrowing global var (setfenv doesn't work with require)
	O = require("catppuccin").options
	C = require("catppuccin.palettes").get_palette(flavour)
	U = require "catppuccin.utils.colors"

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
	local final_integrations = {}

	for integration in pairs(O.integrations) do
		local cot = false
		if type(O.integrations[integration]) == "table" then
			if O.integrations[integration].enabled == true then cot = true end
		else
			if O.integrations[integration] == true then
				O.integrations[integration] = require("catppuccin").default_options[integration] or {}
				O.integrations[integration].enabled = true
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
	theme.integrations = final_integrations -- plugins
	theme.terminal = require("catppuccin.groups.terminal").get() -- terminal colors
	local user_highlights = O.highlight_overrides
	if type(user_highlights[flavour]) == "function" then user_highlights[flavour] = user_highlights[flavour](C) end
	theme.custom_highlights = vim.tbl_deep_extend(
		"keep",
		user_highlights[flavour] or {},
		type(user_highlights.all) == "function" and user_highlights.all(C) or user_highlights.all or {}
	)

	O, C, U = _O, _C, _U -- Returning global var

	return theme
end

return M
