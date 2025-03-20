-- 2nd Program by The Hololu-Lua Squad comprised of Kasper Holm, Joe Minaya, Anthony Giuliano, Julian Taylor, and Steve Njoroge

-- Define table for student information
local Student = {}
Student.__index = Student

function Student:new(name, scores)
    return setmetatable({name = name, scores = scores}, Student)
end

function Student:average()
    local sum = 0
    for i = 1, #self.scores do
        sum = sum + self.scores[i]
    end
    return sum / #self.scores
end

-- take input from user to get student data and return a table of students
local function getStudentGrades()
    local students = {}
    print("Enter the number of students:")
    local numStudents = tonumber(io.read())

    for i = 1, numStudents do
        print("Enter the name of student " .. i .. ":")
        local name = io.read()

        print("Enter the number of grades for " .. name .. ":")
        local numGrades = tonumber(io.read())

        local scores = {}
        for j = 1, numGrades do
            print("Enter grade " .. j .. ":")
            local grade = tonumber(io.read())
            table.insert(scores, grade)
        end

        table.insert(students, Student:new(name, scores))
    end

    return students
end

local students = getStudentGrades()

-- process each student
for i, student in ipairs(students) do
    local avg = student:average()
    print("Student: ".. student.name .. ", Average Score: " .. avg)

    -- check to see if student passed
    if avg >= 60 then
        print("Congratulations! You passed!")
    else
        print("Sorry, you failed.")
    end
end
