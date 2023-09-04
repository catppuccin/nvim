local M = {}

function M.get()
	return {
		MarkdownTask = { fg = C.teal, style = { "bold" } },
		MarkdownTodo = { fg = C.yellow, style = { "bold" } },
		MarkdownNote = { fg = C.red, style = { "bold" } },
		MarkdownSee = { fg = C.blue, style = { "bold" } },
		MarkdownCheck = { fg = C.green, style = { "bold" } },
		MarkdownURL = { fg = C.lavender, style = { "bold" } },
		MarkdownExample = { fg = C.mauve, style = { "bold" } },
	}
end

return M
