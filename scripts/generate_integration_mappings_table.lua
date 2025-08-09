local catppuccin_path = vim.fn.getcwd() -- get to the root directory of the plugin
local lua_path = catppuccin_path .. "/lua"

package.path = package.path .. string.format(";%s/?.lua", lua_path) .. string.format(";%s/?/init.lua", lua_path)

local integrations_path = lua_path .. "/catppuccin/groups/integrations/"
local target_path = lua_path .. "/catppuccin/utils/integration_mappings.lua"

---comment
---@return table a table holding plugin to catppuccin name
local function create_table()
	local mappings = {}
	for filename, _ in vim.fs.dir(integrations_path) do
		filename = vim.fn.fnamemodify(filename, ":r")

		local ok, mod = pcall(require, "catppuccin.groups.integrations." .. filename)

		if ok then
			---@type string
			local plugin_name = mod.url
			plugin_name = plugin_name:match ".*/(.-)/*$" or plugin_name -- extract the repo from the url. else use the url.
			mappings[plugin_name] = filename
		end
	end
	return mappings
end

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
target_file:write "local M = {\n"
for _, line in ipairs(lines) do
	target_file:write(line)
end
target_file:write "}\n"
target_file:write "\nreturn M\n"

target_file:close()
