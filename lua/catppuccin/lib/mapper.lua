local M = {}

local lui = require("catppuccin.lib.ui")

local function get_integrations()
	local integrations = cnf["integrations"]
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

function M.apply()
	_G.cnf = require("catppuccin.config").options
	_G.cp = require("catppuccin.palettes").get_palette()

	cp.none = "NONE"
	cp.dim = lui.dim()

	local theme = {}
	theme.properties = require("catppuccin.groups.properties").get() -- nvim settings
	theme.syntax = require("catppuccin.groups.syntax").get()
	theme.editor = require("catppuccin.groups.editor").get()
	theme.integrations = get_integrations() -- plugins
	theme.terminal = require("catppuccin.groups.terminal").get() -- terminal colors
	local user_highlights = require("catppuccin.config").options.highlight_overrides
	theme.custom_highlights =
		vim.tbl_deep_extend("keep", user_highlights[vim.g.catppuccin_flavour] or {}, user_highlights.all or {})

	-- uninstantiate to avoid poluting global scope and because it's not needed anymore
	_G.cnf = nil
	_G.cp = nil

	return theme
end

return M
