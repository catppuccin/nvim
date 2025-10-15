local M = {}

local fmt = string.format
local uv = vim.loop

-- Safe function to convert highlight values
local function format_highlight(highlight)
	local result = {}
	for k, v in pairs(highlight) do
		if k == "style" and type(v) == "table" then
			-- Convert style table to individual boolean properties
			for _, style_name in ipairs(v) do
				if style_name == "bold" then
					result.bold = true
				elseif style_name == "italic" then
					result.italic = true
				elseif style_name == "underline" then
					result.underline = true
				elseif style_name == "undercurl" then
					result.undercurl = true
				elseif style_name == "strikethrough" then
					result.strikethrough = true
				elseif style_name == "reverse" then
					result.reverse = true
				end
			end
		elseif type(v) == "string" or type(v) == "boolean" or type(v) == "number" then
			result[k] = v
		end
	end
	return result
end

---@param user_options DeadbeefOptions
---@return string
function M.compile(user_options)
	local deadbeef = require "deadbeef"
	if user_options then
		deadbeef.options = vim.tbl_deep_extend("force", deadbeef.options, user_options)
	end

	local theme = require("deadbeef.lib.mapper").apply()
	local compiled_path = deadbeef.options.compile_path
	local basename = "deadbeef"

	-- Create cache directory if it doesn't exist
	uv.fs_mkdir(compiled_path, 448) -- 0700 permissions

	local f = io.open(compiled_path .. deadbeef.path_sep .. basename, "w")
	if not f then
		vim.notify("Deadbeef (error): could not create cache file", vim.log.levels.ERROR)
		return
	end

	-- Write Lua code that applies all highlights
	f:write("-- Compiled deadbeef theme\n")
	for group, highlight in pairs(theme) do
		if highlight and type(highlight) == "table" then
			local safe_highlight = format_highlight(highlight)
			f:write(fmt("vim.api.nvim_set_hl(0, %q, %s)\n", group, vim.inspect(safe_highlight)))
		end
	end
	f:close()

	return compiled_path .. deadbeef.path_sep .. basename
end

return M