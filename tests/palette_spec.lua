local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^catppuccin" then package.loaded[name] = nil end
	end
	vim.g.catppuccin_flavour = nil
	vim.cmd [[highlight clear]]
end

-- TODO: Move this to setup_spec
describe("get palette", function()
	before_each(function() reload() end)
	it("before setup", function()
		assert.equals(pcall(function() require("catppuccin.palettes").get_palette() end), true)
	end)
	it("after setup", function()
		require("catppuccin").setup()
		assert.equals(pcall(function() require("catppuccin.palettes").get_palette() end), true)
	end)
end)
