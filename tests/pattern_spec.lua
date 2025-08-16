describe("Integrations Pattern", function()
	local parse_url = require("scripts.generate_integration_mappings_table").parse_url
	it(
		"when it's word-word-word",
		function()
			assert.equals(
				parse_url "https://github.com/nvim-treesitter/nvim-treesitter-context",
				"nvim-treesitter-context"
			)
		end
	)
	it(
		parse_url "when it's word-word-word[n]",
		function() assert.equals(parse_url "https://github.com/HiPhish/nvim-ts-rainbow2", "nvim-ts-rainbow2") end
	)
	it(
		parse_url "when it's word-word",
		function() assert.equals(parse_url "https://github.com/kevinhwang91/nvim-ufo", "nvim-ufo") end
	)
	it(
		parse_url "when it's word.word",
		function() assert.equals(parse_url "https://www.github.com/nvim-telescope/telescope.nvim", "telescope.nvim") end
	)
	it(
		"when it's word-word.word",
		function()
			assert.equals(
				parse_url "https://github.com/MeanderingProgrammer/render-markdown.nvim",
				"render-markdown.nvim"
			)
		end
	)
end)
