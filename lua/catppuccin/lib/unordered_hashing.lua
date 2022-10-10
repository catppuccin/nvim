local hash_str = require "hashing"
local M = {}

function M.hash(tbl)
	local function inspect(t)
		local list = {}
		for k, v in pairs(t) do
			local q = type(v) == "string" and [["]] or ""
			table.insert(list, fmt([[%s = %s%s%s]], k, q, v, q))
		end
		return fmt([[{ %s }]], table.concat(list, ", "))
	end
end

return M
