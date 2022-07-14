local TITLE = "Catppuccin"

return function(msg, kind)
	local has_notify_plugin = pcall(require, "notify")
	local level = {}

	if kind == "error" then
		level.log = vim.log.kinds.ERROR
		level.type = "error"
	elseif kind == "warn" then
		level.log = vim.log.kinds.WARN
		level.type = "error"
	else
		level.log = kind or vim.log.kinds.INFO
		level.type = "info"
	end

	if has_notify_plugin then
		vim.notify(msg, level.log, {
			title = TITLE,
		})
	else
		vim.notify(("%s (%s): %s"):format(TITLE, level.type, msg), level.log)
	end
end
