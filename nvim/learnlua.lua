-- variable
num = 10
s = 'HAHAH'
t = [[biath 
haha]]

null = nil

while num < 50 do
	num = num + 1
	print('Winter is coming ' ..num)
end

io.write('HEHE BOI') -- Defaults to stdout

every_variable_is_global = 5
if 1 then
	local line = io.read()
	print("COME " ..line)
end

boolVal = true
wassup = boolVal and 'yes' or 'no' -- Ternary operator

print("wassup " ..wassup)

sum = 0
for i = 1, 100 do -- inclusive of both values
	sum = sum + i
end

-- Just like python
for j = 100, 1, -1 do sum = sum - j end

repeat -- do while
	print("HEHEHE BOI")
	break
until boolVal == true


-----
--Functions
--

function fib(n)
	if n < 2 then return 1 end
	return fib(n-2) * fib(n-1) 
end

print(fib(10))

-----------
-- Closures
----------

function adder(x)
	return function (y) return x + y end
end


