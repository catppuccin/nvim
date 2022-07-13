local M = {}

function M.load()
	require("catppuccin.main").main("load")
end

function M.setup(custom_opts)
	require("catppuccin.config").set_options(custom_opts)
end

local flavours = {"latte", "frappe", "macchiato", "mocha"}

local command = vim.api.nvim_create_user_command

command("Catppuccin", function(inp)
	if not vim.tbl_contains(flavours, inp.args) then
		local echo = require("catppuccin.utils.echo")
		echo("Invalid flavour", "info")
		return
	end
	vim.g.catppuccin_flavour = inp.args
	vim.cmd "colorscheme catppuccin"
end, {
	nargs = 1,
	complete = function(line)
		return vim.tbl_filter(function(val)
			return vim.startswith(val, line)
		end, flavours)
	end
})

command("CatppuccinCompile", function()
	require("catppuccin.utils.util").compile()
end, {})

command("CatppuccinClean", function()
	require("catppuccin.utils.util").clean()
end, {})

return M
