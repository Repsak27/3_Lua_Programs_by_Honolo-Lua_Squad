-- 1st Program by The Hololu-Lua Squad comprised of Kasper Holm, Joe Minaya, Anthony Giuliano, Julian Taylor, and Steve Njoroge

-- Data type - number
local num1 = 33
local num2 = 74
local num3 = 21
local num4 = 89
local num5 = 5

local maxnum = math.max(num1, num2, num3, num4, num5)

print("1. The highest name in this game is " .. maxnum .. "! Can you beat it?" )

math.randomseed(os.time())
print("2. Did you guess " .. math.random(1, 100) .. "? If so, congradulations!")

-- Data type - string
local message = "3. Get ready to have the worst experience of your life!"

print(string.upper(message))

local newMessage1 = string.gsub(message, "worst", "best")
local newMessage2 = string.gsub(newMessage1, "3", "4")

print(newMessage2)

-- Data type - boolean
local hasWon = true
hasWon = false

if hasWon then
    print("Congradulations!!")
else
    print("5. You've lost this round, good luck next time.")
end

local isAdult = true
local isSmart = false

if isAdult or isSmart then
    print("6. Welcome to Lua Warriors where we'll make you feel smarter!")
end

-- Data type - nil
local jackpot = nil

if not jackpot then
    print("7. Oh no, you didn't win the jackpot.")
end

local name

if not name then
    print("8. You forgot to type your name!")
end
