local M = {}

function M.get()
	return {
		-- colors
		OctoGrey = { fg = C.base },
		OctoBlue = { fg = C.blue },
		OctoGreen = { fg = C.green },
		OctoRed = { fg = C.red },
		OctoPurple = { fg = C.mauve },
		OctoYelow = { fg = C.yellow },
		-- highlight groups
		OctoDirty = { link = "ErrorMsg" },
		OctoIssueTitle = { link = "PreProc" },
		OctoIssueId = { link = "Question" },
		OctoEmpty = { link = "Comment" },
		OctoFloat = { link = "NormalNC" },
		OctoDate = { link = "Comment" },
		OctoSymbol = { link = "Comment" },
		OctoTimelineItemHeading = { link = "Comment" },
		OctoDetailsLabel = { link = "Title" },
		OctoMissingDetails = { link = "Comment" },
		OctoDetailsValue = { link = "Identifier" },
		OctoDiffHunkPosition = { link = "NormalFloat" },
		OctoCommentLine = { link = "TabLineSel" },
		OctoEditable = { fg = C.text, bg = C.mantle },
		OctoViewer = { fg = C.base, bg = C.blue },
		OctoBubble = { fg = C.text, bg = C.mantle },
		OctoBubbleGreen = { fg = C.base, bg = C.green },
		OctoBubbleRed = { fg = C.base, bg = C.red },
		OctoUser = { link = "OctoBubble" },
		OctoUserViewer = { link = "OctoViewer" },
		OctoReaction = { fg = C.text, bg = C.mantle },
		OctoReactionViewer = { link = "OctoViewer" },
		OctoPassingTest = { link = "OctoGreen" },
		OctoFailingTest = { link = "OctoRed" },
		OctoPullAdditions = { link = "OctoGreen" },
		OctoPullDeletions = { link = "OctoRed" },
		OctoPullModifications = { fg = C.peach },
		OctoStateOpen = { fg = C.green, bg = C.mantle },
		OctoStateClosed = { fg = C.red, bg = C.mantle },
		OctoStateMerged = { fg = C.mauve, bg = C.mantle },
		OctoStatePending = { fg = C.peach, bg = C.mantle },
		OctoStateApproved = { link = "OctoStateOpen" },
		OctoStateChangesRequested = { fg = C.marron, bg = C.mantle },
		OctoStateCommented = { link = "Normal" },
		OctoStateDismissed = { link = "OctoStateClosed" },
	}
end

return M
