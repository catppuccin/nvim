local M = {}

function M.get()
	return {
		NeogitBranch = {
			fg = C.peach,
			style = { "bold" },
		},
		NeogitRemote = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitUnmergedInto = {
			link = "Function",
		},
		NeogitUnpulledFrom = {
			link = "Function",
		},
		NeogitObjectId = {
			link = "Comment",
		},
		NeogitStash = {
			link = "Comment",
		},
		NeogitRebaseDone = {
			link = "Comment",
		},
		NeogitHunkHeader = {
			bg = U.darken(C.blue, 0.095, C.base),
			fg = U.darken(C.blue, 0.5, C.base),
		},
		NeogitHunkHeaderHighlight = {
			bg = U.darken(C.blue, 0.215, C.base),
			fg = C.blue,
		},
		NeogitDiffContextHighlight = {
			bg = U.darken(C.blue, 0.065, C.base),
			fg = C.text,
		},
		NeogitDiffDeleteHighlight = {
			bg = U.darken(C.red, 0.345, C.base),
			fg = U.lighten(C.red, 0.850, C.text),
		},
		NeogitDiffAddHighlight = {
			bg = U.darken(C.green, 0.345, C.base),
			fg = U.lighten(C.green, 0.850, C.text),
		},
		NeogitDiffDelete = {
			bg = U.darken(C.red, 0.095, C.base),
			fg = U.darken(C.red, 0.800, C.base),
		},
		NeogitDiffAdd = {
			bg = U.darken(C.green, 0.095, C.base),
			fg = U.darken(C.green, 0.800, C.base),
		},
		NeogitCommitViewHeader = {
			bg = U.darken(C.blue, 0.300, C.base),
			fg = U.lighten(C.blue, 0.800, C.text),
		},
		NeogitChangeModified = {
			fg = C.blue,
			style = { "bold" },
		},
		NeogitChangeDeleted = {
			fg = C.red,
			style = { "bold" },
		},
		NeogitChangeAdded = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitChangeRenamed = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitChangeUpdated = {
			fg = C.peach,
			style = { "bold" },
		},
		NeogitChangeCopied = {
			fg = C.pink,
			style = { "bold" },
		},
		NeogitChangeBothModified = {
			fg = C.yellow,
			style = { "bold" },
		},
		NeogitChangeNewFile = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitUntrackedfiles = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitUnstagedchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitUnmergedchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitUnpulledchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitRecentcommits = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitStagedchanges = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitStashes = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitRebasing = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitNotificationInfo = {
			fg = C.blue,
		},
		NeogitNotificationWarning = {
			fg = C.yellow,
		},
		NeogitNotificationError = {
			fg = C.red,
		},
		NeogitGraphRed = {
			fg = C.red,
		},
		NeogitGraphWhite = {
			fg = C.base,
		},
		NeogitGraphYellow = {
			fg = C.yellow,
		},
		NeogitGraphGreen = {
			fg = C.green,
		},
		NeogitGraphCyan = {
			fg = C.blue,
		},
		NeogitGraphBlue = {
			fg = C.blue,
		},
		NeogitGraphPurple = {
			fg = C.lavender,
		},
		NeogitGraphGray = {
			fg = C.subtext1,
		},
		NeogitGraphOrange = {
			fg = C.peach,
		},
		NeogitGraphBoldRed = {
			fg = C.red,
			style = { "bold" },
		},
		NeogitGraphBoldWhite = {
			fg = C.white,
			style = { "bold" },
		},
		NeogitGraphBoldYellow = {
			fg = C.yellow,
			style = { "bold" },
		},
		NeogitGraphBoldGreen = {
			fg = C.green,
			style = { "bold" },
		},
		NeogitGraphBoldCyan = {
			fg = C.blue,
			style = { "bold" },
		},
		NeogitGraphBoldBlue = {
			fg = C.blue,
			style = { "bold" },
		},
		NeogitGraphBoldPurple = {
			fg = C.lavender,
			style = { "bold" },
		},
		NeogitGraphBoldGray = {
			fg = C.subtext1,
			style = { "bold" },
		},
		NeogitDiffContext = {
			bg = C.lavender,
		},
		NeogitPopupBold = {
			style = { "bold" },
		},
		NeogitPopupSwitchKey = {
			fg = C.lavender,
		},
		NeogitPopupOptionKey = {
			fg = C.lavender,
		},
		NeogitPopupConfigKey = {
			fg = C.lavender,
		},
		NeogitPopupActionKey = {
			fg = C.lavender,
		},
		NeogitFilePath = {
			fg = C.blue,
			style = { "italic" },
		},
		NeogitDiffHeader = {
			bg = C.base,
			fg = C.blue,
			style = { "bold" },
		},
		NeogitDiffHeaderHighlight = {
			bg = C.base,
			fg = C.peach,
			style = { "bold" },
		},
		NeogitUnpushedTo = {
			fg = C.lavender,
			style = { "bold" },
		},
		NeogitCursorLine = {
			bg = C.lavender,
		},
		NeogitFold = {
			fg = "None",
			bg = "None",
		},
		NeogitSectionHeader = {
			fg = C.mauve,
			style = { "bold" },
		},
		NeogitTagName = {
			fg = C.yellow,
		},
		NeogitTagDistance = {
			fg = C.blue,
		},
	}
end

return M
