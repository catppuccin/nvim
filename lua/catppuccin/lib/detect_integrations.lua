local M = {}

local integration_mappings = nil

if pcall(require, "catppuccin.utils.integration_mappings") then
	integration_mappings = require "catppuccin.utils.integration_mappings"
end

assert(
	integration_mappings ~= nil,
	"before using integration_mappings generate it using the script: `./scripts/generate_integration_mappings_table.lua`"
)

local installed_plugins = {}

if pcall(require, "lazy") then
	for plugin, _ in pairs(require("lazy.core.config").plugins) do
		-- special case for the "mini" library, if one module is present, mark as if the whole library is installed
		if plugin:match "mini.*" then
			if not vim.tbl_contains(installed_plugins, "mini.nvim") then
				table.insert(installed_plugins, "mini.nvim")
			end
		else
			table.insert(installed_plugins, plugin)
		end
	end
end

function M.create_integrations_table()
	local integrations = {}
	local ctp_defaults = require("catppuccin").default_options.integrations

	for _, plugin in ipairs(installed_plugins) do
		if integration_mappings[plugin] ~= nil then
			local integration = integration_mappings[plugin]
			if type(ctp_defaults[integration]) == "table" then
				integrations[integration] = ctp_defaults[integration]
				integrations[integration].enabled = true
			else
				integrations[integration] = true
			end
		end
	end
	return integrations
end

return M
