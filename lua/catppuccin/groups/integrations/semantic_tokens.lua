local M = {}

function M.get()
	if vim.treesitter.highlighter.hl_map then
		vim.notify_once(
			[[Catppuccin (info):
semantic_tokens integration requires neovim 0.8
If you want to stay on nvim 0.7, disable the integration.
]],
			vim.log.levels.INFO
		)
		return {}
	end
	return {
		-- https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight
		-- Semantic tokens (@lsp.type.<...>) are no longer defined in this file, as Neovim links to already themed Tree-sitter captures by default.
	}
end

return M
