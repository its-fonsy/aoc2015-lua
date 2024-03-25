local md5 = require("md5")

local n = 0
local secret_key = "ckczppom"
local hash = ""

while true do
	hash = md5.sumhexa(secret_key .. tostring(n))
	if string.sub(hash, 1, 5) == "00000" then
		break
	end
	n = n + 1
end
print(string.format("The string %s produced the %s hash.\nThe answer is %d", secret_key .. tostring(n), hash, n))

n = 0
while true do
	hash = md5.sumhexa(secret_key .. tostring(n))
	if string.sub(hash, 1, 6) == "000000" then
		break
	end
	n = n + 1
end
print(string.format("The string %s produced the %s hash.\nThe answer is %d", secret_key .. tostring(n), hash, n))
