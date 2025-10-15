-- Test file for deadbeef colorscheme
local function test_function()
    -- Comment should be italic gray
    local str = "String should be yellow"
    local num = 42 -- Number should be red
    local bool = true -- Boolean should be red
    
    if bool then -- Keyword should be blue
        print(str) -- Function call should be blue
    end
    
    return num
end

-- Variables should be blue
local variable = test_function()

-- More syntax examples
local table = {
    key = "value", -- Key should be purple
    number = 123,
    nested = {
        inner = "test"
    }
}

-- Function definition
function another_function(param)
    return param * 2
end