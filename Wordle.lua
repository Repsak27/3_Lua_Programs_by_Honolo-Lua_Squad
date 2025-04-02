math.randomseed(os.time())

local words = {"apple", "grape", "mango", "peach", "berry"}
local secret_word = words[math.random(#words)]
local max_attempts = 6

local function check_guess(guess, secret)
    local result = {}
    local secret_used = {}
    local guess_used = {}

    -- First pass: Check for correct positions (Green)
    for i = 1, #guess do
        if guess:sub(i, i) == secret:sub(i, i) then
            result[i] = "G"
            secret_used[i] = true
            guess_used[i] = true
        end
    end

    -- Second pass: Check for misplaced letters (Yellow)
    for i = 1, #guess do
        if not guess_used[i] then
            for j = 1, #secret do
                if not secret_used[j] and guess:sub(i, i) == secret:sub(j, j) then
                    result[i] = "Y"
                    secret_used[j] = true
                    break 
                end
            end
        end
    end

    -- Mark remaining letters as incorrect (Gray)
    for i = 1, #guess do
        if not result[i] then
            result[i] = "X"
        end
    end

    return table.concat(result, " ")
end

print("Welcome to Wordle (ITCS 4109 Lua Edition)! Guess the 5-letter word.")
for attempt = 1, max_attempts do
    io.write("Attempt ".. attempt .. "/" .. max_attempts .. ": ")
    local guess = io.read():lower()

    if #guess ~= 5 then
        print("Please enter a 5-letter word.")
    else 
        local feedback = check_guess(guess, secret_word)x
        print("Feedback: " .. feedback)

        if guess == secret_word then
            print("Congratulations! You guessed the word correctly.")
            return 
        end
    end
end 

print("Game Over! The correct word was: ".. secret_word)
