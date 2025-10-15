local M = {}

local function get_integrations()
	local deadbeef = require "deadbeef"
	local integrations = {}
	
	for integration, enabled in pairs(deadbeef.options.integrations) do
		local integration_module = integration
		
		if type(enabled) == "table" then
			if enabled.enabled then
				integrations[integration_module] = true
			end
		elseif enabled then
			integrations[integration_module] = true
		end
	end
	
	return integrations
end

function M.apply()
	local deadbeef = require "deadbeef"
	
	-- Setup global variables for module access
	_G.O = deadbeef.options
	_G.C = require("deadbeef.palettes.deadbeef")
	
	local theme = {}
	
	-- Core highlight groups
	local editor_highlights = require("deadbeef.groups.editor").get()
	local syntax_highlights = require("deadbeef.groups.syntax").get()
	
	if editor_highlights then
		theme = vim.tbl_deep_extend("force", theme, editor_highlights)
	end
	
	if syntax_highlights then
		theme = vim.tbl_deep_extend("force", theme, syntax_highlights)
	end
	
	-- Plugin integrations
	local integrations = get_integrations()
	for integration, _ in pairs(integrations) do
		local ok, integration_highlights = pcall(require, "deadbeef.groups.integrations." .. integration)
		if ok and integration_highlights.get then
			local highlights = integration_highlights.get()
			if highlights then
				theme = vim.tbl_deep_extend("force", theme, highlights)
			end
		end
	end
	
	-- Terminal colors
	if deadbeef.options.term_colors then
		local terminal = {
			terminal_color_0 = C.base,  -- Background - use unified background
			terminal_color_1 = C.red,
			terminal_color_2 = C.green,
			terminal_color_3 = C.yellow,
			terminal_color_4 = C.blue,
			terminal_color_5 = C.pink,
			terminal_color_6 = C.teal,
			terminal_color_7 = C.subtext1,
			terminal_color_8 = C.surface2,
			terminal_color_9 = C.red,
			terminal_color_10 = C.green,
			terminal_color_11 = C.yellow,
			terminal_color_12 = C.blue,
			terminal_color_13 = C.pink,
			terminal_color_14 = C.teal,
			terminal_color_15 = C.subtext0,
		}
		
		for name, color in pairs(terminal) do
			vim.g[name] = color
		end
	end
	
	-- Apply user color overrides
	if deadbeef.options.color_overrides then
		C = vim.tbl_deep_extend("force", C, deadbeef.options.color_overrides)
	end
	
	-- Apply user highlight overrides
	if deadbeef.options.highlight_overrides then
		if type(deadbeef.options.highlight_overrides) == "function" then
			theme = vim.tbl_deep_extend("force", theme, deadbeef.options.highlight_overrides(C))
		else
			theme = vim.tbl_deep_extend("force", theme, deadbeef.options.highlight_overrides)
		end
	end
	
	return theme
end

return M