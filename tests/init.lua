local status, error = pcall(function()
	local root = vim.fn.fnamemodify(".repro", ":p")
	for _, name in ipairs { "config", "data", "state", "cache" } do
		vim.env[("XDG_%s_HOME"):format(name:upper())] = root .. "/" .. name
	end

	local lazypath = root .. "/plugins/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
		vim.fn.system { "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath }
	end
	vim.opt.runtimepath:prepend(lazypath)

	require("lazy").setup({
		{ "catppuccin/nvim", dev = true },
	}, {
		root = root .. "/plugins",
		dev = {
			path = debug.getinfo(1).source:sub(2, -21),
		},
	})

	require("catppuccin").setup()
	vim.cmd.colorscheme "catppuccin"
end)

if error then print(error) end
vim.cmd(status and "0cq" or "1cq")
