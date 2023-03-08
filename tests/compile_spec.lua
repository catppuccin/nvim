describe("compile", function()
	before_each(function()
		for name, _ in pairs(package.loaded) do
			if name:match "^catppuccin" and name ~= "catppuccin" then package.loaded[name] = nil end
		end
	end)
	it("without setup", function()
		assert.equals(pcall(function() require("catppuccin").compile() end), true)
	end)
	it("user 1", function()
		require("catppuccin").setup {
			custom_highlight = function(C)
				return {
					SpellBad = { cterm = { underdashed = true } },
				}
			end,
		}
		assert.equals(pcall(function() require("catppuccin").compile() end), true)
	end)
end)
