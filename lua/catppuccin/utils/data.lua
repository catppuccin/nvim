local M = {}

function M.set_of(list)
    local set = {}
    for i = 1, #list do
        set[list[i]] = true
    end
    return set
end

-- https://www.codegrepper.com/code-examples/lua/lua+split+string+on+comma
function M.split(s, delimiter)
    local result = {}
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match)
	end
    return result
end

return M
