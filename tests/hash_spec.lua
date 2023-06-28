describe("hash", function()
	local hash = require("catppuccin.lib.hashing").hash
	it("typo", function() assert.are_not.equals(hash { custom_highlight = {} }, hash { ustom_highlight = {} }) end)
	it(
		"when table order is shuffled",
		function()
			assert.equals(
				hash {
					custom_highlight = {
						Search = { fg = "#F5C2E7", bg = "#45475A", style = { "bold" } },
						IncSearch = { fg = "#45475A", bg = "#F5C2E7" },
					},
				},
				hash {
					custom_highlight = {
						Search = { style = { "bold" }, bg = "#45475A", fg = "#F5C2E7" },
						IncSearch = { bg = "#F5C2E7", fg = "#45475A" },
					},
				}
			)
		end
	)
	it(
		"when toggle true/false",
		function()
			assert.are_not.equals({
				integrations = {
					navic = true,
					noice = true,
					fidget = true,
				},
			}, {
				integrations = {
					navic = true,
					noice = false,
					fidget = false,
				},
			})
		end
	)
end)
