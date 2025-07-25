-- lir.nvim
local M = {}

function M.get()
	return vim.tbl_deep_extend("force", {}, {
		LirFloatNormal = { fg = C.text, bg = O.transparent_background and C.none or C.mantle },
		LirFloatBorder = {
			fg = O.transparent_background and C.surface1 or C.base,
			bg = O.transparent_background and C.none or C.base,
		},
		LirFloatCursorLine = { link = "CursorLine" },
		LirDir = { fg = C.blue },
		LirSymLink = { fg = C.pink },
		LirEmptyDirText = { fg = C.blue },
		LirFloatCurdirWindowNormal = { fg = C.text },
		LirFloatCurdirWindowDirName = { fg = C.lavender, style = { "bold" } },
	}, ((O.integrations.lir and O.integrations.lir.git_status) and {
		LirGitStatusBracket = { fg = C.overlay0 },
		LirGitStatusIndex = { fg = C.blue },
		LirGitStatusWorktree = { fg = C.yellow },
		LirGitStatusUnmerged = { fg = C.red },
		LirGitStatusUntracked = { fg = C.subtext0 },
		LirGitStatusIgnored = { fg = C.subtext0 },
	}) or {})
end

return M
