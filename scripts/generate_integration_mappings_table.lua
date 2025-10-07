local M = {}

local catppuccin_path = vim.fn.getcwd() -- get to the root directory of the plugin
local lua_path = catppuccin_path .. "/lua"

package.path = package.path .. string.format(";%s/?.lua", lua_path) .. string.format(";%s/?/init.lua", lua_path)

local integrations_path = lua_path .. "/catppuccin/groups/integrations/"
local target_path = lua_path .. "/catppuccin/utils/integration_mappings.lua"

---@return table mappings table holding plugin to catppuccin name
local function create_table()
	local mappings = vim.iter(vim.fs.dir(integrations_path)):fold({}, function(m, filename, _)
		filename = vim.fn.fnamemodify(filename, ":r")

		local ok, mod = pcall(require, "catppuccin.groups.integrations." .. filename)

		if not ok then return m end

		---@type string
		local plugin_url = mod.url
		if not plugin_url then return m end
		local plugin_name = require("catppuccin.lib.detect_integrations").parse_url(plugin_url)
		m[plugin_name] = filename

		return m
	end)
	return mappings
end

---@return string[] lines holding the lines to be written to `target_file`
local function format_table(mappings_table)
	-- sort the table alphabetically
	local keys = vim.tbl_keys(mappings_table)
	table.sort(keys)

	local lines = {}
	for _, plugin_name in pairs(keys) do
		table.insert(lines, string.format('\t["%s"] = "%s",\n', plugin_name, mappings_table[plugin_name]))
	end
	return lines
end

local mappings = create_table()
local lines = format_table(mappings)

local target_file = io.open(target_path, "w+")
assert(target_file ~= nil)

target_file:write "local M = {\n"
for _, line in ipairs(lines) do
	target_file:write(line)
end
target_file:write "}\n"
target_file:write "\nreturn M\n"

target_file:close()

return M
