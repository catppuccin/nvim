-- gitgraph.nvim
local M = {}

function M.get()
	return {
		GitGraphHash = { fg = C.mauve },
		GitGraphTimestamp = { fg = C.lavender },
		GitGraphAuthor = { fg = C.flamingo },
		GitGraphBranchName = { fg = C.teal },
		GitGraphBranchTag = { fg = C.pink },
		GitGraphBranchMsg = { fg = C.overlay2 },
		GitGraphBranch1 = { fg = C.yellow },
		GitGraphBranch2 = { fg = C.pink },
		GitGraphBranch3 = { fg = C.sky },
		GitGraphBranch4 = { fg = C.green },
		GitGraphBranch5 = { fg = C.red },
	}
end

return M
