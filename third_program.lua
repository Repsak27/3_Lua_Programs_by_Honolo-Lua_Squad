--3rd Program by The Hololu-Lua Squad comprised of Kasper Holm, Joe Minaya, Anthony Giuliano, Julian Taylor, and Steve Njoroge

--Division function showing error handling
local function divide(a, b)
    if b == 0 then
        --throw a error
        error("You cannot divide by zero!")
    end
    return a/b
end

--Test Program
local function main()
    --test to see if it throws an error
    local n, n2 = 10, 0

    local status, result = pcall(divide, n, n2)

    if status then
        print("Result:", result)
    else
        print("Error:", result)
    end
end

main()