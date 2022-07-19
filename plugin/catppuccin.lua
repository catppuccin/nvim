if vim.g.loaded_catppuccin then
	return
end
vim.g.loaded_catppuccin = true

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

if require("catppuccin.config").options.compile.enabled == true then
	command("CatppuccinCompile", function()
		require("catppuccin.lib.compiler").compile()
	end, {})

	command("CatppuccinClean", function()
		require("catppuccin.lib.compiler").clean()
	end, {})
end
