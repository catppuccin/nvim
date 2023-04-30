local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^catppuccin" then package.loaded[name] = nil end
	end
	vim.g.catppuccin_flavour = nil
	vim.cmd [[highlight clear]]
end

describe("set background to", function()
	before_each(function()
		reload()
		vim.cmd.colorscheme "catppuccin"
	end)
	it("light", function()
		vim.o.background = "light"
		assert.equals("catppuccin-latte", vim.g.colors_name)
	end)
	it("dark", function()
		vim.o.background = "dark"
		assert.equals("catppuccin-mocha", vim.g.colors_name)
	end)
end)

describe("respect vim.o.background =", function()
	before_each(function() reload() end)
	it("light", function()
		vim.o.background = "light"
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-latte", vim.g.colors_name)
	end)
	it("dark", function()
		vim.o.background = "dark"
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-mocha", vim.g.colors_name)
	end)
end)

describe("change flavour to", function()
	before_each(function() reload() end)
	it("latte", function()
		vim.cmd.colorscheme "catppuccin-latte"
		assert.equals("catppuccin-latte", vim.g.colors_name)
	end)
	it("frappe", function()
		vim.cmd.colorscheme "catppuccin-frappe"
		assert.equals("catppuccin-frappe", vim.g.colors_name)
	end)
	it("macchiato", function()
		vim.cmd.colorscheme "catppuccin-macchiato"
		assert.equals("catppuccin-macchiato", vim.g.colors_name)
	end)
	it("mocha", function()
		vim.cmd.colorscheme "catppuccin-mocha"
		assert.equals("catppuccin-mocha", vim.g.colors_name)
	end)
end)

describe("respect setup flavour =", function()
	before_each(function() reload() end)
	it("latte", function()
		require("catppuccin").setup { flavour = "latte" }
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-latte", vim.g.colors_name)
	end)
	it("frappe", function()
		require("catppuccin").setup { flavour = "frappe" }
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-frappe", vim.g.colors_name)
	end)
	it("macchiato", function()
		require("catppuccin").setup { flavour = "macchiato" }
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-macchiato", vim.g.colors_name)
	end)
	it("mocha", function()
		require("catppuccin").setup { flavour = "mocha" }
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-mocha", vim.g.colors_name)
	end)
end)

describe("(deprecated) respect vim.g.catppuccin_flavour =", function()
	before_each(function() reload() end)
	it("latte", function()
		vim.g.catppuccin_flavour = "latte"
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-latte", vim.g.colors_name)
	end)
	it("frappe", function()
		vim.g.catppuccin_flavour = "frappe"
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-frappe", vim.g.colors_name)
	end)
	it("macchiato", function()
		vim.g.catppuccin_flavour = "macchiato"
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-macchiato", vim.g.colors_name)
	end)
	it("mocha", function()
		vim.g.catppuccin_flavour = "mocha"
		vim.cmd.colorscheme "catppuccin"
		assert.equals("catppuccin-mocha", vim.g.colors_name)
	end)
end)
