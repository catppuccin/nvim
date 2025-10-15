-- Test script to validate deadbeef colorscheme highlights
-- Usage: nvim --headless -S colors/deadbeef.vim -l test_highlights.lua

local function test_highlight_group(group_name)
    local hl = vim.api.nvim_get_hl_by_name(group_name, true)
    if hl.background then
        local bg_hex = string.format("#%06x", hl.background)
        if bg_hex == "#292d3e" then
            print("✓ " .. group_name .. " has correct unified background")
            return true
        else
            print("✗ " .. group_name .. " has background: " .. bg_hex .. " (expected #292d3e)")
            return false
        end
    else
        print("? " .. group_name .. " has no background set")
        return false
    end
end

local critical_groups = {
    "Normal",
    "NeoTreeNormal", 
    "TelescopeNormal",
    "WhichKeyFloat",
    "CmpItemAbbr",
    "TroubleNormal",
    "LazyNormal",
    "MasonNormal",
    "StatusLine",
    "TabLine",
    "Pmenu"
}

print("Testing deadbeef colorscheme background consistency...")
print("Expected background: #292d3e")
print("")

local passed = 0
local total = #critical_groups

for _, group in ipairs(critical_groups) do
    if test_highlight_group(group) then
        passed = passed + 1
    end
end

print("")
print("Results: " .. passed .. "/" .. total .. " groups have correct unified background")

if passed == total then
    print("🎉 All critical highlight groups have unified background!")
    os.exit(0)
else
    print("⚠️  Some highlight groups need attention")
    os.exit(1)
end