-- diffview.nvim
local M = {}

function M.get()
	return {
		DiffviewDim1 = { link = "Comment" },
		DiffviewPrimary = { fg = C.blue },
		DiffviewSecondary = { fg = C.green },
		DiffviewNormal = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		DiffviewWinSeparator = {
			fg = O.transparent_background and C.surface1 or C.base,
			bg = O.transparent_background and C.none or C.base,
		},
		DiffviewFilePanelTitle = { fg = C.blue, style = { "bold" } },
		DiffviewFilePanelCounter = { fg = C.text },
		DiffviewFilePanelRootPath = { fg = C.lavender, style = { "bold" } },
		DiffviewFilePanelFileName = { fg = C.text },
		DiffviewFilePanelSelected = { fg = C.yellow },
		DiffviewFilePanelPath = { link = "Comment" },
		DiffviewFilePanelInsertions = { fg = C.green },
		DiffviewFilePanelDeletions = { fg = C.red },
		DiffviewFilePanelConflicts = { fg = C.yellow },
		DiffviewFolderName = { fg = C.blue, style = { "bold" } },
		DiffviewFolderSign = { fg = C.blue },
		DiffviewHash = { fg = C.flamingo },
		DiffviewReference = { fg = C.blue, style = { "bold" } },
		DiffviewReflogSelector = { fg = C.pink },
		DiffviewStatusAdded = { fg = C.green },
		DiffviewStatusUntracked = { fg = C.green },
		DiffviewStatusModified = { fg = C.yellow },
		DiffviewStatusRenamed = { fg = C.yellow },
		DiffviewStatusCopied = { fg = C.yellow },
		DiffviewStatusTypeChange = { fg = C.yellow },
		DiffviewStatusUnmerged = { fg = C.yellow },
		DiffviewStatusUnknown = { fg = C.red },
		DiffviewStatusDeleted = { fg = C.red },
		DiffviewStatusBroken = { fg = C.red },
		DiffviewStatusIgnored = { fg = C.overlay0 },
	}
end

return M
