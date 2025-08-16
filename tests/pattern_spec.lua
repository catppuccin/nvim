describe("Integrations Pattern", function()
	local get_name = require("scripts.generate_integration_mappings_table").get_name_from_url
	it(
		"when it's word-word-word",
		function()
			assert.equals(
				get_name "https://github.com/nvim-treesitter/nvim-treesitter-context",
				"nvim-treesitter-context"
			)
		end
	)
	it(
		get_name "when it's word-word-word[n]",
		function() assert.equals(get_name "https://github.com/HiPhish/nvim-ts-rainbow2", "nvim-ts-rainbow2") end
	)
	it(
		get_name "when it's word-word",
		function() assert.equals(get_name "https://github.com/kevinhwang91/nvim-ufo", "nvim-ufo") end
	)
	it(
		get_name "when it's word.word",
		function() assert.equals(get_name "https://www.github.com/nvim-telescope/telescope.nvim", "telescope.nvim") end
	)
	it(
		"when it's word-word.word",
		function()
			assert.equals(
				get_name "https://github.com/MeanderingProgrammer/render-markdown.nvim",
				"render-markdown.nvim"
			)
		end
	)
end)
