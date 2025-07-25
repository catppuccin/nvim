local catppuccin_path = vim.fn.stdpath "data" .. "/lazy/catppuccin/"

local integrations_path = catppuccin_path .. "lua/catppuccin/groups/integrations/"
local target_path = catppuccin_path .. "/lua/catppuccin/lib/integration_mappings.lua"

local target_file = io.open(target_path, "w+")
assert(target_file ~= nil, "a target file must be specified")

---gets the plugin name from the integration file.
---@param integration_file file*
---@return string plugin_name the plugin name embeded in the file.
local function get_plugin_name(integration_file)
	local plugin_name = integration_file:read "*line"
	plugin_name = plugin_name:gsub("^%-%-%s*", "")
	return plugin_name
end

---comment
---@return table a table holding plugin to catppuccin name
local function create_table()
	local mappings = {}
	for filename, _ in vim.fs.dir(integrations_path) do
		local integration_file = io.open(integrations_path .. filename, "r")
		assert(integration_file ~= nil, "integration_file must be opened valid file")

		local plugin_name = get_plugin_name(integration_file)
		integration_file:close()

		mappings[plugin_name] = vim.fn.fnamemodify(filename, ":r") -- remove extension
	end
	return mappings
end

local function format_table(mappings_table)
	local lines = {}
	for plugin_name, integration_name in pairs(mappings_table) do
		table.insert(lines, string.format("\t['%s'] = '%s',\n", plugin_name, integration_name))
	end
	return lines
end

local mappings = create_table()
local lines = format_table(mappings)

target_file:write "local M = {\n"
for _, line in ipairs(lines) do
	target_file:write(line)
end
target_file:write "}\n"
target_file:write "\nreturn M"

target_file:close()
