-- `minimal_init.lua` used for reproducible configuration
-- Open with `nvim --clean -u minimal_init.lua`

local is_windows = vim.fn.has("win32") == 1
local function join(...)
	local sep = is_windows and "\\" or "/"
	return table.concat({ ... }, sep)
end

local root_tmp = is_windows and os.getenv("TEMP") or "/tmp"
local site_path = join(root_tmp, "nvim", "site")
local pack_path = join(site_path, "pack")
local install_path = join(pack_path, "packer", "start", "packer.nvim")
local compile_path = join(install_path, "plugin", "packer_compiled.lua")
vim.opt.packpath = site_path

local function load_plugins()
	local packer = require("packer")
	local use = packer.use
	packer.reset()
	packer.init({ compile_path = compile_path, package_root = pack_path })

	use("wbthomason/packer.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })
	-- ADD PLUGINS THAT ARE _NECESSARY_ FOR REPRODUCING THE ISSUE

	packer.install()
end

_G.load_config = function()
	-- ADD INIT.LUA SETTINGS THAT ARE _NECESSARY_ FOR REPRODUCING THE ISSUE
	vim.g.catppuccin_flavour = "macchiato"
	require("catppuccin").setup({
		-- ...
	})

	vim.cmd("colorscheme catppuccin")
end

if vim.fn.isdirectory(install_path) == 0 then
	vim.fn.system({ "git", "clone", "--depth=1", "https://github.com/wbthomason/packer.nvim", install_path })
end
load_plugins()
vim.cmd([[autocmd User PackerComplete ++once echo "Ready!" | lua load_config()]])
