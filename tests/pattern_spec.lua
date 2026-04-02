describe("parse url from", function()
	local parse_url = require("catppuccin.lib.detect_integrations").parse_url

	it(
		"word-word-word",
		function()
			assert.equals(
				parse_url "https://github.com/nvim-treesitter/nvim-treesitter-context",
				"nvim-treesitter-context"
			)
		end
	)
	it(
		"nvim-word-word[d]",
		function() assert.equals(parse_url "https://github.com/HiPhish/nvim-ts-rainbow2", "nvim-ts-rainbow2") end
	)
	it("nvim-word", function() assert.equals(parse_url "https://github.com/kevinhwang91/nvim-ufo", "nvim-ufo") end)
	it(
		"word.nvim",
		function() assert.equals(parse_url "https://www.github.com/nvim-telescope/telescope.nvim", "telescope.nvim") end
	)
	it(
		"word-word.nvim",
		function()
			assert.equals(
				parse_url "https://github.com/MeanderingProgrammer/render-markdown.nvim",
				"render-markdown.nvim"
			)
		end
	)
end)
