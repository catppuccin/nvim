local M = {}

function M.set_of(list)
	local set = {}
	for i = 1, #list do
		set[list[i]] = true
	end
	return set
end

return M
