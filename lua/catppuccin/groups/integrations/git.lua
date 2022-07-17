local M = {}

function M.get(cp)
	return {
		gitcommitOverflow = { fg = cp.red },
        gitcommitUnmerged = { fg = cp.green },
        gitcommitBranch = { fg = cp.purple },
        gitcommitDiscardedType = { fg = cp.red },
        gitcommitSelectedType = { fg = cp.green },
        gitcommitUntrackedFile = { fg = cp.sky },
        gitcommitDiscardedFile = { fg = cp.red },
        gitcommitSelectedFile = { fg = cp.green },
        gitcommitUnmergedFile = { fg = cp.yellow },
        gitcommitOverflow = { fg = cp.red },
	}
end

return M
