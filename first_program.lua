-- 1st Program by The Hololu-Lua Squad comprised of Kasper Holm, Joe Minaya, Anthony Giuliano, Julian Taylor, and Steve Njoroge

-- Data type - number
local num1 = 33
local num2 = 74
local num3 = 21
local num4 = 89
local num5 = 5

local maxnum = math.max(num1, num2, num3, num4, num5)

print("1. The highest score in this game is " .. maxnum .. "! Can you beat it?" )

math.randomseed(os.time())
print("2. Did you guess " .. math.random(1, 100) .. "? If so, congradulations!")
