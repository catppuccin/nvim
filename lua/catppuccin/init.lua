local M = {}

function M.load()
	local compiled = nil
	local config = require("catppuccin.config").options

	if config.compile.enabled == true then
		local compiled_path = config.compile.path
			.. (vim.startswith(vim.loop.os_uname().sysname, "Windows") and "\\" or "/")
			.. vim.g.catppuccin_flavour
			.. config.compile.suffix
			.. ".lua"
		local f = io.open(compiled_path, "r")
		if f ~= nil then
			io.close(f)
			vim.cmd("luafile " .. compiled_path)
			compiled = true
		end
	end

	if not compiled then -- colorscheme gets evaluated from mapper.lua
		require("catppuccin.lib.highlighter").load(require("catppuccin.lib.mapper").apply())
	end
end

function M.setup(custom_opts)
	require("catppuccin.config").set_options(custom_opts)
end

return M
