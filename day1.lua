-- read the file with the input
local file = io.open("day1_input.txt", "r")
if file then
	s = file:read("*a")
	file:close()
else
	print("ERROR opening file")
end

local floor = 0
for i = 1, #s do
	-- get the character at position i
	local c = s:sub(i, i)

	-- update the floor status
	if c == "(" then
		floor = floor + 1
	elseif c == ")" then
		floor = floor - 1
	end

	-- print when reaching the basement
	if floor == -1 then
		print(i)
	end
end

print("The floor is " .. floor)
