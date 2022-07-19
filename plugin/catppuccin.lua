if vim.g.loaded_catppuccin then
	return
end

vim.api.nvim_create_user_command("CatppuccinCompile", function()
	require("catppuccin").compile()
end, {})

vim.api.nvim_create_user_command("CatppuccinClean", function()
	require("catppuccin").clean()
end, {})

vim.g.loaded_catppuccin = 1
