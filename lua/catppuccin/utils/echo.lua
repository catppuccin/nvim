local TITLE = "Catppuccin"

return function(msg, level)
    local has_notify_plugin = pcall(require, "notify")

	if level == "error" then
		level = vim.log.levels.ERROR
	elseif level == "warn" then
		level = vim.log.levels.WARN
	else
		level = level or vim.log.levels.INFO
	end

    if has_notify_plugin then
        vim.notify(msg, level, {
            title = TITLE,
        })
    else
        vim.notify(("[%s] %s"):format(TITLE, msg), level)
    end
end
