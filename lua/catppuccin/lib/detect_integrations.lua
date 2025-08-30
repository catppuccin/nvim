local M = {}

--- parses url to get the last part of it's path, without the `/`.
---@param url string
---@return any
function M.parse_url(url) return string.match(url, "([^/]+)$") end

function M.detect_plugins()
	local installed_plugins = {}

	if vim.fn.has "nvim-0.12.0" == 1 then
		vim.list_extend(
			installed_plugins,
			vim.iter(vim.pack.get()):map(function(plugin) return plugin.spec.name end):totable()
		)
	end

	if pcall(require, "pckr") then vim.list_extend(installed_plugins, require("pckr.plugin").plugins_by_name) end

	if pcall(require, "lazy") then
		vim.list_extend(installed_plugins, vim.tbl_keys(require("lazy.core.config").plugins))
	end

	local seen = {}

	installed_plugins = vim.iter(installed_plugins)
		:map(function(plugin_name)
			if string.sub(plugin_name, 0, 5) == "mini." then return "mini.nvim" end

			return plugin_name
		end)
		:filter(function(plugin_name)
			if seen[plugin_name] then return false end
			seen[plugin_name] = true
			return true
		end)
		:totable()

	return installed_plugins
end

local installed_plugins = M.detect_plugins()

function M.create_integrations_table()
	local integration_mappings = nil

	do
		local ok, result = pcall(require, "catppuccin.utils.integration_mappings")
		assert(ok, result)
		integration_mappings = result
	end

	assert(
		integration_mappings ~= nil,
		"before using integration_mappings generate it using the script: `./scripts/generate_integration_mappings_table.lua`"
	)

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
