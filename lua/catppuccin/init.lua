local M = {}

function M.load()
	local compiled = nil
	local config = require("catppuccin.config").options

	if config.compile.enabled == true then
		local compiled_path = config.compile.path
			.. (vim.startswith(vim.loop.os_uname().sysname, "Windows") and "\\" or "/")
			.. vim.g.catppuccin_flavour
			.. "_compiled.lua"
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

local flavours = { "latte", "frappe", "macchiato", "mocha" }
local command = vim.api.nvim_create_user_command

command("Catppuccin", function(inp)
	if not vim.tbl_contains(flavours, inp.args) then
		require("catppuccin.utils.echo")("Invalid flavour")
		return
	end
	vim.g.catppuccin_flavour = inp.args
	vim.cmd("colorscheme catppuccin")
end, {
	nargs = 1,
	complete = function(line)
		return vim.tbl_filter(function(val)
			return vim.startswith(val, line)
		end, flavours)
	end,
})

for _, cmd in ipairs({ "compile", "clean", "status" }) do
	M[cmd] = function()
		for _, flavour in ipairs(flavours) do
			vim.g.catppuccin_flavour = flavour
			require("catppuccin.lib.compiler")[cmd](flavour)
		end
	end
end

command("CatppuccinCompile", function()
	require("catppuccin").compile()
end, {})

command("CatppuccinClean", function()
	require("catppuccin").clean()
end, {})

command("CatppuccinStatus", function()
	require("catppuccin").status()
end, {})

vim.g.loaded_catppuccin = 1 -- plugin/catppuccin.vim

return M
