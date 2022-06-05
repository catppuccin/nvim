local M = {}

function M.get(cp)
	return {
		gitcommitOverflow = { fg = cp.red },
	}
end

return M

-- call s:h("gitcommitComment", { "fg": s:comment_grey })
-- call s:h("gitcommitUnmerged", { "fg": s:green })
-- call s:h("gitcommitOnBranch", {})
-- call s:h("gitcommitBranch", { "fg": s:purple })
-- call s:h("gitcommitDiscardedType", { "fg": s:red })
-- call s:h("gitcommitSelectedType", { "fg": s:green })
-- call s:h("gitcommitHeader", {})
-- call s:h("gitcommitUntrackedFile", { "fg": s:cyan })
-- call s:h("gitcommitDiscardedFile", { "fg": s:red })
-- call s:h("gitcommitSelectedFile", { "fg": s:green })
-- call s:h("gitcommitUnmergedFile", { "fg": s:yellow })
-- call s:h("gitcommitFile", {})
-- call s:h("gitcommitSummary", { "fg": s:white })
-- call s:h("gitcommitOverflow", { "fg": s:red })
-- hi link gitcommitNoBranch gitcommitBranch
-- hi link gitcommitUntracked gitcommitComment
-- hi link gitcommitDiscarded gitcommitComment
-- hi link gitcommitSelected gitcommitComment
-- hi link gitcommitDiscardedArrow gitcommitDiscardedFile
-- hi link gitcommitSelectedArrow gitcommitSelectedFile
-- hi link gitcommitUnmergedArrow gitcommitUnmergedFile
--
-- " }}}
--
-- call s:h("gitcommitDiscardedFile", { "fg": s:red })
