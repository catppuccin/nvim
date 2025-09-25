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
	theme.editor = require("catppuccin.groups.editor").get()
	if vim.fn.has "nvim" == 1 then
		theme.editor = vim.tbl_deep_extend("force", theme.editor, require("catppuccin.groups.lsp").get())
	end

	theme.syntax = {}
	local syntax_modules = { "syntax" }
	if vim.fn.has "nvim" == 1 then
		table.insert(syntax_modules, "semantic_tokens")
		table.insert(syntax_modules, "treesitter")
	end
	for i = 1, #syntax_modules do
		theme.syntax =
			vim.tbl_deep_extend("force", theme.syntax, require("catppuccin.groups." .. syntax_modules[i]).get())
	end
	local final_integrations = {}

	-- https://github.com/catppuccin/nvim/pull/624
	if type(O.integrations.dap) == "table" and O.integrations.dap.enable_ui ~= nil then
		O.integrations.dap_ui = O.integrations.dap.enable_ui
		O.integrations.dap.enable_ui = nil
	end

	for integration in pairs(O.integrations) do
		local cot = false
		if type(O.integrations[integration]) == "table" then
			if O.integrations[integration].enabled == true then cot = true end
		else
			if O.integrations[integration] == true then
				local default = require("catppuccin").default_options.integrations[integration]
				O.integrations[integration] = type(default) == "table" and default or {}
				O.integrations[integration].enabled = true
				cot = true
			end
		end

		local ok, result = pcall(require, "catppuccin.groups.integrations." .. integration)
		if ok and result.get and cot then
			final_integrations = vim.tbl_deep_extend("force", final_integrations, result.get())
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
